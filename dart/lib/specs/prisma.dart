// Auto-generated from TypeScript source: prisma.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `prisma` CLI
final FigSpec prismaSpec = FigSpec(
  name: 'prisma',
  description: 'Prisma is a modern DB toolkit to query, migrate and model your database',
  icon: 'https://raw.githubusercontent.com/prisma/docs/main/src/images/favicon-16x16.png',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Setup Prisma for your app',
      options: [
        Option(
          name: '--datasource-provider',
          description: 'Define the datasource provider to use',
          args: [
            Arg(
            description: 'Choose provider',
            suggestions: [
              FigSuggestion(name: 'PostgreSQL'),
              FigSuggestion(name: 'MySQL'),
              FigSuggestion(name: 'SQLite'),
              FigSuggestion(name: 'SQLServer'),
              FigSuggestion(name: 'MongoDB'),
              FigSuggestion(name: 'CockroachDB')
            ],
            defaultValue: 'PostgreSQL'
          )
          ]
        ),
        Option(
          name: '--url',
          description: 'Define a custom datasource url',
          args: [
            Arg(
            name: 'full url',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'generate',
      description: 'Generate artifacts (e.g. Prisma Client)',
      options: [
        Option(
          name: '--data-proxy',
          description: 'Enable the Data Proxy in the Prisma Client'
        ),
        Option(
          name: '--no-hints',
          description: 'Hides the hint messages but still outputs errors and warnings'
        ),
        Option(
          name: '--no-engine',
          description: 'Generate a client for use with Accelerate only'
        ),
        Option(
          name: '--watch',
          description: 'Watch the Prisma schema and rerun after a change'
        ),
        Option(
          name: '--allow-no-models',
          description: 'Allow generating a client without models'
        )
      ]
    ),
    Subcommand(
      name: 'studio',
      description: 'Open Prisma Studio',
      options: [
        Option(
          name: ['-p', '--port'],
          description: 'Port to start Studio on',
          args: [
            Arg(
            name: 'port'
          )
          ]
        ),
        Option(
          name: ['-b', '--browser'],
          description: 'Browser to open Studio in',
          args: [
            Arg(
            name: 'Browser choice',
            suggestions: [
              FigSuggestion(name: 'firefox'),
              FigSuggestion(name: 'chrome'),
              FigSuggestion(name: 'safari'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        ),
        Option(
          name: ['-n', '--hostname'],
          description: 'Hostname to bind the Express server to',
          args: [
            Arg(
            name: 'port'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'format',
      description: 'Format your schema',
      options: []
    ),
    Subcommand(
      name: 'migrate',
      description: 'Migrate your database',
      subcommands: [
        Subcommand(
          name: 'dev',
          icon: '💻',
          description: 'The migrate dev command updates your database using migrations files during development',
          options: [
            Option(
              name: '--create-only',
              description: 'Create a new migration but do not apply it. The migration will be empty if there are no changes in Prisma schema'
            ),
            Option(
              name: ['-n', '--name'],
              description: 'The name of the migration. If no name is provided, the CLI will prompt you',
              args: [
                Arg(
                name: 'filename',
                isOptional: true
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          icon: '🔃',
          description: 'Reset your database and apply all migrations, all data will be lost',
          options: [
            Option(
              name: ['-f', '--force'],
              description: 'Skip the confirmation prompt',
              isDangerous: true
            )
          ]
        ),
        Subcommand(
          name: 'deploy',
          icon: '🚀',
          description: 'Apply pending migrations to update the database schema in production/staging',
          options: []
        ),
        Subcommand(
          name: 'resolve',
          description: 'Resolve issues with database migrations in deployment databases',
          options: [
            Option(
              name: '--applied',
              description: 'Record a specific migration as applied',
              args: [
                Arg(
                name: 'migration file path',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--rolled-back',
              description: 'Record a specific migration as rolled back',
              args: [
                Arg(
                name: 'migration file path',
                template: 'filepaths'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Check the status of your database migrations',
          options: []
        ),
        Subcommand(
          name: 'diff',
          description: 'Compares the database schema from two arbitrary sources, and outputs the differences either as a human-readable summary (by default) or an executable script',
          options: [
            Option(
              name: '--from-url',
              description: 'A datasource url',
              args: [
                Arg(
                name: 'full url',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--to-url',
              description: 'A datasource url',
              args: [
                Arg(
                name: 'full url',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--from-empty',
              description: 'Flag to assume from is an empty datamodel'
            ),
            Option(
              name: '--to-empty',
              description: 'Flag to assume to is an empty datamodel'
            ),
            Option(
              name: '--from-schema-datamodel',
              description: 'Path to a Prisma schema file, uses the \'datamodel\' for the diff',
              args: [
                Arg(
                name: 'filepath',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--to-schema-datamodel',
              description: 'Path to a Prisma schema file, uses the \'datamodel\' for the diff',
              args: [
                Arg(
                name: 'filepath',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--from-schema-datasource',
              description: 'Path to a Prisma schema file, uses the \'datasource url\' for the diff',
              args: [
                Arg(
                name: 'filepath',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--to-schema-datasource',
              description: 'Path to a Prisma schema file, uses the \'datasource url\' for the diff',
              args: [
                Arg(
                name: 'filepath',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--from-migrations',
              description: 'Path to the Prisma Migrate migrations directory',
              args: [
                Arg(
                name: 'folder',
                template: 'folders'
              )
              ]
            ),
            Option(
              name: '--to-migrations',
              description: 'Path to the Prisma Migrate migrations directory',
              args: [
                Arg(
                name: 'folder',
                template: 'folders'
              )
              ]
            ),
            Option(
              name: '--shadow-database-url',
              description: 'URL for the shadow database. Only required if using --from-migrations or --to-migrations',
              args: [
                Arg(
                name: 'full url',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--script',
              description: 'Render a SQL script to stdout instead of the default human readable summary (not supported on MongoDB)',
              args: [
                Arg(
                name: 'filepath',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--exit-code',
              description: 'Change the exit code behavior to signal if the diff is empty or not (Empty: 0, Error: 1, Not empty: 2). Default behavior is Success: 0, Error: 1.`'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'db',
      description: 'Manage your database schema and lifecycle (Preview)',
      subcommands: [
        Subcommand(
          name: 'pull',
          options: [
            Option(
              name: '--force',
              description: 'Ignore current Prisma schema file',
              isDangerous: true
            ),
            Option(
              name: '--print',
              description: 'Print the introspected Prisma schema to stdout'
            ),
            Option(
              name: '--url',
              description: 'The datasource url',
              args: [
                Arg(
                name: 'full url',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--composite-type-depth',
              description: 'Specify the depth for introspecting composite types (e.g. Embedded Documents in MongoDB). Number, default is -1 for infinite depth, 0 = off',
              args: [
                Arg(
                name: 'number'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'push',
          description: 'This command pushes the state of your Prisma schema file to the database without using migrations files',
          options: [
            Option(
              name: '--skip-generate',
              description: 'Skip generation of artifacts such as Prisma Client'
            ),
            Option(
              name: '--force-reset',
              description: 'Resets the database and then updates the schema - useful if you need to start from scratch due to unexecutable migrations',
              isDangerous: true
            ),
            Option(
              name: '--accept-data-loss',
              description: 'Ignore data loss warnings. This option is required if as a result of making the schema changes, data may be lost',
              isDangerous: true
            )
          ]
        ),
        Subcommand(
          name: 'seed',
          description: 'Seed your database',
          options: []
        ),
        Subcommand(
          name: 'execute',
          description: 'Execute native commands to your database',
          options: [
            Option(
              name: '--url',
              description: 'The datasource url',
              args: [
                Arg(
                name: 'full url',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--file',
              description: 'Path to a file. The content will be sent as the script to be executed',
              args: [
                Arg(
                name: 'filepath',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--stdin',
              description: 'Use the terminal standard input as the script to be executed'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['version', '-v'],
      description: 'Print current version of Prisma components',
      subcommands: [
        Subcommand(
          name: '--json',
          description: 'Output JSON'
        )
      ]
    )
  ]
);
