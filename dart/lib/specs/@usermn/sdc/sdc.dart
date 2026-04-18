// AI-generated from TypeScript source: index.ts

import 'package:autocomplete/src/spec.dart';
import 'package:autocomplete/src/versioned_spec.dart';
import '0.0.0.dart' deferred as v0;

Future<String> getVersionCommand(
    ExecuteCommandFunction executeShellCommand) async {
  final output = await executeShellCommand(ExecuteCommandInput(
    command: "npx",
    args: ["@usermn/sdc", "--version"],
  ));
  return cleanVersion(output.stdout) ?? '';
}

Future<FigSpec> _loadV0() async {
  await v0.loadLibrary();
  return v0.usermnSds0Spec;
}

final usermnSdcSpec = createVersionedSpec(
  specName: 'sdc',
  versionFiles: const [
    FigVersionedSpecEntry(version: '0.0.0', load: _loadV0),
  ],
  getVersionCommand: getVersionCommand,
);
