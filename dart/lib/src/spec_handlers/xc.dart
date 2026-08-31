// Hand-written dynamic handlers migrated from src/xc.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/xc.ts.
const xcGenerateSpecHandler = 'manual.src_xc.spec.generatespec';

/// Options attached to every generated xc task subcommand, matching the local
/// `options` list built inside src/xc.ts's generateSpec.
List<FigOption> _xcOptions() => [
      FigOption(
        name: ['-f', '-file'],
        description:
            'Specify a markdown file that contains tasks (default: "README.md")',
        args: [
          FigArg(name: 'path', template: 'filepaths'),
        ],
      ),
      FigOption(
        name: ['-d', '-display'],
        description:
            'Print the markdown code of a task rather than running it',
      ),
      FigOption(
        name: ['-H', '-heading'],
        description: 'Specify the heading for xc tasks (default: "Tasks")',
        args: [
          FigArg(
            name: 'heading',
            suggestions: ['Tasks', 'Usage', 'Examples'],
          ),
        ],
      ),
    ];

/// Builds the subcommand for one `xc` output line. Mirrors the source's
/// `line.trim().split(/^([^ ]* )/)` (leading word captured) followed by taking
/// the first word as the task name and the remainder as the description.
/// Returns null when the line has no leading word plus space (JS would leave
/// the task name undefined in that case).
FigSubcommand? _taskSubcommand(String line, List<FigOption> options) {
  final trimmed = line.trim();
  final match = RegExp(r'^([^ ]* )').firstMatch(trimmed);
  if (match == null) return null;
  final task = match.group(1)!.trim();
  final description = trimmed.substring(match.end).trim();
  return FigSubcommand(
    name: task,
    description: description.isEmpty ? null : description,
    options: options,
  );
}

/// Root `generateSpec` from src/xc.ts: runs `xc` and turns each stdout line
/// into a task subcommand.
Future<FigSpec?> _xcGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final result = await executeCommand(
    const ExecuteCommandInput(command: 'xc', args: []),
  );
  final options = _xcOptions();
  final subcommands = <FigSubcommand>[];
  for (final line in result.stdout.trim().split('\n')) {
    final subcommand = _taskSubcommand(line, options);
    if (subcommand == null) continue;
    subcommands.add(subcommand);
  }
  return FigSpec(name: 'xc', subcommands: subcommands);
}

/// Registers the dynamic handler referenced by the shipped xc JSON.
void registerXcHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(xcGenerateSpecHandler, _xcGenerateSpec);
}
