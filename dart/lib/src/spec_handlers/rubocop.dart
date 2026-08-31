// Hand-written dynamic handlers migrated from src/rubocop.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const rubocopCopsPostProcessHandler =
    'manual.src_rubocop.definition.copsgenerator.postprocess';

/// `rubocop --show-cops` output: each cop is a block separated by a blank
/// line (`\n\n`). A block starts with `#` comment lines (including the
/// `# Supports --autocorrect` marker) followed by the cop name line ending in
/// `:` and its configuration.
///
/// The suggested name is the first non-comment line with its trailing
/// character dropped (the `:` RuboCop prints), mirroring the source's
/// `restOfLines[0].slice(0, -1)`. The source also detects the autocorrect
/// marker and `Enabled:` value, but neither affects the returned suggestions.
List<FigSuggestion> _cops(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  for (final block in output.split('\n\n')) {
    final lines = block.split('\n');
    // Index of the first non-comment line. When every line is a comment the
    // JS `slice(-1)` fallback keeps only the final line.
    var nameIndex = -1;
    for (var i = 0; i < lines.length; i++) {
      if (!lines[i].startsWith('#')) {
        nameIndex = i;
        break;
      }
    }
    final restOfLines = nameIndex < 0
        ? lines.sublist(lines.length - 1)
        : lines.sublist(nameIndex);
    final first = restOfLines.isEmpty ? '' : restOfLines.first;
    final name = first.isEmpty ? '' : first.substring(0, first.length - 1);
    suggestions.add(FigSuggestion(name: name));
  }
  return suggestions;
}

/// Registers the rubocop generators referenced by the shipped rubocop JSON.
void registerRubocopHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(rubocopCopsPostProcessHandler, _cops);
}
