// Hand-written version resolver migrated from src/fig/index.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const figVersionHandler = 'manual.src_fig.index.getversioncommand';

/// Returns the suffix after the first space, matching the Fig source exactly.
Future<String?> _figVersion(ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'fig',
    args: ['--version'],
  ));
  if (result.status != 0) return null;
  final separator = result.stdout.indexOf(' ');
  return result.stdout.substring(separator + 1);
}

void registerFigHandlers(JsonHandlerRegistry registry) {
  registry.registerVersion(figVersionHandler, _figVersion);
}
