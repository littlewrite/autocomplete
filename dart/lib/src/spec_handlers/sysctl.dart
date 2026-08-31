// Hand-written dynamic handlers migrated from src/sysctl.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const sysctlNamesPostProcessHandler =
    'manual.src_sysctl.spec.args.generators.postprocess';

/// `sysctl -A -N` output: one kernel variable name per line. The source maps
/// every line verbatim onto a suggestion described as a variable name.
List<FigSuggestion> _names(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  return output.split('\n').map((line) {
    return FigSuggestion(name: line, description: 'Variable name');
  }).toList();
}

/// Registers the sysctl generators referenced by the shipped sysctl JSON.
void registerSysctlHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(sysctlNamesPostProcessHandler, _names);
}
