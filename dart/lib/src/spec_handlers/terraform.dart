// Hand-written dynamic handlers migrated from src/terraform.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const terraformWorkspaceListPostProcessHandler =
    'manual.src_terraform.definition.workspacelist.postprocess';
const terraformAddressListPostProcessHandler =
    'manual.src_terraform.definition.addresslist.postprocess';

const _terraformIcon = 'https://www.terraform.io/favicon.ico';

/// `terraform workspace list` output: one workspace name per line. The current
/// workspace is marked with a leading `* `, which is stripped. The trailing
/// empty entry produced by a trailing newline is kept, mirroring the source.
List<FigSuggestion> _workspaceList(String output, [List<String>? tokens]) {
  return output.split('\n').map((workspace) {
    return FigSuggestion(
      name: workspace.replaceFirst('* ', '').trim(),
      icon: _terraformIcon,
      description: 'Workspace',
    );
  }).toList();
}

/// `terraform state list` output: one resource address per line. Returns an
/// empty list when Terraform reports missing state or an error.
List<FigSuggestion> _addressList(String output, [List<String>? tokens]) {
  if (output.contains('No state file was found!') ||
      output.contains('Error')) {
    return const [];
  }
  return output.split('\n').map((addresses) {
    return FigSuggestion(
      name: addresses.replaceFirst('* ', '').trim(),
      icon: _terraformIcon,
      description: 'Address',
    );
  }).toList();
}

/// Registers the terraform generators referenced by the shipped terraform JSON.
void registerTerraformHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      terraformWorkspaceListPostProcessHandler, _workspaceList);
  registry.registerPostProcess(
      terraformAddressListPostProcessHandler, _addressList);
}
