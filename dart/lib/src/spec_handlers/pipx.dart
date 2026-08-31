// Hand-written dynamic handlers migrated from src/pipx.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const pipxInstalledPackagesPostProcessHandler =
    'manual.src_pipx.definition.packagesgenerator.postprocess';

/// `pipx list --short` output: each line lists an installed package. The name
/// is the first space-delimited token of the line, and every suggestion is
/// described as "Installed package".
///
/// Faithful to the TS source, which splits on `"\n"` (keeping any trailing
/// empty entry) and takes the first element of `line.split(" ")`.
List<FigSuggestion> _installedPackages(String output, [List<String>? tokens]) {
  return output.split('\n').map((line) {
    return FigSuggestion(
      name: line.split(' ').first,
      description: 'Installed package',
    );
  }).toList();
}

/// Registers the pipx generator referenced by the shipped pipx JSON.
void registerPipxHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      pipxInstalledPackagesPostProcessHandler, _installedPackages);
}
