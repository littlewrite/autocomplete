// Hand-written dynamic handlers migrated from src/pnpm.ts.
//
// The focused pnpm JSON export recovered two dynamic values:
//   * the top-level args generator (`npmScriptsGenerator` from src/npm.ts),
//     materialized as a `custom` handler reference; and
//   * the root `generateSpec` callback from src/pnpm.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Top-level `args.generators` from the pnpm JSON. Recovered from the
/// `npmScriptsGenerator` (src/npm.ts) that lists package.json scripts.
const pnpmScriptsGeneratorHandler =
    'manual.src_pnpm.generator.npmscriptsgenerator';

/// Root `generateSpec` from the pnpm JSON (src/pnpm.ts). Lists `nodeClis`
/// dependencies as pnpm subcommands.
const pnpmGenerateSpecHandler = 'manual.src_pnpm.spec.generatespec';

/// The package.json discovery command shared by `npmScriptsGenerator` and the
/// `dependenciesGenerator` (src/yarn.ts) that pnpm's generateSpec relies on.
const _packageJsonScript = [
  'bash',
  '-c',
  "until [[ -f package.json ]] || [[ \$PWD = '/' ]]; do cd ..; done; cat package.json",
];

/// `nodeClis` from src/yarn.ts: package names that expose their own CLI spec
/// and are surfaced as pnpm subcommands by the root generateSpec.
const _nodeClis = <String>{
  'vue',
  'vite',
  'nuxt',
  'react-native',
  'degit',
  'expo',
  'jest',
  'next',
  'electron',
  'prisma',
  'eslint',
  'prettier',
  'tsc',
  'typeorm',
  'babel',
  'remotion',
  'autocomplete-tools',
  'redwood',
  'rw',
  'create-completion-spec',
  'publish-spec-to-team',
  'capacitor',
  'cap',
};

SuggestionType? _suggestionType(dynamic value) {
  if (value is! String) return null;
  return SuggestionType.values.cast<SuggestionType?>().firstWhere(
        (type) => type?.name == value,
        orElse: () => null,
      );
}

/// Ports the `npmScriptsGenerator` postProcess (src/npm.ts): parses the
/// package.json stdout and emits one suggestion per script, honoring the
/// optional `fig` completions overrides. The npm client is derived from the
/// first token, so `yarn` selects the yarn icon.
List<FigSuggestion> _scriptsPostProcess(String output, [List<String>? tokens]) {
  if (output.trim().isEmpty) return const [];
  try {
    final packageJson = jsonDecode(output);
    if (packageJson is! Map || packageJson['scripts'] is! Map) return const [];
    final completions =
        packageJson['fig'] is Map ? packageJson['fig'] as Map : const {};
    final client = tokens?.isNotEmpty == true ? tokens!.first : null;
    return (packageJson['scripts'] as Map).entries.map<FigSuggestion>((entry) {
      final custom = completions[entry.key] is Map
          ? completions[entry.key] as Map
          : const {};
      return FigSuggestion(
        name: custom['name'] ?? entry.key.toString(),
        displayName: custom['displayName']?.toString(),
        description: custom['description'] ?? entry.value?.toString(),
        icon: custom['icon']?.toString() ??
            (client == 'yarn' ? 'fig://icon?type=yarn' : 'fig://icon?type=npm'),
        priority: custom['priority'] is num
            ? (custom['priority'] as num).toInt()
            : 51,
        insertValue: custom['insertValue']?.toString(),
        replaceValue: custom['replaceValue']?.toString(),
        type: _suggestionType(custom['type']),
        hidden: custom['hidden'] == true,
        isDangerous: custom['isDangerous'] == true,
      );
    }).toList();
  } on FormatException {
    return const [];
  }
}

/// The recovered `custom` handler for the scripts generator. It runs the
/// package.json discovery script and applies the source postProcess to its
/// stdout (mirroring the runtime path a `script` + `postProcess` generator
/// would take).
Future<List<FigSuggestion>> _pnpmScriptsGenerator(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: _packageJsonScript[0],
    args: _packageJsonScript.sublist(1),
  ));
  return _scriptsPostProcess(result.stdout, tokens);
}

/// Ports the `dependenciesGenerator` postProcess (src/yarn.ts): merges
/// dependencies, devDependencies, and optionalDependencies, drops packages
/// already listed in the tokens, and emits a package suggestion per remaining
/// dependency.
List<FigSuggestion> _dependenciesPostProcess(
    String output, List<String> tokens) {
  if (output.trim().isEmpty) return const [];
  try {
    final packageJson = jsonDecode(output);
    if (packageJson is! Map) return const [];
    final dependencies = packageJson['dependencies'] is Map
        ? Map<String, dynamic>.from(packageJson['dependencies'] as Map)
        : <String, dynamic>{};
    final devDependencies = packageJson['devDependencies'] is Map
        ? Map<String, dynamic>.from(packageJson['devDependencies'] as Map)
        : <String, dynamic>{};
    final optionalDependencies = packageJson['optionalDependencies'] is Map
        ? Map<String, dynamic>.from(
            packageJson['optionalDependencies'] as Map)
        : <String, dynamic>{};
    // Mirrors `Object.assign(dependencies, devDependencies,
    // optionalDependencies)`.
    final merged = <String, dynamic>{
      ...dependencies,
      ...devDependencies,
      ...optionalDependencies,
    };
    return merged.keys
        .where((name) => !tokens.contains(name))
        .map((name) {
          final mergedValue = merged[name];
          String description = 'devDependency';
          if (mergedValue != null && mergedValue.toString().isNotEmpty) {
            description = 'dependency';
          } else if (optionalDependencies[name] != null &&
              optionalDependencies[name].toString().isNotEmpty) {
            description = 'optionalDependency';
          }
          return FigSuggestion(name: name, icon: '📦', description: description);
        })
        .toList();
  } on FormatException {
    return const [];
  }
}

/// Root `generateSpec` from src/pnpm.ts. Reads the package.json dependencies,
/// keeps only the package names that belong to [nodeClis], and exposes them as
/// pnpm subcommands that load their own spec.
Future<FigSpec?> _pnpmGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  final result = await executeCommand(ExecuteCommandInput(
    command: _packageJsonScript[0],
    args: _packageJsonScript.sublist(1),
  ));
  final packages = _dependenciesPostProcess(result.stdout, tokens)
      .map((suggestion) => suggestion.nameSingle)
      .whereType<String>();
  final subcommands = packages
      .where(_nodeClis.contains)
      .map((name) => FigSubcommand(
            name: name,
            loadSpec: name,
            icon: 'fig://icon?type=package',
          ))
      .toList();
  return FigSpec(name: 'pnpm', subcommands: subcommands);
}

/// Registers the dynamic handlers referenced by the shipped pnpm JSON.
void registerPnpmHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(pnpmScriptsGeneratorHandler, _pnpmScriptsGenerator);
  registry.registerGenerateSpec(pnpmGenerateSpecHandler, _pnpmGenerateSpec);
}
