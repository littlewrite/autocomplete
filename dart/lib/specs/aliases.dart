// Auto-generated from TypeScript source: aliases.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> helpAndVersionOptions = [

  Option(
    name: ['--help', '-h'],
    description: 'Prints help information',
    isPersistent: true
  ),
  Option(
    name: ['--version', '-V'],
    description: 'Prints version information',
    isPersistent: true
  )
];

/// Completion spec for `aliases` CLI
final FigSpec aliasesSpec = FigSpec(
  name: 'aliases',
  description: 'Bash aliases on steroids, dynamic alias functions for bash',
  subcommands: [

    Subcommand(
      name: 'add',
      description: 'Add an alias via the cli',
      args: [

        Arg(
          name: 'name',
          description: 'The name of the alias'
        ),
        Arg(
          name: 'command',
          description: 'The command you want to run'
        )
      ]
    ),
    Subcommand(
      name: 'clone',
      description: 'Clone external aliases',
      options: [

        Option(
          name: ['-E', '--enable'],
          description: 'Whether to enable the user if they are not currently enabled'
        )
      ],
      args: [

        Arg(
          name: 'username',
          description: 'The username of the aliases you want to clone'
        ),
        Arg(
          name: 'repo_url',
          description: 'The git repo url of the aliases (defaults to github/<username>/dot-aliases)'
        )
      ]
    ),
    Subcommand(
      name: 'directories',
      description: 'List all directories initialized with aliases'
    ),
    Subcommand(
      name: 'exec',
      description: 'Execute an alias for a given directory',
      args: [

        Arg(
          name: 'directory',
          description: 'Directory where the alias is defined',
          template: 'folders'
        ),
        Arg(
          name: 'name',
          isVariadic: true,
          description: 'Name of alias'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Prints help information'
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize a directory for aliases',
      options: [

        Option(
          name: ['-g', '--global'],
          description: 'Returns the global initialization for the app'
        ),
        Option(
          name: ['-u', '--user'],
          description: 'Initialize aliases for a specific user',
          args: [
            Arg(
            name: 'user'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List the aliases available',
      options: [

        Option(
          name: ['-g', '--global'],
          description: 'List only global aliases'
        ),
        Option(
          name: ['-l', '--local'],
          description: 'List only local aliases'
        ),
        Option(
          name: ['-d', '--directory'],
          description: 'List aliases for a specific directory',
          args: [
            Arg(
            name: 'directory',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: 'name',
          description: 'List aliases for with a specific name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pull',
      description: 'Pull a cloned user\'s aliases',
      args: [
        Arg(
        name: 'username',
        description: 'The username of the aliases you want to pull, leave blank to pull all user aliases'
      )
      ]
    ),
    Subcommand(
      name: 'rehash',
      description: 'Update the aliases'
    ),
    Subcommand(
      name: 'remove',
      description: 'Remove an alias via the cli',
      args: [
        Arg(
        name: 'name',
        description: 'The name of the alias'
      )
      ]
    ),
    Subcommand(
      name: 'users',
      description: 'List the users',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable a user\'s aliases',
          args: [
            Arg(
            name: 'username'
          )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable a user\'s aliases',
          args: [
            Arg(
            name: 'username'
          )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Prints this message or the help of the given subcommand(s)'
        ),
        Subcommand(
          name: 'move',
          description: 'Move a user up or down the prioritization list',
          args: [

            Arg(
              name: 'username'
            ),
            Arg(
              name: 'prioritization'
            )
          ]
        ),
        Subcommand(
          name: 'use',
          description: 'Assign a user to the top of the priority list',
          args: [
            Arg(
            name: 'username'
          )
          ]
        )
      ]
    )
  ],
  options: helpAndVersionOptions
);
