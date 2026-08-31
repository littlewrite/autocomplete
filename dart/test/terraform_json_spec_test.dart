import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/terraform.dart';
import 'package:test/test.dart';

const _terraformIcon = 'https://www.terraform.io/favicon.ico';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results);

  final Map<String, ProcessRunResult> _results;

  @override
  Map<String, String> getEnvs() => const {};

  @override
  String? getEnv(String envKey) => null;

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async =>
      const [];

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    final key = [executable, ...arguments].join(' ');
    return _results[key] ?? const ProcessRunResult(stdout: '');
  }
}

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      for (final arg in subcommand.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  return visit(spec.subcommands ?? const []);
}

void main() {
  test('terraform JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerTerraformHandlers(handlers);
    final source = await File('assets/specs/t/terraform.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(terraformWorkspaceListPostProcessHandler));
    expect(source, contains(terraformAddressListPostProcessHandler));
    expect(document['name'], 'terraform');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator in generators is List ? generators : [generators]) {
          final postProcess = (generator as Map)['postProcess'];
          if (postProcess is Map) {
            ids.add(postProcess['handler'] as String);
          }
        }
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectGenerators(item);
          }
        } else if (value is Map) {
          collectGenerators(value);
        }
      }
    }

    collectGenerators(document);
    expect(ids.toSet(), {
      terraformWorkspaceListPostProcessHandler,
      terraformAddressListPostProcessHandler,
    });
  });

  test('workspace list post-processor parses lines and strips the marker', () {
    final registry = JsonHandlerRegistry();
    registerTerraformHandlers(registry);

    final workspaces =
        registry.postProcess(terraformWorkspaceListPostProcessHandler)!(
            '* default\ndevelopment\n  * production  ');
    expect(workspaces.map((item) => item.nameSingle),
        ['default', 'development', 'production']);
    expect(workspaces.map((item) => item.icon),
        [_terraformIcon, _terraformIcon, _terraformIcon]);
    expect(workspaces.map((item) => item.description),
        ['Workspace', 'Workspace', 'Workspace']);
  });

  test('workspace list post-processor keeps the trailing empty entry', () {
    final registry = JsonHandlerRegistry();
    registerTerraformHandlers(registry);

    final workspaces =
        registry.postProcess(terraformWorkspaceListPostProcessHandler)!(
            '* default\n');
    expect(workspaces.map((item) => item.nameSingle ?? ''),
        ['default', '']);
  });

  test('address list post-processor parses lines and strips the marker', () {
    final registry = JsonHandlerRegistry();
    registerTerraformHandlers(registry);

    final addresses =
        registry.postProcess(terraformAddressListPostProcessHandler)!(
            'aws_instance.web\naws_s3_bucket.data');
    expect(addresses.map((item) => item.nameSingle),
        ['aws_instance.web', 'aws_s3_bucket.data']);
    expect(addresses.map((item) => item.icon),
        [_terraformIcon, _terraformIcon]);
    expect(addresses.map((item) => item.description), ['Address', 'Address']);
  });

  test('address list post-processor returns empty on missing state', () {
    final registry = JsonHandlerRegistry();
    registerTerraformHandlers(registry);

    final missing = registry
        .postProcess(terraformAddressListPostProcessHandler)!(
            'No state file was found!');
    expect(missing, isEmpty);
  });

  test('address list post-processor returns empty on errors', () {
    final registry = JsonHandlerRegistry();
    registerTerraformHandlers(registry);

    final errored = registry
        .postProcess(terraformAddressListPostProcessHandler)!(
            'Error: no matching resources');
    expect(errored, isEmpty);
  });

  test('address list post-processor only guards the exact Error marker', () {
    final registry = JsonHandlerRegistry();
    registerTerraformHandlers(registry);

    // The source matches the capital-E "Error" substring anywhere in the
    // output. A lowercase "error" must not trip the guard.
    final lowercase =
        registry.postProcess(terraformAddressListPostProcessHandler)!(
            'aws_instance.web\nerror: ok');
    expect(lowercase.map((item) => item.nameSingle),
        ['aws_instance.web', 'error: ok']);

    final capital =
        registry.postProcess(terraformAddressListPostProcessHandler)!(
            'aws_instance.web\nError: boom');
    expect(capital, isEmpty);
  });

  test('each terraform generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTerraformHandlers(registry);
    final adapter = _FakeAdapter({
      'terraform state list': const ProcessRunResult(
        stdout: 'aws_instance.web\naws_s3_bucket.data',
        stderr: '',
        exitCode: 0,
      ),
      'terraform workspace list': const ProcessRunResult(
        stdout: '* default\ndevelopment\nproduction',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/terraform.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(
        String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'terraform', tokenLength: 9, complete: true),
          CommandToken(token: 'workspace', tokenLength: 9, complete: true),
          CommandToken(token: 'delete', tokenLength: 6, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('terraform workspace list',
        ['default', 'development', 'production']);
    await runGenerator('terraform state list',
        ['aws_instance.web', 'aws_s3_bucket.data']);
  });
}
