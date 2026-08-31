import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/taskwarrior.dart';
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

const _tasksJson = [
  {
    'id': 1,
    'status': 'pending',
    'description': 'Buy milk',
    'project': 'Home',
    'tags': ['urgent', 'home'],
  },
  {
    'id': 2,
    'status': 'completed',
    'description': 'Done task',
    'project': 'Home',
  },
  {
    'id': 3,
    'status': 'pending',
    'description': 'Write report',
    'project': 'Work',
    'tags': ['work', 'urgent'],
  },
  {
    'id': 4,
    'status': 'pending',
    'description': 'Cook dinner',
    'project': 'Home',
    'tags': ['home'],
  },
];

void main() {
  test('taskwarrior JSON binds every generator to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerTaskwarriorHandlers(handlers);
    final source = await File('assets/specs/t/taskwarrior.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(taskwarriorFiltersWithTasksPostProcessHandler));
    expect(source, contains(taskwarriorModificationsPostProcessHandler));
    expect(source, contains(taskwarriorListTasksPostProcessHandler));
    expect(document['name'], 'taskwarrior');

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
      taskwarriorFiltersWithTasksPostProcessHandler,
      taskwarriorModificationsPostProcessHandler,
      taskwarriorListTasksPostProcessHandler,
    });
  });

  test(
      'filtersWithTasks builds tasks, projects, tags, built-in tags, '
      'priorities, and dates', () {
    final registry = JsonHandlerRegistry();
    registerTaskwarriorHandlers(registry);
    final output = jsonEncode(_tasksJson);

    final suggestions =
        registry.postProcess(taskwarriorFiltersWithTasksPostProcessHandler)!(
            output);

    final names = suggestions.map((item) => item.nameSingle ?? '').toList();

    // Task suggestions come first; the completed id 2 is excluded.
    expect(names.take(2), ['1', '3']);
    expect(suggestions[0].displayName, '1 - Buy milk');
    expect(suggestions[0].description, 'Buy milk');
    expect(suggestions[0].icon, '☑️');

    // Project suggestions count non-completed tasks per project.
    expect(names, contains('project:Home'));
    expect(names, contains('project:Work'));
    final homeProject =
        suggestions.firstWhere((item) => (item.nameSingle ?? '') == 'project:Home');
    expect(homeProject.displayName, 'Project: Home');
    expect(homeProject.description, '2 tasks');
    expect(homeProject.icon, '🗂');

    // Tag suggestions are distinct and in first-seen order.
    final urgentIndex = names.indexOf('+urgent');
    expect(urgentIndex, isNonNegative);
    expect(names.indexOf('+home'), greaterThan(urgentIndex));
    expect(names.indexOf('+work'), greaterThan(urgentIndex));

    // Built-in tag suggestions.
    final pendingTag =
        suggestions.firstWhere((item) => (item.nameSingle ?? '') == '+PENDING');
    expect(pendingTag.displayName, 'Tag: PENDING');
    expect(pendingTag.icon, '🏷');

    // Priority suggestions.
    expect(names, contains('priority:H'));
    expect(names, contains('priority.is:M'));
    expect(names, contains('priority.not:L'));
    expect(names, contains('priority.none:'));

    // Date suggestions.
    expect(names, contains('due:today'));
    expect(names, contains('scheduled.after:now'));
    expect(names, contains('entry.before:eom'));

    // 3 tasks + 2 projects + 3 tags + 32 built-in tags + 10 priorities
    // + 20 date prefixes * 38 date keywords = 810.
    expect(suggestions.length, 810);
  });

  test('modifications adds untag and recur suggestions without task ids', () {
    final registry = JsonHandlerRegistry();
    registerTaskwarriorHandlers(registry);
    final output = jsonEncode(_tasksJson);

    final suggestions =
        registry.postProcess(taskwarriorModificationsPostProcessHandler)!(output);

    final names = suggestions.map((item) => item.nameSingle ?? '').toList();

    expect(names, contains('project:Home'));
    expect(names, contains('+urgent'));
    expect(names, contains('-urgent'));
    expect(names, contains('-home'));
    expect(names, contains('-work'));
    expect(names, contains('recur:daily'));
    expect(names, contains('recur:monthly'));
    expect(names, contains('recur:2yrs'));
    expect(names, contains('priority.none:'));
    expect(names, contains('due:now'));
    expect(names, contains('wait.by:tomorrow'));

    // The modifications generator has no task-id suggestions.
    expect(names, isNot(contains('1')));
    expect(names, isNot(contains('3')));

    final untag =
        suggestions.firstWhere((item) => (item.nameSingle ?? '') == '-urgent');
    expect(untag.displayName, 'Untag: urgent');
    expect(untag.icon, '❌');

    // 2 projects + 3 tags + 3 untags + 32 built-in tags + 10 priorities
    // + 20 date prefixes * 38 date keywords + 22 recurrences = 832.
    expect(suggestions.length, 832);
  });

  test('listTasks returns only pending task suggestions', () {
    final registry = JsonHandlerRegistry();
    registerTaskwarriorHandlers(registry);
    final output = jsonEncode(_tasksJson);

    final suggestions =
        registry.postProcess(taskwarriorListTasksPostProcessHandler)!(output);

    final names = suggestions.map((item) => item.nameSingle ?? '').toList();
    expect(names, ['1', '3', '4']);
    expect(suggestions[1].displayName, '3 - Write report');
    expect(suggestions[1].description, 'Write report');
    expect(suggestions[0].icon, '☑️');
  });

  test('handlers return an empty list on parse errors or empty output', () {
    final registry = JsonHandlerRegistry();
    registerTaskwarriorHandlers(registry);

    for (final id in [
      taskwarriorFiltersWithTasksPostProcessHandler,
      taskwarriorModificationsPostProcessHandler,
      taskwarriorListTasksPostProcessHandler,
    ]) {
      expect(registry.postProcess(id)!(''), isEmpty);
      expect(registry.postProcess(id)!('not json'), isEmpty);
      expect(registry.postProcess(id)!('{}'), isEmpty);
    }
  });

  test('add modifications generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTaskwarriorHandlers(registry);
    final adapter = _FakeAdapter({
      'task export': ProcessRunResult(stdout: jsonEncode(_tasksJson)),
    });

    final source = await File('assets/specs/t/taskwarrior.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final add =
        spec.subcommands!.firstWhere((item) => item.nameList.first == 'add');
    final generator = add.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'task', tokenLength: 4, complete: true),
        CommandToken(token: 'add', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((item) => item.name).toList();
    expect(names, contains('project:Home'));
    expect(names, contains('+urgent'));
    expect(names, contains('-work'));
    expect(names, contains('recur:weekly'));
    expect(names, contains('due:today'));
    expect(names, isNot(contains('1')));
  });

  test('root filtersWithTasks generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTaskwarriorHandlers(registry);
    final adapter = _FakeAdapter({
      'task export': ProcessRunResult(stdout: jsonEncode(_tasksJson)),
    });

    final source = await File('assets/specs/t/taskwarrior.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'task', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((item) => item.name).toList();
    expect(names.take(2), ['1', '3']);
    expect(names, contains('project:Home'));
    expect(names, contains('+work'));
    expect(names, contains('+PENDING'));
  });
}
