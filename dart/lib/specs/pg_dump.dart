// Auto-generated from TypeScript source: pg_dump.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pg_dump` CLI
final FigSpec pg_dumpSpec = FigSpec(
  name: 'pg_dump',
  description: 'Dumps a database as a text file or to other formats',
  options: [

    Option(
      name: ['--help', '-?'],
      description: 'Show help for pg_dump'
    ),
    Option(
      name: ['--file', '-f'],
      description: 'Output file or directory name',
      args: [
        Arg(
        name: 'filenam'
      )
      ]
    ),
    Option(
      name: ['--format', '-F'],
      description: 'Output file format',
      args: [
        Arg(
        name: 'format',
        suggestions: [

          FigSuggestion(
            name: 'c'
          ),
          FigSuggestion(
            name: 'd'
          ),
          FigSuggestion(
            name: 't'
          ),
          FigSuggestion(
            name: 'p'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['--jobs', '-j'],
      description: 'Number of parallel job to dump',
      args: [
        Arg(
        name: 'nu'
      )
      ]
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Verbose mode'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Output version information'
    ),
    Option(
      name: ['--compress', '-Z'],
      description: 'Compression level for compressed formats',
      args: [
        Arg(
        name: 'level',
        suggestions: [

          FigSuggestion(name: '0'),
          FigSuggestion(name: '1'),
          FigSuggestion(name: '2'),
          FigSuggestion(name: '3'),
          FigSuggestion(name: '4'),
          FigSuggestion(name: '5'),
          FigSuggestion(name: '6'),
          FigSuggestion(name: '7'),
          FigSuggestion(name: '8'),
          FigSuggestion(name: '9')
        ]
      )
      ]
    ),
    Option(
      name: '--lock-wait-timeout',
      description: 'Fail after waiting <timeout> for a table lock',
      args: [
        Arg(
        name: 'timeou'
      )
      ]
    ),
    Option(
      name: '--no-sync',
      description: 'Do not wait for changes to be written safely to disk'
    ),
    Option(
      name: ['--data-only', '-a'],
      description: 'Dump only the data, not the schema'
    ),
    Option(
      name: ['--blobs', '-b'],
      description: 'Include large objects in dump'
    ),
    Option(
      name: ['--no-blobs', '-B'],
      description: 'Exclude large objects in dump'
    ),
    Option(
      name: ['--clean', '-c'],
      description: 'Clean (drop) database objects before recreating'
    ),
    Option(
      name: ['--create', '-C'],
      description: 'Include commands to create database in dump'
    ),
    Option(
      name: ['--extension', '-e'],
      description: 'Dump the specified extension(s) only',
      args: [
        Arg(
        name: 'patter'
      )
      ],
      isRepeatable: true
    ),
    Option(
      name: ['--encoding', '-E'],
      description: 'Dump the data in encoding <encoding>',
      args: [
        Arg(
        name: 'encodin'
      )
      ]
    ),
    Option(
      name: ['--schema', '-n'],
      description: 'Dump the specified schema(s) only',
      args: [
        Arg(
        name: 'patter'
      )
      ],
      isRepeatable: true
    ),
    Option(
      name: ['--exclude-schema', '-N'],
      description: 'Do NOT dump the specified schema(s)',
      args: [
        Arg(
        name: 'patter'
      )
      ],
      isRepeatable: true
    ),
    Option(
      name: ['--no-owner', '-O'],
      description: 'Skip restoration of object ownership in plain-text format'
    ),
    Option(
      name: ['--schema-only', '-s'],
      description: 'Dump only the schema, no data'
    ),
    Option(
      name: ['--superuser', '-S'],
      description: 'Superuser user name to use in plain-text format',
      args: [
        Arg(
        name: 'nam'
      )
      ]
    ),
    Option(
      name: ['--table', '-t'],
      description: 'Dump the specified table(s) only',
      args: [
        Arg(
        name: 'tabl'
      )
      ],
      isRepeatable: true
    ),
    Option(
      name: ['--exclude-table', '-T'],
      description: 'Do NOT dump the specified table(s)',
      args: [
        Arg(
        name: 'tabl'
      )
      ],
      isRepeatable: true
    ),
    Option(
      name: ['--no-privileges', '-x', '--no-acl'],
      description: 'Do not dump privileges (grant/revoke)'
    ),
    Option(
      name: '--binary-upgrade',
      description: 'For use by upgrade utilities only'
    ),
    Option(
      name: ['--column-inserts', '--attribute-inserts'],
      description: 'Dump data as INSERT commands with column names'
    ),
    Option(
      name: '--disable-dollar-quoting',
      description: 'Disable dollar quoting, use SQL standard quoting'
    ),
    Option(
      name: '--disable-triggers',
      description: 'Disable triggers during data-only restore'
    ),
    Option(
      name: '--enable-row-security',
      description: 'Enable row security (dump only content user has access to)'
    ),
    Option(
      name: '--exclude-table-data',
      description: 'Do NOT dump data for the specified table(s)',
      args: [
        Arg(
        name: 'tabl'
      )
      ],
      isRepeatable: true
    ),
    Option(
      name: '--extra-float-digits',
      description: 'Override default setting for extra_float_digits',
      args: [
        Arg(
        name: 'nu'
      )
      ]
    ),
    Option(
      name: '--if-exists',
      description: 'Use IF EXISTS when dropping objects'
    ),
    Option(
      name: '--include-foreign-data',
      description: 'Include data of foreign tables on foreign servers matching PATTERN',
      args: [
        Arg(
        name: 'patter'
      )
      ]
    ),
    Option(
      name: '--inserts',
      description: 'Dump data as INSERT commands, rather than COPY'
    ),
    Option(
      name: '--load-via-partition-root',
      description: 'Load partitions via the root table'
    ),
    Option(
      name: '--no-comments',
      description: 'Do not dump comments'
    ),
    Option(
      name: '--no-publications',
      description: 'Do not dump publications'
    ),
    Option(
      name: '--no-security-labels',
      description: 'Do not dump security label assignments'
    ),
    Option(
      name: '--no-subscriptions',
      description: 'Do not dump subscriptions'
    ),
    Option(
      name: '--no-synchronized-snapshots',
      description: 'Do not use synchronized snapshots in parallel jobs'
    ),
    Option(
      name: '--no-tablespaces',
      description: 'Do not dump tablespace assignments'
    ),
    Option(
      name: '--no-toast-compression',
      description: 'Do not dump TOAST compression methods'
    ),
    Option(
      name: '--no-unlogged-table-data',
      description: 'Do not dump unlogged table data'
    ),
    Option(
      name: '--on-conflict-do-nothing',
      description: 'Add ON CONFLICT DO NOTHING to INSERT commands'
    ),
    Option(
      name: '--quote-all-identifiers',
      description: 'Quote all identifiers, even if not key words'
    ),
    Option(
      name: '--rows-per-insert',
      description: 'Number of rows per INSERT; implies --inserts',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: '--section',
      description: 'Dump named section (pre-data, data, or post-data)',
      args: [
        Arg(
        name: 'sectio'
      )
      ]
    ),
    Option(
      name: '--serializable-deferrable',
      description: 'Wait until the dump can run without anomalies'
    ),
    Option(
      name: '--snapshot',
      description: 'Use given snapshot for the dump',
      args: [
        Arg(
        name: 'snapsho'
      )
      ]
    ),
    Option(
      name: '--strict-names',
      description: 'Require table and/or schema include patterns to match at least one entity each'
    ),
    Option(
      name: '--use-set-session-authorization',
      description: 'Use SET SESSION AUTHORIZATION commands instead of ALTER OWNER commands to set ownership'
    ),
    Option(
      name: ['--dbname', '-d'],
      description: 'Database to dump',
      args: [
        Arg(
        name: 'databas'
      )
      ]
    ),
    Option(
      name: ['--host', '-h'],
      description: 'Database server host or socket directory',
      args: [
        Arg(
        name: 'hos'
      )
      ]
    ),
    Option(
      name: ['--port', '-p'],
      description: 'Database server port number',
      args: [
        Arg(
        name: 'numbe'
      )
      ]
    ),
    Option(
      name: ['--username', '-U'],
      description: 'Connect as specified database user',
      args: [
        Arg(
        name: 'nam'
      )
      ]
    ),
    Option(
      name: ['--no-password', '-w'],
      description: 'Never prompt for password'
    ),
    Option(
      name: ['--password', '-W'],
      description: 'Force password prompt (should happen automatically)'
    ),
    Option(
      name: '--role',
      description: 'Do SET ROLE before dump',
      args: [
        Arg(
        name: 'nam'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'dbname',
    description: 'Name of the database to dump'
  )
  ]
);
