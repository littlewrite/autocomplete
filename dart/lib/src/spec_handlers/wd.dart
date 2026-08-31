// Hand-written dynamic handlers migrated from src/wd.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const wdWarpPointsCustomHandler =
    'manual.src_wd.definition.warppointsgenerator.custom';

/// Reads the warp points from `$HOME/.warprc` and extracts every point name.
///
/// Mirrors the source `stdout.matchAll(/^(\w+)/gm)`: each match must start a
/// line with a word character, and the point is the captured leading word.
/// Comment lines, blank lines, and lines with leading whitespace are skipped.
Future<List<FigSuggestion>> _warpPoints(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final home = context?.environmentVariables['HOME'];
  if (home == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['$home/.warprc'],
  ));
  if (result.status != 0) return const [];
  final suggestions = <FigSuggestion>[];
  final pointPattern = RegExp(r'^(\w+)', multiLine: true);
  for (final match in pointPattern.allMatches(result.stdout)) {
    suggestions.add(FigSuggestion(
      name: match.group(1),
      description: 'Warp point',
      icon: '🔘',
      priority: 76,
    ));
  }
  return suggestions;
}

/// Registers the wd generators referenced by the shipped wd JSON.
void registerWdHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    wdWarpPointsCustomHandler,
    (tokens, executeCommand, context) =>
        _warpPoints(tokens, executeCommand, context),
  );
}
