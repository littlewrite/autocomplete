// AI-generated from TypeScript source: index.ts

import 'package:autocomplete/src/spec.dart';
import '8.0.0.dart' as v8_0_0;
import '8.6.0.dart' as v8_6_0;

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

final completionSpec = FigSpec(
  name: "heroku",
  generateSpec:
      (List<String> tokens, ExecuteCommandFunction executeShellCommand,
          [FigGeneratorContext? context]) async {
    final version = await getVersionCommand(executeShellCommand);

    final parts = version.split('.');
    if (parts.length >= 2) {
      final major = int.tryParse(parts[0]) ?? 0;
      final minor = int.tryParse(parts[1]) ?? 0;
      // If version is >= 8.6.0, use v8_6_0 spec
      if (major > 8 || (major == 8 && minor >= 6)) {
        return v8_6_0.herokuSpec;
      }
    }

    // Default to 8.0.0 for older versions or parse failures
    return v8_0_0.herokuSpec;
  },
);
