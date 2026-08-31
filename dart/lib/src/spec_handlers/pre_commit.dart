// Hand-written dynamic handlers migrated from src/pre-commit.ts.
//
// pre-commit.ts imports the shared `gitGenerators` helpers from src/git.ts
// (remoteLocalBranches, localBranches, revs, remotes). The exporter materializes
// each under this spec's namespace, so the same git behaviors are re-implemented
// here with the exact handler IDs the pre-commit JSON references.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';
import 'package:yaml/yaml.dart';

const preCommitHooksInConfigPostProcessHandler =
    'manual.src_pre-commit.definition.hooksinconfig.postprocess';
const preCommitRemoteLocalBranchesHandler =
    'manual.src_pre-commit.generator.gitgenerators.remotelocalbranches';
const preCommitLocalBranchesHandler =
    'manual.src_pre-commit.generator.gitgenerators.localbranches';
const preCommitRevsHandler = 'manual.src_pre-commit.generator.gitgenerators.revs';
const preCommitRemotesHandler =
    'manual.src_pre-commit.generator.gitgenerators.remotes';

/// `cat .pre-commit-config.yaml` output: a YAML document whose `repos` array
/// lists hook repos. Each repo's `hooks` array yields the hook ids to suggest.
List<FigSuggestion> _hooksInConfig(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  try {
    final document = loadYaml(output);
    if (document is! Map) return suggestions;
    final repos = document['repos'];
    if (repos is! List) return suggestions;
    for (final repo in repos) {
      if (repo is! Map) continue;
      final hooks = repo['hooks'];
      if (hooks is! List) continue;
      for (final hook in hooks) {
        if (hook is! Map) continue;
        final id = hook['id'];
        if (id is String && id.isNotEmpty) {
          suggestions.add(FigSuggestion(name: id));
        }
      }
    }
    return suggestions;
  } catch (_) {
    return const [];
  }
}

/// Drops the leading `warning:`/`error:` line some git commands emit so the
/// remaining output can be parsed as command data.
String _filterGitMessages(String output) {
  if (output.startsWith('warning:') || output.startsWith('error:')) {
    return output.split('\n').skip(1).join('\n');
  }
  return output;
}

/// Shared `git branch` post-processor (mirrors `postProcessBranches` in
/// src/git.ts). With [insertWithoutRemotes] the `remotes/` prefix is stripped
/// and the branch is labelled as a remote branch.
List<FigSuggestion> _processBranches(
  String output, {
  required bool insertWithoutRemotes,
}) {
  final filtered = _filterGitMessages(output);
  if (filtered.startsWith('fatal:')) return const [];

  final seen = <String>{};
  final results = <FigSuggestion>[];
  for (final branch in filtered.split('\n')) {
    if (branch.trim().startsWith('HEAD')) continue;

    var name = branch.trim();
    final parts = RegExp(r'\S+')
        .allMatches(branch)
        .map((match) => match.group(0)!)
        .toList();
    FigSuggestion? suggestion;
    if (parts.length > 1) {
      if (parts[0] == '*') {
        if (branch.contains('HEAD detached')) continue;
        // Current branch.
        suggestion = FigSuggestion(
          name: branch.replaceAll('*', '').trim(),
          description: 'Current branch',
          priority: 100,
          icon: '⭐️',
        );
      } else if (parts[0] == '+') {
        // Branch checked out in another worktree.
        name = branch.replaceAll('+', '').trim();
      }
    }

    if (suggestion == null) {
      var description = 'Branch';
      if (insertWithoutRemotes && name.startsWith('remotes/')) {
        name = name.substring(name.indexOf('/', 8) + 1);
        description = 'Remote branch';
      }
      final space = name.indexOf(' ');
      if (space != -1) {
        name = name.substring(0, space);
      }
      if (name.isEmpty) continue;
      suggestion = FigSuggestion(
        name: name,
        description: description,
        icon: 'fig://icon?type=git',
        priority: 75,
      );
    }

    final key = suggestion.nameSingle;
    if (key == null || key.isEmpty || seen.contains(key)) continue;
    seen.add(key);
    results.add(suggestion);
  }
  return results;
}

/// `git rev-list --all --oneline` output: keep the short hash and the rest of
/// the line as the description.
List<FigSuggestion> _processRevs(String output) {
  final filtered = _filterGitMessages(output);
  if (filtered.startsWith('fatal:')) return const [];

  final suggestions = <FigSuggestion>[];
  for (final line in filtered.split('\n')) {
    if (line.isEmpty) continue;
    final name = line.length <= 7 ? line : line.substring(0, 7);
    final description = line.length <= 7 ? '' : line.substring(7);
    suggestions.add(FigSuggestion(
      name: name,
      icon: 'fig://icon?type=node',
      description: description,
    ));
  }
  return suggestions;
}

/// `git remote -v` output: tab-separated `remote<TAB>url (fetch|push)` lines.
/// Later duplicate remotes overwrite earlier ones; the icon is chosen from the
/// url host.
List<FigSuggestion> _processRemotes(String output) {
  final urls = <String, String>{};
  for (final line in output.split('\n')) {
    final pair = line.split('\t');
    if (pair.length < 2) continue;
    final remote = pair[0];
    final url = pair[1].split(' ').first;
    urls[remote] = url;
  }

  final suggestions = <FigSuggestion>[];
  urls.forEach((remote, url) {
    var icon = 'box';
    if (url.contains('github.com')) icon = 'github';
    if (url.contains('gitlab.com')) icon = 'gitlab';
    if (url.contains('heroku.com')) icon = 'heroku';
    suggestions.add(FigSuggestion(
      name: remote,
      icon: 'fig://icon?type=$icon',
      description: 'Remote',
    ));
  });
  return suggestions;
}

/// Runs a git command through [executeCommand] and applies [process] to its
/// stdout. A null executor or non-zero exit status yields no suggestions.
Future<List<FigSuggestion>> _runGitCommand(
  ExecuteCommandFunction? executeCommand,
  List<String> args,
  List<FigSuggestion> Function(String output) process,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(
      ExecuteCommandInput(command: 'git', args: args));
  if (result.status != 0) return const [];
  return process(result.stdout);
}

Future<List<FigSuggestion>> _remoteLocalBranches(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  return _runGitCommand(
    executeCommand,
    const [
      '--no-optional-locks',
      'branch',
      '-a',
      '--no-color',
      '--sort=-committerdate',
    ],
    (output) => _processBranches(output, insertWithoutRemotes: true),
  );
}

Future<List<FigSuggestion>> _localBranches(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  return _runGitCommand(
    executeCommand,
    const [
      '--no-optional-locks',
      'branch',
      '--no-color',
      '--sort=-committerdate',
    ],
    (output) => _processBranches(output, insertWithoutRemotes: true),
  );
}

Future<List<FigSuggestion>> _revs(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  return _runGitCommand(
    executeCommand,
    const ['rev-list', '--all', '--oneline'],
    _processRevs,
  );
}

Future<List<FigSuggestion>> _remotes(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  return _runGitCommand(
    executeCommand,
    const ['--no-optional-locks', 'remote', '-v'],
    _processRemotes,
  );
}

/// Registers the pre-commit generators referenced by the shipped pre-commit
/// JSON: the `.pre-commit-config.yaml` post-processor and the four git custom
/// generators.
void registerPreCommitHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      preCommitHooksInConfigPostProcessHandler, _hooksInConfig);
  registry.registerCustom(
      preCommitRemoteLocalBranchesHandler, _remoteLocalBranches);
  registry.registerCustom(preCommitLocalBranchesHandler, _localBranches);
  registry.registerCustom(preCommitRevsHandler, _revs);
  registry.registerCustom(preCommitRemotesHandler, _remotes);
}
