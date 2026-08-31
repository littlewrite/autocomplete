// Hand-written dynamic handlers migrated from src/hugo.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const hugoArchetypesPostProcessHandler =
    'manual.src_hugo.spec.subcommands_10_.options_3_.args_0_.generators.postprocess';

const _stringIcon = 'fig://icon?type=string';

/// `ls ./archetypes/` output: one archetype file per line. Each line's name is
/// the file name with its extension stripped, mirroring the source
/// `fileName.slice(0, fileName.lastIndexOf("."))`. A line without a dot keeps
/// all but its final character (JS `slice(0, -1)` clamping). Empty names —
/// produced by blank lines and trailing newlines — are dropped so an empty
/// output yields no suggestions.
List<FigSuggestion> _archetypes(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final suggestions = <FigSuggestion>[];
  for (final fileName in output.split('\n')) {
    final dot = fileName.lastIndexOf('.');
    String name;
    if (dot >= 0) {
      name = fileName.substring(0, dot);
    } else if (fileName.length <= 1) {
      name = '';
    } else {
      // Mirrors JS slice(0, -1): drop the final character.
      name = fileName.substring(0, fileName.length - 1);
    }
    if (name.isEmpty) continue;
    suggestions.add(FigSuggestion(name: name, icon: _stringIcon));
  }
  return suggestions;
}

/// Registers the hugo generators referenced by the shipped hugo JSON.
void registerHugoHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(hugoArchetypesPostProcessHandler, _archetypes);
}
