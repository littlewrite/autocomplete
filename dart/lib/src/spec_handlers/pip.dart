// Hand-written dynamic handlers migrated from src/pip.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const pipListPackagesPostProcessHandler =
    'manual.src_pip.definition.listpackages.postprocess';

const _pipIcon = '🐍';

/// `pip list` output: skip the two header lines, suggest every remaining line.
List<FigSuggestion> _listPackages(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final packages = <FigSuggestion>[];
  final lines = output.split('\n');
  for (var i = 2; i < lines.length; i++) {
    packages.add(FigSuggestion(name: lines[i], icon: _pipIcon));
  }
  return packages;
}

/// Registers the pip generators referenced by the shipped pip JSON.
void registerPipHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      pipListPackagesPostProcessHandler, _listPackages);
}
