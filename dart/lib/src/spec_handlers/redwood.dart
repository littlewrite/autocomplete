// Hand-written dynamic handlers migrated from src/redwood.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const redwoodScriptsPostProcessHandler =
    'manual.src_redwood.spec.subcommands_4_.args.generators.postprocess';

const _redwoodIcon =
    'https://avatars.githubusercontent.com/u/45050444?s=200&v=4';

/// `ls -1p scripts/` output (via the redwood script probe): the script files
/// and folders of a Redwood project. The source keeps only `.js`/`.ts` entries,
/// trims each name and strips the trailing extension, tagging every result with
/// the Redwood icon and a "Script" description.
List<FigSuggestion> _scripts(String output, [List<String>? tokens]) {
  if (output.trim().isEmpty) return const [];
  final result = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (!line.endsWith('.js') && !line.endsWith('.ts')) continue;
    final trimmed = line.trim();
    final lastDot = trimmed.lastIndexOf('.');
    final name = lastDot < 0 ? trimmed : trimmed.substring(0, lastDot);
    result.add(FigSuggestion(
      name: name,
      description: 'Script',
      icon: _redwoodIcon,
    ));
  }
  return result;
}

/// Registers the redwood generators referenced by the shipped redwood JSON.
void registerRedwoodHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(redwoodScriptsPostProcessHandler, _scripts);
}
