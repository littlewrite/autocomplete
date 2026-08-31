// Hand-written dynamic handlers migrated from src/php.ts.
//
// The php JSON export keeps a single dynamic root: the `generateSpec` callback.
// It probes for common framework entrypoints (artisan, please, bin/console)
// with `ls <file>` and exposes each one that exists as a subcommand that loads
// its own spec. The root positional argument keeps a filepaths template
// generator whose suggestions are filtered to names without a `.` (the source's
// `.php` suffix filter is commented out).

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/php.ts.
const phpGenerateSpecHandler = 'manual.src_php.spec.generatespec';

/// `filterTemplateSuggestions` from src/php.ts: keep only filepath suggestions
/// whose name has no `.` in it.
List<FigSuggestion> _phpFilterFilepaths(List<FigSuggestion> suggestions,
    [FigGeneratorContext? context]) {
  context;
  return suggestions
      .where((suggestion) {
        final name = suggestion.nameSingle;
        return name == null || !name.contains('.');
      })
      .toList();
}

/// Probes for `file` in the current directory, mirroring the source's
/// `ls <file>` existence check.
Future<bool> _fileExists(
    ExecuteCommandFunction executeCommand, String file) async {
  final result = await executeCommand(
      ExecuteCommandInput(command: 'ls', args: [file]));
  return result.status == 0;
}

/// Root `generateSpec` from src/php.ts: probe for artisan, please, and
/// bin/console in parallel and surface each one found as a subcommand.
Future<FigSpec?> _phpGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final exists = await Future.wait([
    _fileExists(executeCommand, 'artisan'),
    _fileExists(executeCommand, 'please'),
    _fileExists(executeCommand, 'bin/console'),
  ]);

  final subcommands = <FigSubcommand>[];
  if (exists[0]) {
    subcommands.add(FigSubcommand(name: 'artisan', loadSpec: 'php/artisan'));
  }
  if (exists[1]) {
    subcommands.add(FigSubcommand(name: 'please', loadSpec: 'php/please'));
  }
  if (exists[2]) {
    subcommands.add(
        FigSubcommand(name: 'bin/console', loadSpec: 'php/bin-console'));
  }

  return FigSpec(
    name: 'php',
    subcommands: subcommands,
    args: [
      FigArg(
        generators: [
          FigGenerator(
            template: 'filepaths',
            filterTemplateSuggestions: _phpFilterFilepaths,
          ),
        ],
      ),
    ],
  );
}

/// Registers the php dynamic handlers referenced by the shipped php JSON.
void registerPhpHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(phpGenerateSpecHandler, _phpGenerateSpec);
}
