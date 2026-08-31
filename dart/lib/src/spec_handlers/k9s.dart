// Hand-written dynamic handlers migrated from src/k9s.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const k9sNamespacesPostProcessHandler =
    'manual.src_k9s.definition.namespaces.postprocess';

/// `kubectl get namespaces` output: drop the header row (slice(1)) and take
/// the first space-delimited token of each remaining line as the namespace
/// name. Faithfully mirrors the TypeScript callback, which keeps empty
/// trailing entries produced by a trailing newline.
List<FigSuggestion> _namespaces(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n').skip(1)) {
    suggestions.add(FigSuggestion(
      name: line.split(' ').first,
      description: 'Kubernetes namespace',
    ));
  }
  return suggestions;
}

/// Registers the k9s generators referenced by the shipped k9s JSON.
void registerK9sHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(k9sNamespacesPostProcessHandler, _namespaces);
}
