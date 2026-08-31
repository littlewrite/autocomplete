import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/pre_commit.dart';
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

/// Runs a registered custom handler with a fake executeCommand keyed by the
/// command joined with spaces.
Future<List<FigSuggestion>> _runCustom(
  JsonHandlerRegistry registry,
  String id,
  Map<String, ProcessRunResult> results, {
  List<String> tokens = const [],
}) async {
  final handler = registry.custom(id)!;
  return handler(tokens, (input) async {
    final key = [input.command, ...input.args].join(' ');
    final result = results[key] ?? const ProcessRunResult(stdout: '');
    return ExecuteCommandOutput(
      stdout: result.stdout,
      stderr: result.stderr,
      status: result.exitCode,
    );
  }, null);
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

/// Returns the first custom generator on [optionName]'s arg.
FigGenerator? generatorByOption(FigSpec spec, String optionName) {
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    for (final option in subcommand.options ?? const <FigOption>[]) {
      if (option.nameList.contains(optionName)) {
        for (final arg in option.args ?? const <FigArg>[]) {
          for (final generator in arg.generatorsList) {
            if (generator.custom != null) return generator;
          }
        }
      }
    }
  }
  return null;
}

void main() {
  test('pre-commit JSON binds every generator to the five declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPreCommitHandlers(handlers);
    final source = await File('assets/specs/p/pre-commit.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(preCommitHooksInConfigPostProcessHandler));
    expect(source, contains(preCommitRemoteLocalBranchesHandler));
    expect(source, contains(preCommitLocalBranchesHandler));
    expect(source, contains(preCommitRevsHandler));
    expect(source, contains(preCommitRemotesHandler));
    expect(document['name'], 'pre-commit');

    final ids = <String>{};
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final generatorMap = generator as Map;
          final postProcess = generatorMap['postProcess'];
          if (postProcess is Map) {
            ids.add(postProcess['handler'] as String);
          }
          final handler = generatorMap['handler'];
          if (handler is String) {
            ids.add(handler);
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
    expect(ids, {
      preCommitHooksInConfigPostProcessHandler,
      preCommitRemoteLocalBranchesHandler,
      preCommitLocalBranchesHandler,
      preCommitRevsHandler,
      preCommitRemotesHandler,
    });
  });

  test('hooksInConfig post-processor collects hook ids from the YAML repos',
      () {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    const output = '''
repos:
- repo: https://github.com/pre-commit/pre-commit-hooks
  rev: v4.4.0
  hooks:
  - id: trailing-whitespace
  - id: end-of-file-fixer
- repo: https://github.com/psf/black
  rev: 23.3.0
  hooks:
  - id: black
''';

    final suggestions =
        registry.postProcess(preCommitHooksInConfigPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['trailing-whitespace', 'end-of-file-fixer', 'black']);
  });

  test('hooksInConfig post-processor returns empty for no repos and parse '
      'errors', () {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    final postProcess =
        registry.postProcess(preCommitHooksInConfigPostProcessHandler)!;

    expect(postProcess('other: value'), isEmpty);
    expect(postProcess('repos: ['), isEmpty);
    expect(postProcess(''), isEmpty);
  });

  test('remoteLocalBranches strips remotes, keeps current branch, dedups',
      () async {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    const key =
        'git --no-optional-locks branch -a --no-color --sort=-committerdate';
    final suggestions = await _runCustom(
      registry,
      preCommitRemoteLocalBranchesHandler,
      {
        key: const ProcessRunResult(
          stdout: '  main\n'
              '* feature/x\n'
              '  remotes/origin/HEAD -> origin/main\n'
              '  remotes/origin/main\n'
              '  remotes/upstream/other\n',
          stderr: '',
          exitCode: 0,
        ),
      },
    );

    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['main', 'feature/x', 'HEAD', 'other']);
    expect(suggestions[0].description, 'Branch');
    expect(suggestions[0].priority, 75);
    expect(suggestions[0].icon, 'fig://icon?type=git');
    expect(suggestions[1].description, 'Current branch');
    expect(suggestions[1].priority, 100);
    expect(suggestions[1].icon, '⭐️');
    expect(suggestions[2].description, 'Remote branch');
  });

  test('remoteLocalBranches is empty for fatal, non-zero status, and empty '
      'output', () async {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    const key =
        'git --no-optional-locks branch -a --no-color --sort=-committerdate';

    expect(
        await _runCustom(
          registry,
          preCommitRemoteLocalBranchesHandler,
          {key: const ProcessRunResult(stdout: 'fatal: not a git repository')},
        ),
        isEmpty);
    expect(
        await _runCustom(
          registry,
          preCommitRemoteLocalBranchesHandler,
          {
            key: const ProcessRunResult(
                stdout: '  main\n', stderr: '', exitCode: 1),
          },
        ),
        isEmpty);
    expect(
        await _runCustom(
          registry,
          preCommitRemoteLocalBranchesHandler,
          {key: const ProcessRunResult(stdout: '')},
        ),
        isEmpty);
  });

  test('localBranches lists local branches with the current branch first',
      () async {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    const key =
        'git --no-optional-locks branch --no-color --sort=-committerdate';
    final suggestions = await _runCustom(
      registry,
      preCommitLocalBranchesHandler,
      {
        key: const ProcessRunResult(
          stdout: '  main\n* develop\n  feature/z\n',
          stderr: '',
          exitCode: 0,
        ),
      },
    );

    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['main', 'develop', 'feature/z']);
    expect(suggestions[1].description, 'Current branch');
  });

  test('revs keeps the short hash and rest of the line as the description',
      () async {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    const key = 'git rev-list --all --oneline';
    final suggestions = await _runCustom(
      registry,
      preCommitRevsHandler,
      {
        key: const ProcessRunResult(
          stdout: 'a1b2c3d4 feat: first commit\ne5f6g7h8 fix: second\n'
              '1234567\n',
          stderr: '',
          exitCode: 0,
        ),
      },
    );

    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['a1b2c3d', 'e5f6g7h', '1234567']);
    expect(suggestions.map((item) => item.description).toList(),
        ['4 feat: first commit', '8 fix: second', '']);
    expect(suggestions.first.icon, 'fig://icon?type=node');
  });

  test('revs is empty for fatal, non-zero status, and empty output', () async {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    const key = 'git rev-list --all --oneline';

    expect(
        await _runCustom(
          registry,
          preCommitRevsHandler,
          {key: const ProcessRunResult(stdout: 'fatal: bad revision')},
        ),
        isEmpty);
    expect(
        await _runCustom(
          registry,
          preCommitRevsHandler,
          {
            key: const ProcessRunResult(
                stdout: 'a1b2c3d4\n', stderr: '', exitCode: 1),
          },
        ),
        isEmpty);
    expect(
        await _runCustom(
          registry,
          preCommitRevsHandler,
          {key: const ProcessRunResult(stdout: '')},
        ),
        isEmpty);
  });

  test('remotes maps urls to icons and dedups duplicated remotes', () async {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    const key = 'git --no-optional-locks remote -v';
    final suggestions = await _runCustom(
      registry,
      preCommitRemotesHandler,
      {
        key: const ProcessRunResult(
          stdout: 'origin\tgit@github.com:org/repo.git (fetch)\n'
              'origin\tgit@github.com:org/repo.git (push)\n'
              'gitlab\tgit@gitlab.com:group/project.git (fetch)\n'
              'heroku\thttps://git.heroku.com/app.git (push)\n'
              'internal\tssh://git@internal:2222/repo.git (fetch)\n',
          stderr: '',
          exitCode: 0,
        ),
      },
    );

    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['origin', 'gitlab', 'heroku', 'internal']);
    expect(suggestions.map((item) => item.icon).toList(), [
      'fig://icon?type=github',
      'fig://icon?type=gitlab',
      'fig://icon?type=heroku',
      'fig://icon?type=box',
    ]);
    expect(suggestions.first.description, 'Remote');
  });

  test('remotes skips malformed lines and handles empty output', () async {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    const key = 'git --no-optional-locks remote -v';

    final suggestions = await _runCustom(
      registry,
      preCommitRemotesHandler,
      {
        key: const ProcessRunResult(
          stdout: 'origin\tgit@github.com:org/repo.git (fetch)\n'
              'bare-no-tab-line\n',
          stderr: '',
          exitCode: 0,
        ),
      },
    );
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['origin']);

    expect(
        await _runCustom(
          registry,
          preCommitRemotesHandler,
          {key: const ProcessRunResult(stdout: '')},
        ),
        isEmpty);
  });

  test('each pre-commit generator runs end to end through the adapter',
      () async {
    final registry = JsonHandlerRegistry();
    registerPreCommitHandlers(registry);
    final adapter = _FakeAdapter({
      'git --no-optional-locks branch -a --no-color --sort=-committerdate':
          const ProcessRunResult(
        stdout: '  main\n* feature/x\n  remotes/origin/main\n',
        stderr: '',
        exitCode: 0,
      ),
      'git --no-optional-locks branch --no-color --sort=-committerdate':
          const ProcessRunResult(
        stdout: '  main\n* develop\n',
        stderr: '',
        exitCode: 0,
      ),
      'git rev-list --all --oneline': const ProcessRunResult(
        stdout: 'a1b2c3d4 feat: first\ne5f6g7h8 fix: second\n',
        stderr: '',
        exitCode: 0,
      ),
      'git --no-optional-locks remote -v': const ProcessRunResult(
        stdout: 'origin\tgit@github.com:org/repo.git (fetch)\n'
            'gitlab\tgit@gitlab.com:group/project.git (fetch)\n',
        stderr: '',
        exitCode: 0,
      ),
      'cat .pre-commit-config.yaml': const ProcessRunResult(
        stdout: 'repos:\n'
            '- repo: https://github.com/pre-commit/pre-commit-hooks\n'
            '  rev: v4.4.0\n'
            '  hooks:\n'
            '  - id: trailing-whitespace\n'
            '  - id: end-of-file-fixer\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pre-commit.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(FigGenerator? generator, List<String> names) async {
      expect(generator, isNotNull);
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'pre-commit', tokenLength: 10, complete: true),
          CommandToken(token: 'run', tokenLength: 3, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names);
    }

    await runGenerator(
        generatorByOption(spec, '--remote-branch'), ['main', 'feature/x']);
    await runGenerator(generatorByOption(spec, '--local-branch'),
        ['main', 'develop']);
    await runGenerator(generatorByOption(spec, '--from-ref'),
        ['a1b2c3d', 'e5f6g7h']);
    await runGenerator(
        generatorByOption(spec, '--remote-name'), ['origin', 'gitlab']);
    await runGenerator(generatorByScript(spec, 'cat .pre-commit-config.yaml'),
        ['trailing-whitespace', 'end-of-file-fixer']);
  });
}
