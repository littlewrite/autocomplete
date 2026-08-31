// Hand-written dynamic handlers migrated from src/ns.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const nsTemplatesPostProcessHandler =
    'manual.src_ns.spec.subcommands_1_0_.options_0_.args.generators.postprocess';

/// `ns create --template` generator output is the GitHub contents API JSON for
/// the NativeScript app-templates `packages` folder. Each entry's `name` is the
/// template; suggest `@nativescript/<name>` described by `Template <name>`,
/// mirroring the original TS `JSON.parse(output).map(...)`.
List<FigSuggestion> _templates(String output, [List<String>? tokens]) {
  if (output.trim().isEmpty) return const [];
  final decoded = jsonDecode(output);
  if (decoded is! List) return const [];
  final suggestions = <FigSuggestion>[];
  for (final item in decoded) {
    if (item is! Map) continue;
    final template = item['name'];
    suggestions.add(FigSuggestion(
      name: '@nativescript/$template',
      description: 'Template $template',
    ));
  }
  return suggestions;
}

/// Registers the ns generator referenced by the shipped ns JSON.
void registerNsHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(nsTemplatesPostProcessHandler, _templates);
}
