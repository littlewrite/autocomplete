// Hand-written dynamic handlers migrated from src/ollama.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const ollamaListModelsPostProcessHandler =
    'manual.src_ollama.definition.listmodelgenerator.postprocess';
const ollamaRunningModelsPostProcessHandler =
    'manual.src_ollama.definition.runmodelgenerator.postprocess';

/// `ollama ls` (ListModelGenerator) and `ollama ps` (RunModelGenerator) output
/// filtered by awk: one model name per line, header already dropped. Faithful
/// to the TS `out.trim().split('\n')` mapping, so blank lines inside the
/// output keep their empty entries and empty output keeps a single empty
/// suggestion.
List<FigSuggestion> _models(String output, [List<String>? tokens]) {
  return output
      .trim()
      .split('\n')
      .map((model) => FigSuggestion(name: model))
      .toList();
}

/// Registers the ollama generators referenced by the shipped ollama JSON.
void registerOllamaHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(ollamaListModelsPostProcessHandler, _models);
  registry.registerPostProcess(ollamaRunningModelsPostProcessHandler, _models);
}
