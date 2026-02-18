// Converted from TypeScript source: src/infracost/index.ts

import 'package:autocomplete/src/spec.dart';
import '0.9.0.dart' as v0_9_0;
import '0.10.0.dart' as v0_10_0;

/// Parse version from "infracost 0.10.0" style stdout (semver-like clean).
String _cleanVersion(String stdout) {
  final idx = stdout.indexOf(" ");
  if (idx < 0) return stdout.trim();
  return stdout.substring(idx + 1).trim();
}

Future<String> getVersionCommand(
    ExecuteCommandFunction executeShellCommand) async {
  final output = await executeShellCommand(ExecuteCommandInput(
    command: "infracost",
    args: ["--version"],
  ));
  return _cleanVersion(output.stdout);
}

bool _versionGte(String v1, String v2) {
  final p1 = v1.split('.').map((e) => int.tryParse(e) ?? 0).toList();
  final p2 = v2.split('.').map((e) => int.tryParse(e) ?? 0).toList();
  for (var i = 0; i < 3; i++) {
    final n1 = (i < p1.length) ? p1[i] : 0;
    final n2 = (i < p2.length) ? p2[i] : 0;
    if (n1 > n2) return true;
    if (n1 < n2) return false;
  }
  return true;
}

final completionSpec = FigSpec(
  name: "infracost",
  generateSpec:
      (List<String> tokens, ExecuteCommandFunction executeShellCommand) async {
    try {
      final version = await getVersionCommand(executeShellCommand);

      // Choose highest matching version file (versionFiles are ascending).
      if (_versionGte(version, "0.10.0")) {
        return v0_10_0.infracostSpec;
      }
      if (_versionGte(version, "0.9.0")) {
        return v0_9_0.infracostSpec;
      }

      // Unknown or older: use latest
      return v0_10_0.infracostSpec;
    } catch (_) {
      // Command not found or execution failed: use latest spec
      return v0_10_0.infracostSpec;
    }
  },
);
