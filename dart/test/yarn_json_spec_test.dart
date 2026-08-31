import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/yarn.dart';
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

const _packageJsonScript = [
  'bash',
  '-c',
  "until [[ -f package.json ]] || [[ \$PWD = '/' ]]; do cd ..; done; cat package.json",
];

/// Collects every `handler` string referenced anywhere in the JSON document.
Set<String> _allHandlerIds(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      final handler = value['handler'];
      if (handler is String) ids.add(handler);
      for (final item in value.values) {
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      for (final arg in subcommand.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  return visit(spec.subcommands ?? const []);
}

void main() {
  test('yarn JSON binds every dynamic value to the declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerYarnHandlers(handlers);
    final source = await File('assets/specs/y/yarn.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'yarn');
    expect(source, contains(yarnGenerateSpecHandler));
    expect(source, contains(yarnWorkspaceGenerateSpecHandler));
    expect(source, contains(yarnCreateClisLoadSpecHandler));
    expect(source, contains(yarnScriptsGeneratorHandler));
    expect(source, contains(yarnSearchGeneratorHandler));
    expect(source, contains(yarnConfigListHandler));
    expect(source, contains(yarnGetGlobalPackagesHandler));
    expect(source, contains(yarnDependenciesPostProcessHandler));
    expect(source, contains(yarnAllDependenciesPostProcessHandler));
    expect(source, contains(yarnCreateClisScriptHandler));
    expect(source, contains(yarnCreateClisPostProcessHandler));
    expect(source, contains(yarnScriptParserDirectivesAliasHandler));

    expect(_allHandlerIds(document), {
      yarnGenerateSpecHandler,
      yarnWorkspaceGenerateSpecHandler,
      yarnCreateClisLoadSpecHandler,
      yarnScriptsGeneratorHandler,
      yarnSearchGeneratorHandler,
      yarnConfigListHandler,
      yarnGetGlobalPackagesHandler,
      yarnDependenciesPostProcessHandler,
      yarnAllDependenciesPostProcessHandler,
      yarnCreateClisScriptHandler,
      yarnCreateClisPostProcessHandler,
      yarnScriptParserDirectivesAliasHandler,
    });
  });

  test('yarn JSON parses with every resolvable handler bound', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final source = await File('assets/specs/y/yarn.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.name, 'yarn');
    expect(spec.generateSpec, isNotNull);
    // The root args parser directive alias resolves to the registered function.
    expect((spec.args!.first.parserDirectives as Map)['alias'], isA<Function>());
    // The workspace subcommand generateSpec resolves to a host callback.
    final workspace = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('workspace'));
    expect(workspace.generateSpec, isNotNull);
    // The create args loadSpec handler is registered, so parsing yields the
    // deferred callback rather than a raw ref object.
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    expect(create.args!.first.loadSpec, isA<Function>());
    final loadSpec = create.args!.first.loadSpec as JsonLoadSpecHandler;
    final generated = await loadSpec(['yarn', 'create', 'react-app'], null, null);
    expect((generated as FigSpec).name, 'create-react-app');
  });

  test('scripts generator returns scripts with fig overrides and npm icon',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnScriptsGeneratorHandler)!;

    final suggestions = await handler(
      ['yarn', 'run', ''],
      (input) async => const ExecuteCommandOutput(
        stdout:
            '{"scripts":{"build":"dart compile","test":"dart test"},'
            '"fig":{"build":{"description":"Custom build","priority":80}}}',
        stderr: '',
        status: 0,
      ),
      null,
    );
    expect(suggestions.map((item) => item.nameSingle), ['build', 'test']);
    expect(suggestions.first.description, 'Custom build');
    expect(suggestions.first.priority, 80);
    expect(suggestions.first.icon, 'fig://icon?type=yarn');
    expect(suggestions.last.description, 'dart test');
    expect(suggestions.last.icon, 'fig://icon?type=yarn');
  });

  test('scripts generator picks the npm icon for the npm client', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnScriptsGeneratorHandler)!;

    final suggestions = await handler(
      ['npm', 'run', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '{"scripts":{"build":"dart compile"}}',
        stderr: '',
        status: 0,
      ),
      null,
    );
    expect(suggestions.single.icon, 'fig://icon?type=npm');
  });

  test('scripts generator returns empty on empty output and parse errors',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnScriptsGeneratorHandler)!;

    Future<List<FigSuggestion>> run(String stdout) => handler(
          ['yarn', 'run', ''],
          (input) async =>
              ExecuteCommandOutput(stdout: stdout, stderr: '', status: 0),
          null,
        );

    expect(await run(''), isEmpty);
    expect(await run('   \n'), isEmpty);
    expect(await run('not json'), isEmpty);
    expect(await run('{"dependencies":{"vite":"2.0.0"}}'), isEmpty);
  });

  test('search generator returns package suggestions from npms.io', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnSearchGeneratorHandler)!;

    final suggestions = await handler(
      ['yarn', 'add', 'react'],
      (input) async {
        expect(input.args.last,
            'https://api.npms.io/v2/search/suggestions?q=react&size=20');
        return const ExecuteCommandOutput(
          stdout: '[{"package":{"name":"react","description":"React"}},'
              '{"package":{"name":"react-dom","description":"React DOM"}}]',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    expect(suggestions.map((item) => item.nameSingle), ['react', 'react-dom']);
    expect(suggestions.map((item) => item.description), ['React', 'React DOM']);
  });

  test('search generator returns dist-tags and versions for a version token',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnSearchGeneratorHandler)!;

    final suggestions = await handler(
      ['yarn', 'add', 'lodash@'],
      (input) async {
        expect(input.args.last, 'https://registry.npmjs.org/lodash');
        expect(input.args, contains('Accept: application/vnd.npm.install-v1+json'));
        return const ExecuteCommandOutput(
          stdout: '{"dist-tags":{"latest":"4.17.21"},'
              '"versions":{"4.17.21":{},"4.17.20":{}}}',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    expect(suggestions.map((item) => item.nameSingle),
        ['latest', '4.17.20', '4.17.21']);
    expect(suggestions.first.description, '4.17.21');
  });

  test('search generator returns empty on empty token, errors, and status',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnSearchGeneratorHandler)!;

    expect(
        await handler(['yarn', 'add', ''],
            (input) async =>
                const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
            null),
        isEmpty);
    expect(
        await handler(['yarn', 'add', 'react'],
            (input) async => const ExecuteCommandOutput(
                stdout: 'not json', stderr: '', status: 0),
            null),
        isEmpty);
    expect(
        await handler(['yarn', 'add', 'react'],
            (input) async => const ExecuteCommandOutput(
                stdout: '[{"package":{"name":"react"}}]',
                stderr: '',
                status: 1),
            null),
        isEmpty);
    expect(
        await handler(const <String>[],
            (input) async =>
                const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
            null),
        isEmpty);
  });

  test('config list generator normalizes and lists config keys', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnConfigListHandler)!;

    final suggestions = await handler(
      ['yarn', 'config', 'get', ''],
      (input) async {
        expect(input.command, 'yarn');
        expect(input.args, ['config', 'list']);
        return const ExecuteCommandOutput(
          stdout: "yarn config v1.22.19\n"
              "{ lastUpdateCheck: 123, registry: 'https://registry.yarnpkg.com' }\n"
              "Done in 0.01s.",
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    // The source's `registry` -> `lastUpdateCheck` replacement creates a
    // duplicate key, so the parsed object keeps a single `lastUpdateCheck`.
    expect(suggestions.map((item) => item.nameSingle), ['lastUpdateCheck']);
  });

  test('config list generator returns empty on empty and unparseable output',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnConfigListHandler)!;

    expect(
        await handler(['yarn', 'config', 'get', ''],
            (input) async =>
                const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
            null),
        isEmpty);
    expect(
        await handler(['yarn', 'config', 'get', ''],
            (input) async => const ExecuteCommandOutput(
                stdout: 'yarn config v1.22.19\nDone in 0.01s.',
                stderr: '',
                status: 0),
            null),
        isEmpty);
  });

  test('global packages generator lists global dependencies excluding tokens',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnGetGlobalPackagesHandler)!;

    final suggestions = await handler(
      ['yarn', 'global', 'remove', 'vue'],
      (input) async {
        if (input.command == 'yarn') {
          expect(input.args, ['global', 'dir']);
          return const ExecuteCommandOutput(
              stdout: '/usr/local/lib/node_modules', stderr: '', status: 0);
        }
        expect(input.command, 'cat');
        expect(input.args, ['/usr/local/lib/node_modules/package.json']);
        return const ExecuteCommandOutput(
          stdout: '{"dependencies":{"vue":"1.0.0","jest":"29.0.0"},'
              '"devDependencies":{"prettier":"2.0.0"}}',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    // `vue` is already on the command line and is filtered out.
    expect(suggestions.map((item) => item.nameSingle), ['jest', 'prettier']);
    expect(suggestions.map((item) => item.icon), ['📦', '📦']);
  });

  test('global packages generator returns empty on empty and parse errors',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.custom(yarnGetGlobalPackagesHandler)!;

    expect(
        await handler(['yarn', 'global', 'remove', ''],
            (input) async =>
                const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
            null),
        isEmpty);
    expect(
        await handler(['yarn', 'global', 'remove', ''],
            (input) async => const ExecuteCommandOutput(
                stdout: 'not json', stderr: '', status: 0),
            null),
        isEmpty);
  });

  test('dependencies post-processor merges groups and filters listed tokens',
      () {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final suggestions =
        registry.postProcess(yarnDependenciesPostProcessHandler)!(
      '{"dependencies":{"lodash":"4.17.21","vite":"2.0.0"},'
      '"devDependencies":{"jest":"29.0.0"},'
      '"optionalDependencies":{"tsc":"1.0.0"}}',
      ['yarn', 'remove', 'vite'],
    );
    expect(suggestions.map((item) => item.nameSingle),
        ['lodash', 'jest', 'tsc']);
    expect(suggestions.map((item) => item.icon), ['📦', '📦', '📦']);
    // Merged non-empty values all read as dependencies (matching the source).
    expect(suggestions.map((item) => item.description),
        ['dependency', 'dependency', 'dependency']);
  });

  test('dependencies post-processor labels empty dev deps as devDependency', () {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final suggestions =
        registry.postProcess(yarnDependenciesPostProcessHandler)!(
      '{"dependencies":{"lodash":"4.17.21"},"devDependencies":{"jest":""}}',
    );
    expect(suggestions.map((item) => item.nameSingle), ['lodash', 'jest']);
    expect(suggestions.first.description, 'dependency');
    expect(suggestions.last.description, 'devDependency');
  });

  test('dependencies post-processor returns empty on empty and parse errors',
      () {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final postProcess =
        registry.postProcess(yarnDependenciesPostProcessHandler)!;
    expect(postProcess(''), isEmpty);
    expect(postProcess('not json'), isEmpty);
    expect(postProcess('{"dependencies":{}}'), isEmpty);
    expect(postProcess('{}'), isEmpty);
  });

  test('all dependencies post-processor splits tree names at the first @', () {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final suggestions =
        registry.postProcess(yarnAllDependenciesPostProcessHandler)!(
      '{"data":{"trees":[{"name":"lodash@4.17.21"},{"name":"jest@^29.0.0"}]}}',
    );
    expect(suggestions.map((item) => item.nameSingle), ['lodash', 'jest']);
    expect(suggestions.map((item) => item.icon), ['📦', '📦']);
  });

  test('all dependencies post-processor returns empty on empty and parse errors',
      () {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final postProcess =
        registry.postProcess(yarnAllDependenciesPostProcessHandler)!;
    expect(postProcess(''), isEmpty);
    expect(postProcess('not json'), isEmpty);
    expect(postProcess('{}'), isEmpty);
    expect(postProcess('{"data":{}}'), isEmpty);
  });

  test('create CLIs script builds the npms.io query from the search term', () {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final script = registry.script(yarnCreateClisScriptHandler)!;

    expect(script(['yarn', 'create', 'react']), [
      'curl',
      '-s',
      '-H',
      'Accept: application/json',
      'https://api.npms.io/v2/search?q=create-react&size=20',
    ]);
    // An empty current token suppresses the query (source returns undefined).
    expect(script(['yarn', 'create', '']), isNull);
    expect(script(const <String>[]), isNull);
  });

  test('create CLIs post-processor strips the create- prefix', () {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final suggestions =
        registry.postProcess(yarnCreateClisPostProcessHandler)!(
      '{"results":[{"package":{"name":"create-react-app","description":"React app"}},'
      '{"package":{"name":"create-vite","description":"Vite app"}}]}',
    );
    expect(suggestions.map((item) => item.nameSingle), ['react-app', 'vite']);
    expect(suggestions.map((item) => item.description), ['React app', 'Vite app']);
  });

  test('create CLIs post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final postProcess =
        registry.postProcess(yarnCreateClisPostProcessHandler)!;
    expect(postProcess('not json'), isEmpty);
    expect(postProcess('{"results":{}}'), isEmpty);
  });

  test('script parser directive alias resolves a package.json script', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final alias = registry.alias(yarnScriptParserDirectivesAliasHandler)!;
    var prefixCalls = 0;

    final script = await alias('build', (input) async {
      if (input.command == 'npm') {
        prefixCalls++;
        expect(input.args, ['prefix']);
        return const ExecuteCommandOutput(
            stdout: '/work ', stderr: '', status: 0);
      }
      expect(input.command, 'cat');
      expect(input.args, ['/work/package.json']);
      return const ExecuteCommandOutput(
        stdout: '{"scripts":{"build":"dart compile","test":"dart test"}}',
        stderr: '',
        status: 0,
      );
    });
    expect(script, 'dart compile');
    expect(prefixCalls, 1);
  });

  test('script parser directive alias throws when prefix fails or is missing',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final alias = registry.alias(yarnScriptParserDirectivesAliasHandler)!;

    await expectLater(
        alias('build', (input) async => const ExecuteCommandOutput(
            stdout: '', stderr: '', status: 1)),
        throwsA(isA<StateError>()));
    await expectLater(
        alias('missing', (input) async {
          if (input.command == 'npm') {
            return const ExecuteCommandOutput(
                stdout: '/work', stderr: '', status: 0);
          }
          return const ExecuteCommandOutput(
            stdout: '{"scripts":{"build":"dart compile"}}',
            stderr: '',
            status: 0,
          );
        }),
        throwsA(isA<StateError>()));
  });

  test('root generateSpec surfaces nodeCli binaries as yarn subcommands',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final spec = await registry.generateSpec(yarnGenerateSpecHandler)!(
      ['yarn', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'vue\njest\nrw\nprisma\nunknown-cli\n',
        stderr: '',
        status: 0,
      ),
    );
    expect(spec, isNotNull);
    expect(spec!.name, 'yarn');
    expect(spec.subcommands!.map((item) => item.nameList.first),
        ['vue', 'jest', 'rw', 'prisma']);
    expect(spec.subcommands!.first.icon, 'fig://icon?type=package');
    expect(
        spec.subcommands!
            .firstWhere((item) => item.nameList.first == 'rw')
            .loadSpec,
        'redwood');
    expect(
        spec.subcommands!
            .firstWhere((item) => item.nameList.first == 'vue')
            .loadSpec,
        'vue');
  });

  test('root generateSpec yields no subcommands on empty output', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final spec = await registry.generateSpec(yarnGenerateSpecHandler)!(
      ['yarn', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
    );
    expect(spec!.name, 'yarn');
    expect(spec.subcommands, isEmpty);
  });

  test('workspace generateSpec materializes subcommands for yarn v1', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final sub =
        await registry.generateSubcommand(yarnWorkspaceGenerateSpecHandler)!(
      ['yarn', 'workspace', ''],
      (input) async {
        if (input.args.contains('--version')) {
          return const ExecuteCommandOutput(
              stdout: '1.22.19', stderr: '', status: 0);
        }
        expect(input.args, ['workspaces', 'info']);
        return const ExecuteCommandOutput(
          stdout: 'yarn workspaces v1.22.19\n'
              '{"packages/app":{"location":"packages/app"},'
              '"packages/web":{"location":"packages/web"}}\n'
              'Done in 0.02s.',
          stderr: '',
          status: 0,
        );
      },
    );
    expect(sub, isNotNull);
    expect(sub!.name, 'workspace');
    expect(sub.subcommands!.map((item) => item.nameList.first),
        ['packages/app', 'packages/web']);
    expect(
        sub.subcommands!.map((item) => item.description),
        ['Workspaces', 'Workspaces']);

    final gen = sub.subcommands!.first.args!.first.generatorsList.first;
    expect(sub.subcommands!.first.args!.first.name, 'script');
    expect(gen.script, ['cat', 'packages/app/package.json']);
    expect(gen.cache,
        {'strategy': 'stale-while-revalidate', 'ttl': 60000});

    final scripts = gen.postProcess!(
        '{"scripts":{"build":"dart compile","test":"dart test"}}');
    expect(scripts.map((item) => item.nameSingle), ['build', 'test']);
  });

  test('workspace generateSpec materializes subcommands for yarn v2', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final sub =
        await registry.generateSubcommand(yarnWorkspaceGenerateSpecHandler)!(
      ['yarn', 'workspace', ''],
      (input) async {
        if (input.args.contains('--version')) {
          return const ExecuteCommandOutput(
              stdout: '2.4.0', stderr: '', status: 0);
        }
        expect(input.args, ['workspaces', 'list', '--json']);
        // No trailing newline: a trailing empty line would fail to parse.
        return const ExecuteCommandOutput(
          stdout: '{"name":"app","location":"packages/app"}\n'
              '{"name":"web","location":"packages/web"}',
          stderr: '',
          status: 0,
        );
      },
    );
    expect(sub!.name, 'workspace');
    expect(sub.subcommands!.map((item) => item.nameList.first), ['app', 'web']);
    expect(sub.subcommands!.first.args!.first.generatorsList.first.script,
        ['cat', 'packages/app/package.json']);
  });

  test('workspace generateSpec falls back on errors and missing commands',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final handler = registry.generateSubcommand(yarnWorkspaceGenerateSpecHandler)!;

    final broken = await handler(
      ['yarn', 'workspace', ''],
      (input) async {
        if (input.args.contains('--version')) {
          return const ExecuteCommandOutput(
              stdout: '1.22.19', stderr: '', status: 0);
        }
        return const ExecuteCommandOutput(
            stdout: 'no json here', stderr: '', status: 0);
      },
    );
    expect(broken!.name, 'workspaces');

    final noCommand = await handler(['yarn', 'workspace', ''], null);
    expect(noCommand!.name, 'workspaces');
  });

  test('scripts generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final adapter = _FakeAdapter({
      _packageJsonScript.join(' '): const ProcessRunResult(
        stdout: '{"scripts":{"build":"dart compile","test":"dart test"}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/y/yarn.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'yarn', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['build', 'test']);
  });

  test('all dependencies generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final adapter = _FakeAdapter({
      'yarn list --depth=0 --json': const ProcessRunResult(
        stdout: '{"data":{"trees":[{"name":"lodash@4.17.21"},'
            '{"name":"jest@^29.0.0"}]}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/y/yarn.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'yarn list --depth=0 --json');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'yarn', tokenLength: 4, complete: true),
        CommandToken(token: 'why', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['lodash', 'jest']);
  });

  test('dependencies generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final adapter = _FakeAdapter({
      _packageJsonScript.join(' '): const ProcessRunResult(
        stdout: '{"dependencies":{"lodash":"4.17.21","vite":"2.0.0"},'
            '"devDependencies":{"jest":"29.0.0"}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/y/yarn.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, _packageJsonScript.join(' '));
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'yarn', tokenLength: 4, complete: true),
        CommandToken(token: 'remove', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['lodash', 'vite', 'jest']);
  });

  test('create CLIs generator runs its deferred script and post-process',
      () async {
    final registry = JsonHandlerRegistry();
    registerYarnHandlers(registry);
    final adapter = _FakeAdapter({
      'curl -s -H Accept: application/json '
          'https://api.npms.io/v2/search?q=create-react&size=20':
          const ProcessRunResult(
        stdout: '{"results":[{"package":{"name":"create-react-app",'
            '"description":"React app"}},'
            '{"package":{"name":"create-vite","description":"Vite app"}}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/y/yarn.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    final generator = create.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'yarn', tokenLength: 4, complete: true),
        CommandToken(token: 'create', tokenLength: 6, complete: true),
        CommandToken(token: 'react', tokenLength: 5, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['react-app', 'vite']);
  });
}
