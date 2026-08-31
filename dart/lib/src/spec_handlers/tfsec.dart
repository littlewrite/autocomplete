// Hand-written dynamic handlers migrated from src/tfsec.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const tfsecWorkspacePostProcessHandler =
    'manual.src_tfsec.spec.options_31_.args.generators.postprocess';

/// `terraform workspace list` output: one workspace per line, with the active
/// one prefixed by `*`. The source strips the first `*` and trims each name,
/// describing every result as a Terraform workspace.
List<FigSuggestion> _workspaces(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  return output.split('\n').map((line) {
    return FigSuggestion(
      name: line.replaceFirst('*', '').trim(),
      description: 'Terraform workspaces',
    );
  }).toList();
}

/// Registers the tfsec generators referenced by the shipped tfsec JSON.
void registerTfsecHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(tfsecWorkspacePostProcessHandler, _workspaces);
}
