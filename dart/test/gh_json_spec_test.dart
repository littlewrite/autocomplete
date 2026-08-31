import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/gh.dart';
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

/// Recursively finds the first subcommand whose name list contains [name].
FigSubcommand? _findSubcommand(
    List<FigSubcommand>? subcommands, String name) {
  if (subcommands == null) return null;
  for (final subcommand in subcommands) {
    if (subcommand.nameList.contains(name)) return subcommand;
    final nested = _findSubcommand(subcommand.subcommands, name);
    if (nested != null) return nested;
  }
  return null;
}

const _allGhHandlerIds = <String>{
  ghListAliasGeneratorHandler,
  ghListPrGeneratorHandler,
  ghRemoteBranchesGeneratorHandler,
  ghListRepositoriesGeneratorHandler,
  ghArgsParserDirectivesAliasHandler,
  ghPortsForwardArgsGeneratorsHandler,
  ghPortsVisibilityArgsGeneratorsHandler,
};

void main() {
  test('gh JSON binds every dynamic value to the declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerGhHandlers(handlers);
    final source = await File('assets/specs/g/gh.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'gh');
    for (final id in _allGhHandlerIds) {
      expect(source, contains(id));
    }

    expect(_allHandlerIds(document), _allGhHandlerIds);
  });

  test('gh JSON parses with every resolvable handler bound', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final source = await File('assets/specs/g/gh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.name, 'gh');
    // The root args generator resolves to the registered listAlias custom
    // handler and the parser directive alias to the registered function.
    expect(spec.args!.first.generatorsList.first.custom, isA<Function>());
    expect(
        (spec.args!.first.parserDirectives as Map)['alias'], isA<Function>());
    // The codespace ports forward/visibility generators resolve as well.
    final codespace = _findSubcommand(spec.subcommands, 'codespace');
    expect(codespace, isNotNull);
    final ports = _findSubcommand(codespace!.subcommands, 'ports');
    expect(ports, isNotNull);
    final forward = _findSubcommand(ports!.subcommands, 'forward');
    expect(forward!.args!.first.generatorsList.first.custom, isA<Function>());
    final visibility = _findSubcommand(ports.subcommands, 'visibility');
    expect(
        visibility!.args!.first.generatorsList.first.custom, isA<Function>());
  });

  test('listAlias generator returns one suggestion per alias', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghListAliasGeneratorHandler)!;

    final suggestions = await handler(
      ['gh', ''],
      (input) async {
        expect(input.command, 'gh');
        expect(input.args, ['alias', 'list']);
        return const ExecuteCommandOutput(
          stdout: 'co:\tgh pr checkout\npivotal:\tgh pr view\n',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    expect(suggestions.map((item) => item.nameSingle), ['co', 'pivotal']);
    expect(suggestions.map((item) => item.description),
        ["Alias for 'gh pr checkout'", "Alias for 'gh pr view'"]);
    expect(suggestions.map((item) => item.icon),
        ['fig://icon?type=commandkey', 'fig://icon?type=commandkey']);
  });

  test('listAlias generator returns empty on empty output', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghListAliasGeneratorHandler)!;

    final suggestions = await handler(['gh', ''],
        (input) async =>
            const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
        null);
    expect(suggestions, isEmpty);
  });

  test('listPR generator maps pull requests with OPEN state icons', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghListPrGeneratorHandler)!;

    final suggestions = await handler(
      ['gh', 'browse', ''],
      (input) async {
        expect(input.command, 'gh');
        expect(input.args, ['pr', 'list', '--json=number,title,headRefName,state']);
        return const ExecuteCommandOutput(
          stdout: '[{"number":123,"title":"Fix bug","headRefName":"fix-bug",'
              '"state":"OPEN"},{"number":124,"title":"Docs",'
              '"headRefName":"docs","state":"CLOSED"}]',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    expect(suggestions.map((item) => item.nameSingle), ['123', '124']);
    expect(suggestions.map((item) => item.displayName), ['Fix bug', 'Docs']);
    expect(suggestions.map((item) => item.description),
        ['#123 | fix-bug', '#124 | docs']);
    expect(suggestions.map((item) => item.icon), ['✅', '☑️']);
  });

  test('listPR generator returns empty on empty and unparseable output',
      () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghListPrGeneratorHandler)!;

    expect(
        await handler(['gh', 'browse', ''],
            (input) async =>
                const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
            null),
        isEmpty);
    expect(
        await handler(['gh', 'browse', ''],
            (input) async => const ExecuteCommandOutput(
                stdout: 'not json', stderr: '', status: 0),
            null),
        isEmpty);
    expect(
        await handler(['gh', 'browse', ''],
            (input) async => const ExecuteCommandOutput(
                stdout: '{"object":true}', stderr: '', status: 0),
            null),
        isEmpty);
  });

  test('remoteBranches generator strips remote prefixes and marks current',
      () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghRemoteBranchesGeneratorHandler)!;

    final suggestions = await handler(
      ['gh', 'browse', '-b', ''],
      (input) async {
        expect(input.command, 'git');
        expect(input.args, [
          '--no-optional-locks',
          'branch',
          '-r',
          '--no-color',
          '--sort=-committerdate',
        ]);
        return const ExecuteCommandOutput(
          stdout: '  origin/main\n  origin/feature/x\n  fork/dev\n'
              '  + origin/checked-out\n  * origin/HEAD -> origin/main\n'
              '  * (HEAD detached at origin/release)\n',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    // The `* (HEAD detached...)` line maps to `{}` in the source and is
    // dropped; the `* origin/HEAD -> origin/main` line becomes the current
    // branch.
    expect(suggestions.map((item) => item.nameSingle), [
      'main',
      'feature/x',
      'dev',
      'origin/checked-out',
      'origin/HEAD -> origin/main',
    ]);
    expect(suggestions.map((item) => item.description), [
      'Branch',
      'Branch',
      'Branch',
      'Branch',
      'Current branch',
    ]);
    expect(suggestions.last.priority, 100);
    expect(suggestions.last.icon, '⭐️');
    expect(suggestions.first.icon, 'fig://icon?type=git');
  });

  test('remoteBranches generator filters messages and fatal errors', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghRemoteBranchesGeneratorHandler)!;

    Future<List<FigSuggestion>> run(String stdout) => handler(
          ['gh', 'browse', '-b', ''],
          (input) async =>
              ExecuteCommandOutput(stdout: stdout, stderr: '', status: 0),
          null,
        );

    // A leading warning line is dropped, leaving the real branches.
    final warned = await run('warning: some warning\n  origin/main\n');
    expect(warned.map((item) => item.nameSingle), ['main']);
    // fatal output short-circuits to an empty list.
    expect(await run('fatal: Not a git repository'), isEmpty);
    expect(await run(''), isEmpty);
  });

  test('listRepositories generator parses the JSON-lines GraphQL output',
      () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghListRepositoriesGeneratorHandler)!;

    final suggestions = await handler(
      ['gh', 'repo', 'archive', ''],
      (input) async {
        expect(input.command, 'gh');
        expect(input.args.first, 'api');
        return const ExecuteCommandOutput(
          stdout: '{"isPrivate":false,"nameWithOwner":"withfig/autocomplete",'
              '"description":"Fig autocomplete"}\n'
              '{"isPrivate":true,"nameWithOwner":"octocat/Hello-World",'
              '"description":"My first repo"}',
          stderr: '',
          status: 0,
        );
      },
      null,
    );
    expect(suggestions.map((item) => item.nameSingle),
        ['withfig/autocomplete', 'octocat/Hello-World']);
    expect(suggestions.map((item) => item.description),
        ['Fig autocomplete', 'My first repo']);
    expect(suggestions.map((item) => item.icon), ['👀', '🔒']);
  });

  test('listRepositories generator returns empty on empty and parse errors',
      () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghListRepositoriesGeneratorHandler)!;

    expect(
        await handler(['gh', 'repo', 'archive', ''],
            (input) async =>
                const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
            null),
        isEmpty);
    expect(
        await handler(['gh', 'repo', 'archive', ''],
            (input) async => const ExecuteCommandOutput(
                stdout: '{not json}', stderr: '', status: 0),
            null),
        isEmpty);
  });

  test('args parser directive alias resolves a typed gh alias token', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final alias = registry.alias(ghArgsParserDirectivesAliasHandler)!;

    var executed = false;
    final expansion = await alias('co', (input) async {
      executed = true;
      expect(input.command, 'gh');
      expect(input.args, ['alias', 'list']);
      return const ExecuteCommandOutput(
        stdout: 'co:\tgh pr checkout\npr:\tgh pr view\n',
        stderr: '',
        status: 0,
      );
    });
    expect(executed, isTrue);
    expect(expansion, 'gh pr checkout');
  });

  test('args parser directive alias throws when the token is unknown', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final alias = registry.alias(ghArgsParserDirectivesAliasHandler)!;

    await expectLater(
        alias('missing', (input) async => const ExecuteCommandOutput(
            stdout: 'co:\tgh pr checkout\n', stderr: '', status: 0)),
        throwsA(isA<StateError>()));
  });

  test('ports forward generator yields no suggestions', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghPortsForwardArgsGeneratorsHandler)!;

    expect(
        await handler(['cs', 'ports', 'forward', '8080:'],
            (input) async =>
                const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
            null),
        isEmpty);
    expect(
        await handler(['cs', 'ports', 'forward', ''],
            (input) async =>
                const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
            null),
        isEmpty);
  });

  test('ports visibility generator suggests values only after a colon',
      () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final handler = registry.custom(ghPortsVisibilityArgsGeneratorsHandler)!;

    ExecuteCommandOutput ok(String stdout) =>
        ExecuteCommandOutput(stdout: stdout, stderr: '', status: 0);
    Future<List<FigSuggestion>> run(List<String> tokens) =>
        handler(tokens, (input) async => ok(''), null);

    // No colon yet: keys collection is empty, so nothing is suggested.
    expect(await run(['cs', 'ports', 'visibility', '']), isEmpty);
    expect(await run(['cs', 'ports', 'visibility', '8080']), isEmpty);
    // A colon present: suggest the visibility values.
    expect((await run(['cs', 'ports', 'visibility', '8080:']))
            .map((item) => item.nameSingle),
        ['public', 'private', 'org']);
    expect((await run(['cs', 'ports', 'visibility', '8080:80']))
            .map((item) => item.nameSingle),
        ['public', 'private', 'org']);
  });

  test('listAlias generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerGhHandlers(registry);
    final adapter = _FakeAdapter({
      'gh alias list': const ProcessRunResult(
        stdout: 'co:\tgh pr checkout\npr:\tgh pr view\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/gh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.first.generatorsList.first;
    expect(generator.custom, isA<Function>());

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'gh', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['co', 'pr']);
  });
}
