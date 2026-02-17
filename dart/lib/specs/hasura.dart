// Auto-generated from TypeScript source: hasura.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> sharedOptions = [

  Option(
    name: '--envfile',
    description: '.env filename to load ENV vars from',
    args: [
      Arg(
      name: 'string',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: ['-h', '--help'],
    description: 'Help for hasura'
  ),
  Option(
    name: '--log-level',
    description: 'Log level',
    args: [
      Arg(
      name: 'string',
      suggestions: [

        FigSuggestion(name: 'DEBUG'),
        FigSuggestion(name: 'INFO'),
        FigSuggestion(name: 'WARN'),
        FigSuggestion(name: 'ERROR'),
        FigSuggestion(name: 'FATAL')
      ],
      defaultValue: 'INFO'
    )
    ]
  ),
  Option(
    name: '--no-color',
    description: 'Do not colorize output'
  ),
  Option(
    name: '--project',
    description: 'Directory where commands are executed',
    args: [
      Arg(
      name: 'string',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: '--skip-update-check',
    description: 'Skip automatic update check on command execution'
  )
];

final List<Option> actionsSharedOptions = [];

/// Completion spec for `hasura` CLI
final FigSpec hasuraSpec = FigSpec(
  name: 'hasura',
  description: 'Hasura GraphQL engine command line tool',
  subcommands: [

    Subcommand(
      name: 'actions',
      description: 'Manage Hasura actions',
      subcommands: [

        Subcommand(
          name: 'codegen',
          description: 'Generate code for actions',
          options: [

            Option(
              name: '--derive-from',
              description: 'Derive action from a hasura operation'
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ],
          args: [
            Arg(
            name: 'action name',
            isOptional: true,
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a Hasura action',
          options: [

            Option(
              name: '--derive-from',
              description: 'Derive action from a Hasura operation'
            ),
            Option(
              name: '--kind',
              description: 'Kind to use in action',
              args: [
                Arg(
                name: 'string',
                isOptional: true,
                suggestions: [

                  FigSuggestion(name: 'synchronous'),
                  FigSuggestion(name: 'asynchronous')
                ]
              )
              ]
            ),
            Option(
              name: '--webhook',
              description: 'Webhook to use in action',
              args: [
                Arg(
                name: 'webhook',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--with-codegen',
              description: 'Create action along with codegen'
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ],
          args: [
            Arg(
            name: 'action name',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'use-codegen',
          description: 'Use the codegen to generate code for Hasura actions',
          options: [

            Option(
              name: '--framework',
              description: 'Framework to be used by codegen'
            ),
            Option(
              name: '--output-dir',
              description: 'Directory to create the codegen files',
              args: [
                Arg(
                name: 'string',
                template: 'folders'
              )
              ]
            ),
            Option(
              name: '--with-starter-kit',
              description: 'Clone starter kit for a framework'
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ]
        )
      ],
      options: [

        ...actionsSharedOptions,
        ...sharedOptions
      ]
    ),
    Subcommand(
      name: 'completions',
      description: 'Generate auto completion code',
      options: [

        Option(
          name: '--file',
          description: 'File to which output has to be written',
          args: [
            Arg(
            name: 'string',
            template: 'filepaths'
          )
          ]
        ),
        ...sharedOptions
      ],
      args: [
        Arg(
        name: 'shell',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'bash'),
          FigSuggestion(name: 'zsh')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'console',
      description: 'Open the console to manage the database and try out APIs',
      options: [

        Option(
          name: '--address',
          description: 'Address to serve console and migration API from',
          args: [
            Arg(
            name: 'string',
            defaultValue: 'localhost',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--api-port',
          description: 'Port for serving migrate api',
          args: [
            Arg(
            name: 'string',
            isOptional: true,
            defaultValue: '9693'
          )
          ]
        ),
        Option(
          name: '--browser',
          description: 'Open console in a specific browser'
        ),
        Option(
          name: '--console-port',
          description: 'Port for serving console',
          args: [
            Arg(
            name: 'string',
            defaultValue: '9695',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--insecure-skip-tls-verify',
          description: 'Skip TLS verification and disable cert checking'
        ),
        Option(
          name: '--no-browser',
          description: 'Do not automatically open console in browser'
        ),
        Option(
          name: '--static-dir',
          description: 'Directory where static assets mentioned in the console html template can be served from',
          args: [
            Arg(
            name: 'string',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--use-server-assets',
          description: 'When rendering console, use assets provided by HGE server'
        ),
        ...actionsSharedOptions,
        ...sharedOptions
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize a directory for Hasura GraphQL engine migrations',
      options: [

        Option(
          name: '--install-manifest',
          description: 'Install manifest to be cloned'
        ),
        Option(
          name: '--version',
          description: 'Config version to be used',
          args: [
            Arg(
            name: 'int',
            defaultValue: '3'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'directory name',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['md', 'metadata'],
      subcommands: [

        Subcommand(
          name: 'apply',
          description: 'Apply Hasura metadata on a database',
          options: [

            Option(
              name: '--dry-run',
              description: 'Show metadata generated from project directory without applying to server'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Specify an output format to show applied metadata',
              args: [
                Arg(
                name: 'string',
                isOptional: true,
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml')
                ],
                defaultValue: 'json'
              )
              ]
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'clear',
          description: 'Clear Hasura GraphQL engine metadata on the database',
          options: [

            ...actionsSharedOptions,
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'diff',
          description: 'Show a highlighted diff of Hasura metadata',
          options: [

            ...actionsSharedOptions,
            ...sharedOptions
          ],
          args: [

            Arg(
              name: 'file1',
              isOptional: true,
              template: 'filepaths'
            ),
            Arg(
              name: 'file2',
              isOptional: true,
              template: 'filepaths'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export Hasura GraphQL engine metadata from the database',
          options: [

            Option(
              name: ['-o', '--output'],
              description: 'Specify an output format for exported metadata'
            )
          ]
        ),
        Subcommand(
          name: ['ic', 'inconsistency', 'inconsistencies'],
          description: 'Manage inconsistent objects in Hasura metadata',
          subcommands: [

            Subcommand(
              name: 'drop',
              description: 'Drop inconsistent objects from the metadata',
              options: [

                ...actionsSharedOptions,
                ...sharedOptions
              ]
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'List all inconsistent objects from the metadata',
              options: [

                ...actionsSharedOptions,
                ...sharedOptions
              ]
            ),
            Subcommand(
              name: 'status',
              description: 'Check if the metadata is inconsistent or not',
              options: [

                ...actionsSharedOptions,
                ...sharedOptions
              ]
            )
          ],
          options: [

            ...actionsSharedOptions,
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'reload',
          description: 'Reload Hasura GraphQL engine metadata on the database',
          options: [

            ...actionsSharedOptions,
            ...sharedOptions
          ]
        )
      ],
      options: [

        ...actionsSharedOptions,
        ...sharedOptions
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Manage migrations on the database',
      subcommands: [

        Subcommand(
          name: 'apply',
          description: 'Apply migrations on the database',
          options: [

            Option(
              name: '--up',
              description: 'Apply all or N up migration steps',
              args: [
                Arg(
                name: 'string',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--down',
              description: 'Apply all or N up migration steps',
              args: [
                Arg(
                name: 'string',
                isOptional: true
              )
              ]
            ),
            Option(
              name: 'goto',
              description: 'Apply migration chain up to to the version specified'
            ),
            Option(
              name: '--version',
              description: 'Only apply this particular migration'
            ),
            Option(
              name: '--skip-execution',
              description: 'Skip executing the migration action, but mark them as applied'
            ),
            Option(
              name: '--type',
              description: 'Type of migration to be used with version flag',
              args: [
                Arg(
                name: 'string',
                suggestions: [

                  FigSuggestion(name: 'up'),
                  FigSuggestion(name: 'down')
                ],
                defaultValue: 'up'
              )
              ]
            ),
            Option(
              name: '--dry-run',
              description: 'Print the names of migrations which are going to be applied'
            ),
            Option(
              name: '--all-databases',
              description: 'Set this flag to attempt to apply migrations on all databases present on server'
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create files required for a migration',
          options: [

            Option(
              name: '--down-sql',
              description: 'Sql string/query that is to be used to create a down migration'
            ),
            Option(
              name: '--from-server',
              description: 'Take pg_dump of schema and Hasura metadata from the server'
            ),
            Option(
              name: '--metadata-from-file',
              description: 'Path to a hasura metadata file to be used for up actions',
              args: [
                Arg(
                name: 'string',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--metadata-from-server',
              description: 'Take metadata from the server and write it as an up migration file'
            ),
            Option(
              name: '--schema',
              description: 'Name of Postgres schema to export as a migration',
              args: [
                Arg(
                name: 'strings',
                isVariadic: true
              )
              ]
            ),
            Option(
              name: '--sql-from-file',
              description: 'Path to an SQL file which contains the SQL statements',
              args: [
                Arg(
                name: 'string',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--sql-from-server',
              description: 'Take pg_dump from the server and save it as a migration'
            ),
            Option(
              name: '--up-sql',
              description: 'Sql string/query that is to be used to create an up migration'
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ],
          args: [
            Arg(
            name: 'migration name',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Clear migrations from local project and server',
          options: [

            Option(
              name: '--all',
              description: 'Clears all migrations for selected database'
            ),
            Option(
              name: '--force',
              description: 'Executes operation without any confirmation',
              isDangerous: true
            ),
            Option(
              name: '--version',
              description: 'Deletes the specified version in migrations',
              args: [
                Arg(
                name: 'uint'
              )
              ]
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'squash',
          description: 'Squash multiple migrations into a single one',
          options: [

            Option(
              name: '--delete-source',
              description: 'Delete the source files after squashing without any confirmation'
            ),
            Option(
              name: '--from',
              description: 'Start squashing from this version',
              args: [
                Arg(
                name: 'uint'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name for the new squashed migration',
              args: [
                Arg(
                name: 'string',
                defaultValue: 'squashed'
              )
              ]
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Display current status of migrations on a database'
        )
      ],
      options: [

        ...actionsSharedOptions,
        ...sharedOptions
      ]
    ),
    Subcommand(
      name: ['plugin', 'plugins'],
      description: 'Manage plugins for the CLI',
      subcommands: [

        Subcommand(
          name: 'install',
          description: 'Install a plugin from the index',
          options: [

            Option(
              name: '--version',
              description: 'Version to be installed'
            ),
            ...sharedOptions
          ],
          args: [
            Arg(
            name: 'plugin name',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all available plugins from index, versions and installation status',
          options: [

            Option(
              name: '--dont-update-index',
              description: 'Do not update the plugin index local cache, only show the list'
            ),
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'uninstall',
          description: 'Uninstall a plugin',
          options: sharedOptions,
          args: [
            Arg(
            name: 'plugin name',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade a plugin to a newer version',
          options: [

            Option(
              name: '--version',
              description: 'Version to be upgraded'
            ),
            ...sharedOptions
          ],
          args: [
            Arg(
            name: 'plugin name',
            isOptional: true
          )
          ]
        )
      ],
      options: sharedOptions
    ),
    Subcommand(
      name: 'scripts',
      description: 'Execute helper scripts to manage Hasura projects',
      subcommands: [

        Subcommand(
          name: 'update-project-v2',
          description: 'Update the Hasura project from config v1 to v2',
          options: [

            Option(
              name: '--metadata-dir',
              description: 'Metadata directory',
              args: [
                Arg(
                name: 'string',
                template: 'folders'
              )
              ]
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'update-project-v3',
          description: 'Update the Hasura project from config v2 to v3',
          options: [

            Option(
              name: '--database-name',
              description: 'Database name for which the current migrations / seeds belong to'
            ),
            Option(
              name: '--force',
              description: 'Do not ask for confirmation',
              isDangerous: true
            ),
            Option(
              name: '--move-state-only',
              description: 'Do only a state migration from old hdb_catalog'
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ]
        )
      ],
      options: sharedOptions
    ),
    Subcommand(
      name: ['sd', 'seed', 'seeds'],
      description: 'Manage seed data',
      subcommands: [

        Subcommand(
          name: 'apply',
          description: 'Apply seed data',
          options: [

            Option(
              name: ['-f', '--file'],
              description: 'Seed file to apply',
              args: [
                Arg(
                name: 'string array',
                template: 'filepaths'
              )
              ]
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new seed file',
          options: [

            Option(
              name: '--from-table',
              description: 'Name of table from which seed file has to be initialized',
              args: [
                Arg(
                name: 'string array'
              )
              ]
            ),
            ...actionsSharedOptions,
            ...sharedOptions
          ],
          args: [
            Arg(
            name: 'seed name'
          )
          ]
        )
      ],
      options: [

        Option(
          name: '--database-name',
          description: 'Database name for which the current migrations / seeds belong to'
        ),
        ...actionsSharedOptions,
        ...sharedOptions
      ]
    ),
    Subcommand(
      name: 'update-cli',
      description: 'Update the CLI to latest or a specific version',
      options: [

        Option(
          name: '--version',
          description: 'A specific version to install',
          args: [
            Arg(
            name: 'string',
            isOptional: true
          )
          ]
        ),
        ...sharedOptions
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print the CLI version',
      options: sharedOptions
    )
  ],
  options: sharedOptions
);
