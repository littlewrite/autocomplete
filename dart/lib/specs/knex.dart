// Auto-generated from TypeScript source: knex.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `knex` CLI
final FigSpec knexSpec = FigSpec(
  name: 'knex',
  description: 'SQL query builder for JavaScript',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Create a fresh knexfile',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'migrate:make',
      description: 'Create a named migration file',
      args: [
        Arg(
        name: 'migration nam'
      )
      ]
    ),
    Subcommand(
      name: 'migrate:latest',
      description: 'Run all migrations that have not yet been run',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'migrate:up',
      description: 'Run the next or the specified migration that has not yet been run',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'migrate:rollback',
      description: 'Rollback the last batch of migrations performed',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'migrate:down',
      description: 'Undo the last or the specified migration that was already run',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'migrate:currentVersion',
      description: 'View the current version for the  migration',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'migrate:list|migrate:status',
      description: 'List all migrations files with status',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'migrate:unlock',
      description: 'Forcibly unlocks the migrations lock table',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'seed:make',
      description: 'Create a named seed file',
      args: [
        Arg(
        name: 'seed name'
      )
      ]
    ),
    Subcommand(
      name: 'seed:run',
      description: 'Run seed files',
      args: [
        Arg(
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      args: [
        Arg(
      )
      ]
    )
  ],
  options: [
    Option(
      name: '--version',
      description: 'Output the version number',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Run with debugging',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--knexfile',
      description: 'Specify the knexfile path',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--knexpath',
      description: 'Specify the path to knex instance',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--cwd',
      description: 'Specify the working directory',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--client',
      description: 'Set DB client without a knexfile',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--connection',
      description: 'Set DB connection without a knexfile',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--migrations-directory',
      description: 'Set migrations directory without a knexfile',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--migrations-table-name',
      description: 'Set migrations table name without a knexfile',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--env',
      description: 'Environment, default: process.env.NODE_ENV || development',
      args: [
        Arg(
        name: 'environment'
      )
      ]
    ),
    Option(
      name: '--esm',
      description: 'Enable ESM interop',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--specific',
      description: 'Specify one seed file to execute',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--timestamp-filename-prefix',
      description: 'Enable a timestamp prefix on name of generated seed files',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Display help for command',
      args: [
        Arg(
      )
      ]
    )
  ]
);
