import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ecs.dart';
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

/// Collects every `suggestions` handler reference in a decoded JSON document.
void _collectSuggestionHandlerIds(dynamic node, Set<String> ids) {
  if (node is! Map) return;
  final suggestions = node['suggestions'];
  if (suggestions is Map && suggestions['handler'] is String) {
    ids.add(suggestions['handler'] as String);
  }
  for (final value in node.values) {
    if (value is List) {
      for (final item in value) {
        _collectSuggestionHandlerIds(item, ids);
      }
    } else if (value is Map) {
      _collectSuggestionHandlerIds(value, ids);
    }
  }
}

void main() {
  test('ecs JSON binds every suggestions reference to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerEcsHandlers(handlers);
    final source = await File('assets/specs/e/ecs.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(ecsRunTaskCountHandler));
    expect(document['name'], 'ecs');

    final ids = <String>{};
    _collectSuggestionHandlerIds(document, ids);
    expect(ids, {ecsRunTaskCountHandler});
  });

  test('run-task count handler offers 1..10', () async {
    final registry = JsonHandlerRegistry();
    registerEcsHandlers(registry);

    final suggestions =
        await registry.custom(ecsRunTaskCountHandler)!(
      ['aws', 'ecs', 'run-task', '--count', ''],
      null,
      null,
    );
    expect(suggestions.map((item) => item.name).toList(),
        ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']);
  });

  test('run-task count handler runs end to end through the adapter', () async {
    final registry = JsonHandlerRegistry();
    registerEcsHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/e/ecs.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final runTask = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('run-task'));
    final option =
        runTask.options!.firstWhere((opt) => opt.nameList.contains('--count'));
    final generator = option.args!.single.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'aws', tokenLength: 3, complete: true),
        CommandToken(token: 'ecs', tokenLength: 3, complete: true),
        CommandToken(token: 'run-task', tokenLength: 8, complete: true),
        CommandToken(token: '--count', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(),
        ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']);
  });
}
