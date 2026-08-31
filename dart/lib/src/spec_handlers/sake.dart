// Hand-written dynamic handlers migrated from src/sake.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/sake.ts.
const sakeGenerateSpecHandler = 'manual.src_sake.spec.generatespec';

/// `run` subcommand's `command` arg generator postProcess (sake list --json)
/// from src/sake.ts.
const sakeListCommandsPostProcessHandler =
    'manual.src_sake.spec.subcommands_5_.args.generators.postprocess';

const _commandIcon = '🍶';
const _commandPriority = 76;

/// `commonOptions` from src/sake.ts, shared by every subcommand.
List<FigOption> _commonOptions() => [
      FigOption(
        name: ['--config-path', '-c'],
        description: 'Specify the path to the configuration file',
        args: [
          FigArg(name: 'path', template: 'filepaths'),
        ],
        isPersistent: true,
      ),
      FigOption(
        name: ['--sake-app-path', '-s'],
        description: 'Specify the path for the SakeApp package',
        args: [
          FigArg(name: 'path', template: 'folders'),
        ],
        isPersistent: true,
      ),
    ];

/// `commonCommandSpecificOptions` from src/sake.ts.
List<FigOption> _commonCommandSpecificOptions() => [
      FigOption(
        name: '--case-converting-strategy',
        description:
            "Specify the strategy for converting command names' case",
        args: [
          FigArg(
            name: 'strategy',
            defaultValue: 'keepOriginal',
            suggestions: ['keepOriginal', 'toSnakeCase', 'toKebabCase'],
          ),
        ],
        priority: 55,
      ),
      FigOption(
        name: ['--sake-app-prebuilt-binary-path', '-b'],
        description: 'Specify the path to the prebuilt SakeApp binary',
        args: [
          FigArg(name: 'path', template: 'filepaths'),
        ],
        priority: 55,
      ),
    ];

/// Parses `sake list --json` output. Returns the flattened list of command
/// maps across all groups, or null when the output is not a JSON object with a
/// `groups` map.
List<Map<String, dynamic>>? _sakeCommands(String output) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return null;
  }
  if (decoded is! Map) return null;
  final groups = decoded['groups'];
  if (groups is! Map) return null;
  final commands = <Map<String, dynamic>>[];
  for (final group in groups.values) {
    if (group is! List) continue;
    for (final item in group) {
      if (item is Map) commands.add(Map<String, dynamic>.from(item));
    }
  }
  return commands;
}

/// Root `generateSpec` from src/sake.ts: runs `sake list --json` and turns the
/// returned command groups into subcommands with the common options.
Future<FigSpec?> _sakeGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final result = await executeCommand(
    const ExecuteCommandInput(command: 'sake', args: ['list', '--json']),
  );
  final commands = _sakeCommands(result.stdout);
  if (commands == null) return null;
  final options = [
    ..._commonOptions(),
    ..._commonCommandSpecificOptions(),
  ];
  return FigSpec(
    name: 'sake',
    subcommands: commands
        .map((command) => FigSubcommand(
              name: command['name']?.toString() ?? '',
              description:
                  command['description'] is String &&
                          (command['description'] as String).isNotEmpty
                      ? command['description'] as String
                      : 'The command to run',
              priority: _commandPriority,
              icon: _commandIcon,
              options: options,
            ))
        .toList(),
  );
}

/// `run`'s command arg postProcess: same `sake list --json` parsing as the root
/// generateSpec, but each command becomes a suggestion.
List<FigSuggestion> _listCommandsPostProcess(String output,
    [List<String>? tokens]) {
  tokens;
  final commands = _sakeCommands(output);
  if (commands == null) return const [];
  return commands
      .map((command) => FigSuggestion(
            name: command['name']?.toString() ?? '',
            description: command['description']?.toString(),
            priority: _commandPriority,
            icon: _commandIcon,
          ))
      .toList();
}

/// Registers the dynamic handlers referenced by the shipped sake JSON.
void registerSakeHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(sakeGenerateSpecHandler, _sakeGenerateSpec);
  registry.registerPostProcess(
      sakeListCommandsPostProcessHandler, _listCommandsPostProcess);
}
