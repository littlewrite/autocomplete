// Hand-written dynamic handlers migrated from src/kool.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const koolScriptsPostProcessHandler =
    'manual.src_kool.spec.subcommands_9_.args.generators.postprocess';

/// `kool run --help` output: list the script names below the
/// "Available Scripts:" header, each described as a script.
List<FigSuggestion> _scripts(String output, [List<String>? tokens]) {
  tokens;
  final lines = output.split('\n');
  var scriptsIndex = -1;
  for (var i = 0; i < lines.length; i++) {
    if (lines[i].trim() == 'Available Scripts:') {
      scriptsIndex = i;
      break;
    }
  }
  if (scriptsIndex < 0) return const [];
  final scripts = <FigSuggestion>[];
  for (var i = scriptsIndex + 1; i < lines.length; i++) {
    final name = lines[i].trim();
    if (name.isEmpty) continue;
    scripts.add(FigSuggestion(name: name, description: 'Script'));
  }
  return scripts;
}

/// Registers the kool generator referenced by the shipped kool JSON.
void registerKoolHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(koolScriptsPostProcessHandler, _scripts);
}
