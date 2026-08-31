// Hand-written dynamic handlers migrated from src/git-flow.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `gitFlowGenerators.typeBranches` (src/git-flow.ts): suggests existing
/// `feature|release|hotfix` branches for the `finish` subcommands.
const gitFlowTypeBranchesCustomHandler =
    'manual.src_git-flow.generator.gitflowgenerators.typebranches';

/// `postProcessBranches` from src/git-flow.ts: trims each `git branch` line,
/// drops the leading `* ` / `+ ` marker, and keeps only branches that start
/// with the git-flow prefix, removing that prefix from the suggestion name.
List<FigSuggestion> _postProcessBranches(String output, String prefix) {
  final result = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    var name = line.trim();
    if (name.startsWith('*') || name.startsWith('+')) {
      name = name.length >= 2 ? name.substring(2) : '';
    }
    if (!name.startsWith(prefix)) continue;
    result.add(FigSuggestion(
      name: name.replaceFirst(prefix, ''),
      description: '${prefix.replaceFirst('/', '')} branch',
      icon: 'fig://icon?type=git',
    ));
  }
  return result;
}

/// `gitFlowGenerators.typeBranches.custom` from src/git-flow.ts: reads the
/// configured git-flow prefix for the branch type from `git config`, then
/// lists the matching branches via `git branch`.
Future<List<FigSuggestion>> _typeBranches(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  context;
  if (executeCommand == null) return const [];
  final type = tokens.length > 1 ? tokens[1] : '';
  if (type.isEmpty) return const [];
  final prefixResult = await executeCommand(ExecuteCommandInput(
    command: 'git',
    args: ['config', '--get', 'gitflow.prefix.$type'],
  ));
  final prefix = prefixResult.stdout.trim();
  if (prefix.isEmpty) return const [];
  final branchResult = await executeCommand(const ExecuteCommandInput(
    command: 'git',
    args: [
      '--no-optional-locks',
      'branch',
      '-a',
      '--no-color',
      '--sort=-committerdate',
    ],
  ));
  return _postProcessBranches(branchResult.stdout, prefix);
}

/// Registers the dynamic handler referenced by the shipped git-flow JSON.
void registerGitFlowHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(gitFlowTypeBranchesCustomHandler, _typeBranches);
}
