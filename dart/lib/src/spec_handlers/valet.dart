// Hand-written dynamic handlers migrated from src/valet.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const valetCommandsPostProcessHandler =
    'manual.src_valet.spec.subcommands_4_.args.generators.postprocess';

/// `valet help <command>` suggestions from `valet list --raw` output: one
/// suggestion per line, named by the first space-delimited token. Mirrors
/// `src/valet.ts` (`command.split(" ")[0]`) and skips blank lines.
List<FigSuggestion> _commands(String output, [List<String>? tokens]) {
  final commands = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final name = line.split(' ')[0];
    if (name.isEmpty) continue;
    commands.add(FigSuggestion(
      name: name,
      description: 'Command',
      priority: 76,
    ));
  }
  return commands;
}

/// Registers the valet generators referenced by the shipped valet JSON.
void registerValetHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(valetCommandsPostProcessHandler, _commands);
}
