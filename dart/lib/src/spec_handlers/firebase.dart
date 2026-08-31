// Hand-written dynamic handlers migrated from src/firebase.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const firebaseProjectAliasesPostProcessHandler =
    'manual.src_firebase.spec.subcommands_67_.args.generators.postprocess';

/// `firebase projects:list` prints a box-drawing table whose data rows begin
/// with `│ ` (U+2502 + space). The first match is the header row and is
/// skipped; the captured first cell (trimmed) is the project alias.
List<FigSuggestion> _projectAliases(String output, [List<String>? tokens]) {
  tokens;
  final aliases = <FigSuggestion>[];
  final regex = RegExp(r'^│ (\w.*?)│', multiLine: true);
  final matches = regex.allMatches(output).toList();
  for (var i = 1; i < matches.length; i++) {
    final raw = matches[i].group(1);
    if (raw == null) continue;
    aliases.add(FigSuggestion(
      name: raw.trim(),
      description: 'ProjectAlias',
    ));
  }
  return aliases;
}

/// Registers the firebase generators referenced by the shipped firebase JSON.
void registerFirebaseHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      firebaseProjectAliasesPostProcessHandler, _projectAliases);
}
