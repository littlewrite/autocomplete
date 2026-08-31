// Hand-written dynamic handlers migrated from src/amplify.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const amplifyEnvNamesPostProcessHandler =
    'manual.src_amplify.definition.envnamegenerator.postprocess';

/// `amplify env list --json` output: an object with an `envs` array of
/// environment names. Suggests each environment name described as
/// "Environment", mirroring the source generator's exact mapping.
List<FigSuggestion> _envNames(String output, [List<String>? tokens]) {
  try {
    final obj = jsonDecode(output) as Map<String, dynamic>;
    final envs = obj['envs'] as List;
    return envs.map((env) {
      return FigSuggestion(
        name: env,
        description: 'Environment',
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the amplify generators referenced by the shipped amplify JSON.
void registerAmplifyHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(amplifyEnvNamesPostProcessHandler, _envNames);
}
