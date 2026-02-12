// Auto-generated from TypeScript source: sapphire.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sapphire` CLI
final FigSpec sapphireSpec = FigSpec(
  name: 'sapphire',
  description: 'CLI for the Sapphire Framework',
  subcommands: [
    Subcommand(
      name: ['new', 'n'],
      priority: 100,
      description: 'Creates a new Sapphire project',
      args: [
        Arg(
        name: 'name',
        description: 'Project name',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: 'Enable verbose logging'
        )
      ]
    ),
    Subcommand(
      name: ['generate', 'g'],
      priority: 90,
      description: 'Generates a component/piece',
      args: [
        Arg(
          name: 'component',
          description: 'Component/piece name'
        ),
        Arg(
          name: 'name',
          description: 'File name',
          template: 'filepaths'
        )
      ]
    ),
    Subcommand(
      name: ['init', 'i'],
      priority: 80,
      description: 'Creates a config file on an existing Sapphire project'
    ),
    Subcommand(
      name: 'help',
      priority: 70,
      description: 'Display help for command',
      args: [
        Arg(
        name: 'command',
        description: 'Command to display help for',
        isOptional: true,
        template: 'help'
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      priority: 10,
      description: 'Show help for sapphire',
      isPersistent: true
    ),
    Option(
      name: ['--version', '-V'],
      priority: 1,
      description: 'Output the version number'
    )
  ]
);
