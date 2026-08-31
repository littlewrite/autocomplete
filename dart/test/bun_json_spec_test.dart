import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/bun.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, {this.envs = const {}});

  final Map<String, ProcessRunResult> _results;
  final Map<String, String> envs;

  @override
  Map<String, String> getEnvs() => envs;

  @override
  String? getEnv(String envKey) => envs[envKey];

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

const _allHandlerIds = {
  bunCreateCustomHandler,
  bunNpmSearchHandler,
  bunDependenciesHandler,
  bunLoaderHandler,
  bunTargetHandler,
  bunLinksPostProcessHandler,
  bunTestFilesPostProcessHandler,
};

void main() {
  test('bun JSON binds every generator to the seven declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerBunHandlers(handlers);
    final source = await File('assets/specs/b/bun.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    for (final id in _allHandlerIds) {
      expect(source, contains(id));
    }
    expect(document['name'], 'bun');

    final ids = <String>{};
    void collectHandlers(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          if (generator is! Map) continue;
          if (generator['handler'] is String) {
            ids.add(generator['handler'] as String);
          }
          for (final field in ['custom', 'postProcess', 'script', 'trigger']) {
            final value = generator[field];
            if (value is Map && value['handler'] is String) {
              ids.add(value['handler'] as String);
            }
          }
        }
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectHandlers(item);
          }
        } else if (value is Map) {
          collectHandlers(value);
        }
      }
    }

    collectHandlers(document);
    expect(ids, _allHandlerIds);
  });

  test('bun link post-processor keeps every dep line including trailing empty',
      () {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final links =
        registry.postProcess(bunLinksPostProcessHandler)!('eslint\nprettier\n');
    expect(links.map((item) => item.nameSingle), ['eslint', 'prettier', '']);
    expect(links.map((item) => item.description),
        ['Link to this package', 'Link to this package', 'Link to this package']);
    expect(links.map((item) => item.icon), ['📦', '📦', '📦']);
  });

  test('bun test post-processor turns paths into basenames with insertValue',
      () {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    const output = 'test/foo_test.ts\nsrc/bar.spec.js';
    final files =
        registry.postProcess(bunTestFilesPostProcessHandler)!(output);
    expect(files.map((item) => item.nameSingle), ['foo_test.ts', 'bar.spec.js']);
    expect(files.map((item) => item.priority), [76, 76]);
    expect(files.map((item) => item.description),
        ['run test/foo_test.ts', 'run src/bar.spec.js']);
    expect(files.map((item) => item.insertValue),
        ['test/foo_test.ts', 'src/bar.spec.js']);
  });

  test('bun create custom handler lists \$HOME/.bun-create templates', () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final adapter = _FakeAdapter(const {}, envs: {'HOME': '/home/me'});
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      searchTerm: '',
      adapter: adapter,
    );
    final handler = registry.custom(bunCreateCustomHandler)!;

    final templates = await handler(['bun', 'create', ''], (input) async {
      expect(input.command, 'ls');
      expect(input.args, ['-1', '/home/me/.bun-create']);
      return const ExecuteCommandOutput(
        stdout: 'react\nnext\nhono',
        stderr: '',
        status: 0,
      );
    }, context);
    expect(templates.map((item) => item.nameSingle), ['react', 'next', 'hono']);
  });

  test('bun create returns an empty list without a HOME', () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final adapter = _FakeAdapter(const {});
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      searchTerm: '',
      adapter: adapter,
    );
    final handler = registry.custom(bunCreateCustomHandler)!;
    final templates = await handler(['bun', 'create', ''], (input) async {
      return const ExecuteCommandOutput(
        stdout: 'react\nnext',
        stderr: '',
        status: 0,
      );
    }, context);
    expect(templates, isEmpty);
  });

  test('npm search handler returns package names and descriptions', () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunNpmSearchHandler)!;

    final results = await handler(['bun', 'add', 'lodash'], (input) async {
      expect(input.command, 'curl');
      expect(input.args, [
        '-s',
        '-H',
        'Accept: application/json',
        'https://api.npms.io/v2/search/suggestions?q=lodash&size=20',
      ]);
      return const ExecuteCommandOutput(
        stdout: '[{"package":{"name":"lodash","description":"A utility library"}},'
            '{"package":{"name":"lodash-es","description":"ES modules"}}]',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(results.map((item) => item.nameSingle), ['lodash', 'lodash-es']);
    expect(results.first.description, 'A utility library');
  });

  test('npm search handler returns dist-tags and versions for a scoped @ token',
      () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunNpmSearchHandler)!;

    final results = await handler(
        ['bun', 'add', '@typescript-eslint/parser@'], (input) async {
      expect(input.args.last,
          'https://registry.npmjs.org/@typescript-eslint/parser');
      return const ExecuteCommandOutput(
        stdout:
            '{"dist-tags":{"latest":"6.0.0"},"versions":{"5.0.0":{},"6.0.0":{}}}',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(results.map((item) => item.nameSingle),
        ['latest', '6.0.0', '5.0.0']);
    expect(results.first.description, '6.0.0');
  });

  test('npm search returns an empty list on a parse error', () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunNpmSearchHandler)!;
    final results = await handler(['bun', 'add', 'lodash'], (input) async {
      return const ExecuteCommandOutput(
        stdout: 'not json',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(results, isEmpty);
  });

  test('dependencies handler lists package.json deps skipping typed ones',
      () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunDependenciesHandler)!;
    const packageJson = '{"dependencies":{"lodash":"^4","express":"^4"},'
        '"devDependencies":{"jest":"^29"},'
        '"optionalDependencies":{"fsevents":"^2"}}';

    final results = await handler(['bun', 'remove', 'lodash'], (input) async {
      if (input.command == 'npm') {
        return const ExecuteCommandOutput(
          stdout: '/work',
          stderr: '',
          status: 0,
        );
      }
      expect(input.command, 'cat');
      expect(input.args, ['/work/package.json']);
      return ExecuteCommandOutput(
        stdout: packageJson,
        stderr: '',
        status: 0,
      );
    }, null);
    expect(results.map((item) => item.nameSingle),
        ['express', 'jest', 'fsevents']);
    expect(results.map((item) => item.description),
        ['dependency', 'devDependency', 'optionalDependency']);
  });

  test('dependencies handler lists global packages with -g', () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunDependenciesHandler)!;

    final results = await handler(['bun', 'remove', '-g', ''], (input) async {
      expect(input.command, 'bash');
      expect(input.args, ['-c', 'ls -1 `npm root -g`']);
      return const ExecuteCommandOutput(
        stdout: 'typescript\neslint',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(results.map((item) => item.nameSingle), ['typescript', 'eslint']);
    expect(results.first.description, 'Global dependency');
  });

  test('dependencies returns an empty list on a parse error', () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunDependenciesHandler)!;

    final results = await handler(['bun', 'remove', ''], (input) async {
      if (input.command == 'npm') {
        return const ExecuteCommandOutput(
          stdout: '/work',
          stderr: '',
          status: 0,
        );
      }
      return const ExecuteCommandOutput(
        stdout: 'not json',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(results, isEmpty);
  });

  test('loader handler suggests keys, then values after a separator', () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunLoaderHandler)!;

    final keys = await handler(['bun', 'build', '--loader', ''], null, null);
    expect(keys.map((item) => item.nameSingle).toList(), [
      '.js',
      '.jsx',
      '.ts',
      '.tsx',
      '.json',
      '.toml',
      '.text',
      '.file',
      '.wasm',
      '.napi',
    ]);
    expect(keys.first.insertValue, '.js=');

    final without = await handler(['bun', 'build', '--loader', '.js'], null, null);
    expect(without.map((item) => item.nameSingle), isNot(contains('.js')));

    final values =
        await handler(['bun', 'build', '--loader', '.js=js'], null, null);
    expect(values.map((item) => item.nameSingle).toList(), [
      'js',
      'jsx',
      'ts',
      'tsx',
      'json',
      'toml',
      'text',
      'file',
      'wasm',
      'napi',
    ]);
  });

  test('target handler suggests environments without repeats', () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunTargetHandler)!;

    final all = await handler(['bun', 'build', '--target', ''], null, null);
    expect(all.map((item) => item.nameSingle), ['node', 'browser', 'bun']);

    final used = await handler(['bun', 'build', '--target', 'node'], null, null);
    expect(used.map((item) => item.nameSingle), ['browser', 'bun']);
  });

  test('bun create custom generator runs ls through the adapter end to end',
      () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerBunHandlers(handlers);
    final adapter = _FakeAdapter({
      'ls -1 /home/me/.bun-create': const ProcessRunResult(
        stdout: 'react\nnext\nhono',
        stderr: '',
        exitCode: 0,
      ),
    }, envs: {'HOME': '/home/me'});

    final source = await File('assets/specs/b/bun.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    final templateGenerator = create.args![0].generatorsList[1];

    final suggestions = await runGeneratorSuggestions(
      templateGenerator,
      const [
        CommandToken(token: 'bun', tokenLength: 3, complete: true),
        CommandToken(token: 'create', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['react', 'next', 'hono']);
  });

  test('bun create script generator splits its output end to end', () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerBunHandlers(handlers);
    final adapter = _FakeAdapter({
      'command ls -1 .bun-create': const ProcessRunResult(
        stdout: 'react\nnext\nhono',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/bun.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    final scriptGenerator = create.args![0].generatorsList[2];

    final suggestions = await runGeneratorSuggestions(
      scriptGenerator,
      const [
        CommandToken(token: 'bun', tokenLength: 3, complete: true),
        CommandToken(token: 'create', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['react', 'next', 'hono']);
  });

  test('bun add generator searches npm through the adapter end to end',
      () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerBunHandlers(handlers);
    final adapter = _FakeAdapter({
      'curl -s -H Accept: application/json '
          'https://api.npms.io/v2/search/suggestions?q=lodash&size=20':
          const ProcessRunResult(
        stdout: '[{"package":{"name":"lodash","description":"A utility library"}}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/bun.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final add = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('add'));
    final generator = add.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'bun', tokenLength: 3, complete: true),
        CommandToken(token: 'add', tokenLength: 3, complete: true),
        CommandToken(token: 'lodash', tokenLength: 6, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['lodash']);
    expect(suggestions.single.description, 'A utility library');
  });

  test('bun link generator post-processes the find output end to end',
      () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerBunHandlers(handlers);
    const linkScript =
        'find \$BUN_INSTALL/install/global/node_modules -type l -o -type d '
        '-maxdepth 2 | awk -F \'node_modules/\' \'{print \$2}\'';
    final adapter = _FakeAdapter({
      'command sh -c $linkScript': const ProcessRunResult(
        stdout: 'eslint\nprettier',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/bun.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final link = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('link'));
    final generator = link.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'bun', tokenLength: 3, complete: true),
        CommandToken(token: 'link', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['eslint', 'prettier']);
    expect(suggestions.first.description, 'Link to this package');
  });

  test('bun test generator post-processes the test file list end to end',
      () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerBunHandlers(handlers);
    const testScript =
        'find \$(npm prefix) | grep -E ".*.(test|_test|spec|_spec).(ts|tsx|js|jsx)\$" '
        '| grep -vE ".*/node_modules/.*" | sed "s|\$(npm prefix)/||"';
    final adapter = _FakeAdapter({
      'command sh -c $testScript': const ProcessRunResult(
        stdout: 'test/foo_test.ts\nsrc/bar.spec.js',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/bun.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final testSub = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('test'));
    final generator = testSub.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'bun', tokenLength: 3, complete: true),
        CommandToken(token: 'test', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['foo_test.ts', 'bar.spec.js']);
    expect(suggestions.map((suggestion) => suggestion.insertValue).toList(),
        ['test/foo_test.ts', 'src/bar.spec.js']);
    expect(suggestions.map((suggestion) => suggestion.priority).toList(),
        [76, 76]);
  });

  test('bun JSON resolves the root options and create loadSpec handlers',
      () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final source = await File('assets/specs/b/bun.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    // Root options: `publicParams` filtered to the inspect/hot/watch flags.
    final names = (spec.options ?? const <FigOption>[])
        .map((option) => option.name)
        .toSet();
    expect(names, contains('--inspect'));
    expect(names, contains('--inspect-brk'));
    expect(names, contains('--hot'));
    expect(names, contains('--watch'));
    expect(names, isNot(contains('--cwd')));

    // The create arg's loadSpec names the produced spec `create-<template>`.
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    final loadSpec = create.args!.first.loadSpec as JsonLoadSpecHandler;
    final generated = await loadSpec(['bun', 'create', 'hono'], null, null);
    expect((generated as FigSpec).name, 'create-hono');
  });

  test('migration mode keeps the create loadSpec handler ref', () async {
    // returnEmpty mode runs the unsupported-handler sanitizer; loadSpec must
    // survive it (regression: it was stripped and reported unresolved).
    final registry = JsonHandlerRegistry(
      missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
    );
    registerBunHandlers(registry);
    final source = await File('assets/specs/b/bun.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    expect(create.args!.first.loadSpec, isA<JsonLoadSpecHandler>());
    expect(registry.unresolvedHandlers.map((u) => u.id),
        isNot(contains(bunCreateLoadSpecHandler)));
  });

  test('bun create templates handler strips create- from npx suggestions',
      () async {
    final registry = JsonHandlerRegistry();
    registerBunHandlers(registry);
    final handler = registry.custom(bunCreateSuggestionsHandler)!;
    final suggestions =
        await handler(['bun', 'create', ''], null, null);
    expect(suggestions.map((item) => item.name).toList(), [
      'react-native-app',
      'completion-spec',
      'next-app',
      't3-app',
      'discord-bot',
      'video',
      'remix',
    ]);
    expect(suggestions.map((item) => item.priority).toSet(), {76});
  });
}
