// Hand-written dynamic handlers migrated from src/just.ts.
//
// The `just` spec keeps a single generator script that dumps the active
// Justfile as JSON (`just --unstable --dump --dump-format json`), honoring the
// -f/--justfile flag by passing the chosen file through. The same script is
// referenced by three handler IDs (the --set variable, --show recipe, and root
// args generators); only the post-processing differs:
//   - --set: list every assignment (variable) in the Justfile.
//   - --show: list non-private recipes and aliases.
//   - root args: list recipes with usage display names, unless the current
//     tokens are inside a recipe's argument range.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const justSetVariableScriptHandler =
    'manual.src_just.spec.options_26_.args_0_.generators.script';
const justSetVariablePostProcessHandler =
    'manual.src_just.spec.options_26_.args_0_.generators.postprocess';
const justShowRecipeScriptHandler =
    'manual.src_just.spec.options_30_.args.generators.script';
const justShowRecipePostProcessHandler =
    'manual.src_just.spec.options_30_.args.generators.postprocess';
const justArgsTriggerHandler = 'manual.src_just.spec.args.generators.trigger';
const justArgsScriptHandler = 'manual.src_just.spec.args.generators.script';
const justArgsPostProcessHandler =
    'manual.src_just.spec.args.generators.postprocess';

const _commandIcon = 'fig://icon?type=command';
const _commandKeyIcon = 'fig://icon?type=commandkey';
const _stringIcon = 'fig://icon?type=string';

/// Matches a leading `-f`/`--justfile` flag, mirroring the TS source:
/// `-f name`, `-fname`, `-XYZfname`, `-f=name`, `--justfile name`,
/// `--justfile=name`.
final _justfileFlagRe = RegExp(r'^(-[A-Za-eg-z]*f=?|--justfile(?:=|$))');

/// Finds the justfile path carried by a `-f`/`--justfile` token, or null when
/// no overriding flag is present (just then searches on its own).
String? _justfilePath(List<String> tokens) {
  for (var index = 0; index < tokens.length; index++) {
    final token = tokens[index];
    final match = _justfileFlagRe.firstMatch(token);
    if (match == null) continue;
    final flag = match.group(1);
    if (flag == null || flag.isEmpty) continue;
    final withoutOption = token.substring(flag.length);
    if (withoutOption.isEmpty) {
      if (index + 1 < tokens.length) return tokens[index + 1];
      return null;
    }
    return withoutOption;
  }
  return null;
}

/// The `just` command that dumps the active Justfile as JSON.
List<String> _dumpCommand(String? justfilePath) {
  if (justfilePath == null) {
    return ['just', '--unstable', '--dump', '--dump-format', 'json'];
  }
  return [
    'just',
    '--unstable',
    '--dump',
    '--dump-format',
    'json',
    '--justfile',
    justfilePath,
  ];
}

/// Generator script shared by the --set, --show, and root args generators:
/// dump the Justfile (at the -f/--justfile path, if provided) as JSON.
List<String> _dumpJustfileScript(List<String> tokens) {
  return _dumpCommand(_justfilePath(tokens));
}

/// Parses `just --dump --dump-format json` output. Returns null when the
/// output is not a JSON object.
Map<String, dynamic>? _parseJustfile(String output) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return null;
  }
  if (decoded is! Map) return null;
  return Map<String, dynamic>.from(decoded);
}

/// --set: the variable argument lists every assignment in the Justfile.
List<FigSuggestion> _setVariablePostProcess(String output,
    [List<String>? tokens]) {
  tokens;
  final justfile = _parseJustfile(output);
  if (justfile == null) return const [];
  final assignments = justfile['assignments'];
  if (assignments is! Map) return const [];
  return assignments.keys
      .map((name) => FigSuggestion(name: name.toString(), icon: _stringIcon))
      .toList();
}

/// Renders a recipe's usage string in Fig's style, e.g. `test <FILTER>`,
/// `echo [ARGS...]`.
String _recipeUsage(String name, List<dynamic> parameters) {
  final parts = <String>[name];
  for (final parameter in parameters) {
    if (parameter is! Map) continue;
    final parameterName = parameter['name'];
    if (parameterName == null) continue;
    switch (parameter['kind']) {
      case 'singular':
        parts.add('<$parameterName>');
        break;
      case 'plus':
        parts.add('<$parameterName...>');
        break;
      case 'star':
        parts.add('[$parameterName...]');
        break;
    }
  }
  return parts.join(' ');
}

/// Suggestions for every non-private recipe (command icon) followed by every
/// alias (command-key icon), matching the TS `getRecipeSuggestions`.
List<FigSuggestion> _recipeSuggestions(
  Map<String, dynamic> justfile, {
  bool showRecipeParameters = false,
}) {
  final suggestions = <FigSuggestion>[];
  final recipes = justfile['recipes'];
  if (recipes is Map) {
    for (final entry in recipes.entries) {
      final name = entry.key.toString();
      final recipe = entry.value;
      if (recipe is! Map) continue;
      if (recipe['private'] == true) continue;
      final parameters = recipe['parameters'];
      final parameterList =
          parameters is List ? parameters : const <dynamic>[];
      final insertValue = parameterList.isEmpty ? name : '$name ';
      suggestions.add(FigSuggestion(
        name: name,
        insertValue: insertValue,
        displayName:
            showRecipeParameters ? _recipeUsage(name, parameterList) : null,
        description: recipe['doc']?.toString() ?? 'Recipe',
        icon: _commandIcon,
      ));
    }
  }
  final aliases = justfile['aliases'];
  if (aliases is Map) {
    for (final entry in aliases.entries) {
      final name = entry.key.toString();
      final alias = entry.value;
      if (alias is! Map) continue;
      suggestions.add(FigSuggestion(
        name: name,
        description: "Alias for '${alias['target']}'",
        icon: _commandKeyIcon,
      ));
    }
  }
  return suggestions;
}

/// --show: suggest recipes and aliases (without usage display names).
List<FigSuggestion> _showRecipePostProcess(String output,
    [List<String>? tokens]) {
  tokens;
  final justfile = _parseJustfile(output);
  if (justfile == null) return const [];
  return _recipeSuggestions(justfile);
}

/// Recipe name -> arity map. Variadic recipes (a non-singular final parameter)
/// get [double.infinity]; aliases inherit their target recipe's arity, or stay
/// null when the target is unknown.
class _RecipeArityMapping {
  _RecipeArityMapping({required this.recipeArity, required this.maxArity});

  final Map<String, num?> recipeArity;
  final num maxArity;
}

_RecipeArityMapping _recipeArityMapping(Map<String, dynamic> justfile) {
  final recipeArity = <String, num?>{};
  num maxArity = 0;

  final recipes = justfile['recipes'];
  if (recipes is Map) {
    for (final entry in recipes.entries) {
      final recipe = entry.value;
      if (recipe is! Map) continue;
      final parameters = recipe['parameters'];
      final params = parameters is List ? parameters : const <dynamic>[];
      num arity = params.length;
      if (params.isNotEmpty) {
        final last = params.last;
        if (last is Map && last['kind'] != 'singular') {
          arity = double.infinity;
        }
      }
      if (maxArity < arity) maxArity = arity;
      recipeArity[entry.key.toString()] = arity;
    }
  }

  final aliases = justfile['aliases'];
  if (aliases is Map) {
    for (final entry in aliases.entries) {
      final alias = entry.value;
      if (alias is! Map) continue;
      final target = alias['target'];
      recipeArity[entry.key.toString()] =
          target is String ? recipeArity[target] : null;
    }
  }

  return _RecipeArityMapping(recipeArity: recipeArity, maxArity: maxArity);
}

/// Root args: suggest recipes (with usage display names) unless the tokens are
/// inside a recipe's argument range, in which case return nothing so the
/// recipe's own args take over.
List<FigSuggestion> _rootArgsPostProcess(String output,
    [List<String>? tokens]) {
  final justfile = _parseJustfile(output);
  if (justfile == null) return const [];

  final mapping = _recipeArityMapping(justfile);
  final tokenList = tokens ?? const <String>[];
  final indicesToCheck = mapping.maxArity < tokenList.length - 2
      ? mapping.maxArity
      : tokenList.length - 2;

  for (var checked = 0; checked < indicesToCheck; checked++) {
    final index = tokenList.length - 2 - checked;
    if (index < 0) break;
    final arity = mapping.recipeArity[tokenList[index]];
    if (arity == null) continue;
    if (arity > checked) {
      return const [];
    }
    break;
  }

  return _recipeSuggestions(justfile, showRecipeParameters: true);
}

/// Reruns the recipe generator when a token is completed (an empty token
/// follows a non-empty one).
bool _recipeTrigger(String newToken, String oldToken) =>
    newToken.isEmpty && oldToken.isNotEmpty;

/// Registers the just generators referenced by the shipped just JSON.
void registerJustHandlers(JsonHandlerRegistry registry) {
  registry.registerScript(justSetVariableScriptHandler, _dumpJustfileScript);
  registry.registerPostProcess(
      justSetVariablePostProcessHandler, _setVariablePostProcess);
  registry.registerScript(justShowRecipeScriptHandler, _dumpJustfileScript);
  registry.registerPostProcess(
      justShowRecipePostProcessHandler, _showRecipePostProcess);
  registry.registerTrigger(justArgsTriggerHandler, _recipeTrigger);
  registry.registerScript(justArgsScriptHandler, _dumpJustfileScript);
  registry.registerPostProcess(
      justArgsPostProcessHandler, _rootArgsPostProcess);
}
