// AI-generated from TypeScript source: index.ts

import 'package:autocomplete/src/spec.dart';

final completionSpec = FigSpec(
  name: "shopify",
  generateSpec:
      (List<String> tokens, ExecuteCommandFunction executeShellCommand) async {
    const versionRegex = r'\d+\.\d+\.\d+';
    final output = await executeShellCommand(ExecuteCommandInput(
      command: "shopify",
      args: ["version"],
    ));

    final versionMatch = RegExp(versionRegex).firstMatch(output.stdout);
    final version = versionMatch?.group(0) ?? "";

    // Logic to select spec based on version
    // versionFiles = ["2.0.0", "3.0.0"]
    // In a real implementation, we would return the FigSpec for the matching version.

    if (version.startsWith("2.")) {
      // return spec for 2.0.0
      return FigSpec(name: "shopify", description: "Shopify CLI v2");
    } else if (version.startsWith("3.")) {
      // return spec for 3.0.0
      return FigSpec(name: "shopify", description: "Shopify CLI v3");
    }

    return FigSpec(name: "shopify", description: "Shopify CLI");
  },
);
