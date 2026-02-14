// Auto-generated from TypeScript source: mackup.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator applicationGenerator = FigGenerator(
  script: ['mackup', 'list'],
  postProcess: (String output, [List<String>? tokens]) {
    return output
        .split('\n')
        .where((line) => line.contains('-'))
        .map((name) => FigSuggestion(name: name.substring(3)))
        .toList();
  },
);

final FigSpec mackupSpec = FigSpec(
  name: 'mackup',
  description: 'Mackup',
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help',
    ),
    FigOption(
      name: ['--force', '-f'],
      description: "Force every question asked to be answered with 'Yes'",
    ),
    FigOption(
      name: ['--root', '-r'],
      description: 'Allow mackup to be run as superuser',
    ),
    FigOption(
      name: ['--dry-run', '-n'],
      description: 'Show steps without executing',
    ),
    FigOption(
      name: ['--version'],
      description: 'Show version',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: ['list'],
      description: 'List all the supported mackup applications',
    ),
    FigSubcommand(
      name: ['backup'],
      description: 'Sync your conf files to your synced storage',
    ),
    FigSubcommand(
      name: ['restore'],
      description:
          'Link the conf files already in your synced storage on your system',
    ),
    FigSubcommand(
      name: ['show'],
      description: 'Show the current configuration',
      args: [
        FigArg(
          name: 'application',
          generators: [applicationGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: ['uninstall'],
      description: 'Reset everything as it was before using Mackup',
    ),
  ],
);
