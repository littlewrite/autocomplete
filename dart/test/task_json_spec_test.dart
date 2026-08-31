import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/task.dart';
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

/// Collects every `handler` string referenced under a dynamic field anywhere in
/// the JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' ||
                key == 'postProcess' ||
                key == 'custom' ||
                key == 'generateSpec') &&
            item is Map &&
            item['handler'] is String) {
          ids.add(item['handler'] as String);
        }
        visit(item);
      }
    } else if (value is List) {
      for (final item in value) {
        visit(item);
      }
    }
  }

  visit(node);
  return ids;
}

void main() {
  test('task JSON binds the root generateSpec to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerTaskHandlers(handlers);
    final source = await File('assets/specs/t/task.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'task');
    expect(source, contains(taskGenerateSpecHandler));
    expect(_referencedHandlers(document), {taskGenerateSpecHandler});
  });

  test('generateSpec runs `task --version` to pick the variant', () async {
    final registry = JsonHandlerRegistry();
    registerTaskHandlers(registry);
    final generateSpec = registry.generateSpec(taskGenerateSpecHandler);
    expect(generateSpec, isNotNull);

    String? seenCommand;
    String? seenArgs;
    await generateSpec!(const ['task', ''], (input) async {
      seenCommand = input.command;
      seenArgs = input.args.join(' ');
      return const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
    });

    expect(seenCommand, 'task');
    expect(seenArgs, '--version');
  });

  test('go-task variant is selected when --version mentions "Task"', () async {
    final registry = JsonHandlerRegistry();
    registerTaskHandlers(registry);
    final generateSpec = registry.generateSpec(taskGenerateSpecHandler);
    expect(generateSpec, isNotNull);

    final generated = await generateSpec!(const ['task', ''], (input) async {
      return const ExecuteCommandOutput(
          stdout: 'Task Version: v3.30.0\nAvailable tasks:\n',
          stderr: '',
          status: 0);
    });

    expect(generated, isNotNull);
    expect(generated!.name, 'go-task');
    expect(generated.description,
        'A task runner / simpler Make alternative written in Go');
    expect(generated.subcommands, isNull);
    expect(generated.args!.single.generatorsList.single.script, ['task', '-a']);
    expect(generated.options!.map((o) => o.nameList).toList(), containsAll([
      ['-a', '--list-all'],
      ['-t', '--taskfile'],
      ['--version'],
    ]));
  });

  test('taskwarrior variant is selected when --version omits "Task"', () async {
    final registry = JsonHandlerRegistry();
    registerTaskHandlers(registry);
    final generateSpec = registry.generateSpec(taskGenerateSpecHandler);
    expect(generateSpec, isNotNull);

    final generated = await generateSpec!(const ['task', ''], (input) async {
      return const ExecuteCommandOutput(
          stdout: '2.6.2\n', stderr: '', status: 0);
    });

    expect(generated, isNotNull);
    expect(generated!.name, 'taskwarrior');
    expect(generated.description, 'A command line todo manager');
    expect(generated.args!.single.name, 'filters');
    expect(generated.args!.single.generatorsList.single.script, ['task', 'export']);

    final names =
        generated.subcommands!.map((s) => s.nameList.first).toList();
    expect(names, containsAll([
      'active',
      'add',
      'context',
      'delete',
      'edit',
      'history.daily',
      'next',
      'start',
      'stop',
      'version',
    ]));

    final delete = generated.subcommands!
        .firstWhere((s) => s.nameList.first == 'delete');
    expect(delete.nameList, ['delete', 'rm']);

    final context = generated.subcommands!
        .firstWhere((s) => s.nameList.first == 'context');
    expect(context.subcommands!.map((s) => s.nameList.first).toList(),
        ['delete', 'define', 'list', 'none', 'show']);

    expect(generated.options!.map((o) => o.nameList.first).toList(),
        ['--version']);
  });

  test('go-task tasks generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerTaskHandlers(registry);
    final adapter = _FakeAdapter({
      'task -a': const ProcessRunResult(
        stdout: 'task: Available tasks for this project:\n'
            '* build: Build the project\n'
            '* test:   Run tests\n'
            '* deploy:\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/task.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['task', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: 'Task Version: v3.30.0\n', stderr: '', status: 0),
    );

    final generator = generated!.args!.single.generatorsList.single;
    expect(generator.script, ['task', '-a']);
    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'task', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((s) => s.name).toList(), ['build', 'test', 'deploy']);
    expect(suggestions.first.priority, 80);
    expect(suggestions.first.description, 'Build the project');
  });

  test('go-task tasks generator yields no suggestions without a Taskfile',
      () async {
    final registry = JsonHandlerRegistry();
    registerTaskHandlers(registry);
    final adapter = _FakeAdapter({
      'task -a': const ProcessRunResult(
        stdout: 'task: No Taskfile found\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/task.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['task', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: 'Task Version: v3.30.0\n', stderr: '', status: 0),
    );

    final generator = generated!.args!.single.generatorsList.single;
    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'task', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions, isEmpty);
  });

  test('taskwarrior filtersWithTasks generator runs through the adapter '
      'end to end', () async {
    final registry = JsonHandlerRegistry();
    registerTaskHandlers(registry);
    final adapter = _FakeAdapter({
      'task export': const ProcessRunResult(
        stdout: '[{"id":1,"description":"write report","status":"pending",'
            '"project":"work","tags":["urgent"]},'
            '{"id":2,"description":"review","status":"completed"}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/task.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['task', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: '2.6.2\n', stderr: '', status: 0),
    );

    final generator = generated!.args!.single.generatorsList.single;
    expect(generator.script, ['task', 'export']);
    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'task', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    final names = suggestions.map((s) => s.name).toList();
    expect(names, contains('1'));
    expect(names, contains('project:work'));
    expect(names, contains('+urgent'));
    expect(names, contains('+ACTIVE'));
    expect(names, contains('priority:H'));

    final taskSuggestion = suggestions.firstWhere((s) => s.name == '1');
    expect(taskSuggestion.description, 'write report');
    // The completed task (id 2) is excluded from task suggestions.
    expect(names, isNot(contains('2')));
  });
}
