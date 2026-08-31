// Hand-written dynamic handlers migrated from src/ansible-doc.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const ansibleDocPluginsPostProcessHandler =
    'manual.src_ansible-doc.spec.args.generators.postprocess';

/// `ansible-doc --list --json` output: an object whose keys are plugin names
/// and whose values are their one-line summaries. Suggests each key described
/// by its summary, mirroring the TypeScript post-processor.
List<FigSuggestion> _plugins(String output, [List<String>? tokens]) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! Map) return const [];
  return decoded.entries.map((entry) {
    final value = entry.value;
    return FigSuggestion(
      name: entry.key,
      description: value is String ? value : null,
    );
  }).toList();
}

/// Registers the ansible-doc generator referenced by the shipped ansible-doc
/// JSON.
void registerAnsibleDocHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(ansibleDocPluginsPostProcessHandler, _plugins);
}
