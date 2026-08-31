// Hand-written dynamic handlers migrated from src/composer.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from the composer JSON (src/composer.ts). Runs
/// `composer list --format=json` and exposes one subcommand per reported
/// command, plus the symfony recipes subcommands when `symfony.lock` exists.
const composerGenerateSpecHandler = 'manual.src_composer.spec.generatespec';

/// Composer logo used as the subcommand icon (src/composer.ts `composerIcon`).
const _composerIcon =
    'https://getcomposer.org/img/logo-composer-transparent5.png';

/// Matches `PACKAGE_REGEXP` (src/composer.ts): a dependency name with a vendor
/// prefix such as `vendor/package`.
final _packageRegExp = RegExp(r'^.*/.*$');

/// `searchGenerator.postProcess` (src/composer.ts): maps the packagist
/// `results` array into package suggestions.
List<FigSuggestion> _searchPostProcess(String output) {
  try {
    final obj = jsonDecode(output);
    if (obj is! Map) return const [];
    final results = obj['results'];
    if (results is! List) return const [];
    return results.map<FigSuggestion>((item) {
      final map = item is Map ? Map<String, dynamic>.from(item) : const {};
      return FigSuggestion(
        name: map['name'],
        description: map['description'],
        icon: '📦',
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// `packagesGenerator.postProcess` (src/composer.ts): merges `require` and
/// `require-dev`, keeps only vendor-prefixed dependency names, and emits one
/// package suggestion each.
List<FigSuggestion> _packagesPostProcess(String output) {
  if (output.trim().isEmpty) return const [];
  try {
    final packageContent = jsonDecode(output);
    if (packageContent is! Map) return const [];
    final dependencies = packageContent['require'] is Map
        ? Map<String, dynamic>.from(packageContent['require'] as Map)
        : <String, dynamic>{};
    final devDependencies = packageContent['require-dev'] is Map
        ? Map<String, dynamic>.from(packageContent['require-dev'] as Map)
        : <String, dynamic>{};
    // Mirrors `Object.assign(dependencies, devDependencies)`.
    final merged = <String, dynamic>{...dependencies, ...devDependencies};
    return merged.keys
        .where((dependency) => _packageRegExp.hasMatch(dependency))
        .map((dependency) => FigSuggestion(name: dependency, icon: '📦'))
        .toList();
  } catch (_) {
    return const [];
  }
}

/// `searchGenerator.script` (src/composer.ts): curls the packagist search API
/// for the last typed token and applies [_searchPostProcess]. An empty search
/// term yields no suggestions, mirroring the source returning no script.
Future<List<FigSuggestion>> _searchGenerator(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  context;
  if (executeCommand == null) return const [];
  if (tokens.isEmpty) return const [];
  final searchTerm = tokens.last;
  if (searchTerm.isEmpty) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'curl',
    args: [
      '-s',
      '-H',
      'Accept: application/json',
      'https://packagist.org/search.json?q=$searchTerm&per_page=20',
    ],
  ));
  return _searchPostProcess(result.stdout);
}

/// `packagesGenerator.script` (src/composer.ts): cats the local composer.json
/// and applies [_packagesPostProcess].
Future<List<FigSuggestion>> _packagesGenerator(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  context;
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'cat',
    args: ['composer.json'],
  ));
  return _packagesPostProcess(result.stdout);
}

/// The shared option set attached to the symfony recipes subcommands
/// (src/composer.ts `recipesCommonOptions`).
final _recipesCommonOptions = <FigOption>[
  FigOption(
      name: ['-h', '--help'], description: 'Display this help message'),
  FigOption(
      name: ['-q', '--quiet'], description: 'Do not output any message'),
  FigOption(
      name: ['-V', '--version'],
      description: 'Display this application version'),
  FigOption(name: '--ansi', description: 'Force ANSI output',
      exclusiveOn: ['--no-ansi']),
  FigOption(name: '--no-ansi', description: 'Disable ANSI output',
      exclusiveOn: ['--ansi']),
  FigOption(
      name: ['-n', '--no-interaction'],
      description: 'Do not ask any interactive question'),
  FigOption(name: '--profile',
      description: 'Display timing and memory usage information'),
  FigOption(name: '--no-plugins', description: 'Whether to disable plugins'),
  FigOption(
    name: ['-d', '--working-dir'],
    description:
        'If specified, use the given directory as working directory',
    args: [FigArg(name: 'dir', template: 'folders')],
  ),
  FigOption(name: '--no-cache', description: 'Prevent use of the cache'),
  FigOption(
      name: ['-v', '--verbose'],
      description: 'Verbosity of messages: 1 for normal output'),
  FigOption(name: '-vv',
      description: 'Verbosity of messages: 2 for more verbose output'),
  FigOption(name: '-vvv',
      description: 'Verbosity of messages: 3 for debug'),
];

/// Root `generateSpec` from src/composer.ts. Runs `composer list --format=json`
/// (plus `ls symfony.lock`), builds a subcommand per reported command with its
/// args and options, and appends the symfony recipes subcommands when the lock
/// file exists.
Future<FigSpec?> _composerGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final results = await Future.wait([
    executeCommand(const ExecuteCommandInput(
      command: 'composer',
      args: ['list', '--format=json'],
    )),
    executeCommand(const ExecuteCommandInput(
      command: 'ls',
      args: ['symfony.lock'],
    )),
  ]);
  final jsonList = results[0];
  final symfonyLock = results[1];

  final subcommands = <FigSubcommand>[];

  try {
    final data = jsonDecode(jsonList.stdout);
    if (data is Map) {
      final commands = data['commands'];
      if (commands is List) {
        const packagesGeneratorTriggersCommands = ['update', 'remove'];
        for (final command in commands) {
          if (command is! Map) continue;
          final name = command['name'];
          final definition = command['definition'];
          final args = <FigArg>[];
          final options = <FigOption>[];
          if (definition is Map) {
            final arguments = definition['arguments'];
            if (arguments is Map) {
              for (final argKey in arguments.keys) {
                final arg = arguments[argKey];
                if (arg is! Map) continue;
                final argDefault = arg['default'];
                String? defaultName;
                if (argDefault is String && argDefault.isNotEmpty) {
                  defaultName = argDefault;
                } else if (argDefault is List && argDefault.isNotEmpty) {
                  final first = argDefault.first;
                  if (first is String) defaultName = first;
                }
                final generators = <FigGenerator>[];
                if (name == 'require') {
                  generators.add(FigGenerator(custom: _searchGenerator));
                } else if (packagesGeneratorTriggersCommands.contains(name)) {
                  generators.add(FigGenerator(custom: _packagesGenerator));
                }
                args.add(FigArg(
                  name: arg['name']?.toString(),
                  description: arg['description']?.toString(),
                  isOptional: arg['is_required'] != true,
                  defaultValue: defaultName,
                  isVariadic: arg['is_array'] == true,
                  generators: generators,
                ));
              }
            }
            final optionMap = definition['options'];
            if (optionMap is Map) {
              for (final optionKey in optionMap.keys) {
                final option = optionMap[optionKey];
                if (option is! Map) continue;
                final names = <String>[];
                final optionName = option['name'];
                if (optionName != null) names.add(optionName.toString());
                final shortcut = option['shortcut'];
                if (shortcut is String && shortcut.trim().isNotEmpty) {
                  names.add(shortcut);
                }
                if (names.isEmpty) continue;
                options.add(FigOption(
                  name: names.length == 1 ? names.first : names,
                  description: option['description']?.toString(),
                  isRequired: option['is_value_required'] == true,
                  args: option['accept_value'] == true ? [FigArg()] : null,
                ));
              }
            }
          }
          subcommands.add(FigSubcommand(
            name: name,
            description: command['description']?.toString(),
            icon: _composerIcon,
            args: args,
            options: options,
          ));
        }
      }
    }

    final symfonyLockExists = symfonyLock.status == 0;
    if (symfonyLockExists) {
      subcommands.add(FigSubcommand(
        name: ['recipes', 'symfony:recipes'],
        description: 'Shows information about all available recipes',
        icon: _composerIcon,
        args: [
          FigArg(
            name: 'package',
            description:
                'Package to inspect, if not provided all packages are',
            isOptional: true,
          ),
        ],
        options: [
          FigOption(
            name: ['-o', '--outdated'],
            description: 'Show only recipes that are outdated',
          ),
          ..._recipesCommonOptions,
        ],
      ));

      subcommands.add(FigSubcommand(
        name: [
          'recipes:install',
          'symfony:recipes:install',
          'symfony:sync-recipes',
          'sync-recipes',
          'fix-recipes',
        ],
        description:
            'Installs or reinstalls recipes for already installed packages',
        icon: _composerIcon,
        args: [
          FigArg(
            name: 'packages',
            description: 'Recipes that should be installed',
            isVariadic: true,
          ),
        ],
        options: [
          FigOption(
            name: '--force',
            description:
                'Overwrite existing files when a new version of a recipe is available',
            isDangerous: true,
          ),
          ..._recipesCommonOptions,
        ],
      ));
    }
  } catch (_) {
    // Mirrors `console.error(err)` in src/composer.ts: keep the subcommands
    // built so far and fall through to an (empty) spec on failure.
  }

  return FigSpec(name: 'composer', subcommands: subcommands);
}

/// Registers the dynamic handlers referenced by the shipped composer JSON.
void registerComposerHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(
      composerGenerateSpecHandler, _composerGenerateSpec);
}
