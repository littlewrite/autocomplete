// Hand-written dynamic handler migrated from src/php/bin-console.ts.
//
// The bin-console JSON export is a root `generateSpec` callback: it runs
// `php bin/console list --format=json` and materializes every listed Symfony
// console command as a subcommand carrying its arguments and options.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/php/bin-console.ts.
const binConsoleGenerateSpecHandler =
    'manual.src_php_bin-console.spec.generatespec';

/// Symfony icon applied to every bin/console subcommand.
const _symfonyIcon =
    'https://cdn.iconscout.com/icon/free/png-128/symfony-282493.png';

/// Coerces a JSON value to a string-keyed map, empty when not an object.
Map<String, dynamic> _asObject(dynamic value) =>
    value is Map ? Map<String, dynamic>.from(value) : const <String, dynamic>{};

/// Builds one subcommand from a single `php bin/console list --format=json`
/// command entry.
FigSubcommand _binConsoleSubcommand(Map<String, dynamic> command) {
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
    final optionArgs = <FigArg>[];
    if (option['accept_value'] == true) {
      optionArgs.add(FigArg(
        name: 'arg',
        isVariadic: option['is_multiple'] == true,
        isOptional: option['is_value_required'] != true,
      ));
    }
    return FigOption(
      name: names,
      description: option['description']?.toString(),
      args: optionArgs.isEmpty ? null : optionArgs,
    );
  }).toList();

  return FigSubcommand(
    name: command['name']?.toString() ?? '',
    description: command['description']?.toString(),
    icon: _symfonyIcon,
    hidden: command['hidden'] == true,
    args: args,
    options: optionList,
  );
}

/// Root `generateSpec` from src/php/bin-console.ts: runs
/// `php bin/console list --format=json` and exposes each listed command as a
/// subcommand. Parse failures and non-zero command exits fall back to an empty
/// `bin-console` spec, mirroring the source's catch-and-continue behavior.
Future<FigSpec?> _binConsoleGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'php',
    args: ['bin/console', 'list', '--format=json'],
  ));
  if (result.status != 0) {
    return FigSpec(name: 'bin-console', subcommands: []);
  }
  final subcommands = <FigSubcommand>[];
  try {
    final decoded = jsonDecode(result.stdout);
    if (decoded is Map && decoded['commands'] is List) {
      for (final command in decoded['commands'] as List) {
        if (command is! Map) continue;
        subcommands.add(
            _binConsoleSubcommand(Map<String, dynamic>.from(command)));
      }
    }
  } catch (_) {
    return FigSpec(name: 'bin-console', subcommands: []);
  }
  return FigSpec(name: 'bin-console', subcommands: subcommands);
}

/// Registers the bin-console dynamic handler referenced by the shipped
/// bin-console JSON.
void registerPhpBinConsoleHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(
      binConsoleGenerateSpecHandler, _binConsoleGenerateSpec);
}
