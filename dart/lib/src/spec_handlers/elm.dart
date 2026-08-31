// Hand-written dynamic handlers migrated from src/elm.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const elmPackagesPostProcessHandler =
    'manual.src_elm.spec.subcommands_3_.args.generators.postprocess';

/// `elm install` package search output: a JSON array of `{name, summary}`
/// objects fetched from package.elm-lang.org/search.json. Suggests the package
/// name, described by its summary.
List<FigSuggestion> _packages(String output, [List<String>? tokens]) {
  tokens;
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

/// Registers the elm generators referenced by the shipped elm JSON.
void registerElmHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(elmPackagesPostProcessHandler, _packages);
}
