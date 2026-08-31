// Hand-written dynamic handlers migrated from src/yarn.ts.
//
// The yarn JSON references generators defined both in src/yarn.ts and in
// src/npm.ts (the `npmScriptsGenerator` and `npmSearchGenerator` reused by the
// `add`/`global add`/root `args`). Each is registered under its
// `manual.src_yarn.*` declaration ID, including the `create` args `loadSpec`
// handler that names the produced `create-<cli>` spec.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/yarn.ts. Lists the `nodeClis` found in
/// `node_modules/.bin` as yarn subcommands that load their own spec.
const yarnGenerateSpecHandler = 'manual.src_yarn.spec.generatespec';

/// `workspace` subcommand `generateSpec` from src/yarn.ts. Materializes one
/// subcommand per detected workspace plus a script generator over that
/// workspace's package.json.
const yarnWorkspaceGenerateSpecHandler =
    'manual.src_yarn.spec.subcommands_37_.generatespec';

/// `create` args `loadSpec` from src/yarn.ts: builds a `create-<cli>` spec for
/// the typed starter kit name.
const yarnCreateClisLoadSpecHandler =
    'manual.src_yarn.spec.subcommands_6_.args.loadspec';

/// `npmScriptsGenerator` (src/npm.ts) materialized as a `custom` handler under
/// the yarn namespace: runs the package.json discovery script and lists its
/// `scripts`.
const yarnScriptsGeneratorHandler =
    'manual.src_yarn.generator.npmscriptsgenerator';

/// `npmSearchGenerator` (src/npm.ts) materialized as a `custom` handler under
/// the yarn namespace: queries the npm registry for packages or versions.
const yarnSearchGeneratorHandler =
    'manual.src_yarn.generator.npmsearchgenerator';

/// `configList` generator from src/yarn.ts, materialized as a `custom` handler
/// because the JSON references it as a bare handler.
const yarnConfigListHandler = 'manual.src_yarn.generator.configlist';

/// `getGlobalPackagesGenerator.custom` from src/yarn.ts: lists the packages in
/// the yarn global package.json, excluding ones already typed.
const yarnGetGlobalPackagesHandler =
    'manual.src_yarn.definition.getglobalpackagesgenerator.custom';

/// `dependenciesGenerator.postProcess` from src/yarn.ts: merges dependencies,
/// devDependencies, and optionalDependencies into suggestions.
const yarnDependenciesPostProcessHandler =
    'manual.src_yarn.definition.dependenciesgenerator.postprocess';

/// `allDependenciesGenerator.postProcess` from src/yarn.ts: parses `yarn list
/// --depth=0 --json` trees into package suggestions.
const yarnAllDependenciesPostProcessHandler =
    'manual.src_yarn.definition.alldependenciesgenerator.postprocess';

/// `createCLIsGenerator.script` from src/yarn.ts: builds the npms.io curl
/// query for `yarn create <term>`.
const yarnCreateClisScriptHandler =
    'manual.src_yarn.definition.createclisgenerator.script';

/// `createCLIsGenerator.postProcess` from src/yarn.ts: strips the `create-`
/// prefix from the returned package names.
const yarnCreateClisPostProcessHandler =
    'manual.src_yarn.definition.createclisgenerator.postprocess';

/// `yarnScriptParserDirectives.alias` from src/yarn.ts: resolves a package.json
/// script name to its command body.
const yarnScriptParserDirectivesAliasHandler =
    'manual.src_yarn.definition.yarnscriptparserdirectives.alias';

/// The package.json discovery command shared by `npmScriptsGenerator` and
/// `dependenciesGenerator` (src/yarn.ts).
const _packageJsonScript = [
  'bash',
  '-c',
  "until [[ -f package.json ]] || [[ \$PWD = '/' ]]; do cd ..; done; cat package.json",
];

/// `nodeClis` from src/yarn.ts: package names that expose their own CLI spec
/// and are surfaced as yarn subcommands by the root generateSpec.
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
List<FigSuggestion> _scriptsPostProcess(String output,
    [List<String>? tokens]) {
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

/// The `npmScriptsGenerator` materialized as a `custom` handler. It runs the
/// package.json discovery script and applies the source postProcess to its
/// stdout (mirroring the runtime path a `script` + `postProcess` generator
/// would take).
Future<List<FigSuggestion>> _yarnScriptsGenerator(
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

/// Ports `npmSearchGenerator` (src/npm.ts): returns package or version
/// suggestions for the last token, hitting the npms.io search API for packages
/// and the npm registry for versions when the token ends with `@`.
Future<List<FigSuggestion>> _yarnSearchGenerator(
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

int _countAtSigns(String value) => '@'.allMatches(value).length;

/// Ports the `configList` postProcess (src/yarn.ts): extracts the `{...}`
/// span of the `yarn config list` output, normalizes the single-quoted values
/// and the two known keys, then emits one suggestion per config key.
List<FigSuggestion> _configListPostProcess(String output) {
  if (output.trim().isEmpty) return const [];
  try {
    final startIndex = output.indexOf('{');
    final endIndex = output.indexOf('}');
    if (startIndex < 0 || endIndex < 0 || endIndex < startIndex) {
      return const [];
    }
    var extracted = output.substring(startIndex, endIndex + 1);
    // Mirrors the source's hacky normalization: single quotes become double
    // quotes and the two known keys are quoted (with the source's `registry`
    // typo intact).
    extracted = extracted
        .replaceAll("'", '"')
        .replaceFirst('lastUpdateCheck', '"lastUpdateCheck"')
        .replaceFirst('registry', '"lastUpdateCheck"');
    final configObject = jsonDecode(extracted);
    if (configObject is Map) {
      return configObject.keys
          .map((key) => FigSuggestion(name: key.toString()))
          .toList();
    }
  } on FormatException {
    // fall through to the empty list below.
  }
  return const [];
}

/// The `configList` generator materialized as a `custom` handler: runs
/// `yarn config list` and applies [_configListPostProcess] to its stdout.
Future<List<FigSuggestion>> _configList(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'yarn',
    args: ['config', 'list'],
  ));
  return _configListPostProcess(result.stdout);
}

/// Ports the `dependenciesGenerator` postProcess (src/yarn.ts): merges
/// dependencies, devDependencies, and optionalDependencies, drops packages
/// already listed in the tokens, and emits a package suggestion per remaining
/// dependency.
List<FigSuggestion> _dependenciesPostProcess(String output,
    [List<String>? tokens]) {
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
    final listed = tokens ?? const [];
    return merged.keys
        .where((name) => !listed.contains(name))
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

/// Ports the `allDependenciesGenerator` postProcess (src/yarn.ts): parses the
/// `yarn list --depth=0 --json` trees and emits one package suggestion per
/// tree, taking the name up to the first `@`.
List<FigSuggestion> _allDependenciesPostProcess(String output,
    [List<String>? tokens]) {
  if (output.trim().isEmpty) return const [];
  try {
    final packageContent = jsonDecode(output);
    if (packageContent is! Map) return const [];
    final data = packageContent['data'];
    final trees = data is Map ? data['trees'] : null;
    if (trees is! List) return const [];
    final result = <FigSuggestion>[];
    for (final dependency in trees) {
      if (dependency is! Map) continue;
      final name = dependency['name'];
      if (name is! String) continue;
      result.add(FigSuggestion(name: name.split('@').first, icon: '📦'));
    }
    return result;
  } on FormatException {
    return const [];
  }
}

/// Ports the `getGlobalPackagesGenerator` custom (src/yarn.ts): reads the
/// yarn global package.json (via `yarn global dir`) and lists its dependencies
/// and devDependencies, dropping packages already present in the tokens.
Future<List<FigSuggestion>> _getGlobalPackages(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final yarnGlobalDir = await executeCommand(const ExecuteCommandInput(
    command: 'yarn',
    args: ['global', 'dir'],
  ));
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['${yarnGlobalDir.stdout.trim()}/package.json'],
  ));
  if (result.stdout.trim().isEmpty) return const [];
  try {
    final packageContent = jsonDecode(result.stdout);
    if (packageContent is! Map) return const [];
    final dependencyKeys = packageContent['dependencies'] is Map
        ? (packageContent['dependencies'] as Map)
            .keys
            .map((key) => key.toString())
            .toList()
        : <String>[];
    final devDependencyKeys = packageContent['devDependencies'] is Map
        ? (packageContent['devDependencies'] as Map)
            .keys
            .map((key) => key.toString())
            .toList()
        : <String>[];
    return [...dependencyKeys, ...devDependencyKeys]
        .where((name) => !tokens.contains(name))
        .map((name) => FigSuggestion(name: name, icon: '📦'))
        .toList();
  } on FormatException {
    return const [];
  }
}

/// Ports the `createCLIsGenerator` script (src/yarn.ts): builds the npms.io
/// curl query for the `create-<term>` search term. Returns null (the source's
/// `undefined`) when there is no search term yet.
List<String>? _createClisScript(List<String> tokens) {
  if (tokens.isEmpty) return null;
  if (tokens.last == '') return null;
  final searchTerm = 'create-${tokens.last}';
  return [
    'curl',
    '-s',
    '-H',
    'Accept: application/json',
    'https://api.npms.io/v2/search?q=$searchTerm&size=20',
  ];
}

/// Ports the `createCLIsGenerator` postProcess (src/yarn.ts): strips the
/// `create-` prefix (mirroring JS `substring` clamping) from each result.
List<FigSuggestion> _createClisPostProcess(String output,
    [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    if (decoded is! Map || decoded['results'] is! List) return const [];
    return (decoded['results'] as List)
        .whereType<Map>()
        .map((item) => item['package'])
        .whereType<Map>()
        .map((package) {
          final name = package['name']?.toString();
          return FigSuggestion(
            name: name != null && name.length > 7 ? name.substring(7) : '',
            description: package['description']?.toString(),
          );
        })
        .toList();
  } on FormatException {
    return const [];
  }
}

/// Ports the `create` args `loadSpec` (src/yarn.ts): names the produced spec
/// `create-<cli>`. The source returns `{ name: "create-" + token, type:
/// "global" }`; the global-type marker has no JSON-first runtime equivalent,
/// so only the name is carried over.
FigSpec? _createClisLoadSpec(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  final token = tokens.isEmpty ? '' : tokens.last;
  return FigSpec(name: 'create-$token');
}

/// Ports the `yarnScriptParserDirectives` alias (src/yarn.ts): resolves a
/// package.json script name to its command body, reading the manifest via
/// `npm prefix`.
Future<String?> _yarnScriptAlias(
    String token, ExecuteCommandFunction executeCommand) async {
  final npmPrefix = await executeCommand(const ExecuteCommandInput(
    command: 'npm',
    args: ['prefix'],
  ));
  if (npmPrefix.status != 0) {
    throw StateError('npm prefix command failed');
  }
  final packageJson = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['${npmPrefix.stdout.trim()}/package.json'],
  ));
  final decoded = jsonDecode(packageJson.stdout);
  String? script;
  if (decoded is Map && decoded['scripts'] is Map) {
    script = (decoded['scripts'] as Map)[token]?.toString();
  }
  if (script == null) {
    throw StateError("Script not found: '$token'");
  }
  return script;
}

/// Ports the root `generateSpec` (src/yarn.ts): lists `node_modules/.bin` and
/// surfaces every entry belonging to [nodeClis] as a yarn subcommand.
Future<FigSpec?> _yarnGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'bash',
    args: [
      '-c',
      "until [[ -d node_modules/ ]] || [[ \$PWD = '/' ]]; do cd ..; done; ls -1 node_modules/.bin/",
    ],
  ));
  final binaries = result.stdout.split('\n');
  final subcommands = binaries
      .where((name) => _nodeClis.contains(name))
      .map((name) => FigSubcommand(
            name: name,
            loadSpec: name == 'rw' ? 'redwood' : name,
            icon: 'fig://icon?type=package',
          ))
      .toList();
  return FigSpec(name: 'yarn', subcommands: subcommands);
}

/// Ports the workspace subcommand's inline script generator postProcess
/// (src/yarn.ts): lists the `scripts` of a workspace package.json.
List<FigSuggestion> _workspaceScriptsPostProcess(String output,
    [List<String>? tokens]) {
  if (output.trim().isEmpty) return const [];
  try {
    final packageContent = jsonDecode(output);
    if (packageContent is Map && packageContent['scripts'] is Map) {
      return (packageContent['scripts'] as Map)
          .keys
          .map((script) => FigSuggestion(name: script.toString()))
          .toList();
    }
  } on FormatException {
    // fall through to the empty list below.
  }
  return const [];
}

/// Parses the `yarn workspaces info` output for Yarn v1 into workspace
/// `{name, location}` records.
Future<List<Map<String, String>>> _workspacesDefinitionsV1(
    ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'yarn',
    args: ['workspaces', 'info'],
  ));
  final stdout = result.stdout;
  final startJson = stdout.indexOf('{');
  final endJson = stdout.lastIndexOf('}');
  if (startJson < 0 || endJson < 0 || endJson < startJson) {
    throw StateError('no JSON in yarn workspaces info output');
  }
  final decoded = jsonDecode(stdout.substring(startJson, endJson + 1));
  if (decoded is! Map) throw StateError('unexpected workspaces info shape');
  return decoded.entries.map((entry) {
    final value = entry.value;
    final location = value is Map ? value['location']?.toString() : null;
    return {
      'name': entry.key.toString(),
      'location': location ?? '',
    };
  }).toList();
}

/// Parses the JSON-lines `yarn workspaces list --json` output for Yarn >= 2
/// into workspace `{name, location}` records.
Future<List<Map<String, String>>> _workspacesDefinitionsVOther(
    ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'yarn',
    args: ['workspaces', 'list', '--json'],
  ));
  return result.stdout.split('\n').map((line) {
    final decoded = jsonDecode(line.trim());
    if (decoded is! Map) throw StateError('unexpected workspaces list line');
    return {
      'name': decoded['name']?.toString() ?? '',
      'location': decoded['location']?.toString() ?? '',
    };
  }).toList();
}

/// Ports the `workspace` subcommand `generateSpec` (src/yarn.ts): detects the
/// yarn major version, materializes one subcommand per workspace, and attaches
/// a script generator that lists each workspace's package.json scripts.
Future<FigSubcommand?> _workspaceGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  if (executeCommand == null) return FigSubcommand(name: 'workspaces');
  final versionResult = await executeCommand(const ExecuteCommandInput(
    command: 'yarn',
    args: ['--version'],
  ));
  final isYarnV1 = versionResult.stdout.startsWith('1.');
  try {
    final definitions = isYarnV1
        ? await _workspacesDefinitionsV1(executeCommand)
        : await _workspacesDefinitionsVOther(executeCommand);
    final subcommands = definitions.map((definition) {
      final location = definition['location'] ?? '';
      return FigSubcommand(
        name: definition['name'] ?? '',
        description: 'Workspaces',
        args: [
          FigArg(
            name: 'script',
            generators: [
              FigGenerator(
                script: ['cat', '$location/package.json'],
                cache: {
                  'strategy': 'stale-while-revalidate',
                  'ttl': 60000,
                },
                postProcess: _workspaceScriptsPostProcess,
              ),
            ],
          ),
        ],
      );
    }).toList();
    return FigSubcommand(name: 'workspace', subcommands: subcommands);
  } catch (e) {
    return FigSubcommand(name: 'workspaces');
  }
}

/// Registers the dynamic handlers referenced by the shipped yarn JSON.
void registerYarnHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(yarnScriptsGeneratorHandler, _yarnScriptsGenerator);
  registry.registerCustom(yarnSearchGeneratorHandler, _yarnSearchGenerator);
  registry.registerCustom(yarnConfigListHandler, _configList);
  registry.registerCustom(yarnGetGlobalPackagesHandler, _getGlobalPackages);
  registry.registerPostProcess(
      yarnDependenciesPostProcessHandler, _dependenciesPostProcess);
  registry.registerPostProcess(
      yarnAllDependenciesPostProcessHandler, _allDependenciesPostProcess);
  registry.registerScript(yarnCreateClisScriptHandler, _createClisScript);
  registry.registerPostProcess(
      yarnCreateClisPostProcessHandler, _createClisPostProcess);
  registry.registerAlias(
      yarnScriptParserDirectivesAliasHandler, _yarnScriptAlias);
  registry.registerGenerateSpec(yarnGenerateSpecHandler, _yarnGenerateSpec);
  registry.registerGenerateSubcommand(
      yarnWorkspaceGenerateSpecHandler, _workspaceGenerateSpec);
  registry.registerLoadSpec(yarnCreateClisLoadSpecHandler, _createClisLoadSpec);
}
