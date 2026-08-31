// Hand-written dynamic handlers migrated from src/softwareupdate.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const softwareupdateUpdatesPostProcessHandler =
    'manual.src_softwareupdate.spec.subcommands_2_.args.generators.postprocess';

/// `softwareupdate --list` output: available updates appear as
/// `* Label: <name>` lines. The source keeps only those lines, strips the
/// 9-character `* Label: ` prefix for the name, inserts the quoted label, and
/// describes the result as an available update.
List<FigSuggestion> _updates(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  final result = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (!line.startsWith('* Label: ')) continue;
    final name = line.substring(9);
    result.add(FigSuggestion(
      name: name,
      insertValue: '"$name"',
      description: 'Available update',
    ));
  }
  return result;
}

/// Registers the softwareupdate generators referenced by the shipped
/// softwareupdate JSON.
void registerSoftwareupdateHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      softwareupdateUpdatesPostProcessHandler, _updates);
}
