// Auto-generated from TypeScript source: leaf.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `leaf` CLI
final FigSpec leafSpec = FigSpec(
  name: 'leaf',
  description: 'Create and interact with your leaf projects',
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Display help for the given command. When no command is given display help for the list command'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Do not output any message'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Display this application version'
    ),
    Option(
      name: '--ansi',
      description: 'Force ANSI output',
      exclusiveOn: ['--no-ansi']
    ),
    Option(
      name: '--no-ansi',
      description: 'Disable ANSI output',
      exclusiveOn: ['--ansi']
    ),
    Option(
      name: ['-n', '--no-interaction'],
      description: 'Do not ask any interactive question'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug',
      isRepeatable: 3
    )
  ],
  subcommands: [
    Subcommand(
      name: 'completion',
      description: 'Dump the shell completion script'
    ),
    Subcommand(
      name: 'create',
      description: '[init] Create a new Leaf PHP project',
      args: [
        Arg(
        name: 'project name',
        description: 'Name of the project'
      )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: '[publish] Deploy your leaf project'
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for a command'
    ),
    Subcommand(
      name: 'install',
      description: 'Add a new package to your leaf app',
      args: [
        Arg(
        name: 'package name',
        description: 'Name of the package'
      )
      ]
    ),
    Subcommand(
      name: 'interact',
      description: 'Interact with your application'
    ),
    Subcommand(
      name: 'list',
      description: 'List commands'
    ),
    Subcommand(
      name: 'run',
      description: 'Run a script in your composer.json',
      args: [
        Arg(
        name: 'command name',
        description: 'Name of the command'
      )
      ]
    ),
    Subcommand(
      name: 'serve',
      description: 'Run your Leaf app',
      options: [
        Option(
          name: '--port',
          description: 'The port number to run the server on',
          args: [
            Arg(
            name: 'port number',
            description: 'The port number to run the server on'
          )
          ]
        ),
        Option(
          name: '--watch',
          description: 'Watch for changes and restart the server'
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Test your leaf application through leaf alchemy'
    ),
    Subcommand(
      name: 'test:setup',
      description: 'Add tests to your application'
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstall a package',
      args: [
        Arg(
        name: 'package name',
        description: 'Name of the package'
      )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update leaf cli to the latest version'
    )
  ]
);
