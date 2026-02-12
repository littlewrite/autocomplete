// Auto-generated from TypeScript source: aftman.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `aftman` CLI
final FigSpec aftmanSpec = FigSpec(
  name: 'aftman',
  description: 'A toolchain manager, enabling project-specific command line tools',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Creates a new aftman.toml file in the given directory',
      args: [
        Arg(
        name: 'path',
        description: 'The folder to initialize the manifest file in. Defaults to the current directory',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'add',
      description: 'Adds a new tool to Aftman and installs it',
      options: [
        Option(
          name: '--global',
          description: 'Install this tool globally'
        )
      ],
      args: [
        Arg(
          name: 'tool',
          description: 'What tool and version to install'
        ),
        Arg(
          name: 'alias',
          description: 'The name that will be used to run the tool',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install all tools listed in aftman.toml files based on your current directory',
      options: [
        Option(
          name: '--no-trust-check',
          description: 'All tools will be installed, regardless of whether they are known'
        )
      ]
    ),
    Subcommand(
      name: 'self-install',
      description: 'Installs Aftman, upgrades any references to Aftman, and adds aftman to your system PATH if supported'
    ),
    Subcommand(
      name: 'trust',
      args: [
        Arg(
        name: 'tool',
        description: 'The tool to mark as trusted'
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for aftman'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Show aftman\'s version'
    )
  ]
);
