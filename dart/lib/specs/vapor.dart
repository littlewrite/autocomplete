// Auto-generated from TypeScript source: vapor.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vapor` CLI
final FigSpec vaporSpec = FigSpec(
  name: 'vapor',
  description: 'Vapor Toolbox (Server-side Swift web framework)',
  subcommands: [
    Subcommand(
      name: 'build',
      description: 'Builds an app in the console'
    ),
    Subcommand(
      name: 'new',
      description: 'Generates a new app',
      args: [
        Arg(
        name: 'name',
        description: 'Name of project and folder'
      )
      ],
      options: [
        Option(
          name: ['--template', '-T'],
          description: 'The URL of a Git repository to use as a template'
        ),
        Option(
          name: '--branch',
          description: 'Template repository branch to use'
        ),
        Option(
          name: ['--output', '-o'],
          description: 'The directory to place the new project in'
        ),
        Option(
          name: '--no-commit',
          description: 'Skips adding a first commit to the newly created repo'
        )
      ]
    ),
    Subcommand(
      name: 'clean',
      description: 'Cleans temporary files',
      options: [
        Option(
          name: ['--update', '-u'],
          description: 'Delete Package.resolved file if it exists'
        ),
        Option(
          name: ['--global', '-g'],
          description: 'Clean Xcode\'s global DerivedData cache'
        ),
        Option(
          name: ['--swiftpm', '-s'],
          description: 'Delete .swiftpm folder'
        )
      ]
    ),
    Subcommand(
      name: 'heroku',
      description: 'Commands for working with Heroku',
      subcommands: [
        Subcommand(
          name: 'init',
          description: 'Configures app for deployment to Heroku'
        ),
        Subcommand(
          name: 'push',
          description: 'Deploys app to Heroku'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Runs an app from the console. Equivalent to `swift run --enable-test-discovery Run`'
    ),
    Subcommand(
      name: 'supervisor',
      description: 'Commands for working with Supervisord',
      subcommands: [
        Subcommand(
          name: 'init',
          description: 'Creates a Supervisor entry for the current project'
        ),
        Subcommand(
          name: 'restart',
          description: 'Restarts current project in Supervisor'
        ),
        Subcommand(
          name: 'update',
          description: 'Updates Supervisor entry for current project'
        )
      ]
    ),
    Subcommand(
      name: 'xcode',
      description: 'Opens an app in Xcode'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for vapor',
      args: [
        Arg(
        name: 'command',
        description: 'Display usage information about the specified command'
      )
      ]
    )
  ]
);
