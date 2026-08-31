// Hand-written dynamic handlers migrated from src/rsync.ts.
//
// The `--compress-level` option (`options[92]`) exports its suggestion list as a
// handler reference: `Array.from(Array(10).keys()).map((v) => v.toString())`,
// i.e. the ten numeric compression levels "0".."9".

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const rsyncCompressLevelsSuggestionsHandler =
    'manual.src_rsync.spec.options_92_.args.suggestions';

/// Mirrors `Array.from(Array(10).keys()).map((v) => v.toString())`: the ten
/// numeric compression levels accepted by `--compress-level`.
Future<List<FigSuggestion>> _compressLevels(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return List<FigSuggestion>.generate(
      10, (index) => FigSuggestion(name: '$index'));
}

/// Registers the rsync suggestions handler referenced by the shipped rsync JSON.
void registerRsyncHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(rsyncCompressLevelsSuggestionsHandler, _compressLevels);
}
