import 'package:autocomplete/src/spec.dart';
import 'shared.dart';

Future<String> getVersionCommand(
    ExecuteCommandFunction executeShellCommand) async {
  final out = await executeShellCommand(ExecuteCommandInput(
    command: "fig",
    args: ["--version"],
  ));
  final stdout = out.stdout;
  return stdout.substring(stdout.indexOf(" ") + 1).trim();
}

final completionSpec = FigSpec(
  name: "fig",
  description: "The CLI for Fig",
  subcommands: [
    FigSubcommand(
      name: "settings",
      description: "Manage Fig settings",
      generateSpec: settingsSpecGenerator,
    ),
    FigSubcommand(
      name: "run",
      description: "Run a script",
      generateSpec: scriptsSpecGenerator,
    ),
    FigSubcommand(
      name: "cli",
      description: "Run a CLI tool",
      generateSpec: commandLineToolSpecGenerator,
    ),
    FigSubcommand(
      name: "user",
      description: "Manage users",
      // subcommands for user management would go here
    ),
    FigSubcommand(
      name: "team",
      description: "Manage teams",
      // subcommands for team management would go here
    ),
    // Add more subcommands as needed or implement versioning logic
    // when versioned specs are available.
  ],
);
