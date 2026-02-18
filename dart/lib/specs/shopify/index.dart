// AI-generated from TypeScript source: index.ts

import 'package:autocomplete/src/spec.dart';
import '2.0.0.dart' as v2;
import '3.0.0.dart' as v3;

const _versionRegex = r'\d+\.\d+\.\d+';

final completionSpec = FigSpec(
  name: "shopify",
  generateSpec:
      (List<String> tokens, ExecuteCommandFunction executeShellCommand) async {
    try {
      final output = await executeShellCommand(ExecuteCommandInput(
        command: "shopify",
        args: ["version"],
      ));

      final versionMatch = RegExp(_versionRegex).firstMatch(output.stdout);
      final version = versionMatch?.group(0) ?? "";

      if (version.startsWith("2.")) {
        return v2.shopifySpec;
      } else if (version.startsWith("3.")) {
        return v3.shopifySpec;
      }

      // Unknown version: use latest (3.x)
      return v3.shopifySpec;
    } catch (_) {
      // Command not found or execution failed: use latest spec
      return v3.shopifySpec;
    }
  },
);
