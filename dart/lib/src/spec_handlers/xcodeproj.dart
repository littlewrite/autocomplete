// Hand-written dynamic handlers migrated from src/xcodeproj.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const xcodeprojFilterTemplateSuggestionsHandler =
    'manual.src_xcodeproj.definition.projectsandfoldersgenerator.filtertemplatesuggestions';

/// `projectsAndFoldersGenerator`: boosts `.xcodeproj/` folders to the top of
/// the `folders` template suggestion list by giving them priority 76.
///
/// Mirrors `filterTemplateSuggestions: (paths) => paths.map((file) => ({
///   ...file,
///   priority: file.name.endsWith(".xcodeproj/") && 76,
/// }))`. Non-matching entries keep their original (default) priority, matching
/// the falsy result of `false` in the TS `&&` expression.
List<FigSuggestion> _projectsAndFolders(
    List<FigSuggestion> suggestions, [FigGeneratorContext? context]) {
  return suggestions.map((suggestion) {
    final isXcodeProjFolder =
        (suggestion.nameSingle ?? '').endsWith('.xcodeproj/');
    return FigSuggestion(
      name: suggestion.name,
      displayName: suggestion.displayName,
      description: suggestion.description,
      icon: suggestion.icon,
      priority: isXcodeProjFolder ? 76 : suggestion.priority,
      insertValue: suggestion.insertValue,
      replaceValue: suggestion.replaceValue,
      type: suggestion.type,
      hidden: suggestion.hidden,
      isDangerous: suggestion.isDangerous,
      deprecated: suggestion.deprecated,
      previewComponent: suggestion.previewComponent,
      loadSpec: suggestion.loadSpec,
    );
  }).toList();
}

/// Registers the xcodeproj generators referenced by the shipped xcodeproj JSON.
void registerXcodeprojHandlers(JsonHandlerRegistry registry) {
  registry.registerFilterTemplateSuggestions(
      xcodeprojFilterTemplateSuggestionsHandler, _projectsAndFolders);
}
