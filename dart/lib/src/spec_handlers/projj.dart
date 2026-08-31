// Hand-written dynamic handlers migrated from src/projj.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const projjRepoGeneratorCustomHandler =
    'manual.src_projj.definition.repogenerator.custom';
const projjHookGeneratorCustomHandler =
    'manual.src_projj.definition.hookgenerator.custom';

/// Reads `$HOME/.projj/cache.json` and suggests each cached repository. The
/// suggestion name is the last path segment of the cache key (the repository
/// name) and the description is the configured remote URL.
Future<List<FigSuggestion>> _repoGenerator(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'] ?? '';
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['$home/.projj/cache.json'],
  ));
  if (result.status != 0) return const [];
  dynamic cache;
  try {
    cache = jsonDecode(result.stdout);
  } catch (_) {
    return const [];
  }
  if (cache is! Map) return const [];
  final repos = <FigSuggestion>[];
  for (final key in cache.keys) {
    final value = cache[key];
    repos.add(FigSuggestion(
      name: key.toString().split('/').last,
      description: value is Map ? value['repo'] : null,
    ));
  }
  return repos;
}

/// Reads `$HOME/.projj/config.json` and suggests each configured hook name with
/// its description.
Future<List<FigSuggestion>> _hookGenerator(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'] ?? '';
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['$home/.projj/config.json'],
  ));
  if (result.status != 0) return const [];
  dynamic cache;
  try {
    cache = jsonDecode(result.stdout);
  } catch (_) {
    return const [];
  }
  if (cache is! Map) return const [];
  final hooks = cache['hooks'];
  if (hooks is! Map) return const [];
  return hooks.keys.map((key) {
    return FigSuggestion(name: key.toString(), description: hooks[key]);
  }).toList();
}

/// Registers the projj generators referenced by the shipped projj JSON.
void registerProjjHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    projjRepoGeneratorCustomHandler,
    (tokens, executeCommand, context) =>
        _repoGenerator(tokens, executeCommand, context),
  );
  registry.registerCustom(
    projjHookGeneratorCustomHandler,
    (tokens, executeCommand, context) =>
        _hookGenerator(tokens, executeCommand, context),
  );
}
