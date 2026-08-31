// Hand-written dynamic handlers migrated from src/stepzen.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// The `start --endpoint` generator postProcess (src/stepzen.ts): parses the
/// `stepzen list schemas` JSON output into endpoint suggestions.
const stepzenEndpointsPostProcessHandler =
    'manual.src_stepzen.spec.subcommands_3_.options_1_.args.generators.postprocess';

/// The `import` args generator postProcess (src/stepzen.ts): parses the GitHub
/// contents API output and keeps only schema directories (skipping dotfiles).
const stepzenImportSchemasPostProcessHandler =
    'manual.src_stepzen.spec.subcommands_4_.args.generators.postprocess';

/// Parses `stepzen list schemas` JSON output: a top-level array of endpoint
/// strings, each rendered as a suggestion, mirroring `endpointsGenerator`.
List<FigSuggestion> _endpointsPostProcess(String output,
    [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    if (decoded is! List) return const [];
    return decoded.whereType<String>().map((endpoint) {
      return FigSuggestion(
        name: endpoint,
        description: 'StepZen endpoint',
      );
    }).toList();
  } on FormatException {
    return const [];
  }
}

/// Parses the GitHub contents API output for `stepzen-schemas`: keeps only
/// directories whose name does not start with `.`, mirroring
/// `importSchemasGenerator`.
List<FigSuggestion> _importSchemasPostProcess(String output,
    [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    if (decoded is! List) return const [];
    return decoded.whereType<Map>().where((repo) {
      final type = repo['type'];
      final name = repo['name'];
      return type == 'dir' && name is String && !name.startsWith('.');
    }).map((repo) {
      return FigSuggestion(
        name: repo['name'] as String,
        description: 'Stepzen schema',
        icon: '📦',
      );
    }).toList();
  } on FormatException {
    return const [];
  }
}

/// Registers the stepzen postProcess handlers referenced by the shipped JSON.
void registerStepzenHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      stepzenEndpointsPostProcessHandler, _endpointsPostProcess);
  registry.registerPostProcess(
      stepzenImportSchemasPostProcessHandler, _importSchemasPostProcess);
}
