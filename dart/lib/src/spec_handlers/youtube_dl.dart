// Hand-written dynamic handlers migrated from src/youtube-dl.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const youtubeDlApMsoCustomHandler =
    'manual.src_youtube-dl.spec.options_133_.args.generators.custom';

/// `youtube-dl ... --ap-list-mso` lists Adobe Pass multiple-system operators.
/// Skips the three header lines; each row is `<id> <description words...>`.
Future<List<FigSuggestion>> _apMsoOperators(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final args = <String>[
    ...tokens.where((token) => token.contains('youtube.')),
    '--simulate',
    '--ap-list-mso',
  ];
  final result = await executeCommand(
    ExecuteCommandInput(command: 'youtube-dl', args: args),
  );
  if (result.status != 0) return const [];
  final operators = <FigSuggestion>[];
  final lines = result.stdout.split('\n');
  for (var i = 3; i < lines.length; i++) {
    final line = lines[i].trim();
    if (line.isEmpty) continue;
    final parts = line.split(' ');
    final name = parts.first;
    if (name.isEmpty) continue;
    operators.add(FigSuggestion(
      name: name,
      description: parts.length > 1 ? parts.sublist(1).join(' ') : null,
    ));
  }
  return operators;
}

/// Registers the youtube-dl generators referenced by the shipped JSON.
void registerYoutubeDlHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(youtubeDlApMsoCustomHandler, _apMsoOperators);
}
