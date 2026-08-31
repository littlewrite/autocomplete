import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/id.dart';
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
  test('id JSON binds every generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerIdHandlers(handlers);
    final source = await File('assets/specs/i/id.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(idUsersPostProcessHandler));
    expect(document['name'], 'id');

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
    expect(ids.toSet(), {idUsersPostProcessHandler});
  });

  test('user post-processor maps each line to a suggestion with the icon', () {
    final registry = JsonHandlerRegistry();
    registerIdHandlers(registry);
    final output = 'alice\nbob\ncarol\n';

    final users = registry.postProcess(idUsersPostProcessHandler)!(output);
    expect(users.map((item) => item.nameSingle), ['alice', 'bob', 'carol']);
    expect(users.first.icon, 'fig://template?badge=👤');
  });

  test('user post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerIdHandlers(registry);

    final users = registry.postProcess(idUsersPostProcessHandler)!('');
    expect(users, isEmpty);
  });

  test('user post-processor trims whitespace and drops blank lines', () {
    final registry = JsonHandlerRegistry();
    registerIdHandlers(registry);

    final users = registry.postProcess(idUsersPostProcessHandler)!(
        '  alice  \n\nbob\n');
    expect(users.map((item) => item.nameSingle), ['alice', 'bob']);
  });

  test('id generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerIdHandlers(registry);
    final adapter = _FakeAdapter({
      "bash -c dscl . -list /Users | grep -v '^_'": const ProcessRunResult(
        stdout: 'alice\nbob\nroot\n',
      ),
    });

    final source = await File('assets/specs/i/id.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List &&
              script.join(' ') == "bash -c dscl . -list /Users | grep -v '^_'";
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'id', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['alice', 'bob', 'root']);
  });
}
