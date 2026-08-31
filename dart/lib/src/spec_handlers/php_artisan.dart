// Hand-written dynamic handler migrated from src/php/artisan.ts.
//
// The artisan JSON export is a root `generateSpec` callback: it runs
// `php artisan list --format=json`, drops the framework's `_complete` command,
// and materializes every remaining command as a subcommand carrying its
// positional arguments and options.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/php/artisan.ts.
const artisanGenerateSpecHandler = 'manual.src_php_artisan.spec.generatespec';

/// Laravel icon applied to every artisan subcommand.
const _laravelIcon =
    'https://web.tinkerwell.app/img/laravel.3cab6a56.png';

/// Coerces a JSON value to a string-keyed map, empty when not an object.
Map<String, dynamic> _asObject(dynamic value) =>
    value is Map ? Map<String, dynamic>.from(value) : const <String, dynamic>{};

/// Builds one subcommand from a single `php artisan list --format=json`
/// command entry.
FigSubcommand _artisanSubcommand(Map<String, dynamic> command) {
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
    icon: _laravelIcon,
    args: args,
    options: optionList,
  );
}

/// Root `generateSpec` from src/php/artisan.ts: runs
/// `php artisan list --format=json` and exposes each listed command (minus the
/// framework `_complete` command) as a subcommand. Parse failures and non-zero
/// command exits fall back to an empty `artisan` spec, mirroring the source's
/// catch-and-continue behavior.
Future<FigSpec?> _artisanGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'php',
    args: ['artisan', 'list', '--format=json'],
  ));
  if (result.status != 0) {
    return FigSpec(name: 'artisan', subcommands: []);
  }
  final subcommands = <FigSubcommand>[];
  try {
    final decoded = jsonDecode(result.stdout);
    if (decoded is Map && decoded['commands'] is List) {
      for (final command in decoded['commands'] as List) {
        if (command is! Map) continue;
        final map = Map<String, dynamic>.from(command);
        if (map['name']?.toString() == '_complete') continue;
        subcommands.add(_artisanSubcommand(map));
      }
    }
  } catch (_) {
    return FigSpec(name: 'artisan', subcommands: []);
  }
  return FigSpec(name: 'artisan', subcommands: subcommands);
}

/// Registers the artisan dynamic handler referenced by the shipped artisan
/// JSON.
void registerPhpArtisanHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(
      artisanGenerateSpecHandler, _artisanGenerateSpec);
}
