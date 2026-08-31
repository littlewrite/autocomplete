// Hand-written dynamic handlers migrated from src/lerna.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const lernaGetPackagesPostProcessHandler =
    'manual.src_lerna.definition.getpackages.postprocess';
const lernaGetBranchesPostProcessHandler =
    'manual.src_lerna.definition.getbranches.postprocess';
const lernaGetAllScriptsFromPackagesPostProcessHandler =
    'manual.src_lerna.definition.getallscriptsfrompackages.postprocess';
const lernaGitRemotePostProcessHandler =
    'manual.src_lerna.spec.subcommands_12_.options_9_.args.generators.postprocess';
const lernaLoglevelSuggestionsHandler =
    'manual.src_lerna.definition.globaloptions_1_.args.suggestions';
const lernaSemverNounsSuggestionsHandler =
    'manual.src_lerna.spec.subcommands_12_.args.suggestions';
const lernaPackageScopesSuggestionsHandler =
    'manual.src_lerna.spec.subcommands_17_.options_0_.args.suggestions';

const _stringIcon = 'fig://icon?type=string';
const _npmIcon = 'fig://icon?type=npm';
const _gitIcon = 'fig://icon?type=git';
const _gitRemoteIcon =
    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png';

const _logLevels = [
  'silent',
  'error',
  'warn',
  'success',
  'info',
  'verbose',
  'silly',
];

const _semverNouns = [
  'major',
  'minor',
  'patch',
  'premajor',
  'preminor',
  'prepatch',
  'prerelease',
];

const _packageScopes = ['public', 'restricted'];

/// `lerna ls` output: one package name per line. Empty entries (including the
/// trailing entry of a newline-terminated output) are kept, matching the
/// source's plain `split("\n")`.
List<FigSuggestion> _packages(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((packageName) => FigSuggestion(name: packageName, icon: _stringIcon))
      .toList();
}

/// `git branch --no-color` output: strips the leading `*` (first occurrence
/// only) and surrounding whitespace from each branch line. A `fatal:` error
/// message yields no suggestions.
List<FigSuggestion> _branches(String output, [List<String>? tokens]) {
  if (output.startsWith('fatal:')) return const [];
  return output.split('\n').map((line) {
    final name = line.contains('*')
        ? line.replaceFirst('*', '').trim()
        : line.trim();
    return FigSuggestion(
      name: name,
      description: 'Branch',
      icon: _gitIcon,
    );
  }).toList();
}

/// Concatenated `package.json` bodies separated by `END`: JSON-parses each
/// package, collects the keys of its `scripts` object, and deduplicates them
/// in first-seen order. A malformed package (or missing `scripts` object)
/// aborts with no suggestions.
List<FigSuggestion> _allScriptsFromPackages(
    String output, [List<String>? tokens]) {
  final packages = output
      .split('END')
      .where((entry) => entry.trim().isNotEmpty)
      .toList();

  final scriptNames = <String>[];
  final seen = <String>{};
  for (final packageContent in packages) {
    final dynamic decoded;
    try {
      decoded = jsonDecode(packageContent);
    } catch (_) {
      return const [];
    }
    if (decoded is! Map) return const [];
    final parsed = Map<String, dynamic>.from(decoded);
    final scripts = parsed['scripts'];
    if (scripts is! Map) return const [];
    for (final name in scripts.keys) {
      final key = name.toString();
      if (seen.add(key)) scriptNames.add(key);
    }
  }

  return scriptNames
      .map((scriptName) => FigSuggestion(name: scriptName, icon: _npmIcon))
      .toList();
}

/// `git remote` output: one remote name per line.
List<FigSuggestion> _gitRemote(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((remoteName) => FigSuggestion(
            name: remoteName,
            description: 'Remote',
            icon: _gitRemoteIcon,
          ))
      .toList();
}

/// The `--loglevel` suggestions: the seven log levels with a string icon.
Future<List<FigSuggestion>> _logLevelsSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _logLevels
      .map((level) => FigSuggestion(name: level, icon: _stringIcon))
      .toList();
}

/// The `version` argument suggestions: the seven semver nouns with an npm icon.
Future<List<FigSuggestion>> _semverNounsSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _semverNouns
      .map((noun) => FigSuggestion(name: noun, icon: _npmIcon))
      .toList();
}

/// The `create --access` suggestions: the two package scopes.
Future<List<FigSuggestion>> _packageScopesSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _packageScopes
      .map((scope) => FigSuggestion(name: scope, icon: _stringIcon))
      .toList();
}

/// Registers the lerna generators referenced by the shipped lerna JSON.
void registerLernaHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(lernaGetPackagesPostProcessHandler, _packages);
  registry.registerPostProcess(lernaGetBranchesPostProcessHandler, _branches);
  registry.registerPostProcess(
      lernaGetAllScriptsFromPackagesPostProcessHandler, _allScriptsFromPackages);
  registry.registerPostProcess(lernaGitRemotePostProcessHandler, _gitRemote);
  registry.registerCustom(lernaLoglevelSuggestionsHandler,
      _logLevelsSuggestions);
  registry.registerCustom(
      lernaSemverNounsSuggestionsHandler, _semverNounsSuggestions);
  registry.registerCustom(
      lernaPackageScopesSuggestionsHandler, _packageScopesSuggestions);
}
