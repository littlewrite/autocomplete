import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ignite_cli.dart';
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

void main() {
  test('ignite-cli JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerIgniteCliHandlers(handlers);
    final source = await File('assets/specs/i/ignite-cli.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(igniteCliGenerateGeneratorsPostProcessHandler));
    expect(source, contains(igniteCliUpdateGeneratorsPostProcessHandler));
    expect(document['name'], 'ignite-cli');

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
      igniteCliGenerateGeneratorsPostProcessHandler,
      igniteCliUpdateGeneratorsPostProcessHandler,
    });
  });

  test('generators post-processor maps lines to suggestions', () {
    final registry = JsonHandlerRegistry();
    registerIgniteCliHandlers(registry);
    final output = 'component\n'
        'screen\n'
        'model\n';

    final generateSuggestions = registry
        .postProcess(igniteCliGenerateGeneratorsPostProcessHandler)!(output);
    expect(generateSuggestions.map((item) => item.nameSingle ?? ''),
        ['component', 'screen', 'model']);

    final updateSuggestions = registry
        .postProcess(igniteCliUpdateGeneratorsPostProcessHandler)!(output);
    expect(updateSuggestions.map((item) => item.nameSingle ?? ''),
        ['component', 'screen', 'model']);
  });

  test('generators post-processor returns empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerIgniteCliHandlers(registry);

    expect(
        registry
            .postProcess(igniteCliGenerateGeneratorsPostProcessHandler)!(''),
        isEmpty);
    expect(
        registry
            .postProcess(igniteCliGenerateGeneratorsPostProcessHandler)!(
                '   \n \n  '),
        isEmpty);
    expect(registry.postProcess(igniteCliUpdateGeneratorsPostProcessHandler)!(''),
        isEmpty);
  });

  test('generators generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerIgniteCliHandlers(registry);
    final adapter = _FakeAdapter({
      'ls ignite/templates': const ProcessRunResult(
        stdout: 'component\nscreen\nmodel\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/i/ignite-cli.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generators = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .where((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'ls ignite/templates';
        })
        .toList();
    expect(generators.length, 2);

    for (final generator in generators) {
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'ignite-cli', tokenLength: 10, complete: true),
          CommandToken(token: 'g', tokenLength: 1, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );

      expect(suggestions.map((suggestion) => suggestion.name).toList(),
          ['component', 'screen', 'model']);
    }
  });
}
