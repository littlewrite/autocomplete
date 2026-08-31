// Hand-written dynamic handlers migrated from src/magento.ts.
//
// The magento JSON export is a single root `generateSpec` callback: it runs
// `bin/magento list --format=json --raw`, materializes each reported command
// as a subcommand carrying its positional arguments and options, and injects
// the installed cache types (read from `app/etc/env.php` via php) into the
// `types` argument of every `cache:*` command.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/magento.ts.
const magentoGenerateSpecHandler = 'manual.src_magento.spec.generatespec';

const _binMagentoListCommand = 'bin/magento';
const _binMagentoListArgs = ['list', '--format=json', '--raw'];
const _envConfigCommand = 'php';
const _envConfigArgs = ['-r', 'print(json_encode(require "app/etc/env.php"));'];

/// Mirrors the source's `argument.default?.toString() ?? ""` with JavaScript
/// semantics: `null` becomes an empty string and arrays join with `,` (so `[]`
/// maps to `''`, matching `Array.prototype.toString`).
String _jsDefaultString(dynamic value) {
  if (value == null) return '';
  if (value is List) return value.map(_jsDefaultString).join(',');
  return value.toString();
}

/// Reads the installed cache types from `app/etc/env.php` via php, mirroring
/// `getCacheTypes()` in src/magento.ts. Returns an empty list when the env
/// config is missing, unparseable, or carries no `cache_types` object.
Future<List<String>> _cacheTypes(ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: _envConfigCommand,
    args: _envConfigArgs,
  ));
  if (result.status != 0) return const [];
  try {
    final env = jsonDecode(result.stdout);
    if (env is! Map) return const [];
    final cacheTypes = env['cache_types'];
    if (cacheTypes is! Map) return const [];
    return cacheTypes.keys.cast<String>().toList();
  } catch (_) {
    return const [];
  }
}

/// Builds one subcommand from a single `bin/magento list --format=json`
/// command entry, injecting [cacheTypes] into the `types` argument of
/// `cache:*` commands (src/magento.ts). The option name mirrors the source's
/// `[option.name, ...option.shortcut.split("|")]`, so an empty shortcut leaves
/// an empty-string alias in the name list.
FigSubcommand _magentoSubcommand(
    Map<String, dynamic> command, List<String> cacheTypes) {
  final name = command['name']?.toString() ?? '';
  final args = <FigArg>[];
  final options = <FigOption>[];
  final definition = command['definition'];
  if (definition is Map) {
    final arguments = definition['arguments'];
    if (arguments is Map) {
      for (final raw in arguments.values) {
        if (raw is! Map) continue;
        final argName = raw['name']?.toString();
        final isCacheTypesArg = name.startsWith('cache:') && argName == 'types';
        args.add(FigArg(
          name: argName,
          description: raw['description']?.toString(),
          isOptional: raw['is_required'] != true,
          defaultValue: _jsDefaultString(raw['default']),
          isVariadic: raw['is_array'] == true,
          suggestions: isCacheTypesArg ? cacheTypes : null,
        ));
      }
    }
    final optionMap = definition['options'];
    if (optionMap is Map) {
      for (final raw in optionMap.values) {
        if (raw is! Map) continue;
        final optionName = raw['name']?.toString();
        if (optionName == null) continue;
        final shortcut = raw['shortcut']?.toString() ?? '';
        options.add(FigOption(
          name: [optionName, ...shortcut.split('|')],
          description: raw['description']?.toString(),
          isRequired: raw['is_value_required'] == true,
          requiresSeparator: raw['accept_value'] == true,
        ));
      }
    }
  }
  return FigSubcommand(
    name: name,
    description: command['description']?.toString(),
    args: args,
    options: options,
  );
}

/// Root `generateSpec` from src/magento.ts. Runs `bin/magento list
/// --format=json --raw` (plus a php read of `app/etc/env.php` for the cache
/// types) and exposes each listed command as a subcommand. Non-zero exits,
/// empty output, and parse failures fall back to an empty `magento` spec.
Future<FigSpec?> _magentoGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final listResult = await executeCommand(const ExecuteCommandInput(
    command: _binMagentoListCommand,
    args: _binMagentoListArgs,
  ));
  if (listResult.status != 0 || listResult.stdout.trim().isEmpty) {
    return FigSpec(
      name: 'magento',
      description: 'Open-source E-commerce',
      subcommands: const [],
    );
  }
  final List<dynamic> commands;
  try {
    final decoded = jsonDecode(listResult.stdout);
    if (decoded is! Map || decoded['commands'] is! List) {
      return FigSpec(
        name: 'magento',
        description: 'Open-source E-commerce',
        subcommands: const [],
      );
    }
    commands = decoded['commands'] as List;
  } catch (_) {
    return FigSpec(
      name: 'magento',
      description: 'Open-source E-commerce',
      subcommands: const [],
    );
  }
  final cacheTypes = await _cacheTypes(executeCommand);
  final subcommands = <FigSubcommand>[];
  for (final command in commands) {
    if (command is! Map) continue;
    subcommands.add(
        _magentoSubcommand(Map<String, dynamic>.from(command), cacheTypes));
  }
  return FigSpec(
    name: 'magento',
    description: 'Open-source E-commerce',
    subcommands: subcommands,
  );
}

/// Registers the dynamic handlers referenced by the shipped magento JSON.
void registerMagentoHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(
      magentoGenerateSpecHandler, _magentoGenerateSpec);
}
