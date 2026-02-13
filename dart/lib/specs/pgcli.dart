// Auto-generated from TypeScript source: pgcli.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pgcli` CLI
final FigSpec pgcliSpec = FigSpec(
  name: 'pgcli',
  args: [
    Arg(
    name: 'database_name or db_url'
  )
  ],
  options: [

    Option(
      name: ['-h', '--host'],
      description: 'Host address of the postgres database',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: ['-p', '--port'],
      description: 'Port number at which the postgres instance is listening',
      args: [
        Arg(
        name: 'integer'
      )
      ]
    ),
    Option(
      name: ['-U', '--username'],
      description: 'Username to connect to the postgres database',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: ['-u', '--user'],
      description: 'Username to connect to the postgres database',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: ['-W', '--password'],
      description: 'Force password prompt'
    ),
    Option(
      name: ['-w', '--no-password'],
      description: 'Never prompt for password'
    ),
    Option(
      name: '--single-connection',
      description: 'Do not use a separate connection for completions'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Version of pgcli'
    ),
    Option(
      name: ['-d', '--dbname'],
      description: 'Database name to connect to',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--pgclirc',
      description: 'Location of pgclirc file',
      args: [
        Arg(
        name: 'file',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['-D', '--dsn'],
      description: 'Use DSN configured into the [alias_dsn] section of pgclirc file',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--list-dsn',
      description: 'List of DSN configured into the [alias_dsn] section of pgclirc file'
    ),
    Option(
      name: '--row-limit',
      description: 'Set threshold for row limit prompt. Use 0 to disable prompt',
      args: [
        Arg(
        name: 'integer'
      )
      ]
    ),
    Option(
      name: '--less-chatty',
      description: 'Skip intro on startup and goodbye on exit'
    ),
    Option(
      name: '--prompt',
      description: 'Prompt format (Default: "\\u@\\h:\\d> ")',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--prompt-dsn',
      description: 'Prompt format for connections using DSN aliases (Default: "\\u@\\h:\\d> ")',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: ['-l', '--list'],
      description: 'List available databases, then exit'
    ),
    Option(
      name: '--auto-vertical-output',
      description: 'Automatically switch to vertical output mode if the result is wider than the terminal width'
    ),
    Option(
      name: '--warn',
      description: 'Warn before running a destructive query',
      args: [
        Arg(
        name: 'choice',
        suggestions: [

          FigSuggestion(name: 'all'),
          FigSuggestion(name: 'moderate'),
          FigSuggestion(name: 'off')
        ]
      )
      ]
    ),
    Option(
      name: '--ssh-tunnel',
      description: 'Open an SSH tunnel to the given address and connect to the database from it',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Show this message and exit'
    )
  ]
);
