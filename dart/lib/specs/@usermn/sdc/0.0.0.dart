// AI-generated from TypeScript source: index.ts

import 'package:autocomplete/src/spec.dart';

final usermnSds0Spec = FigSpec(
  name: "sdc",
  description: '"setup dominic\'s computer" cli tool',
  subcommands: [
    FigSubcommand(
      name: "help",
      description: "Display help for command",
      priority: 49,
      args: FigArg(
        name: "command",
        isOptional: true,
        template: "help",
      ),
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
    // Options from version 0.0.7
    FigOption(
      name: "--debug-options",
      description: "Print options to console for debugging",
    ),
    FigOption(
      name: ["-c", "--confirm-commands"],
      description: "Confirm commands before running them",
    ),
  ],
);
