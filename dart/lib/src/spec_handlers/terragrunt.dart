// Hand-written dynamic handlers migrated from src/terragrunt.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const terragruntWorkspaceListPostProcessHandler =
    'manual.src_terragrunt.definition.workspacelist.postprocess';
const terragruntAddressListPostProcessHandler =
    'manual.src_terragrunt.definition.addresslist.postprocess';

const _terragruntIcon =
    'https://terragrunt.gruntwork.io/assets/img/favicon/favicon.ico';

/// `terragrunt workspace list` output: one workspace name per line. The current
/// workspace is marked with a leading `* `, which is stripped. The trailing
/// empty entry produced by a trailing newline is kept, mirroring the source.
List<FigSuggestion> _workspaceList(String output, [List<String>? tokens]) {
  return output.split('\n').map((workspace) {
    return FigSuggestion(
      name: workspace.replaceFirst('* ', '').trim(),
      icon: _terragruntIcon,
      description: 'Workspace',
    );
  }).toList();
}

/// `terragrunt state list` output: one resource address per line. Returns an
/// empty list when Terragrunt reports missing state or an error.
List<FigSuggestion> _addressList(String output, [List<String>? tokens]) {
  if (output.contains('No state file was found!') ||
      output.contains('Error')) {
    return const [];
  }
  return output.split('\n').map((addresses) {
    return FigSuggestion(
      name: addresses.replaceFirst('* ', '').trim(),
      icon: _terragruntIcon,
      description: 'Address',
    );
  }).toList();
}

/// Registers the terragrunt generators referenced by the shipped terragrunt JSON.
void registerTerragruntHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      terragruntWorkspaceListPostProcessHandler, _workspaceList);
  registry.registerPostProcess(
      terragruntAddressListPostProcessHandler, _addressList);
}
