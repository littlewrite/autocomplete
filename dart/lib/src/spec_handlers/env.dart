// Hand-written dynamic handlers migrated from src/env.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const envEnvironmentVariablesCustomHandler =
    'manual.src_env.spec.options_3_.args.generators.custom';

const _envVariableDescription = 'Environment variable';
const _envVariableIcon = '🌎';

/// `env -u <name>` suggestions: one per environment variable value, each
/// described as an "Environment variable" with a globe icon. The TypeScript
/// source reads `Object.values(generatorContext.environmentVariables)`, so the
/// suggested name is the variable *value* (not its key).
Future<List<FigSuggestion>> _environmentVariables(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final environment = context?.environmentVariables;
  if (environment == null) return const [];
  return environment.values.map((envVar) {
    return FigSuggestion(
      name: envVar,
      description: _envVariableDescription,
      icon: _envVariableIcon,
    );
  }).toList();
}

/// Registers the env generator referenced by the shipped env JSON.
void registerEnvHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      envEnvironmentVariablesCustomHandler, _environmentVariables);
}
