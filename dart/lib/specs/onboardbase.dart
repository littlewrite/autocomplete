// Auto-generated from TypeScript source: onboardbase.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `onboardbase` CLI
final FigSpec onboardbaseSpec = FigSpec(
  name: 'onboardbase',
  description: 'Onboardbase manages app secrets and credentials securely with team work and contractors in mind',
  subcommands: [
    Subcommand(
      name: 'build',
      description: 'Run a command with secrets injected into the environment',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-p', '--project'],
          description: 'Name of project',
          args: [
            Arg(
            name: 'project nam'
          )
          ]
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to run by default',
          args: [
            Arg(
            name: 'environment'
          )
          ]
        ),
        Option(
          name: ['-c', '--command'],
          description: 'Command to run',
          args: [
            Arg(
            name: 'Command to Ru'
          )
          ]
        ),
        Option(
          name: ['-k', '--prefix'],
          description: 'Prefix',
          args: [
            Arg(
            name: 'Project Prefix'
          )
          ]
        ),
        Option(
          name: ['-s', '--passphrase'],
          description: 'Passphrase',
          args: [
            Arg(
            name: 'Encryption Passphras'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'comman'
      )
      ]
    ),
    Subcommand(
      name: 'config:get-token',
      description: 'Get all tokens',
      options: [
        Option(
          name: ['-S', '--scope'],
          description: 'Scope',
          args: [
            Arg(
            name: 'project scop'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config:set',
      description: 'Update your onboardbase config',
      options: [
        Option(
          name: ['-s', '--scope'],
          description: 'Scope',
          args: [
            Arg(
            name: 'project scop'
          )
          ]
        ),
        Option(
          name: ['-t', '--token'],
          description: 'Auth Token',
          args: [
            Arg(
            name: 'Auth Toke'
          )
          ]
        ),
        Option(
          name: ['-A', '--api-host'],
          description: 'API Host',
          args: [
            Arg(
            name: 'Api Hos'
          )
          ]
        ),
        Option(
          name: ['-D', '--dashboard-host'],
          description: 'Dashboard Host',
          args: [
            Arg(
            name: 'Dashboard Hos'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config:set-token',
      description: 'Set up Configuration token manually',
      options: [
        Option(
          name: ['-S', '--scope'],
          description: 'Scope',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'toke'
      )
      ]
    ),
    Subcommand(
      name: 'destroy',
      description: 'Cleanup Onboardbase artifacts including backup and authentication'
    ),
    Subcommand(
      name: 'environment:create',
      description: 'Create an environment under a project',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-p', '--project'],
          description: 'Name of project',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Environment Title',
          args: [
            Arg(
            name: 'Environment Nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Describe the command here',
      options: [
        Option(
          name: '--overwrite'
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Log out of the CLI'
    ),
    Subcommand(
      name: 'project:create',
      description: 'Create a project',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-t', '--title'],
          description: 'Name of project',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--description'],
          description: 'Project description',
          args: [
            Arg(
            name: 'Project Descriptio'
          )
          ]
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to run by default',
          args: [
            Arg(
            name: 'default environmen'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'recommendation:create',
      description: 'Create a recommendation',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-p', '--project'],
          description: 'Name of project',
          args: [
            Arg(
            name: 'project nam'
          )
          ]
        ),
        Option(
          name: ['-n', '--note'],
          description: 'Note',
          args: [
            Arg(
            name: 'project descriptio'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'secret'
      )
      ]
    ),
    Subcommand(
      name: 'secrets',
      description: 'Log secrets in JSON file',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-p', '--project'],
          description: 'Name of project',
          args: [
            Arg(
            name: 'project nam'
          )
          ]
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to run by default',
          args: [
            Arg(
            name: 'default environmen'
          )
          ]
        ),
        Option(
          name: ['-J', '--json'],
          description: 'JSON format'
        )
      ]
    ),
    Subcommand(
      name: 'secrets:delete',
      description: 'Update secrets on Onboardbase',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-p', '--project'],
          description: 'Name of project',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to run by default',
          args: [
            Arg(
            name: 'Environment to updat'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'secret'
      )
      ]
    ),
    Subcommand(
      name: 'secrets:update',
      description: 'Update secrets on Onboardbase',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-p', '--project'],
          description: 'Name of project',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to run by default',
          args: [
            Arg(
            name: 'Environment to updat'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'secret'
      )
      ]
    ),
    Subcommand(
      name: 'secrets:upload',
      description: 'Upload secrets',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-p', '--project'],
          description: 'Name of project',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to run by default',
          args: [
            Arg(
            name: 'Environment to updat'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'secret'
      )
      ]
    ),
    Subcommand(
      name: 'setup',
      description: 'Setup the Onboardbase CLI for managing secrets'
    ),
    Subcommand(
      name: 'share',
      description: 'Share your local onboardbase.yaml secrets with a teammate',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-p', '--project'],
          description: 'Project name',
          args: [
            Arg(
            name: 'project nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for <%= config.bin %>',
      options: [
        Option(
          name: '--all',
          description: 'See all commands in CLI'
        )
      ],
      args: [
        Arg(
        name: 'command',
        description: 'Command to show help for',
        isOptional: true
      )
      ]
    )
  ]
);
