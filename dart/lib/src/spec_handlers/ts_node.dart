// Hand-written dynamic handlers migrated from src/ts-node.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const tsNodeProjectFilterTemplateSuggestionsHandler =
    'manual.src_ts-node.spec.options_11_.args.generators.filtertemplatesuggestions';

/// `--project` filepaths filter: keeps only `.json` files and folders, then
/// boosts `tsconfig.json` to priority 100 and every other `.json` file to 76.
/// Mirrors `src/ts-node.ts` where `isTsConfig ? 100 : isJsFile && 76`.
List<FigSuggestion> _projectFilter(
    List<FigSuggestion> suggestions, [FigGeneratorContext? context]) {
  return suggestions.where((s) {
    final name = s.nameSingle ?? '';
    return name.endsWith('.json') || name.endsWith('/');
  }).map((s) {
    final name = s.nameSingle ?? '';
    if (name.endsWith('tsconfig.json')) {
      return _copyWith(s, priority: 100);
    } else if (name.endsWith('.json')) {
      return _copyWith(s, priority: 76);
    }
    return s;
  }).toList();
}

/// Returns a copy of [s] with an optional [priority] override, preserving every
/// other field.
FigSuggestion _copyWith(FigSuggestion s, {int? priority}) {
  return FigSuggestion(
    name: s.name,
    displayName: s.displayName,
    description: s.description,
    icon: s.icon,
    priority: priority ?? s.priority,
    insertValue: s.insertValue,
    replaceValue: s.replaceValue,
    type: s.type,
    hidden: s.hidden,
    isDangerous: s.isDangerous,
    deprecated: s.deprecated,
    previewComponent: s.previewComponent,
    loadSpec: s.loadSpec,
  );
}

/// Registers the ts-node generators referenced by the shipped ts-node JSON.
void registerTsNodeHandlers(JsonHandlerRegistry registry) {
  registry.registerFilterTemplateSuggestions(
      tsNodeProjectFilterTemplateSuggestionsHandler, _projectFilter);
}
