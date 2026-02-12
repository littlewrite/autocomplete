// Auto-generated from TypeScript source: shell-config.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `main` CLI
final FigSpec mainSpec = FigSpec(
  name: 'main',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Init shell-config setup with this CLI version. Execute this command only when you want to force-apply the latest shell-config setup',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install MacOS setup with Multi-Selection',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'shell',
      description: 'Setup a shell configuration with a robust set of tools and architecture',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update the CLI to the latest version',
      options: [
        Option(
          name: ['-t', '--target'],
          description: 'Select update version',
          args: [
            Arg(
            name: 'target',
            defaultValue: 'lates'
          )
          ]
        ),
        Option(
          name: ['-m', '--mute'],
          description: 'Daemon check for update notification. When specified is true'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'assets',
      description: 'Configure your shell assets, such as `gitprofile` and `npmrc`',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'external',
      description: 'Install and manage your external shell',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'Show list of all exists externals shells',
          options: [
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Install external shell',
          options: [
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ],
          args: [
            Arg(
              name: 'file_path',
              description: 'File to set as external shell'
            ),
            Arg(
              name: 'external_name',
              description: 'Name to register under the registry'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete external shell',
          options: [
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'completion-script',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      priority: 49,
      args: [
        Arg(
        name: 'command',
        isOptional: true,
        template: 'hel'
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['-V', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ]
);
