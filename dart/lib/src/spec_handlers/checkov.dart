// Hand-written dynamic handlers migrated from src/checkov.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const checkovBranchesPostProcessHandler =
    'manual.src_checkov.spec.options_22_.args.generators.postprocess';

/// `git branch --no-color` output for the `--branch` option. When the command
/// fails git prints a `fatal:` line; return no suggestions then. Otherwise each
/// line is one branch, optionally prefixed with a `*` for the active branch.
List<FigSuggestion> _branches(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  if (output.startsWith('fatal:')) return const [];
  final branches = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final name = line.replaceFirst('*', '').trim();
    if (name.isEmpty) continue;
    branches.add(FigSuggestion(name: name, description: 'Branch'));
  }
  return branches;
}

/// Registers the checkov generator referenced by the shipped checkov JSON.
void registerCheckovHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(checkovBranchesPostProcessHandler, _branches);
}
