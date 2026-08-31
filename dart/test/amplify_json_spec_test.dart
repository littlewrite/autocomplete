import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/amplify.dart';
import 'package:test/test.dart';

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
/// [scriptCommand], searching subcommand args and option args in the whole
/// tree (amplify attaches the generator to env checkout/remove args and to the
/// env get/import `--name` option args).
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
      for (final option in subcommand.options ?? const <FigOption>[]) {
        for (final arg in option.args ?? const <FigArg>[]) {
          for (final generator in arg.generatorsList) {
            final script = generator.script;
            if (script is List && script.join(' ') == scriptCommand) {
              return generator;
            }
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
  test('amplify JSON binds every generator to the one declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerAmplifyHandlers(handlers);
    final source = await File('assets/specs/a/amplify.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(amplifyEnvNamesPostProcessHandler));
    expect(document['name'], 'amplify');

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
    expect(ids.toSet(), {amplifyEnvNamesPostProcessHandler});
  });

  test('env names post-processor maps the envs array to Environment entries',
      () {
    final registry = JsonHandlerRegistry();
    registerAmplifyHandlers(registry);
    const output = '{"envs":["dev","prod","staging"]}';

    final envNames =
        registry.postProcess(amplifyEnvNamesPostProcessHandler)!(output);
    expect(envNames.map((item) => item.nameSingle), ['dev', 'prod', 'staging']);
    expect(envNames.map((item) => item.description),
        ['Environment', 'Environment', 'Environment']);
  });

  test('env names post-processor preserves order and handles a single env', () {
    final registry = JsonHandlerRegistry();
    registerAmplifyHandlers(registry);
    const output = '{"envs":["main"]}';

    final envNames =
        registry.postProcess(amplifyEnvNamesPostProcessHandler)!(output);
    expect(envNames.map((item) => item.nameSingle), ['main']);
    expect(envNames.single.description, 'Environment');
  });

  test('env names post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerAmplifyHandlers(registry);

    final broken =
        registry.postProcess(amplifyEnvNamesPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final empty =
        registry.postProcess(amplifyEnvNamesPostProcessHandler)!('');
    expect(empty, isEmpty);

    // Valid JSON without an envs key yields no suggestions.
    final missingEnvs =
        registry.postProcess(amplifyEnvNamesPostProcessHandler)!('{}');
    expect(missingEnvs, isEmpty);
  });

  test('env name generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerAmplifyHandlers(registry);
    final adapter = _FakeAdapter({
      'amplify env list --json': const ProcessRunResult(
        stdout: '{"envs":["dev","prod"]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/a/amplify.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'amplify env list --json');
    expect(generator, isNotNull,
        reason: 'no generator for the amplify env list --json script');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'amplify', tokenLength: 7, complete: true),
        CommandToken(token: 'env', tokenLength: 3, complete: true),
        CommandToken(token: 'remove', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['dev', 'prod']);
  });
}
