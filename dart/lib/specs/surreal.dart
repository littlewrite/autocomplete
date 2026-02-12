// Auto-generated from TypeScript source: surreal.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `surreal` CLI
final FigSpec surrealSpec = FigSpec(
    name: 'surreal',
    description:
        'SurrealDB is the ultimate cloud database for tomorrow\'s applications - https://surrealdb.com/',
    subcommands: [
      Subcommand(
          name: 'help',
          description:
              'Print this message or the help of the given subcommand(s)',
          args: [
            Arg(
                name: 'command',
                isOptional: true,
                template: 'help',
                description: 'Command to get help for')
          ]),
      Subcommand(
          name: 'start',
          description: 'Start the database server',
          args: [
            Arg(
                name: 'path',
                description:
                    'Database path used for storing data [env: DB_PATH=] [default: memory]',
                isOptional: true)
          ],
          options: [
            Option(
                name: '--',
                description: 'Everything after this is an argument'),
            Option(
                name: '--addr',
                description:
                    'The allowed networks for master authentication [env: ADDR=] [default: 127.0.0.1/32]',
                args: [
                  Arg(
                      name: 'addr',
                      description:
                          'The allowed networks for master authentication [env: ADDR=] [default: 127.0.0.1/32]')
                ]),
            Option(
                name: ['--bind', '-b'],
                description:
                    'The hostname or ip address to listen for connections on [env: BIND=] [default: 0.0.0.0:8000]',
                args: [
                  Arg(
                      name: 'bind',
                      description:
                          'The hostname or ip address to listen for connections on [env: BIND=] [default: 0.0.0.0:8000]')
                ]),
            Option(
                name: ['--key', '-k'],
                description:
                    'Encryption key to use for on-disk encryption [env: KEY=]',
                args: [
                  Arg(
                      name: 'key',
                      description:
                          'Encryption key to use for on-disk encryption [env: KEY=]')
                ]),
            Option(
                name: '--kvs-ca',
                description:
                    'Path to the CA file used when connecting to the remote KV store [env: KVS_CA=]',
                args: [
                  Arg(
                      name: 'kvs-ca',
                      description:
                          'Path to the CA file used when connecting to the remote KV store [env: KVS_CA=]')
                ]),
            Option(
                name: '--kvs-crt',
                description:
                    'Path to the certificate file used when connecting to the remote KV store [env: KVS_CRT=]',
                args: [
                  Arg(
                      name: 'kvs-crt',
                      description:
                          'Path to the certificate file used when connecting to the remote KV store [env: KVS_CRT=]')
                ]),
            Option(
                name: '--kvs-key',
                description:
                    'Path to the private key file used when connecting to the remote KV store [env: KVS_KEY=]',
                args: [
                  Arg(
                      name: 'kvs-key',
                      description:
                          'Path to the private key file used when connecting to the remote KV store [env: KVS_KEY=]')
                ]),
            Option(
                name: ['--log', '-l'],
                description:
                    'The logging level for the database server [env: LOG=] [default: info] [possible values: warn, info, debug, trace, full]',
                args: [
                  Arg(
                      name: 'log',
                      description:
                          'The logging level for the database server [env: LOG=] [default: info] [possible values: warn, info, debug, trace, full]',
                      suggestions: [
                        FigSuggestion(name: 'warn'),
                        FigSuggestion(name: 'info'),
                        FigSuggestion(name: 'debug'),
                        FigSuggestion(name: 'trace'),
                        FigSuggestion(name: 'full')
                      ])
                ]),
            Option(
                name: ['--pass', '-p'],
                description:
                    'The master password for the database [env: PASS=]',
                args: [
                  Arg(
                      name: 'pass',
                      description:
                          'The master password for the database [env: PASS=]')
                ]),
            Option(
                name: ['--strict', '-s'],
                description:
                    'Whether strict mode is enabled on this database instance [env: STRICT=]',
                args: [
                  Arg(
                      name: 'strict',
                      description:
                          'Whether strict mode is enabled on this database instance [env: STRICT=]')
                ]),
            Option(
                name: ['--user', '-u'],
                description:
                    'The master username for the database [env: USER=] [default: root]',
                args: [
                  Arg(
                      name: 'user',
                      description:
                          'The master username for the database [env: USER=] [default: root]')
                ]),
            Option(
                name: '--web-crt',
                description:
                    'Path to the certificate file for encrypted client connections [env: WEB_CRT=]',
                args: [
                  Arg(
                      name: 'web-crt',
                      description:
                          'Path to the certificate file for encrypted client connections [env: WEB_CRT=]')
                ]),
            Option(
                name: '--web-key',
                description:
                    'Path to the private key file for encrypted client connections [env: WEB_KEY=]',
                args: [
                  Arg(
                      name: 'web-key',
                      description:
                          'Path to the private key file for encrypted client connections [env: WEB_KEY=]')
                ])
          ]),
      Subcommand(
          name: 'backup',
          description: 'Backup data to or from an existing database',
          args: [
            Arg(
                name: 'from',
                description:
                    'Path to the remote database or file from which to export'),
            Arg(
                name: 'into',
                description:
                    'Path to the remote database or file into which to import')
          ]),
      Subcommand(
          name: 'import',
          description: 'Import a SurrealQL script into an existing database'),
      Subcommand(
          name: 'export',
          description: 'Export an existing database as a SurrealQL script'),
      Subcommand(
          name: 'version',
          description: 'Output the command-line tool version information'),
    ],
    options: [
      Option(name: ['--help', '-h'], description: 'Print help information')
    ]);
