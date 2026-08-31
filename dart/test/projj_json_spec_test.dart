import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/projj.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, [this._envs = const {}]);

  final Map<String, ProcessRunResult> _results;
  final Map<String, String> _envs;

  @override
  Map<String, String> getEnvs() => _envs;

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
  test('projj JSON binds every generator to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerProjjHandlers(handlers);
    final source = await File('assets/specs/p/projj.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(projjRepoGeneratorCustomHandler));
    expect(source, contains(projjHookGeneratorCustomHandler));
    expect(document['name'], 'projj');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) ids.add(custom['handler'] as String);
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
      projjRepoGeneratorCustomHandler,
      projjHookGeneratorCustomHandler,
    });
  });

  test('repo generator reads the cache and maps the repo names', () async {
    final registry = JsonHandlerRegistry();
    registerProjjHandlers(registry);
    final handler = registry.custom(projjRepoGeneratorCustomHandler)!;
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: _FakeAdapter({}, {'HOME': '/home/user'}),
    );

    final repos = await handler(const ['projj', 'find'], (input) async {
      expect(input.command, 'cat');
      expect(input.args, ['/home/user/.projj/cache.json']);
      return const ExecuteCommandOutput(
        stdout: '{"~/code/projj/core":{"repo":"git@github.com:user/projj.git"},'
            '"~/work/other":{"repo":"https://github.com/org/other.git"}}',
        stderr: '',
        status: 0,
      );
    }, context);

    expect(repos.map((item) => item.nameSingle ?? ''),
        ['core', 'other']);
    expect(repos.map((item) => item.description),
        ['git@github.com:user/projj.git', 'https://github.com/org/other.git']);
  });

  test('repo generator returns empty on parse errors and empty output',
      () async {
    final registry = JsonHandlerRegistry();
    registerProjjHandlers(registry);
    final handler = registry.custom(projjRepoGeneratorCustomHandler)!;
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: _FakeAdapter({}, {'HOME': '/home/user'}),
    );

    Future<List<FigSuggestion>> run(String stdout) => handler(
        const ['projj', 'find'],
        (input) async =>
            ExecuteCommandOutput(stdout: stdout, stderr: '', status: 0),
        context);

    expect(await run('oops'), isEmpty);
    expect(await run(''), isEmpty);
    expect(await run('[]'), isEmpty);
  });

  test('repo generator returns empty when cat fails', () async {
    final registry = JsonHandlerRegistry();
    registerProjjHandlers(registry);
    final handler = registry.custom(projjRepoGeneratorCustomHandler)!;
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: _FakeAdapter({}, {'HOME': '/home/user'}),
    );

    final repos = await handler(const ['projj', 'find'], (input) async {
      return const ExecuteCommandOutput(
        stdout: '',
        stderr: 'No such file',
        status: 1,
      );
    }, context);
    expect(repos, isEmpty);
  });

  test('hook generator reads the config and maps the hooks', () async {
    final registry = JsonHandlerRegistry();
    registerProjjHandlers(registry);
    final handler = registry.custom(projjHookGeneratorCustomHandler)!;
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: _FakeAdapter({}, {'HOME': '/home/user'}),
    );

    final hooks = await handler(const ['projj', 'run'], (input) async {
      expect(input.command, 'cat');
      expect(input.args, ['/home/user/.projj/config.json']);
      return const ExecuteCommandOutput(
        stdout: '{"hooks":{"push":"Run the push hook",'
            '"post-checkout":"Run after checkout"}}',
        stderr: '',
        status: 0,
      );
    }, context);

    expect(hooks.map((item) => item.nameSingle ?? ''),
        ['push', 'post-checkout']);
    expect(hooks.map((item) => item.description),
        ['Run the push hook', 'Run after checkout']);
  });

  test('hook generator returns empty on parse errors and missing hooks',
      () async {
    final registry = JsonHandlerRegistry();
    registerProjjHandlers(registry);
    final handler = registry.custom(projjHookGeneratorCustomHandler)!;
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: _FakeAdapter({}, {'HOME': '/home/user'}),
    );

    Future<List<FigSuggestion>> run(String stdout) => handler(
        const ['projj', 'run'],
        (input) async =>
            ExecuteCommandOutput(stdout: stdout, stderr: '', status: 0),
        context);

    expect(await run('oops'), isEmpty);
    expect(await run(''), isEmpty);
    expect(await run('{}'), isEmpty);
    expect(await run('{"hooks": []}'), isEmpty);
  });

  test('find and run generators run their cat commands through the adapter '
      'end to end', () async {
    final registry = JsonHandlerRegistry();
    registerProjjHandlers(registry);
    final adapter = _FakeAdapter({
      'cat /home/user/.projj/cache.json': const ProcessRunResult(
        stdout: '{"~/code/projj/core":{"repo":"git@github.com:user/projj.git"},'
            '"~/code/projj/extra":{"repo":"git@github.com:user/extra.git"}}',
        stderr: '',
        exitCode: 0,
      ),
      'cat /home/user/.projj/config.json': const ProcessRunResult(
        stdout: '{"hooks":{"push":"Run the push hook",'
            '"pull":"Run the pull hook"}}',
        stderr: '',
        exitCode: 0,
      ),
    }, {'HOME': '/home/user'});

    final source = await File('assets/specs/p/projj.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final find = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('find'));
    final repoGenerator = find.args!.single.generators!.single;

    final repoSuggestions = await runGeneratorSuggestions(
      repoGenerator,
      const [
        CommandToken(token: 'projj', tokenLength: 5, complete: true),
        CommandToken(token: 'find', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(repoSuggestions.map((suggestion) => suggestion.name).toList(),
        ['core', 'extra']);

    final run = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('run'));
    final hookGenerator = run.args!.single.generators!.single;

    final hookSuggestions = await runGeneratorSuggestions(
      hookGenerator,
      const [
        CommandToken(token: 'projj', tokenLength: 5, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(hookSuggestions.map((suggestion) => suggestion.name).toList(),
        ['push', 'pull']);
  });
}
