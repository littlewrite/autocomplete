import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ant.dart';
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

/// The joined executable + args for ant's task generator script.
const _antScriptCommand = "bash -c command ant -p | grep -i '^\\s' | tr -d ' '";

void main() {
  test('ant JSON binds the task generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerAntHandlers(handlers);
    final source = await File('assets/specs/a/ant.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(antTasksPostProcessHandler));
    expect(document['name'], 'ant');

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
    expect(ids.toSet(), {antTasksPostProcessHandler});
  });

  test('tasks post-processor maps each line to a named arg suggestion', () {
    final registry = JsonHandlerRegistry();
    registerAntHandlers(registry);
    const output = 'compile\nclean\ninit';

    final tasks = registry.postProcess(antTasksPostProcessHandler)!(output);
    expect(tasks.map((item) => item.nameSingle ?? '').toList(),
        ['compile', 'clean', 'init']);
    expect(tasks.map((item) => item.description).toList(),
        ['Execute compile task', 'Execute clean task', 'Execute init task']);
    expect(tasks.map((item) => item.type).toList(),
        [SuggestionType.arg, SuggestionType.arg, SuggestionType.arg]);
  });

  test('tasks post-processor drops blank lines and handles empty output', () {
    final registry = JsonHandlerRegistry();
    registerAntHandlers(registry);

    final withBlank = registry.postProcess(antTasksPostProcessHandler)!(
        'compile\n\ninit\n');
    expect(withBlank.map((item) => item.nameSingle ?? '').toList(),
        ['compile', 'init']);

    final empty =
        registry.postProcess(antTasksPostProcessHandler)!('');
    expect(empty, isEmpty);

    final blankOnly =
        registry.postProcess(antTasksPostProcessHandler)!('\n\n');
    expect(blankOnly, isEmpty);
  });

  test('ant task generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerAntHandlers(registry);
    final adapter = _FakeAdapter({
      _antScriptCommand: const ProcessRunResult(
        stdout: 'compile\nclean\ninit\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/a/ant.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == _antScriptCommand;
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ant', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['compile', 'clean', 'init']);
  });
}
