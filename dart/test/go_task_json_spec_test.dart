import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/go_task.dart';
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
  test('go-task JSON binds its generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerGoTaskHandlers(handlers);
    final source = await File('assets/specs/g/go-task.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(goTaskTasksPostProcessHandler));
    expect(document['name'], 'go-task');

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
    expect(ids.toSet(), {goTaskTasksPostProcessHandler});
  });

  test('task post-processor parses starred lines into name + description', () {
    final registry = JsonHandlerRegistry();
    registerGoTaskHandlers(registry);
    final output = 'task: Available tasks for this project:\n'
        '* build: Compile the project\n'
        '* test: Run the tests\n'
        '* deploy\n'
        '* lint:\n'
        '* build:watch: Watch for changes\n';

    final tasks = registry.postProcess(goTaskTasksPostProcessHandler)!(output);
    expect(tasks.map((item) => item.nameSingle),
        ['build', 'test', 'deploy', 'lint', 'build:watch']);
    expect(tasks.map((item) => item.description), [
      'Compile the project',
      'Run the tests',
      null,
      null,
      'Watch for changes',
    ]);
    expect(tasks.map((item) => item.priority), [80, 80, 80, 80, 80]);
  });

  test('task post-processor returns empty when no Taskfile is found', () {
    final registry = JsonHandlerRegistry();
    registerGoTaskHandlers(registry);
    expect(
        registry
            .postProcess(goTaskTasksPostProcessHandler)!
            ('task: No Taskfile found in the current directory'),
        isEmpty);
  });

  test('task post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerGoTaskHandlers(registry);
    expect(registry.postProcess(goTaskTasksPostProcessHandler)!(''), isEmpty);
  });

  test('go-task tasks generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerGoTaskHandlers(registry);
    final adapter = _FakeAdapter({
      'task -a': const ProcessRunResult(
        stdout: 'task: Available tasks for this project:\n'
            '* build: Compile the project\n'
            '* deploy: Deploy to production\n'
            '* clean\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/go-task.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generators!.single;
    expect(generator.script, isA<List>());

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'go-task', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['build', 'deploy', 'clean']);
  });
}
