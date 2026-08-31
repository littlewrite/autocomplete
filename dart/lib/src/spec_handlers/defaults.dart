// Hand-written dynamic handlers migrated from src/defaults.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const defaultsDomainsPostProcessHandler =
    'manual.src_defaults.definition.domain.generators.postprocess';

/// `defaults domains` output: a comma-separated list of domain names.
///
/// Mirrors the TS `out.split(',').map((domain) => ({ name: domain.trim() }))`
/// exactly: every comma-separated piece is trimmed and suggested, including an
/// empty name when the output is empty (`''.split(',')` yields `['']`).
List<FigSuggestion> _domains(String output, [List<String>? tokens]) {
  return output.split(',').map((domain) {
    return FigSuggestion(name: domain.trim());
  }).toList();
}

/// Registers the defaults generators referenced by the shipped defaults JSON.
void registerDefaultsHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(defaultsDomainsPostProcessHandler, _domains);
}
