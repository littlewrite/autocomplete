// Hand-written dynamic handlers migrated from src/eb.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const ebGenerateNamesPostProcessHandler =
    'manual.src_eb.definition.generatenames.postprocess';

/// `eb list` output: trim the whole block, split into lines, trim each line,
/// and strip the leading `*` marker that marks the current environment.
List<FigSuggestion> _generateNames(String output, [List<String>? tokens]) {
  return output
      .trim()
      .split('\n')
      .map((line) => line.trim())
      .map((line) {
        final name = line.startsWith('*') ? line.substring(1).trim() : line;
        return FigSuggestion(name: name);
      })
      .toList();
}

/// Registers the eb generator referenced by the shipped eb JSON.
void registerEbHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(ebGenerateNamesPostProcessHandler, _generateNames);
}
