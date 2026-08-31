// Hand-written dynamic handlers migrated from src/python.ts (the shared probe
// is reused by src/python3.ts).
//
// The python JSON export keeps a single dynamic root: the `generateSpec`
// callback. It probes for a Django `manage.py` entrypoint
// (`bash -c "cat manage.py | grep -q django"`) and, when present, exposes it as
// a `manage.py` subcommand that loads the django-admin spec. When the probe
// fails the static JSON (args + options) is used unchanged.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/python.ts.
const pythonGenerateSpecHandler = 'manual.src_python.spec.generatespec';

/// Shared python/python3 `generateSpec`: probes for a Django `manage.py` and,
/// when found, returns a spec exposing it as a subcommand loading the
/// django-admin spec. Returns null when the probe fails, mirroring the source's
/// implicit `undefined`.
Future<FigSpec?> pythonManagePySpec(
    String name, ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'bash',
    args: ['-c', 'cat manage.py | grep -q django'],
  ));
  if (result.status != 0) return null;
  return FigSpec(
    name: name,
    subcommands: [
      FigSubcommand(name: 'manage.py', loadSpec: 'django-admin'),
    ],
  );
}

Future<FigSpec?> _pythonGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  return pythonManagePySpec('python', executeCommand);
}

/// Registers the python dynamic handlers referenced by the shipped python JSON.
void registerPythonHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(pythonGenerateSpecHandler, _pythonGenerateSpec);
}
