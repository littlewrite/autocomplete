// Hand-written dynamic handlers migrated from src/j.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const jCustomHandler = 'manual.src_j.spec.args.generators.custom';

class _JumpEntry {
  const _JumpEntry(this.weight, this.dir);

  final double weight;
  final String dir;
}

/// `j` custom generator: reads autojump's history file with `cat` and suggests
/// directories that match every previously typed filter argument.
///
/// The directory argument is variadic; each token after the command is an
/// additional filter that narrows the candidates. A directory whose name was
/// already typed is not suggested again.
Future<List<FigSuggestion>> _directories(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'];
  if (home == null || home.isEmpty) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['$home/Library/autojump/autojump.txt'],
  ));
  if (result.status != 0) return const [];

  final entries = <_JumpEntry>[];
  for (final line in result.stdout.split('\n')) {
    final parts = line.split('\t');
    if (parts.length < 2) continue;
    final weight = double.tryParse(parts[0]);
    if (weight == null) continue;
    final dir = parts[1];
    if (dir.isEmpty) continue;
    entries.add(_JumpEntry(weight, dir));
  }

  // The first token is the command and the last token is the active input;
  // the middle tokens are the filters the user has already entered.
  final List<String> args;
  if (tokens.length <= 2) {
    args = const [];
  } else {
    args = tokens.sublist(1, tokens.length - 1);
  }

  final suggestions = <FigSuggestion>[];
  for (final entry in entries) {
    if (!args.every((arg) => entry.dir.contains(arg))) continue;
    final name = entry.dir.split('/').last;
    if (args.contains(name)) continue;
    // Docs state max weight is 100 but autojump works with any amount over
    // that limit; Fig defers priority to autojump. 75 keeps dirs above options.
    suggestions.add(FigSuggestion(
      name: name,
      description: entry.dir,
      priority: 75 + entry.weight.round(),
    ));
  }
  return suggestions;
}

/// Registers the j custom generator referenced by the shipped j JSON.
void registerJHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(jCustomHandler, _directories);
}
