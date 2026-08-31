// Hand-written dynamic handlers migrated from src/unset.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const unsetEnvironmentVariablePostProcessHandler =
    'manual.src_unset.spec.args.generators.postprocess';

const _environmentVariableDescription = 'Environment Variable';

/// `unset <name>` suggestions: one per environment variable name read from
/// `env` output. Each line contributes the part before the first `=`. Mirrors
/// `src/unset.ts`, returning nothing on empty output and skipping blank lines.
List<FigSuggestion> _environmentVariables(String output,
    [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  final variables = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final name = line.split('=')[0];
    if (name.isEmpty) continue;
    variables.add(FigSuggestion(
      name: name,
      type: SuggestionType.arg,
      description: _environmentVariableDescription,
    ));
  }
  return variables;
}

/// Registers the unset generators referenced by the shipped unset JSON.
void registerUnsetHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      unsetEnvironmentVariablePostProcessHandler, _environmentVariables);
}
