// AI-generated from TypeScript source: index.ts

import 'package:autocomplete/src/spec.dart';
import 'package:autocomplete/src/versioned_spec.dart';
import '8.0.0.dart' deferred as v8_0_0;
import '8.6.0.dart' deferred as v8_6_0;

final _versionRegex = RegExp(r'heroku\/([0-9]+\.[0-9]+\.[0-9]+)');

Future<String> getVersionCommand(
    ExecuteCommandFunction executeShellCommand) async {
  final output = await executeShellCommand(ExecuteCommandInput(
    command: "heroku",
    args: ["--version"],
  ));

  final match = _versionRegex.firstMatch(output.stdout);
  if (match != null) {
    return match.group(1)!;
  } else {
    return "8.0.0";
  }
}

Future<FigSpec> _loadV800() async {
  await v8_0_0.loadLibrary();
  return v8_0_0.herokuSpec;
}

Future<FigSpec> _loadV860() async {
  await v8_6_0.loadLibrary();
  return v8_6_0.herokuSpec;
}

final completionSpec = createVersionedSpec(
  specName: 'heroku',
  versionFiles: const [
    FigVersionedSpecEntry(version: '8.0.0', load: _loadV800),
    FigVersionedSpecEntry(version: '8.6.0', load: _loadV860),
  ],
  getVersionCommand: getVersionCommand,
);
