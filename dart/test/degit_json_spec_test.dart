import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/degit.dart';
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

/// A canned [ExecuteCommandFunction] so the custom handler can be tested in
/// isolation without a real process.
ExecuteCommandFunction _stubExecute(String stdout, {int status = 0}) {
  return (ExecuteCommandInput input) async =>
      ExecuteCommandOutput(stdout: stdout, stderr: '', status: status);
}

void main() {
  test('degit JSON binds every generator to the two handler IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerDegitHandlers(handlers);
    final source = await File('assets/specs/d/degit.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(degitReposTriggerHandler));
    expect(source, contains(degitReposCustomHandler));
    expect(document['name'], 'degit');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['custom', 'trigger']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
    expect(ids.toSet(), {degitReposTriggerHandler, degitReposCustomHandler});
  });

  test('repos trigger compares the slash position across tokens', () {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final trigger = registry.trigger(degitReposTriggerHandler)!;

    expect(trigger('github/', 'github'), isTrue);
    expect(trigger('github/', ''), isTrue);
    expect(trigger('github/octocat', 'github/octoc'), isFalse);
    expect(trigger('github/', 'gitlab/'), isFalse);
    expect(trigger('plain', 'other'), isFalse);
  });

  test('repos custom generator parses the GitHub repos JSON', () async {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final handler = registry.custom(degitReposCustomHandler)!;
    const output = '[{"full_name":"github/github","name":"github",'
        '"description":"Share code, host a project","is_template":false},'
        '{"full_name":"github/octocat","name":"octocat",'
        '"description":"The Octocat repo","is_template":true}]';

    final suggestions = await handler(
        const ['degit', 'github/'], _stubExecute(output), null);

    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['github/github', 'github/octocat']);
    expect(suggestions.map((item) => item.displayName), ['github', 'octocat']);
    expect(suggestions.map((item) => item.description),
        ['Share code, host a project', 'The Octocat repo']);
    expect(suggestions.map((item) => item.priority), [50, 51]);
    expect(suggestions.map((item) => item.icon),
        ['fig://icon?type=git', 'fig://icon?type=git']);
  });

  test('repos custom generator defaults description to Repository', () async {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final handler = registry.custom(degitReposCustomHandler)!;
    const output = '[{"full_name":"github/octocat","name":"octocat",'
        '"description":null,"is_template":false}]';

    final suggestions = await handler(
        const ['degit', 'github/'], _stubExecute(output), null);

    expect(suggestions.single.description, 'Repository');
    expect(suggestions.single.priority, 50);
  });

  test('repos custom generator returns empty for a token with a colon',
      () async {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final handler = registry.custom(degitReposCustomHandler)!;

    final suggestions = await handler(
        const ['degit', 'git@github.com:owner/repo'], _stubExecute('unused'),
        null);

    expect(suggestions, isEmpty);
  });

  test('repos custom generator returns empty when the token has no slash',
      () async {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final handler = registry.custom(degitReposCustomHandler)!;

    expect(await handler(const ['degit', 'richard'], _stubExecute('unused'),
        null), isEmpty);
    expect(await handler(const ['degit', ''], _stubExecute('unused'), null),
        isEmpty);
  });

  test('repos custom generator returns empty without an executeCommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final handler = registry.custom(degitReposCustomHandler)!;

    expect(await handler(const ['degit', 'github/'], null, null), isEmpty);
  });

  test('repos custom generator returns empty on a failing command', () async {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final handler = registry.custom(degitReposCustomHandler)!;

    final suggestions = await handler(
        const ['degit', 'github/'], _stubExecute('boom', status: 1), null);

    expect(suggestions, isEmpty);
  });

  test('repos custom generator returns empty for empty or invalid output',
      () async {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final handler = registry.custom(degitReposCustomHandler)!;

    expect(
        await handler(const ['degit', 'github/'], _stubExecute(''), null),
        isEmpty);
    expect(
        await handler(const ['degit', 'github/'], _stubExecute('not json'),
            null),
        isEmpty);
    expect(
        await handler(const ['degit', 'github/'], _stubExecute('{}'), null),
        isEmpty);
  });

  test('repos generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerDegitHandlers(registry);
    final adapter = _FakeAdapter({
      'curl -sL https://api.github.com/users/github/repos': const ProcessRunResult(
        stdout: '[{"full_name":"github/github","name":"github",'
            '"description":"Share code, host a project","is_template":false},'
            '{"full_name":"github/octocat","name":"octocat",'
            '"description":null,"is_template":true}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/d/degit.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'degit', tokenLength: 5, complete: true),
        CommandToken(token: 'github/', tokenLength: 7, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['github/github', 'github/octocat']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(),
        ['Share code, host a project', 'Repository']);
    expect(suggestions.map((suggestion) => suggestion.priority).toList(),
        [50, 51]);
    expect(suggestions.map((suggestion) => suggestion.icon).toList(),
        ['fig://icon?type=git', 'fig://icon?type=git']);
  });
}
