// Hand-written dynamic handlers migrated from src/iconv.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const iconvFromCodePostProcessHandler =
    'manual.src_iconv.spec.options_2_.args.generators.postprocess';
const iconvToCodePostProcessHandler =
    'manual.src_iconv.spec.options_3_.args.generators.postprocess';

/// `iconv -l | command tr ' ' '\n' | sort` output: one supported encoding per
/// line. Each encoding is suggested as an `arg`-typed value described by
/// itself. Blank lines (including the trailing entry produced by a trailing
/// newline) are dropped so empty output yields no suggestions.
List<FigSuggestion> _encodings(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final encodings = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.isEmpty) continue;
    encodings.add(FigSuggestion(
      name: line,
      description: line,
      type: SuggestionType.arg,
    ));
  }
  return encodings;
}

/// Registers the iconv generators referenced by the shipped iconv JSON.
void registerIconvHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(iconvFromCodePostProcessHandler, _encodings);
  registry.registerPostProcess(iconvToCodePostProcessHandler, _encodings);
}
