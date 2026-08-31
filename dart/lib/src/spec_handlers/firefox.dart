// Hand-written dynamic handlers migrated from src/firefox.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const firefoxStartDebuggerServerTriggerHandler =
    'manual.src_firefox.spec.options_19_.args.generators.trigger';
const firefoxStartDebuggerServerCustomHandler =
    'manual.src_firefox.spec.options_19_.args.generators.custom';

/// The `--start-debugger-server` generator reruns on every keystroke, matching
/// the source `trigger: () => true`.
bool _debuggerServerTrigger(String newToken, String oldToken) => true;

/// Suggest the current token when it is a valid TCP port number (0-65535),
/// mirroring the source `custom` handler for the `--start-debugger-server`
/// argument. Anything non-numeric, non-integer, or out of range yields nothing.
Future<List<FigSuggestion>> _debuggerServerPort(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens[tokens.length - 1];
  final port = double.tryParse(finalToken);
  if (port == null || !port.isFinite || port != port.truncateToDouble()) {
    return const [];
  }
  if (port < 0 || port > 65535) return const [];
  return [
    FigSuggestion(name: finalToken, description: 'Port number'),
  ];
}

/// Registers the firefox generators referenced by the shipped firefox JSON.
void registerFirefoxHandlers(JsonHandlerRegistry registry) {
  registry.registerTrigger(
      firefoxStartDebuggerServerTriggerHandler, _debuggerServerTrigger);
  registry.registerCustom(
      firefoxStartDebuggerServerCustomHandler, _debuggerServerPort);
}
