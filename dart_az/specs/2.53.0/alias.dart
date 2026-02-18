// Auto-generated from TypeScript source: alias.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `alias` CLI
final FigSpec aliasSpec = FigSpec(
  name: 'alias',
  description: 'Manage Azure CLI Aliases',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create an alias',
      options: [

        Option(
          name: ['--command', '-c'],
          description: 'The command that the alias points to',
          args: [
            Arg(
            name: 'comman'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the alias',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'export',
      description: 'Export all registered aliases to a given path, as an INI configuration file. If no export path is specified, the alias configuration file is exported to the current working directory',
      options: [

        Option(
          name: ['--exclude', '-e'],
          description: 'Space-separated aliases excluded from export',
          args: [
            Arg(
            name: 'exclud'
          )
          ]
        ),
        Option(
          name: ['--path', '-p'],
          description: 'The path of the alias configuration file to export to',
          args: [
            Arg(
            name: 'pat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Import aliases from an INI configuration file or an URL',
      options: [

        Option(
          name: ['--source', '-s'],
          description: 'The source of the aliases to import from',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List the registered aliases'
    ),
    Subcommand(
      name: 'remove',
      description: 'Remove one or more aliases. Aliases to be removed are space-delimited',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Space-separated aliases',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'remove-all',
      description: 'Remove all registered aliases',
      options: [

        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    )
  ]
);
