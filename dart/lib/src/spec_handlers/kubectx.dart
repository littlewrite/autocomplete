// Hand-written dynamic handlers migrated from src/kubectx.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const kubectxDeletePostProcessHandler =
    'manual.src_kubectx.spec.options_3_.args.generators.postprocess';
const kubectxExcludeCurrentPostProcessHandler =
    'manual.src_kubectx.spec.args.generators_0_.postprocess';
const kubectxCurrentPostProcessHandler =
    'manual.src_kubectx.spec.args.generators_1_.postprocess';

const _kubernetesIcon = 'fig://icon?type=kubernetes';
const _asteriskIcon = 'fig://icon?type=asterisk';
const _starIcon = '⭐️';

/// `kubectx` context list for the `-d` (delete) option.
///
/// Prepend a "." suggestion to delete the current context, then map every line
/// of output (including empty trailing entries) to a context suggestion.
List<FigSuggestion> _deleteContexts(String output, [List<String>? tokens]) {
  final contexts = output
      .split('\n')
      .map((item) => FigSuggestion(
            name: item,
            priority: 95,
            icon: _kubernetesIcon,
          ))
      .toList();

  return [
    const FigSuggestion(
      name: '.',
      description: 'Delete current context',
      priority: 90,
      icon: _asteriskIcon,
    ),
    ...contexts,
  ];
}

/// `kubectx | grep -v $(kubectx -c)` output: the contexts other than the
/// current one. Map every line (including empty trailing entries) to a
/// suggestion.
List<FigSuggestion> _excludeCurrent(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((item) => FigSuggestion(
            name: item,
            priority: 90,
            icon: _kubernetesIcon,
          ))
      .toList();
}

/// `kubectx -c` output: the current context, surfaced with the highest
/// priority. Empty output yields no suggestions.
List<FigSuggestion> _current(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  return [
    FigSuggestion(
      name: output,
      priority: 100,
      icon: _starIcon,
    ),
  ];
}

/// Registers the kubectx generators referenced by the shipped kubectx JSON.
void registerKubectxHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(kubectxDeletePostProcessHandler, _deleteContexts);
  registry.registerPostProcess(
      kubectxExcludeCurrentPostProcessHandler, _excludeCurrent);
  registry.registerPostProcess(kubectxCurrentPostProcessHandler, _current);
}
