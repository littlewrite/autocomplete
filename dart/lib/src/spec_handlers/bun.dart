// Hand-written dynamic handlers migrated from src/bun.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const bunCreateCustomHandler =
    'manual.src_bun.spec.subcommands_0_.args_0_.generators_1_.custom';
const bunNpmSearchHandler = 'manual.src_bun.generator.npmsearchgenerator';
const bunDependenciesHandler =
    'manual.src_bun.generator.dependenciesgenerator';
const bunLoaderHandler =
    'manual.src_bun.definition.sharedpublicparams_17_.args.generators';
const bunTargetHandler =
    'manual.src_bun.definition.sharedpublicparams_26_.args.generators';
const bunLinksPostProcessHandler =
    'manual.src_bun.definition.bunlinksgenerator.postprocess';
const bunTestFilesPostProcessHandler =
    'manual.src_bun.spec.subcommands_10_.args.generators.postprocess';

/// Root `spec.options` handler from src/bun.ts: `publicParams` filtered to the
/// inspect/hot/watch flags, so they are offered before a subcommand/file.
const bunRootOptionsHandler = 'manual.src_bun.spec.options';

/// `create` args `loadSpec` from src/bun.ts: builds a `create-<template>`
/// spec (mirrors `{ name: "create-" + token, type: "global" }`).
const bunCreateLoadSpecHandler =
    'manual.src_bun.spec.subcommands_0_.args_0_.loadspec';

/// `create` args per-item `suggestions` ref from src/bun.ts: the
/// `npxSuggestions` entries whose name starts with `create-`, with the prefix
/// stripped and priority raised to 76.
const bunCreateSuggestionsHandler =
    'manual.src_bun.spec.subcommands_0_.args_0_.suggestions_6_';

const _packageIcon = '📦';

/// Loader names accepted by `--loader` (from the `loaders` list in src/bun.ts).
const _loaders = [
  'js',
  'jsx',
  'ts',
  'tsx',
  'json',
  'toml',
  'text',
  'file',
  'wasm',
  'napi',
];

/// Target environments accepted by `--target`.
const _targets = ['node', 'browser', 'bun'];

/// Lists the templates in `$HOME/.bun-create` for `bun create`.
Future<List<FigSuggestion>> _bunCreate(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'];
  if (home == null || home.isEmpty) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'ls',
    args: ['-1', '$home/.bun-create'],
  ));
  if (result.status != 0) return const [];
  return result.stdout
      .split('\n')
      .map((name) => FigSuggestion(name: name))
      .toList();
}

int _countAtSigns(String value) => '@'.allMatches(value).length;

/// npm package search. With no keywords the source uses the npms.io
/// suggestions endpoint; a token ending in `@` instead queries the npm
/// registry for dist-tags and versions.
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

/// Reads the nearest package.json through `npm prefix` + `cat`.
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

Map<String, String> _dependencyNames(dynamic values, String description) {
  if (values is! Map) return const {};
  return Map<String, String>.fromEntries(
    values.keys.map((name) => MapEntry(name.toString(), description)),
  );
}

/// Lists package.json dependencies (or the global packages when `-g` /
/// `--global` is present), skipping ones already on the command line.
Future<List<FigSuggestion>> _dependencies(
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
              icon: _packageIcon,
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
            icon: _packageIcon,
            description: entry.value,
          ))
      .toList();
}

/// `--loader`: suggests `.ext` keys while a separator has not been typed, then
/// the matching loader values once it has (mirrors `keyValueList`).
Future<List<FigSuggestion>> _loader(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  final separatorIndex = finalToken.lastIndexOf('=');
  final delimiterIndex = finalToken.lastIndexOf(',');
  final index = separatorIndex > delimiterIndex ? separatorIndex : delimiterIndex;
  final isKey = index == -1 || finalToken[index] != '=';
  if (isKey) {
    final existingKeys = finalToken
        .split(',')
        .map((chunk) {
          final eq = chunk.indexOf('=');
          return eq == -1 ? chunk : chunk.substring(0, eq);
        })
        .toList();
    return _loaders
        .map((loader) => '.$loader')
        .where((key) => !existingKeys.contains(key))
        .map((key) => FigSuggestion(name: key, insertValue: '$key='))
        .toList();
  }
  return _loaders.map((value) => FigSuggestion(name: value)).toList();
}

/// `--target`: suggests node/browser/bun, dropping values already present in a
/// comma-separated list (mirrors `valueList`).
Future<List<FigSuggestion>> _target(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  final existing = finalToken.split(',');
  return _targets
      .where((value) => !existing.contains(value))
      .map((value) => FigSuggestion(name: value))
      .toList();
}

/// `bun link` output: each line is a globally linked package name.
List<FigSuggestion> _bunLinks(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((dep) => FigSuggestion(
            name: dep,
            description: 'Link to this package',
            icon: _packageIcon,
          ))
      .toList();
}

/// `bun test` output: each file path becomes its basename with the full path
/// inserted on completion.
List<FigSuggestion> _testFiles(String output, [List<String>? tokens]) {
  return output.split('\n').map((file) {
    final segments = file.split('/');
    return FigSuggestion(
      name: segments.isEmpty ? file : segments.last,
      priority: 76,
      description: 'run $file',
      insertValue: file,
    );
  }).toList();
}

/// The shared `[host:]port` arg for the `--inspect*` flags (src/bun.ts
/// `inspectArgs`).
final _inspectArgs = FigArg(
  name: '[host:]port',
  isOptional: true,
  suggestions: [
    FigSuggestion(
      name: '3000',
      icon: 'fig://icon?type=box',
      description: 'Serve on port 3000',
    ),
    FigSuggestion(
      name: '8080',
      icon: 'fig://icon?type=box',
      description: 'Serve on port 8080',
    ),
  ],
  description: 'Activate inspector on particular port and/or hostname',
);

/// Root `spec.options` handler: the public bun flags whose name contains
/// `--inspect`, `--hot`, or `--watch` (mirrors the `publicParams.filter(...)`
/// in src/bun.ts, with only the matching entries kept).
List<FigOption> _rootOptions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return [
    FigOption(
      name: '--inspect',
      description: "Activate Bun's debugger for a file",
      requiresSeparator: true,
      args: _inspectArgs,
    ),
    FigOption(
      name: '--inspect-wait',
      description:
          "Activate Bun's Debugger, wait for a connection before executing",
      requiresSeparator: true,
      args: _inspectArgs,
    ),
    FigOption(
      name: '--inspect-brk',
      description:
          "Activate Bun's Debugger, set breakpoint on first line of code and wait",
      requiresSeparator: true,
      args: _inspectArgs,
    ),
    FigOption(
      name: '--hot',
      description: 'Enable auto reload in the Bun runtime, test runner, or bundler',
      priority: 50,
    ),
    FigOption(
      name: '--watch',
      description: 'Automatically restart the process on file change',
      priority: 50,
    ),
  ];
}

/// `create` args `loadSpec`: names the produced spec `create-<template>`
/// (mirrors `{ name: "create-" + token, type: "global" }` in src/bun.ts; the
/// global-type marker has no JSON-first runtime equivalent, so only the name
/// is carried over).
FigSpec? _createTemplateLoadSpec(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  final token = tokens.isEmpty ? '' : tokens.last;
  return FigSpec(name: 'create-$token');
}

/// The `create` args per-item suggestions handler: the `npxSuggestions` whose
/// name starts with `create-` (src/npx.ts), with the prefix stripped and
/// priority raised to 76, mirroring the filter/map in src/bun.ts.
Future<List<FigSuggestion>> _createTemplates(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return <FigSuggestion>[
    FigSuggestion(
      name: 'react-native-app',
      icon: 'https://reactnative.dev/img/pwa/manifest-icon-512.png',
      priority: 76,
    ),
    FigSuggestion(
      name: 'completion-spec',
      icon: 'https://fig.io/icons/fig-light.png',
      priority: 76,
    ),
    FigSuggestion(
      name: 'next-app',
      icon: 'https://nextjs.org/static/favicon/favicon-16x16.png',
      priority: 76,
    ),
    FigSuggestion(
      name: 't3-app',
      icon: 'https://create.t3.gg/favicon.svg',
      priority: 76,
    ),
    FigSuggestion(
      name: 'discord-bot',
      icon: 'https://discordjs.dev/favicon-32x32.png',
      priority: 76,
    ),
    FigSuggestion(
      name: 'video',
      icon:
          'https://raw.githubusercontent.com/remotion-dev/remotion/main/packages/docs/static/img/logo-small.png',
      priority: 76,
    ),
    FigSuggestion(
      name: 'remix',
      icon: 'https://remix.run/favicon-light.1.png',
      priority: 76,
    ),
  ];
}

/// Registers the bun generators referenced by the shipped bun JSON.
void registerBunHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(bunCreateCustomHandler, _bunCreate);
  registry.registerCustom(bunNpmSearchHandler, _npmSearch);
  registry.registerCustom(bunDependenciesHandler, _dependencies);
  registry.registerCustom(bunLoaderHandler, _loader);
  registry.registerCustom(bunTargetHandler, _target);
  registry.registerPostProcess(bunLinksPostProcessHandler, _bunLinks);
  registry.registerPostProcess(bunTestFilesPostProcessHandler, _testFiles);
  registry.registerOptions(bunRootOptionsHandler, _rootOptions);
  registry.registerLoadSpec(bunCreateLoadSpecHandler, _createTemplateLoadSpec);
  registry.registerCustom(bunCreateSuggestionsHandler, _createTemplates);
}
