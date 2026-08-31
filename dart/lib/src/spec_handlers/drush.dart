// Hand-written dynamic handler migrated from src/drush.ts.
//
// The drush JSON export is a single root `generateSpec` callback: it runs
// `drush --format=json` and materializes every listed command as a subcommand
// carrying its positional arguments and options.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/drush.ts: runs `drush --format=json`.
const drushGenerateSpecHandler = 'manual.src_drush.spec.generatespec';

/// Builds one subcommand from a single `drush --format=json` command entry.
FigSubcommand _drushSubcommand(Map<String, dynamic> command) {
  final definition = command['definition'] is Map
      ? Map<String, dynamic>.from(command['definition'] as Map)
      : const <String, dynamic>{};
  final arguments = definition['arguments'] is Map
      ? Map<String, dynamic>.from(definition['arguments'] as Map)
      : const <String, dynamic>{};
  final options = definition['options'] is Map
      ? Map<String, dynamic>.from(definition['options'] as Map)
      : const <String, dynamic>{};

  final args = arguments.values.map((raw) {
    final arg = Map<String, dynamic>.from(raw as Map);
    // The source defaults to `arg.default[0]` when the default is an array.
    final dynamic rawDefault = arg['default'];
    String? defaultValue;
    if (rawDefault != null && rawDefault != '') {
      defaultValue = rawDefault is List
          ? (rawDefault.isNotEmpty ? rawDefault.first.toString() : null)
          : rawDefault.toString();
    }
    return FigArg(
      name: arg['name']?.toString(),
      description: arg['description']?.toString(),
      isOptional: arg['is_required'] != true,
      isVariadic: arg['is_array'] == true,
      defaultValue: defaultValue,
    );
  }).toList();

  final optionList = options.values.map((raw) {
    final option = Map<String, dynamic>.from(raw as Map);
    final names = <String>[option['name']?.toString() ?? ''];
    final shortcut = option['shortcut']?.toString() ?? '';
    if (shortcut.trim().isNotEmpty) {
      names.add(shortcut);
    }
    return FigOption(
      name: names,
      description: option['description']?.toString(),
      isRequired: option['is_value_required'] == true,
      isRepeatable: option['is_multiple'] == true,
      args: option['accept_value'] == true ? [FigArg()] : null,
    );
  }).toList();

  return FigSubcommand(
    name: command['name']?.toString() ?? '',
    description: command['description']?.toString(),
    args: args,
    options: optionList,
  );
}

/// Root `generateSpec` from src/drush.ts. Runs `drush --format=json` and
/// exposes each listed command as a subcommand. Parse failures and non-zero
/// command exits fall back to an empty `drush` spec, mirroring the source's
/// catch-and-continue behavior.
Future<FigSpec?> _drushGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'drush',
    args: ['--format=json'],
  ));
  if (result.status != 0) {
    return FigSpec(name: 'drush', subcommands: []);
  }
  final subcommands = <FigSubcommand>[];
  try {
    final decoded = jsonDecode(result.stdout);
    if (decoded is Map && decoded['commands'] is List) {
      for (final command in decoded['commands'] as List) {
        if (command is! Map) continue;
        subcommands.add(_drushSubcommand(Map<String, dynamic>.from(command)));
      }
    }
  } catch (_) {
    return FigSpec(name: 'drush', subcommands: []);
  }
  return FigSpec(name: 'drush', subcommands: subcommands);
}

/// Registers the drush dynamic handlers referenced by the shipped drush JSON.
void registerDrushHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(drushGenerateSpecHandler, _drushGenerateSpec);
}
