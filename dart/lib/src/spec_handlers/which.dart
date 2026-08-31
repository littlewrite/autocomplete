// Hand-written dynamic handlers migrated from src/which.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const whichExecutablesPostProcessHandler =
    'manual.src_which.spec.args.generators.postprocess';

const _executableDescription = 'Executable file';

/// `which <name>` suggestions from `find` output over `$PATH`: one full path
/// per line, each reduced to its basename. Mirrors `src/which.ts`
/// (`path.split("/")[path.split("/").length - 1]`) and skips blank lines.
List<FigSuggestion> _executables(String output, [List<String>? tokens]) {
  final executables = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final parts = line.split('/');
    final name = parts[parts.length - 1];
    if (name.isEmpty) continue;
    executables.add(FigSuggestion(
      name: name,
      type: SuggestionType.arg,
      description: _executableDescription,
    ));
  }
  return executables;
}

/// Registers the which generators referenced by the shipped which JSON.
void registerWhichHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(whichExecutablesPostProcessHandler, _executables);
}
