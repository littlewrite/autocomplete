// Hand-written dynamic handlers migrated from src/ignite-cli.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `ls ignite/templates` output for the `g`/`generate` subcommand's first arg.
const igniteCliGenerateGeneratorsPostProcessHandler =
    'manual.src_ignite-cli.spec.subcommands_1_.args_0_.generators.postprocess';

/// `ls ignite/templates` output for the `update` subcommand's generator arg.
const igniteCliUpdateGeneratorsPostProcessHandler =
    'manual.src_ignite-cli.spec.subcommands_2_.args.generators.postprocess';

/// `ls ignite/templates` output: one installed generator per line. Blank lines
/// (including a trailing newline) are dropped.
List<FigSuggestion> _generators(String output, [List<String>? tokens]) {
  if (output.trim().isEmpty) return const [];
  final generators = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final name = line.trim();
    if (name.isEmpty) continue;
    generators.add(FigSuggestion(name: name));
  }
  return generators;
}

/// Registers the ignite-cli generators referenced by the shipped ignite-cli JSON.
void registerIgniteCliHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      igniteCliGenerateGeneratorsPostProcessHandler, _generators);
  registry.registerPostProcess(
      igniteCliUpdateGeneratorsPostProcessHandler, _generators);
}
