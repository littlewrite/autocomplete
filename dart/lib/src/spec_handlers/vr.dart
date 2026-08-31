// Hand-written dynamic handlers migrated from src/vr.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const vrScriptGeneratorPostProcessHandler =
    'manual.src_vr.definition.scriptgenerator.postprocess';

/// Prefix Velociraptor uses to mark a runnable script line in `vr` output.
const _scriptKeyword = '    • ';

/// Parses `vr` output: lines prefixed by `    • ` are script names; the
/// following line (if any) is trimmed into the suggestion description.
///
/// Mirrors the source callback: empty lines are dropped before scanning, so a
/// script whose description is missing keeps a null description, and a
/// whitespace-only following line yields an empty (non-null) description.
List<FigSuggestion> _scriptGenerator(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  try {
    final lines = output
        .split('\n')
        .where((line) => line.isNotEmpty)
        .toList();
    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      if (!line.startsWith(_scriptKeyword)) continue;
      suggestions.add(FigSuggestion(
        name: line.substring(_scriptKeyword.length),
        description: i + 1 < lines.length ? lines[i + 1].trim() : null,
      ));
    }
  } catch (_) {
    // Mirrors the source's try/catch: return whatever was collected.
  }
  return suggestions;
}

/// Registers the vr generators referenced by the shipped vr JSON.
void registerVrHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      vrScriptGeneratorPostProcessHandler, _scriptGenerator);
}
