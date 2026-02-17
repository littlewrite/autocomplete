// AI-generated from TypeScript source: index.ts

import 'package:autocomplete/src/spec.dart';

final FigSubcommand baseSpec = FigSubcommand(
  name: "sdc",
  description: "\"setup dominic's computer\" cli tool",
  subcommands: [
    FigSubcommand(
      name: "help",
      description: "Display help for command",
      priority: 49,
      args: [
        FigArg(
          name: "command",
          isOptional: true,
          template: "help",
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ["-V", "--version"],
      description: "Output the version number",
    ),
    FigOption(
      name: ["-f", "--force"],
      description: "Bypass checks",
    ),
    FigOption(
      name: "--no-end-clear",
      description:
          "Skip clearing the console at the end so that output can be viewed",
    ),
    FigOption(
      name: ["-h", "--help"],
      description: "Display help for command",
      priority: 49,
    ),
  ],
);

final Map<String, FigSubcommand> versionDiffs = {
  "0.0.4": FigSubcommand(name: "sdc"),
  "0.0.7": FigSubcommand(
    name: "sdc",
    options: [
      FigOption(
        name: "--debug-options",
        description: "Print options to console for debugging",
      ),
      FigOption(
        name: ["-c", "--confirm-commands"],
        description: "Confirm commands before running them",
      ),
    ],
  ),
};

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

FigSpec _createSpecFromSubcommand(FigSubcommand sub) {
  return FigSpec(
    name: sub.name is String ? sub.name as String : (sub.name as List).first,
    description: sub.description,
    subcommands: sub.subcommands,
    options: sub.options,
    args: sub.args,
    priority: sub.priority,
  );
}

final usermnSdcSpec = FigSpec(
  name: "sdc",
  generateSpec:
      (List<String> tokens, ExecuteCommandFunction executeCommand) async {
    try {
      final out = await executeCommand(ExecuteCommandInput(
        command: "npx",
        args: ["@usermn/sdc", "--version"],
      ));
      final version = out.stdout.trim();

      // Start with base spec options
      final currentOptions = List<FigOption>.from(baseSpec.options ?? []);

      // Sort versions ascending
      final sortedVersions = versionDiffs.keys.toList()
        ..sort((a, b) => _versionGte(a, b) ? 1 : -1);

      for (final v in sortedVersions) {
        // If current version >= diff version, apply diff
        if (_versionGte(version, v)) {
          final diff = versionDiffs[v];
          if (diff?.options != null) {
            currentOptions.addAll(diff!.options!);
          }
        }
      }

      return FigSpec(
        name: "sdc",
        description: baseSpec.description,
        subcommands: baseSpec.subcommands,
        options: currentOptions,
        args: baseSpec.args,
      );
    } catch (e) {
      return _createSpecFromSubcommand(baseSpec);
    }
  },
);
