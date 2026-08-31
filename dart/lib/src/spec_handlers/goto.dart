// Hand-written dynamic handlers migrated from src/goto.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const gotoListTargetsCustomHandler =
    'manual.src_goto.definition.listtargets.custom';

const _gotoIcon = '🔖';

/// Reads `$HOME/.config/goto` and turns every `alias target` line into a
/// suggestion whose name is the alias and whose description is the target.
///
/// Faithful to the source:
///  - the output is split on `\n` keeping empty entries, so an empty line (or a
///    trailing newline) yields a suggestion with an empty name;
///  - the line is split on a single space, so the description falls back to
///    `Goto undefined` when the line carries no target part (mirroring the
///    JavaScript `"Goto " + splits[1]` behavior);
///  - suggestions are deduplicated by the full line, the last occurrence
///    winning while keeping the first insertion position;
///  - when `HOME` is unset the path falls back to `undefined/.config/goto`,
///    exactly as the template-literal interpolation would.
Future<List<FigSuggestion>> _listTargets(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'] ?? 'undefined';
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['$home/.config/goto'],
  ));
  if (result.status != 0) return const [];

  final targets = <String, FigSuggestion>{};
  for (final line in result.stdout.split('\n')) {
    final splits = line.split(' ');
    targets[line] = FigSuggestion(
      name: splits[0],
      description: 'Goto ${splits.length > 1 ? splits[1] : 'undefined'}',
      icon: _gotoIcon,
      priority: 80,
    );
  }
  return targets.values.toList();
}

/// Registers the goto generators referenced by the shipped goto JSON.
void registerGotoHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(gotoListTargetsCustomHandler, _listTargets);
}
