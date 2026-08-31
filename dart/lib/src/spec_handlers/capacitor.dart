// Hand-written dynamic handlers migrated from src/capacitor.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const capacitorTargetGeneratorCustomHandler =
    'manual.src_capacitor.spec.subcommands_4_.options_1_.args.generators.custom';

const _targetIcon = '📱';

/// `npx capacitor run <platform> --list` output: after two header lines, each
/// row is `name  api  targetId` with columns separated by runs of whitespace.
/// Suggests the target id, described by `name api`, with a phone icon.
///
/// The tokens are `[cliName, command, platform, ...]`; the generator only fires
/// for the ios and android platforms. Lines that do not yield the three columns
/// (name, api, targetId) are ignored.
Future<List<FigSuggestion>> _targets(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (tokens.length < 3) return const [];
  final platform = tokens[2];
  if (platform != 'ios' && platform != 'android') return const [];
  if (executeCommand == null) return const [];

  final result = await executeCommand(ExecuteCommandInput(
    command: 'npx',
    args: ['capacitor', 'run', platform, '--list'],
  ));
  if (result.status != 0) return const [];

  final suggestions = <FigSuggestion>[];
  final lines = result.stdout.trim().split('\n');
  for (final line in lines.skip(2)) {
    // Runs of two or more whitespace separate the columns (the TS source
    // replaces them with a single `|` before splitting).
    final parts = line.replaceAll(RegExp(r'\s\s+'), '|').split('|');
    if (parts.length < 3) continue;
    suggestions.add(FigSuggestion(
      name: parts[2],
      displayName: '${parts[0]} ${parts[1]}',
      icon: _targetIcon,
    ));
  }
  return suggestions;
}

/// Registers the capacitor generator referenced by the shipped capacitor JSON.
void registerCapacitorHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(capacitorTargetGeneratorCustomHandler, _targets);
}
