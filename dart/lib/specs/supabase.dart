// Auto-generated from TypeScript source: supabase.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `supabase` CLI
final FigSpec supabaseSpec = FigSpec(
  name: 'supabase',
  description: 'Supabase CLI',
  subcommands: [

    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell',
      subcommands: [

        Subcommand(
          name: 'bash',
          description: 'Generate the autocompletion script for bash',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'fish',
          description: 'Generate the autocompletion script for fish',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'powershell',
          description: 'Generate the autocompletion script for powershell',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate the autocompletion script for zsh',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'db',
      description: 'Manage local Postgres databases',
      subcommands: [

        Subcommand(
          name: 'branch',
          description: 'Manage local database branches',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a branch'
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a branch'
            ),
            Subcommand(
              name: 'list',
              description: 'List branches'
            ),
            Subcommand(
              name: 'switch',
              description: 'Switch the active branch'
            )
          ]
        ),
        Subcommand(
          name: 'diff',
          description: 'Diffs the local database for schema changes',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'Saves schema diff to a file',
              args: [
                Arg(
                name: 'file',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: ['--schema', '-s'],
              description: 'List of schema to include',
              isRepeatable: true,
              args: [
                Arg(
                name: 'schema',
                defaultValue: '[public'
              )
              ]
            ),
            Option(
              name: '--use-migra',
              description: 'Use migra to generate schema diff'
            )
          ]
        ),
        Subcommand(
          name: 'dump',
          description: 'Dumps data or schemas from the remote database',
          options: [

            Option(
              name: '--data-only',
              description: 'Dumps only data records'
            ),
            Option(
              name: '--db-url',
              description: 'Dumps from the database specified by the connection string (must be percent-encoded)',
              args: [
                Arg(
                name: 'strin'
              )
              ]
            ),
            Option(
              name: '--dry-run',
              description: 'Prints the pg_dump script that would be executed'
            ),
            Option(
              name: ['--file', '-f'],
              description: 'File path to save the dumped contents',
              args: [
                Arg(
                name: 'string',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Help for dump'
            ),
            Option(
              name: '--keep-comments',
              description: 'Keeps commented lines from pg_dump output'
            ),
            Option(
              name: '--linked',
              description: 'Dumps from the linked project. (default true)'
            ),
            Option(
              name: '--local',
              description: 'Dumps from the local database'
            ),
            Option(
              name: ['--password', '-p'],
              description: 'Password to your remote Postgres database',
              args: [
                Arg(
                name: 'strin'
              )
              ]
            ),
            Option(
              name: '--role-only',
              description: 'Dumps only cluster roles'
            ),
            Option(
              name: ['--schema', '-s'],
              description: 'Comma separated list of schema to include. (default all)',
              args: [
                Arg(
                name: 'strin'
              )
              ]
            ),
            Option(
              name: '--use-copy',
              description: 'Uses copy statements in place of inserts'
            )
          ]
        ),
        Subcommand(
          name: 'lint',
          description: 'Checks local database for typing error',
          options: [

            Option(
              name: '--level',
              description: 'Error level to emit',
              args: [
                Arg(
                name: 'level',
                defaultValue: 'warnin'
              )
              ]
            ),
            Option(
              name: ['--schema', '-s'],
              description: 'List of schema to include',
              isRepeatable: true,
              args: [
                Arg(
                name: 'schema',
                defaultValue: '[public'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pull',
          description: 'Pull schema from the remote database'
        ),
        Subcommand(
          name: 'push',
          description: 'Push new migrations to the remote database',
          options: [

            Option(
              name: '--dry-run',
              description: 'Print the migrations that would be applied, but don\'t actually apply them'
            ),
            Option(
              name: ['--password', '-p'],
              description: 'Password to your remote Postgres database',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remote',
          description: 'Manage remote databases',
          subcommands: [

            Subcommand(
              name: 'changes',
              description: 'Show changes on the remote database'
            ),
            Subcommand(
              name: 'commit',
              description: 'Commit remote changes as a new migration'
            )
          ],
          options: [

            Option(
              name: ['--password', '-p'],
              description: 'Password to your remote Postgres database',
              isPersistent: true,
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Resets the local database to current migrations'
        )
      ]
    ),
    Subcommand(
      name: 'functions',
      description: 'Manage Supabase Edge functions',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a Function from Supabase',
          options: [

            Option(
              name: '--project-ref',
              description: 'Project ref of the Supabase project',
              args: [
                Arg(
                name: 'project-re'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deploy',
          description: 'Deploy a Function to Supabase',
          options: [

            Option(
              name: '--no-verify-jwt',
              description: 'Disable JWT verification for the Function'
            ),
            Option(
              name: '--project-ref',
              description: 'Project ref of the Supabase project',
              args: [
                Arg(
                name: 'project-re'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'new',
          description: 'Create a new Function locally'
        ),
        Subcommand(
          name: 'serve',
          description: 'Serve a Function locally',
          options: [

            Option(
              name: '--env-file',
              description: 'Path to an env file to be populated to the Function environment',
              args: [
                Arg(
                name: 'env-file',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--no-verify-jwt',
              description: 'Disable JWT verification for the Function'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'gen',
      description: 'Run code generation tools',
      subcommands: [

        Subcommand(
          name: 'types',
          description: 'Generate types from Postgres schema',
          subcommands: [

            Subcommand(
              name: 'typescript',
              description: 'Generate types for TypeScript',
              options: [

                Option(
                  name: '--db-url',
                  description: 'Generate types from a database url',
                  args: [
                    Arg(
                    name: 'db-ur'
                  )
                  ]
                ),
                Option(
                  name: '--local',
                  description: 'Generate types from the local dev database'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize a local project'
    ),
    Subcommand(
      name: 'link',
      description: 'Link to a Supabase project',
      options: [

        Option(
          name: ['--password', '-p'],
          description: 'Password to your remote Postgres database',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: '--project-ref',
          description: 'Project ref of the Supabase project',
          args: [
            Arg(
            name: 'project-re'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Authenticate using an access token'
    ),
    Subcommand(
      name: 'migration',
      description: 'Manage database migration scripts',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List local and remote migrations',
          options: [

            Option(
              name: ['--password', '-p'],
              description: 'Password to your remote Postgres database',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--local',
              description: 'Lists migrations applied to the local database'
            ),
            Option(
              name: '--linked',
              description: 'Lists migrations applied to the linked project (default true)'
            ),
            Option(
              name: '--db-url',
              description: 'Database URL to connect to',
              args: [
                Arg(
                name: 'strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'new',
          description: 'Create an empty migration script',
          args: [
            Arg(
            name: 'migration nam'
          )
          ]
        ),
        Subcommand(
          name: 'repair',
          description: 'Repair the migration history table',
          args: [
            Arg(
            name: 'versio'
          )
          ],
          options: [

            Option(
              name: '--status',
              description: 'Version status to update',
              priority: 100,
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(
                    name: 'applied'
                  ),
                  FigSuggestion(
                    name: 'reverted'
                  )
                ]
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'Password to your remote Postgres database',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--local',
              description: 'Repairs the migration history of the local database'
            ),
            Option(
              name: '--linked',
              description: 'Repairs the migration history of the linked project (default true)'
            ),
            Option(
              name: '--db-url',
              description: 'Database URL to connect to',
              args: [
                Arg(
                name: 'strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'squash',
          description: 'Squash migrations to a single file',
          options: [

            Option(
              name: ['--password', '-p'],
              description: 'Password to your remote Postgres database',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--local',
              description: 'Squashes the migration history of the local database'
            ),
            Option(
              name: '--version',
              description: 'Squash up to the specified version',
              args: [
                Arg(
                name: 'strin'
              )
              ]
            ),
            Option(
              name: '--linked',
              description: 'Squashes the migration history of the linked project (default true)'
            ),
            Option(
              name: '--db-url',
              description: 'Database URL to connect to',
              args: [
                Arg(
                name: 'strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'up',
          description: 'Apply pending migrations to local database'
        )
      ]
    ),
    Subcommand(
      name: 'orgs',
      description: 'Manage Supabase organizations',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all organizations'
        )
      ]
    ),
    Subcommand(
      name: 'projects',
      description: 'Manage Supabase projects',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a project on Supabase',
          options: [

            Option(
              name: '--db-password',
              description: 'Database password of the project',
              args: [
                Arg(
                name: 'db-passwor'
              )
              ]
            ),
            Option(
              name: ['--interactive', '-i'],
              description: 'Enables interactive mode'
            ),
            Option(
              name: '--org-id',
              description: 'Organization ID to create the project in',
              args: [
                Arg(
                name: 'org-i'
              )
              ]
            ),
            Option(
              name: '--plan',
              description: 'Select a plan that suits your needs',
              args: [
                Arg(
                name: 'plan',
                defaultValue: 'fre'
              )
              ]
            ),
            Option(
              name: '--region',
              description: 'Select a region close to you for the best performance',
              args: [
                Arg(
                name: 'regio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all Supabase projects'
        )
      ]
    ),
    Subcommand(
      name: 'secrets',
      description: 'Manage Supabase secrets',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all secrets on Supabase'
        ),
        Subcommand(
          name: 'set',
          description: 'Set a secret(s) on Supabase',
          options: [

            Option(
              name: '--env-file',
              description: 'Read secrets from a .env file',
              args: [
                Arg(
                name: 'env-file',
                template: 'filepaths'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unset',
          description: 'Unset a secret(s) on Supabase'
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Start containers for Supabase local development'
    ),
    Subcommand(
      name: 'status',
      description: 'Show status of local Supabase containers'
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop all local Supabase containers'
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: 'completion',
          description: 'Generate the autocompletion script for the specified shell',
          subcommands: [

            Subcommand(
              name: 'bash',
              description: 'Generate the autocompletion script for bash'
            ),
            Subcommand(
              name: 'fish',
              description: 'Generate the autocompletion script for fish'
            ),
            Subcommand(
              name: 'powershell',
              description: 'Generate the autocompletion script for powershell'
            ),
            Subcommand(
              name: 'zsh',
              description: 'Generate the autocompletion script for zsh'
            )
          ]
        ),
        Subcommand(
          name: 'db',
          description: 'Manage local Postgres databases',
          subcommands: [

            Subcommand(
              name: 'branch',
              description: 'Manage local database branches',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a branch'
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a branch'
                ),
                Subcommand(
                  name: 'list',
                  description: 'List branches'
                ),
                Subcommand(
                  name: 'switch',
                  description: 'Switch the active branch'
                )
              ]
            ),
            Subcommand(
              name: 'diff',
              description: 'Diffs the local database for schema changes'
            ),
            Subcommand(
              name: 'lint',
              description: 'Checks local database for typing error'
            ),
            Subcommand(
              name: 'push',
              description: 'Push new migrations to the remote database'
            ),
            Subcommand(
              name: 'remote',
              description: 'Manage remote databases',
              subcommands: [

                Subcommand(
                  name: 'changes',
                  description: 'Show changes on the remote database'
                ),
                Subcommand(
                  name: 'commit',
                  description: 'Commit remote changes as a new migration'
                )
              ]
            ),
            Subcommand(
              name: 'reset',
              description: 'Resets the local database to current migrations'
            )
          ]
        ),
        Subcommand(
          name: 'functions',
          description: 'Manage Supabase Edge functions',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a Function from Supabase'
            ),
            Subcommand(
              name: 'deploy',
              description: 'Deploy a Function to Supabase'
            ),
            Subcommand(
              name: 'new',
              description: 'Create a new Function locally'
            ),
            Subcommand(
              name: 'serve',
              description: 'Serve a Function locally'
            )
          ]
        ),
        Subcommand(
          name: 'gen',
          description: 'Run code generation tools',
          subcommands: [

            Subcommand(
              name: 'types',
              description: 'Generate types from Postgres schema',
              subcommands: [

                Subcommand(
                  name: 'typescript',
                  description: 'Generate types for TypeScript'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize a local project'
        ),
        Subcommand(
          name: 'link',
          description: 'Link to a Supabase project'
        ),
        Subcommand(
          name: 'login',
          description: 'Authenticate using an access token'
        ),
        Subcommand(
          name: 'migration',
          description: 'Manage database migration scripts',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List local and remote migrations'
            ),
            Subcommand(
              name: 'new',
              description: 'Create an empty migration script'
            )
          ]
        ),
        Subcommand(
          name: 'orgs',
          description: 'Manage Supabase organizations',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all organizations'
            )
          ]
        ),
        Subcommand(
          name: 'projects',
          description: 'Manage Supabase projects',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a project on Supabase'
            ),
            Subcommand(
              name: 'list',
              description: 'List all Supabase projects'
            )
          ]
        ),
        Subcommand(
          name: 'secrets',
          description: 'Manage Supabase secrets',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all secrets on Supabase'
            ),
            Subcommand(
              name: 'set',
              description: 'Set a secret(s) on Supabase'
            ),
            Subcommand(
              name: 'unset',
              description: 'Unset a secret(s) on Supabase'
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start containers for Supabase local development'
        ),
        Subcommand(
          name: 'status',
          description: 'Show status of local Supabase containers'
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop all local Supabase containers'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--debug',
      description: 'Output debug logs to stderr',
      isPersistent: true
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
