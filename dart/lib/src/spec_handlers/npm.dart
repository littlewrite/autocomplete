// Hand-written dynamic handlers migrated from src/npm.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const npmSearchHandlerIds = [
  'manual.src_npm.spec.subcommands_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_7_.args.generators.custom',
  'manual.src_npm.spec.subcommands_18_.args.generators.custom',
  'manual.src_npm.spec.subcommands_45_.args.generators.custom',
];

const npmWorkspaceHandlerIds = [
  'manual.src_npm.spec.subcommands_0_.options_20_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_1_.options_0_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_5_.subcommands_0_.options_2_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_5_.options_0_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_18_.options_0_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_33_.options_10_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_35_.options_5_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_37_.options_2_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_39_.subcommands_0_.options_1_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_39_.subcommands_1_.options_1_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_39_.subcommands_2_.options_0_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_42_.options_4_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_43_.options_1_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_44_.options_1_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_45_.options_0_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_50_.options_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_64_.options_2_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_66_.options_12_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_67_.options_0_0_.args.generators.custom',
  'manual.src_npm.spec.subcommands_68_.options_0_0_.args.generators.custom',
];

const npmDependenciesHandler =
    'manual.src_npm.spec.subcommands_21_.args.generators.custom';
const npmScriptsPostProcessHandler =
    'manual.src_npm.spec.subcommands_1_.args.generators.postprocess';

const npmSearchTriggerHandlerIds = [
  'manual.src_npm.spec.subcommands_0_.args.generators.trigger',
  'manual.src_npm.spec.subcommands_7_.args.generators.trigger',
  'manual.src_npm.spec.subcommands_18_.args.generators.trigger',
  'manual.src_npm.spec.subcommands_45_.args.generators.trigger',
];

const npmDependenciesTriggerHandler =
    'manual.src_npm.spec.subcommands_21_.args.generators.trigger';

int _countAtSigns(String value) => '@'.allMatches(value).length;

bool _npmSearchTrigger(String newToken, String oldToken) {
  if (oldToken.startsWith('@')) {
    return !(_countAtSigns(oldToken) > 1 && _countAtSigns(newToken) > 1);
  }
  return !(oldToken.contains('@') && newToken.contains('@'));
}

bool _npmDependenciesTrigger(String newToken, String oldToken) =>
    newToken == '-g' || newToken == '--global';

Future<dynamic> _readPackageJson(ExecuteCommandFunction executeCommand) async {
  final prefix = await executeCommand(const ExecuteCommandInput(
    command: 'npm',
    args: ['prefix'],
  ));
  if (prefix.status != 0 || prefix.stdout.trim().isEmpty) return null;
  final packageJson = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['${prefix.stdout.trim()}/package.json'],
  ));
  if (packageJson.status != 0 || packageJson.stdout.trim().isEmpty) return null;
  try {
    return jsonDecode(packageJson.stdout);
  } on FormatException {
    return null;
  }
}

Future<List<FigSuggestion>> _npmSearch(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || tokens.isEmpty) return const [];
  final searchTerm = tokens.last;
  if (searchTerm.isEmpty) return const [];

  final wantsVersions = searchTerm.startsWith('@')
      ? _countAtSigns(searchTerm) > 1
      : searchTerm.contains('@');
  final versionRequest = searchTerm.endsWith('@');
  final request = versionRequest
      ? ExecuteCommandInput(
          command: 'curl',
          args: [
            '-s',
            '-H',
            'Accept: application/vnd.npm.install-v1+json',
            'https://registry.npmjs.org/${searchTerm.substring(0, searchTerm.length - 1)}',
          ],
        )
      : ExecuteCommandInput(
          command: 'curl',
          args: [
            '-s',
            '-H',
            'Accept: application/json',
            'https://api.npms.io/v2/search/suggestions?q=$searchTerm&size=20',
          ],
        );
  final response = await executeCommand(request);
  if (response.status != 0) return const [];

  try {
    final data = jsonDecode(response.stdout);
    if (wantsVersions && data is Map) {
      final suggestions = <FigSuggestion>[];
      final tags = data['dist-tags'];
      if (tags is Map) {
        for (final entry in tags.entries) {
          suggestions.add(FigSuggestion(
            name: entry.key.toString(),
            description: entry.value?.toString(),
          ));
        }
      }
      final versions = data['versions'];
      if (versions is Map) {
        for (final version in versions.keys.toList().reversed) {
          suggestions.add(FigSuggestion(name: version.toString()));
        }
      }
      return suggestions;
    }
    if (data is! List) return const [];
    return data
        .whereType<Map>()
        .map((item) => item['package'])
        .whereType<Map>()
        .map((package) => FigSuggestion(
              name: package['name']?.toString(),
              description: package['description']?.toString(),
            ))
        .where((suggestion) => suggestion.nameSingle != null)
        .toList();
  } on FormatException {
    return const [];
  }
}

Future<List<FigSuggestion>> _npmWorkspaces(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final packageJson = await _readPackageJson(executeCommand);
  if (packageJson is! Map || packageJson['workspaces'] is! List) {
    return const [];
  }
  return (packageJson['workspaces'] as List)
      .whereType<String>()
      .map((workspace) => FigSuggestion(
            name: workspace,
            description: 'Workspaces',
          ))
      .toList();
}

Future<List<FigSuggestion>> _npmDependencies(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final global = tokens.contains('-g') || tokens.contains('--global');
  if (global) {
    final output = await executeCommand(const ExecuteCommandInput(
      command: 'bash',
      args: ['-c', 'ls -1 `npm root -g`'],
    ));
    if (output.status != 0) return const [];
    return output.stdout
        .split('\n')
        .map((name) => name.trim())
        .where((name) => name.isNotEmpty)
        .map((name) => FigSuggestion(
              name: name,
              icon: '📦',
              description: 'Global dependency',
            ))
        .toList();
  }

  final packageJson = await _readPackageJson(executeCommand);
  if (packageJson is! Map) return const [];
  final groups = <String, String>{
    ..._dependencyNames(packageJson['dependencies'], 'dependency'),
    ..._dependencyNames(packageJson['devDependencies'], 'devDependency'),
    ..._dependencyNames(
      packageJson['optionalDependencies'],
      'optionalDependency',
    ),
  };
  return groups.entries
      .where((entry) => !tokens.contains(entry.key))
      .map((entry) => FigSuggestion(
            name: entry.key,
            icon: '📦',
            description: entry.value,
          ))
      .toList();
}

Map<String, String> _dependencyNames(dynamic values, String description) {
  if (values is! Map) return const {};
  return Map<String, String>.fromEntries(
    values.keys.map((name) => MapEntry(name.toString(), description)),
  );
}

SuggestionType? _suggestionType(dynamic value) {
  if (value is! String) return null;
  return SuggestionType.values.cast<SuggestionType?>().firstWhere(
        (type) => type?.name == value,
        orElse: () => null,
      );
}

List<FigSuggestion> _npmScripts(String output, [List<String>? tokens]) {
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

/// Registers the completed dynamic portions of the npm JSON spec.
void registerNpmHandlers(JsonHandlerRegistry registry) {
  for (final id in npmSearchHandlerIds) {
    registry.registerCustom(id, _npmSearch);
  }
  for (final id in npmWorkspaceHandlerIds) {
    registry.registerCustom(id, _npmWorkspaces);
  }
  registry.registerCustom(npmDependenciesHandler, _npmDependencies);
  registry.registerPostProcess(npmScriptsPostProcessHandler, _npmScripts);
  for (final id in npmSearchTriggerHandlerIds) {
    registry.registerTrigger(id, _npmSearchTrigger);
  }
  registry.registerTrigger(
      npmDependenciesTriggerHandler, _npmDependenciesTrigger);
}
