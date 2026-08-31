// Hand-written dynamic handlers migrated from src/oxlint.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const oxlintConfigFilterTemplateSuggestionsHandler =
    'manual.src_oxlint.definition.configgenerator.filtertemplatesuggestions';
const oxlintTsconfigFilterTemplateSuggestionsHandler =
    'manual.src_oxlint.definition.tsconfiggenerator.filtertemplatesuggestions';
const oxlintLintArgCustomHandler =
    'manual.src_oxlint.definition.lintarg.generators_0_.custom';

const _categoryEmoji = '📦';

/// The static category list returned by the lint argument's first generator,
/// mirroring the `categories` array in the TS source with the 📦 emoji applied
/// to every entry. `nursery` has no explicit priority and keeps the default.
const List<FigSuggestion> _categories = [
  FigSuggestion(
    name: 'all',
    description: 'All lints (except nursery)',
    priority: 55,
    icon: _categoryEmoji,
  ),
  FigSuggestion(
    name: 'correctness',
    description: 'Outright wrong or useless code (enabled by default)',
    priority: 56,
    icon: _categoryEmoji,
  ),
  FigSuggestion(
    name: 'suspicious',
    description: 'Code that is likely wrong or useless',
    priority: 54,
    icon: _categoryEmoji,
  ),
  FigSuggestion(
    name: 'restriction',
    description: 'Prevent the use of language and library features',
    priority: 53,
    icon: _categoryEmoji,
  ),
  FigSuggestion(
    name: 'perf',
    description: 'Check for inefficient code',
    priority: 53,
    icon: _categoryEmoji,
  ),
  FigSuggestion(
    name: 'pedantic',
    description: 'Strict or have occasional false positives',
    priority: 52,
    icon: _categoryEmoji,
  ),
  FigSuggestion(
    name: 'style',
    description: 'Code that could be more idiomatic',
    priority: 51,
    icon: _categoryEmoji,
  ),
  FigSuggestion(
    name: 'nursery',
    description: 'Lints that are still under development',
    icon: _categoryEmoji,
  ),
];

final Set<String> _eslintrcJson = {'.eslintrc', '.eslintrc.json'};
final Set<String> _oxlintrc = {
  '.oxlintrc',
  '.oxlintrc.json',
  'oxlint.json',
  'oxlintrc.json',
};

/// Matches, for example, `tsconfig.build.json`. The TS source's intent (per
/// its comment) is `tsconfig\.\w+\.json$`, matching one or more word chars
/// between the dotted `tsconfig.` prefix and the `.json` suffix.
final RegExp _tsconfigJson = RegExp(r'tsconfig\.\w+\.json$');

/// `lintArg.generators[0]`: the static lint category suggestions. The source
/// resolves `Promise.resolve(categories)` regardless of tokens or environment.
Future<List<FigSuggestion>> _lintArgCategories(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async =>
    _categories;

/// `configGenerator.filterTemplateSuggestions`: keeps only suggestions whose
/// name ends with `.json` or `rc`, boosts ESLint-compatible configs
/// (`.eslintrc`, `.eslintrc.json`) to priority 51 and oxlint configs to
/// priority 52, and leaves every other matching file untouched.
List<FigSuggestion> _configFilter(
    List<FigSuggestion> suggestions, [FigGeneratorContext? context]) {
  return suggestions.where((s) {
    final name = s.nameSingle ?? '';
    return name.endsWith('.json') || name.endsWith('rc');
  }).map((s) {
    final name = s.nameSingle ?? '';
    if (_eslintrcJson.contains(name)) {
      return _copyWith(
        s,
        description: 'Oxlint is compatible with ESLint configs',
        priority: 51,
      );
    } else if (_oxlintrc.contains(name)) {
      return _copyWith(
        s,
        description: 'oxlint config file',
        priority: 52,
      );
    }
    return s;
  }).toList();
}

/// `tsconfigGenerator.filterTemplateSuggestions`: keeps only `.json` files and
/// boosts `tsconfig.json` to priority 52 and `tsconfig.<name>.json` variants
/// (for example `tsconfig.build.json`) to priority 51.
List<FigSuggestion> _tsconfigFilter(
    List<FigSuggestion> suggestions, [FigGeneratorContext? context]) {
  return suggestions.where((s) {
    final name = s.nameSingle ?? '';
    return name.endsWith('.json');
  }).map((s) {
    final name = s.nameSingle ?? '';
    if (name == 'tsconfig.json') {
      return _copyWith(s, priority: 52);
    } else if (name.isNotEmpty && _tsconfigJson.hasMatch(name)) {
      return _copyWith(s, priority: 51);
    }
    return s;
  }).toList();
}

/// Returns a copy of [s] with an optional [description] and [priority]
/// override, preserving every other field.
FigSuggestion _copyWith(
  FigSuggestion s, {
  String? description,
  int? priority,
}) {
  return FigSuggestion(
    name: s.name,
    displayName: s.displayName,
    description: description ?? s.description,
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

/// Registers the oxlint generators referenced by the shipped oxlint JSON.
void registerOxlintHandlers(JsonHandlerRegistry registry) {
  registry.registerFilterTemplateSuggestions(
      oxlintConfigFilterTemplateSuggestionsHandler, _configFilter);
  registry.registerFilterTemplateSuggestions(
      oxlintTsconfigFilterTemplateSuggestionsHandler, _tsconfigFilter);
  registry.registerCustom(oxlintLintArgCustomHandler, _lintArgCategories);
}
