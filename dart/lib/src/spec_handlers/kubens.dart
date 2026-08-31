// Hand-written dynamic handlers migrated from src/kubens.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const kubensNamespacesPostProcessHandler =
    'manual.src_kubens.spec.args.generators_0_.postprocess';
const kubensCurrentNamespacePostProcessHandler =
    'manual.src_kubens.spec.args.generators_1_.postprocess';

const _namespacesIcon = 'fig://icon?type=kubernetes';
const _currentNamespaceIcon = '⭐️';

/// `kubens | grep -v $(kubens -c)` output: one namespace per line.
/// Suggests every non-empty line with the kubernetes icon and priority 90.
List<FigSuggestion> _namespaces(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final name = line.trim();
    if (name.isEmpty) continue;
    suggestions.add(FigSuggestion(
      name: name,
      priority: 90,
      icon: _namespacesIcon,
    ));
  }
  return suggestions;
}

/// `kubens -c` output: the current namespace. Suggests it alone with priority
/// 100 and a star icon, or nothing when the output is blank.
List<FigSuggestion> _currentNamespace(String output, [List<String>? tokens]) {
  tokens;
  final name = output.trim();
  if (name.isEmpty) return const [];
  return [
    FigSuggestion(
      name: name,
      priority: 100,
      icon: _currentNamespaceIcon,
    ),
  ];
}

/// Registers the kubens generators referenced by the shipped kubens JSON.
void registerKubensHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      kubensNamespacesPostProcessHandler, _namespaces);
  registry.registerPostProcess(
      kubensCurrentNamespacePostProcessHandler, _currentNamespace);
}
