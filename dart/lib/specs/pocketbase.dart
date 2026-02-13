// Auto-generated from TypeScript source: pocketbase.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pocketbase` CLI
final FigSpec pocketbaseSpec = FigSpec(
  name: 'pocketbase',
  description: 'PocketBase CLI',
  subcommands: [

    Subcommand(
      name: 'help',
      description: 'Help about any command',
      args: [
        Arg(
        name: 'subcommand',
        template: 'help'
      )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Executes DB migration scripts',
      subcommands: [

        Subcommand(
          name: 'collections',
          description: '(Experimental) Creates new migration file with the most recent local collections configuration',
          args: [
            Arg(
            name: 'folder',
            description: 'Migrations folder',
            template: 'folders',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Creates new migration template file',
          args: [

            Arg(
              name: 'name',
              description: 'Migration file name'
            ),
            Arg(
              name: 'folder',
              description: 'Migrations folder',
              template: 'folders',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'down',
          description: 'Reverts the last [number] applied migrations',
          args: [
            Arg(
            name: 'number',
            description: 'Number of applied migrations to revert',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'up',
          description: 'Runs all available migrations'
        )
      ]
    ),
    Subcommand(
      name: 'serve',
      description: 'Starts the web server (default to 127.0.0.1:8090)',
      options: [

        Option(
          name: '--http',
          description: 'API HTTP server address (default "127.0.0.1:8090")',
          args: [
            Arg(
            name: 'string',
            description: 'API HTTP server address'
          )
          ]
        ),
        Option(
          name: '--https',
          description: 'API HTTPS server address (auto TLS via Let\'s Encrypt). The incoming --http address traffic also will be redirected to this address',
          args: [
            Arg(
            name: 'string',
            description: 'API HTTPS server address (auto TLS via Let\'s Encrypt)'
          )
          ]
        ),
        Option(
          name: '--origins',
          description: 'CORS allowed domain origins list (default [*])',
          args: [
            Arg(
            name: 'strings',
            description: 'CORS allowed domain origins list'
          )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--debug',
      description: 'Enable debug mode, aka showing more detailed logs'
    ),
    Option(
      name: '--dir',
      description: 'PocketBase data directory (default "pb_data")',
      args: [
        Arg(
        name: 'dir',
        description: 'PocketBase data directory',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--encryptionEnv',
      description: 'Environment variable whose value of 32 chars will be used as encryption key for the app settings (default none)',
      args: [
        Arg(
        name: 'env',
        description: 'Encryption environment variable name'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show help for pocketbase'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show version for pocketbase'
    )
  ]
);
