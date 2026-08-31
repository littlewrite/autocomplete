// Hand-written dynamic handlers migrated from src/ibus.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const ibusListEnginesPostProcessHandler =
    'manual.src_ibus.spec.subcommands_0_.args.generators.postprocess';

/// `ibus list-engine` output: engine rows start with a space and look like
/// `  <id> - <name>`. Suggest the engine id, described by its display name.
List<FigSuggestion> _listEngines(String output, [List<String>? tokens]) {
  final engines = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (!line.startsWith(' ')) continue;
    final allParts = line.trim().split(' - ');
    final parts =
        allParts.length > 2 ? allParts.sublist(0, 2) : allParts;
    final id = parts[0];
    if (id.isEmpty) continue;
    engines.add(FigSuggestion(
      name: id,
      description: parts.length > 1 ? parts[1] : null,
    ));
  }
  return engines;
}

/// Registers the ibus generators referenced by the shipped ibus JSON.
void registerIbusHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(ibusListEnginesPostProcessHandler, _listEngines);
}
