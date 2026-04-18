// Converted from TypeScript source: src/infracost/index.ts

import 'package:autocomplete/src/spec.dart';
import 'package:autocomplete/src/versioned_spec.dart';
import '0.9.0.dart' deferred as v0_9_0;
import '0.10.0.dart' deferred as v0_10_0;

Future<String> getVersionCommand(
    ExecuteCommandFunction executeShellCommand) async {
  final output = await executeShellCommand(ExecuteCommandInput(
    command: "infracost",
    args: ["--version"],
  ));
  return cleanVersion(output.stdout) ?? '';
}

Future<FigSpec> _loadV090() async {
  await v0_9_0.loadLibrary();
  return unwrapNestedRootSpec(v0_9_0.infracostSpec);
}

Future<FigSpec> _loadV0100() async {
  await v0_10_0.loadLibrary();
  return unwrapNestedRootSpec(v0_10_0.infracostSpec);
}

final completionSpec = createVersionedSpec(
  specName: 'infracost',
  versionFiles: const [
    FigVersionedSpecEntry(version: '0.9.0', load: _loadV090),
    FigVersionedSpecEntry(version: '0.10.0', load: _loadV0100),
  ],
  getVersionCommand: getVersionCommand,
);
