// Hand-written dynamic handlers migrated from src/okteto.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const oktetoContextsPostProcessHandler =
    'manual.src_okteto.definition.contexts.postprocess';
const oktetoNamespacesPostProcessHandler =
    'manual.src_okteto.definition.namespaces.postprocess';

const _oktetoIcon = 'fig://icon?type=okteto';

/// `okteto context list` output: drop the header row, take the first token of
/// each line, strip the current-context marker and trim.
List<FigSuggestion> _contexts(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .skip(1)
      .map((line) {
        final context = line.split(' ').first;
        return FigSuggestion(
          name: context.replaceFirst('*', '').trim(),
          description: 'Context',
          icon: _oktetoIcon,
        );
      })
      .toList();
}

/// `okteto namespace list` output: same shape as the context listing.
List<FigSuggestion> _namespaces(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .skip(1)
      .map((line) {
        final namespace = line.split(' ').first;
        return FigSuggestion(
          name: namespace.replaceFirst('*', '').trim(),
          description: 'Namespace',
          icon: _oktetoIcon,
        );
      })
      .toList();
}

/// Registers the okteto generators referenced by the shipped okteto JSON.
void registerOktetoHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(oktetoContextsPostProcessHandler, _contexts);
  registry.registerPostProcess(oktetoNamespacesPostProcessHandler, _namespaces);
}
