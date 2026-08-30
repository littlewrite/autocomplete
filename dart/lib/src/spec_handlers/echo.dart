// Hand-written dynamic handlers migrated from src/echo.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const echoEnvironmentVariablesHandler =
    'manual.src_echo.spec.args.generators.custom';

/// Registers the environment-variable generator used by the JSON echo spec.
void registerEchoHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    echoEnvironmentVariablesHandler,
    (tokens, executeCommand, context) async {
      if (context == null ||
          (tokens.length >= 3 && !tokens.last.startsWith(r'$'))) {
        return const <FigSuggestion>[];
      }
      return context.environmentVariables.keys
          .map(
            (name) => FigSuggestion(
              name: '\$$name',
              type: SuggestionType.arg,
              description: 'Environment Variable',
            ),
          )
          .toList();
    },
  );
}
