// AI-generated from TypeScript source: index.ts

import 'package:autocomplete/src/spec.dart';
import 'package:autocomplete/src/versioned_spec.dart';
import '2.0.0.dart' deferred as v2;
import '3.0.0.dart' deferred as v3;

const _versionRegex = r'\d+\.\d+\.\d+';

Future<String> getVersionCommand(
    ExecuteCommandFunction executeShellCommand) async {
  final output = await executeShellCommand(ExecuteCommandInput(
    command: "shopify",
    args: ["version"],
  ));
  return RegExp(_versionRegex).firstMatch(output.stdout)?.group(0) ?? "";
}

Future<FigSpec> _loadV2() async {
  await v2.loadLibrary();
  return unwrapNestedRootSpec(v2.shopifySpec);
}

Future<FigSpec> _loadV3() async {
  await v3.loadLibrary();
  return unwrapNestedRootSpec(v3.shopifySpec);
}

final completionSpec = createVersionedSpec(
  specName: 'shopify',
  versionFiles: const [
    FigVersionedSpecEntry(version: '2.0.0', load: _loadV2),
    FigVersionedSpecEntry(version: '3.0.0', load: _loadV3),
  ],
  getVersionCommand: getVersionCommand,
);
