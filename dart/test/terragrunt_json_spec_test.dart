import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/terragrunt.dart';
import 'package:test/test.dart';

const _terragruntIcon =
    'https://terragrunt.gruntwork.io/assets/img/favicon/favicon.ico';

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
/// [scriptCommand], searching the whole subcommand tree (including nested
/// subcommands such as `workspace delete` / `workspace select`).
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
  test('terragrunt JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerTerragruntHandlers(handlers);
    final source = await File('assets/specs/t/terragrunt.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(terragruntWorkspaceListPostProcessHandler));
    expect(source, contains(terragruntAddressListPostProcessHandler));
    expect(document['name'], 'terragrunt');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
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
      terragruntWorkspaceListPostProcessHandler,
      terragruntAddressListPostProcessHandler,
    });
  });

  test('workspace list post-processor parses lines and strips the marker', () {
    final registry = JsonHandlerRegistry();
    registerTerragruntHandlers(registry);

    final workspaces =
        registry.postProcess(terragruntWorkspaceListPostProcessHandler)!(
            '* default\ndevelopment\n  * production  ');
    expect(workspaces.map((item) => item.nameSingle),
        ['default', 'development', 'production']);
    expect(workspaces.map((item) => item.icon),
        [_terragruntIcon, _terragruntIcon, _terragruntIcon]);
    expect(workspaces.map((item) => item.description),
        ['Workspace', 'Workspace', 'Workspace']);
  });

  test('workspace list post-processor keeps the trailing empty entry', () {
    final registry = JsonHandlerRegistry();
    registerTerragruntHandlers(registry);

    final workspaces =
        registry.postProcess(terragruntWorkspaceListPostProcessHandler)!(
            '* default\n');
    expect(workspaces.map((item) => item.nameSingle ?? ''),
        ['default', '']);
  });

  test('address list post-processor parses lines and strips the marker', () {
    final registry = JsonHandlerRegistry();
    registerTerragruntHandlers(registry);

    final addresses =
        registry.postProcess(terragruntAddressListPostProcessHandler)!(
            'aws_instance.web\naws_s3_bucket.data');
    expect(addresses.map((item) => item.nameSingle),
        ['aws_instance.web', 'aws_s3_bucket.data']);
    expect(addresses.map((item) => item.icon),
        [_terragruntIcon, _terragruntIcon]);
    expect(addresses.map((item) => item.description), ['Address', 'Address']);
  });

  test('address list post-processor returns empty on missing state', () {
    final registry = JsonHandlerRegistry();
    registerTerragruntHandlers(registry);

    final missing = registry
        .postProcess(terragruntAddressListPostProcessHandler)!(
            'No state file was found!');
    expect(missing, isEmpty);
  });

  test('address list post-processor returns empty on errors', () {
    final registry = JsonHandlerRegistry();
    registerTerragruntHandlers(registry);

    final errored = registry
        .postProcess(terragruntAddressListPostProcessHandler)!(
            'Error: no matching resources');
    expect(errored, isEmpty);
  });

  test('address list post-processor only guards the exact Error marker', () {
    final registry = JsonHandlerRegistry();
    registerTerragruntHandlers(registry);

    // The source matches the capital-E "Error" substring anywhere in the
    // output. A lowercase "error" must not trip the guard.
    final lowercase =
        registry.postProcess(terragruntAddressListPostProcessHandler)!(
            'aws_instance.web\nerror: ok');
    expect(lowercase.map((item) => item.nameSingle),
        ['aws_instance.web', 'error: ok']);

    final capital =
        registry.postProcess(terragruntAddressListPostProcessHandler)!(
            'aws_instance.web\nError: boom');
    expect(capital, isEmpty);
  });

  test('each terragrunt generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTerragruntHandlers(registry);
    final adapter = _FakeAdapter({
      'terragrunt state list': const ProcessRunResult(
        stdout: 'aws_instance.web\naws_s3_bucket.data',
        stderr: '',
        exitCode: 0,
      ),
      'terragrunt workspace list': const ProcessRunResult(
        stdout: '* default\ndevelopment\nproduction',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/terragrunt.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(
        String scriptCommand, List<CommandToken> tokens, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        tokens,
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator(
      'terragrunt workspace list',
      const [
        CommandToken(token: 'terragrunt', tokenLength: 10, complete: true),
        CommandToken(token: 'workspace', tokenLength: 9, complete: true),
        CommandToken(token: 'delete', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      ['default', 'development', 'production'],
    );
    await runGenerator(
      'terragrunt state list',
      const [
        CommandToken(token: 'terragrunt', tokenLength: 10, complete: true),
        CommandToken(token: 'taint', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      ['aws_instance.web', 'aws_s3_bucket.data'],
    );
  });
}
