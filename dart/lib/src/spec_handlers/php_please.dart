// Hand-written dynamic handler migrated from src/php/please.ts.
//
// The please JSON export is a root `generateSpec` callback: it runs
// `php please list --format=json` and materializes every listed Statamic
// command as a subcommand carrying its arguments and options.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/php/please.ts.
const pleaseGenerateSpecHandler = 'manual.src_php_please.spec.generatespec';

/// Coerces a JSON value to a string-keyed map, empty when not an object.
Map<String, dynamic> _asObject(dynamic value) =>
    value is Map ? Map<String, dynamic>.from(value) : const <String, dynamic>{};

/// Builds one subcommand from a single `php please list --format=json`
/// command entry.
FigSubcommand _pleaseSubcommand(Map<String, dynamic> command) {
  final definition = _asObject(command['definition']);
  final arguments = _asObject(definition['arguments']);
  final options = _asObject(definition['options']);

  final args = arguments.values.map((raw) {
    final argument = _asObject(raw);
    return FigArg(
      name: argument['name']?.toString(),
      description: argument['description']?.toString(),
      isOptional: argument['is_required'] != true,
    );
  }).toList();

  final optionList = options.values.map((raw) {
    final option = _asObject(raw);
    final names = <String>[option['name']?.toString() ?? ''];
    final shortcut = option['shortcut']?.toString() ?? '';
    if (shortcut.isNotEmpty) {
      names.add(shortcut);
    }
    return FigOption(
      name: names,
      description: option['description']?.toString(),
    );
  }).toList();

  return FigSubcommand(
    name: command['name']?.toString() ?? '',
    description: command['description']?.toString(),
    args: args,
    options: optionList,
  );
}

/// Root `generateSpec` from src/php/please.ts: runs
/// `php please list --format=json` and exposes each listed command as a
/// subcommand. Parse failures and non-zero command exits fall back to an empty
/// `please` spec, mirroring the source's catch-and-continue behavior.
Future<FigSpec?> _pleaseGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'php',
    args: ['please', 'list', '--format=json'],
  ));
  if (result.status != 0) {
    return FigSpec(name: 'please', subcommands: []);
  }
  final subcommands = <FigSubcommand>[];
  try {
    final decoded = jsonDecode(result.stdout);
    if (decoded is Map && decoded['commands'] is List) {
      for (final command in decoded['commands'] as List) {
        if (command is! Map) continue;
        subcommands.add(_pleaseSubcommand(Map<String, dynamic>.from(command)));
      }
    }
  } catch (_) {
    return FigSpec(name: 'please', subcommands: []);
  }
  return FigSpec(name: 'please', subcommands: subcommands);
}

/// Registers the please dynamic handler referenced by the shipped please JSON.
void registerPhpPleaseHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(pleaseGenerateSpecHandler, _pleaseGenerateSpec);
}
