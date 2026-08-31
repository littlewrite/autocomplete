// Hand-written dynamic handlers migrated from src/elm-json.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const elmJsonPackageListPostProcessHandler =
    'manual.src_elm-json.definition.packagelist.postprocess';

/// `curl https://package.elm-lang.org/search.json` output: an array of package
/// objects. Suggests the package name, described by its summary.
List<FigSuggestion> _packageList(String output, [List<String>? tokens]) {
  try {
    final obj = jsonDecode(output) as List;
    return obj.map((o) {
      final item = o as Map<String, dynamic>;
      return FigSuggestion(
        name: item['name'],
        description: item['summary'],
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the elm-json generators referenced by the shipped elm-json JSON.
void registerElmJsonHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      elmJsonPackageListPostProcessHandler, _packageList);
}
