import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/j.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, {this.env = const {}});

  final Map<String, ProcessRunResult> _results;
  final Map<String, String> env;

  @override
  Map<String, String> getEnvs() => env;

  @override
  String? getEnv(String envKey) => env[envKey];

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

/// A minimal generator context backed by a fake adapter exposing [env].
FigGeneratorContext _context({Map<String, String> env = const {}}) {
  return FigGeneratorContext(
    currentWorkingDirectory: '/work',
    adapter: _FakeAdapter(const {}, env: env),
  );
}

void main() {
  test('j JSON binds the custom generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerJHandlers(handlers);
    final source = await File('assets/specs/j/j.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(jCustomHandler));
    expect(document['name'], 'j');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) {
            ids.add(custom['handler'] as String);
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
    expect(ids.toSet(), {jCustomHandler});
  });

  test('j custom generator suggests dirs matching all filter tokens', () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final handler = registry.custom(jCustomHandler)!;
    const output = '50\t/Users/me/projects/alpha\n'
        '30\t/Users/me/work/beta\n'
        '90\t/Users/me/projects/gamma\n';

    final suggestions = await handler(
      const ['j', 'pro', ''],
      _stubExecute(output),
      _context(env: {'HOME': '/Users/me'}),
    );

    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['alpha', 'gamma']);
    expect(suggestions.map((item) => item.description),
        ['/Users/me/projects/alpha', '/Users/me/projects/gamma']);
    expect(suggestions.map((item) => item.priority), [125, 165]);
  });

  test('j custom generator suggests all dirs with no filter tokens', () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final handler = registry.custom(jCustomHandler)!;
    const output = '50\t/Users/me/projects/alpha\n'
        '30\t/Users/me/work/beta\n';

    final suggestions = await handler(
      const ['j', ''],
      _stubExecute(output),
      _context(env: {'HOME': '/Users/me'}),
    );

    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['alpha', 'beta']);
  });

  test('j custom generator does not resuggest a directory already typed',
      () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final handler = registry.custom(jCustomHandler)!;
    const output = '50\t/Users/me/projects/alpha\n'
        '30\t/Users/me/work/beta\n';

    final suggestions = await handler(
      const ['j', 'alpha', ''],
      _stubExecute(output),
      _context(env: {'HOME': '/Users/me'}),
    );

    // alpha's name is already typed, so it is not suggested again.
    expect(suggestions, isEmpty);
  });

  test('j custom generator returns empty without HOME', () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final handler = registry.custom(jCustomHandler)!;

    final suggestions = await handler(
      const ['j', 'pro', ''],
      _stubExecute('unused'),
      _context(),
    );

    expect(suggestions, isEmpty);
  });

  test('j custom generator returns empty without executeCommand or context',
      () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final handler = registry.custom(jCustomHandler)!;

    expect(await handler(const ['j', 'pro', ''], null, null), isEmpty);
  });

  test('j custom generator returns empty on a failing cat', () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final handler = registry.custom(jCustomHandler)!;

    final suggestions = await handler(
      const ['j', 'pro', ''],
      _stubExecute('boom', status: 1),
      _context(env: {'HOME': '/Users/me'}),
    );

    expect(suggestions, isEmpty);
  });

  test('j custom generator returns empty on empty output', () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final handler = registry.custom(jCustomHandler)!;

    final suggestions = await handler(
      const ['j', 'pro', ''],
      _stubExecute(''),
      _context(env: {'HOME': '/Users/me'}),
    );

    expect(suggestions, isEmpty);
  });

  test('j custom generator skips malformed history lines', () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final handler = registry.custom(jCustomHandler)!;
    const output = 'notab\n'
        '50\t/Users/me/projects/alpha\n'
        'not-a-number\t/Users/me/work/beta\n'
        '40\t\n';

    final suggestions = await handler(
      const ['j', '', ''],
      _stubExecute(output),
      _context(env: {'HOME': '/Users/me'}),
    );

    expect(suggestions.map((item) => item.nameSingle ?? ''), ['alpha']);
  });

  test('j generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerJHandlers(registry);
    final adapter = _FakeAdapter({
      'cat /Users/me/Library/autojump/autojump.txt': const ProcessRunResult(
        stdout: '50\t/Users/me/projects/alpha\n'
            '30\t/Users/me/work/beta\n'
            '90\t/Users/me/projects/gamma\n',
        stderr: '',
        exitCode: 0,
      ),
    }, env: {'HOME': '/Users/me'});

    final source = await File('assets/specs/j/j.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'j', tokenLength: 1, complete: true),
        CommandToken(token: 'pro', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['alpha', 'gamma']);
  });
}
