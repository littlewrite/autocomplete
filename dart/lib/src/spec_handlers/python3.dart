// Hand-written dynamic handlers migrated from src/python3.ts.
//
// The python3 JSON export keeps a single dynamic root: the `generateSpec`
// callback. Like python, it probes for a Django `manage.py` entrypoint
// (`bash -c "cat manage.py | grep -q django"`); the shared probe lives in
// python.dart and only differs by the spec name.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

import 'python.dart' show pythonManagePySpec;

/// Root `generateSpec` from src/python3.ts.
const python3GenerateSpecHandler = 'manual.src_python3.spec.generatespec';

Future<FigSpec?> _python3GenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  return pythonManagePySpec('python3', executeCommand);
}

/// Registers the python3 dynamic handlers referenced by the shipped python3
/// JSON.
void registerPython3Handlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(
      python3GenerateSpecHandler, _python3GenerateSpec);
}
