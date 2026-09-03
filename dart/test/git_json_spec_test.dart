import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/git.dart';
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

/// Builds an [ExecuteCommandFunction] from an adapter, mirroring the runtime's
/// `_createExecuteCommand`.
ExecuteCommandFunction _executor(CompleteAdapter adapter) {
  return (input) async {
    final result = await adapter.runProcess(input.command, input.args);
    return ExecuteCommandOutput(
      stdout: result.stdout,
      stderr: result.stderr,
      status: result.exitCode,
    );
  };
}

const _gitLogOutput = 'feat: add widget\n'
    'fix: handle empty input\n';

const _gitDiffOutput = 'diff --git a/lib/autocomplete.dart '
    'b/lib/autocomplete.dart\n'
    'index 1234567..89abcde 100644\n'
    '--- a/lib/autocomplete.dart\n'
    '+++ b/lib/autocomplete.dart\n'
    '@@ -1,3 +1,4 @@\n'
    ' // header\n'
    '+// new line\n';

/// Builds the exact `/ai/chat` request body the handler sends, mirroring the
/// prompt string in src/git.ts so the fake adapter key matches.
String _aiBody(String gitLog, String gitDiff) {
  final prompt =
      'Generate a git commit message summary based on this git diff, the '
      '"summary" must be no more than 70-75 characters, and it must describe '
      'both what the patch changes, as well as why the patch might be '
      'necessary.\n\nHere are some examples from the repo:\n$gitLog';
  return jsonEncode({
    'model': 'gpt-3.5-turbo',
    'source': 'autocomplete',
    'name': 'git commit -m',
    'messages': [
      {'role': 'system', 'content': prompt},
      {'role': 'user', 'content': gitDiff},
    ],
  });
}

/// Finds the `commit -m` generator in the parsed spec.
FigGenerator? _commitMessageGenerator(FigSpec spec) {
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    if (subcommand.name != 'commit') continue;
    for (final option in subcommand.options ?? const <FigOption>[]) {
      if (option.nameList.contains('-m')) {
        final args = option.args ?? const <FigArg>[];
        if (args.isNotEmpty && args.first.generatorsList.isNotEmpty) {
          return args.first.generatorsList.first;
        }
      }
    }
  }
  return null;
}

/// Finds the `config` args[0] suggestions generator (the custom one appended by
/// the JSON parser) in the parsed spec.
FigGenerator? _configSuggestionsGenerator(FigSpec spec) {
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    if (subcommand.name != 'config') continue;
    final args = subcommand.args ?? const <FigArg>[];
    if (args.isEmpty) continue;
    for (final generator in args.first.generatorsList) {
      if (generator.custom != null) return generator;
    }
  }
  return null;
}

/// Finds the positional generator used by `git checkout` for branch/tag
/// completion. Keeping this lookup against the parsed JSON catches exporter
/// regressions where a shared generator is silently dropped or mis-bound.
List<FigGenerator> _checkoutReferenceGenerators(FigSpec spec) {
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    if (subcommand.name != 'checkout') continue;
    final args = subcommand.args ?? const <FigArg>[];
    if (args.isEmpty) return const [];
    return args.first.generatorsList;
  }
  return const [];
}

void main() {
  test('git JSON binds every handler to the five declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerGitHandlers(handlers);
    final source = await File('assets/specs/g/git.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(gitCommitMessageHandler));
    expect(source, contains(gitConfigSuggestionsHandler));
    expect(document['name'], 'git');

    final ids = <String>[];
    void collectHandlers(dynamic node) {
      if (node is! Map) return;
      final handler = node['handler'];
      if (handler is String) ids.add(handler);
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

    // Every handler reference in the JSON must resolve to a registered handler.
    final registered = handlers.allRegisteredIds();
    for (final id in ids.toSet()) {
      expect(registered, contains(id), reason: '$id should be registered');
    }

    // The shared `gitGenerators.*` generators (branches/tags/commits) are the
    // dynamic behavior the exporter resolves from member access.
    expect(ids, contains(gitRemoteLocalBranchesPostProcessHandler));
    expect(ids, contains(gitTagsPostProcessHandler));
    expect(ids, contains(gitCommitsPostProcessHandler));
    expect(ids, contains(gitLocalOrRemoteBranchesCustomHandler));
  });

  test('git dynamic generators retain handler paths for diagnostics', () async {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final source = await File('assets/specs/g/git.json').readAsString();
    final spec = figSpecFromJson(jsonDecode(source), handlers: registry);
    final generators = _checkoutReferenceGenerators(spec);

    expect(generators, isNotEmpty);
    expect(
      generators.first.debugHandlers?.values,
      contains(startsWith('manual.src_git.definition.gitgenerators.')),
    );
  });

  test('commit message custom handler is empty when the fig AI setting is off',
      () async {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final adapter = _FakeAdapter({
      'fig settings --format json autocomplete.ai.enabled':
          const ProcessRunResult(stdout: 'false', stderr: '', exitCode: 0),
    });

    final suggestions = await registry.custom(gitCommitMessageHandler)!(
        ['git', 'commit', '-m', ''], _executor(adapter), null);
    expect(suggestions, isEmpty);
  });

  test('commit message custom handler parses the AI response', () async {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final body = _aiBody(_gitLogOutput, _gitDiffOutput);
    final adapter = _FakeAdapter({
      'fig settings --format json autocomplete.ai.enabled':
          const ProcessRunResult(stdout: 'true', stderr: '', exitCode: 0),
      'git log --pretty=format:%s --abbrev-commit --max-count=20':
          const ProcessRunResult(
              stdout: _gitLogOutput, stderr: '', exitCode: 0),
      'git diff --staged': const ProcessRunResult(
          stdout: _gitDiffOutput, stderr: '', exitCode: 0),
      'fig _ request --route /ai/chat --method POST --body $body':
          const ProcessRunResult(
        stdout:
            '{"choices": [{"message": {"content": "fix: handle empty input\\n\\nHandle empty input gracefully"}}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final suggestions = await registry.custom(gitCommitMessageHandler)!(
        ['git', 'commit', '-m', ''], _executor(adapter), null);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['fix: handle empty input', 'Handle empty input gracefully']);
    expect(suggestions.first.icon, '🪄');
    expect(suggestions.first.insertValue, "'fix: handle empty input'");
    expect(suggestions.first.description, 'Generated by Fig AI');
  });

  test('commit message custom handler is empty without a staged diff',
      () async {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final adapter = _FakeAdapter({
      'fig settings --format json autocomplete.ai.enabled':
          const ProcessRunResult(stdout: 'true', stderr: '', exitCode: 0),
      'git log --pretty=format:%s --abbrev-commit --max-count=20':
          const ProcessRunResult(
              stdout: _gitLogOutput, stderr: '', exitCode: 0),
      'git diff --staged':
          const ProcessRunResult(stdout: '', stderr: '', exitCode: 0),
    });

    final suggestions = await registry.custom(gitCommitMessageHandler)!(
        ['git', 'commit', '-m', ''], _executor(adapter), null);
    expect(suggestions, isEmpty);
  });

  test('config suggestions handler renders the full list with a gear icon',
      () async {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final suggestions = await registry.custom(gitConfigSuggestionsHandler)!(
        ['git', 'config', ''], null, null);

    expect(suggestions.length, 649);
    expect(suggestions.every((item) => item.icon == '⚙️'), isTrue);

    final first = suggestions.first;
    expect(first.nameSingle, 'add.ignore-errors');
    expect(first.deprecated, true);
    expect(first.hidden, true);
    expect(first.description, isNotNull);

    final aliasWildcard =
        suggestions.firstWhere((item) => item.nameSingle == 'alias.*');
    expect(aliasWildcard.insertValue, 'alias.{cursor}');

    final keepCr =
        suggestions.firstWhere((item) => item.nameSingle == 'am.keepcr');
    expect(keepCr.description, contains(r'`\r` from lines ending with `\r\n`'));
  });

  test('config postProcess keeps prefixes and drops configSuggestions names',
      () {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final handler = registry.postProcess(gitConfigPostProcessHandler)!;
    final suggestions = handler('alias.st status\n'
        'branch.main master\n'
        'remote.origin https://example.com\n'
        'core.editor vim\n'
        'user.name Alice');
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['alias.st', 'branch.main', 'remote.origin', 'user.name']);
    expect(suggestions.first.icon, '⚙️');
  });

  test('`commit -m` generator runs the ai() flow end to end', () async {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final body = _aiBody(_gitLogOutput, _gitDiffOutput);
    final adapter = _FakeAdapter({
      'fig settings --format json autocomplete.ai.enabled':
          const ProcessRunResult(stdout: 'true', stderr: '', exitCode: 0),
      'git log --pretty=format:%s --abbrev-commit --max-count=20':
          const ProcessRunResult(
              stdout: _gitLogOutput, stderr: '', exitCode: 0),
      'git diff --staged': const ProcessRunResult(
          stdout: _gitDiffOutput, stderr: '', exitCode: 0),
      'fig _ request --route /ai/chat --method POST --body $body':
          const ProcessRunResult(
        stdout:
            '{"choices": [{"message": {"content": "fix: handle empty input\\n\\nHandle empty input gracefully"}}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/git.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _commitMessageGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no commit -m generator in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator!,
      const [
        CommandToken(token: 'git', tokenLength: 3, complete: true),
        CommandToken(token: 'commit', tokenLength: 6, complete: true),
        CommandToken(token: '-m', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['fix: handle empty input', 'Handle empty input gracefully']);
  });

  test('`git config` suggestions generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/g/git.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _configSuggestionsGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no config suggestions generator in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator!,
      const [
        CommandToken(token: 'git', tokenLength: 3, complete: true),
        CommandToken(token: 'config', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.length, 649);
    expect(suggestions.first.name, 'add.ignore-errors');
    expect(suggestions.first.icon, '⚙️');
  });

  test('`git checkout ` returns dynamic branch and tag suggestions', () async {
    final registry = JsonHandlerRegistry();
    registerGitHandlers(registry);
    final source = await File('assets/specs/g/git.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generators = _checkoutReferenceGenerators(spec);
    expect(generators, isNotEmpty,
        reason: 'checkout positional generator is missing from git JSON');

    final adapter = _FakeAdapter({
      'git --no-optional-locks branch -a --no-color --sort=-committerdate':
          const ProcessRunResult(
        stdout: '* main\n  release\n  remotes/origin/main\n',
      ),
      'git --no-optional-locks tag --list --sort=-committerdate':
          const ProcessRunResult(stdout: 'v2.0.0\nv1.0.0\n'),
    });
    final branchSuggestions = await runGeneratorSuggestions(
      generators.first,
      const [
        CommandToken(token: 'git', tokenLength: 3, complete: true),
        CommandToken(token: 'checkout', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(branchSuggestions.map((suggestion) => suggestion.name).toList(),
        ['main', 'release']);

    final tagSuggestions = await runGeneratorSuggestions(
      generators[1],
      const [
        CommandToken(token: 'git', tokenLength: 3, complete: true),
        CommandToken(token: 'checkout', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(tagSuggestions.map((suggestion) => suggestion.name).toList(),
        ['v2.0.0', 'v1.0.0']);
  });
}
