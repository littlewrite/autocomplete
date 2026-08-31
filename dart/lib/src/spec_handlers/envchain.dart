// Hand-written dynamic handlers migrated from src/envchain.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const envchainNamespacesPostProcessHandler =
    'manual.src_envchain.definition.namespaces.postprocess';

/// `envchain --list` output: one namespace per line. Splits on `\n` and keeps
/// empty entries (including a trailing one when the output ends in a newline),
/// then deduplicates while preserving first-occurrence order. Each namespace is
/// suggested with the description `NAMESPACE <name>`, mirroring the source.
List<FigSuggestion> _namespaces(String output, [List<String>? tokens]) {
  final namespaces = <String>[];
  final seen = <String>{};
  for (final namespace in output.split('\n')) {
    if (seen.add(namespace)) {
      namespaces.add(namespace);
    }
  }
  return namespaces
      .map((namespace) => FigSuggestion(
            name: namespace,
            description: 'NAMESPACE $namespace',
          ))
      .toList();
}

/// Registers the envchain generators referenced by the shipped envchain JSON.
void registerEnvchainHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(envchainNamespacesPostProcessHandler,
      _namespaces);
}
