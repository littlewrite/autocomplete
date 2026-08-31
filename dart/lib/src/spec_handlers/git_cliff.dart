// Hand-written dynamic handlers migrated from src/git-cliff.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const gitCliffCommitsPostProcessHandler =
    'manual.src_git-cliff.spec.args.generators.postprocess';

const _commitIcon = 'fig://icon?type=node';

/// `git rev-list --all --oneline --abbrev-commit` output: one abbreviated
/// commit hash per line with its subject. Each commit is suggested with a `..`
/// range suffix appended to its insert value, unless the last typed token
/// already contains `..`; HEAD is always appended last.
List<FigSuggestion> _commits(String output, [List<String>? tokens]) {
  if (output.startsWith('fatal:')) {
    return const [];
  }

  if (output.startsWith('warning:') || output.startsWith('error:')) {
    final newline = output.indexOf('\n');
    if (newline != -1) {
      output = output.substring(newline + 1);
    }
  }

  final token =
      (tokens == null || tokens.isEmpty) ? null : tokens[tokens.length - 1];
  final rangeSuffix = (token != null && token.contains('..')) ? '' : '..';

  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final space = line.indexOf(' ');
    if (space == -1) continue;
    final hash = line.substring(0, space);
    if (hash.isEmpty) continue;
    suggestions.add(FigSuggestion(
      name: hash,
      insertValue: '$hash$rangeSuffix',
      icon: _commitIcon,
      description: line.substring(space + 1),
      priority: 1,
    ));
  }

  suggestions.add(FigSuggestion(
    name: 'HEAD',
    insertValue: 'HEAD$rangeSuffix',
    icon: _commitIcon,
    description: 'The current commit',
    priority: 5,
  ));

  return suggestions;
}

/// Registers the git-cliff generators referenced by the shipped git-cliff JSON.
void registerGitCliffHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(gitCliffCommitsPostProcessHandler, _commits);
}
