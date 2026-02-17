// Auto-generated from TypeScript source: tb.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tb` CLI
final FigSpec tbSpec = FigSpec(
  name: 'tb',
  description: 'Tinybird CLI',
  options: [

    Option(
      name: '--debug',
      description: 'Prints internal representation, can be combined with any command to get more information',
      exclusiveOn: ['--no-debug']
    ),
    Option(
      name: '--no-debug',
      description: 'Prints internal representation, can be combined with any command to get more information',
      exclusiveOn: ['--debug']
    ),
    Option(
      name: '--token',
      description: 'Use auth token, defaults to TB_TOKEN envvar, then to the .tinyb file',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--host',
      description: 'Use custom host, defaults to TB_HOST envvar, then to https://api.tinybird.co',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--gcp-project-id',
      description: 'The Google Cloud project ID',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--gcs-bucket',
      description: 'The Google Cloud Storage bucket to write temp files when using the connectors',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--google-application-credentials',
      description: 'Set GOOGLE_APPLICATION_CREDENTIALS',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-account',
      description: 'The Snowflake Account (e.g. your-domain.west-europe.azure)',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-warehouse',
      description: 'The Snowflake warehouse name',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-database',
      description: 'The Snowflake database name',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-schema',
      description: 'The Snowflake schema name',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-role',
      description: 'The Snowflake role name',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-user',
      description: 'The Snowflake user name',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-password',
      description: 'The Snowflake password',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-storage-integration',
      description: 'The Snowflake GCS storage integration name (leave empty to auto-generate one)',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--sf-stage',
      description: 'The Snowflake GCS stage name (leave empty to auto-generate one)',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: '--with-headers',
      description: 'Flag to enable connector to export with headers'
    ),
    Option(
      name: '--version-warning',
      description: 'Don\'t print version warning message if there\'s a new available version. You can use TB_VERSION_WARNING envar',
      exclusiveOn: ['--no-version-warning']
    ),
    Option(
      name: '--no-version-warning',
      description: 'Don\'t print version warning message if there\'s a new available version. You can use TB_VERSION_WARNING envar',
      exclusiveOn: ['--version-warning']
    ),
    Option(
      name: '--hide-tokens',
      description: 'Disable the output of tokens'
    ),
    Option(
      name: '--version',
      description: 'Show the version and exit'
    ),
    Option(
      name: '--help',
      description: 'Show this message and exit'
    )
  ],
  subcommands: [

    Subcommand(
      name: 'check',
      description: 'Check file syntax',
      options: [

        Option(
          name: '--debug',
          description: 'Print internal representation'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ],
      args: [
        Arg(
        name: 'path',
        template: ['folders', 'filepaths']
      )
      ]
    ),
    Subcommand(
      name: 'dependencies',
      description: 'Print all data sources dependencies',
      options: [

        Option(
          name: '--no-deps',
          description: 'Print only data sources with no pipes using them'
        ),
        Option(
          name: '--match',
          description: 'Retrieve any resource matching the pattern',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--pipe',
          description: 'Retrieve any resource used by pipe',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--datasource',
          description: 'Retrieve resources depending on this Data Source',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--check-for-partial-replace',
          description: 'Retrieve dependant Data Sources that will have their data replaced if a partial replace is executed in the Data Source selected'
        ),
        Option(
          name: '--recursive',
          description: 'Calculate recursive dependencies'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'diff',
      description: 'Diffs local datafiles to the corresponding remote files in the workspace',
      options: [

        Option(
          name: '--fmt',
          description: 'Format files before doing the diff, default is True so both files match the format',
          exclusiveOn: ['--no-fmt']
        ),
        Option(
          name: '--no-fmt',
          description: 'Format files before doing the diff, default is True so both files match the format',
          exclusiveOn: ['--fmt']
        ),
        Option(
          name: '--no-color',
          description: 'Don\'t colorize diff'
        ),
        Option(
          name: '--main',
          description: 'Diffs local datafiles to the corresponding remote files in the main workspace. Only works when authenticated on a branch'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ],
      args: [
        Arg(
        name: 'path',
        template: ['folders', 'filepaths'],
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'drop-prefix',
      description: 'Drop all the resources inside a project with prefix. This command is dangerous because it removes everything, use with care',
      options: [

        Option(
          name: '--yes',
          description: 'Do not ask for confirmation'
        ),
        Option(
          name: '--dry-run',
          description: 'Run the command without removing anything'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ],
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Subcommand(
      name: 'fmt',
      description: 'Formats a .datasource, .pipe or .incl file\n\nThis command removes comments starting with # from the file, use DESCRIPTION instead.\n\nThe format command tries to parse the datafile so syntax errors might rise.\n\n.incl files must contain a NODE definition',
      options: [

        Option(
          name: '--line-length',
          description: 'A number indicating the maximum characters per line in the node SQL, lines will be splitted based on the SQL syntax and the number of characters passed as a parameter',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--dry-run',
          description: 'Don\'t ask to override the local file'
        ),
        Option(
          name: '--yes',
          description: 'Do not ask for confirmation to overwrite the local file'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ],
      args: [
        Arg(
        name: 'path',
        template: ['folders', 'filepaths'],
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize folder layout',
      options: [

        Option(
          name: '--generate-datasources',
          description: 'Generate datasources based on CSV, NDJSON and Parquet files in this folder'
        ),
        Option(
          name: '--folder',
          description: 'Folder where files will be placed',
          args: [
            Arg(
            name: 'directory',
            template: ['folders']
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Overrides existing files'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'materialize',
      description: '[BETA] Given a local Pipe datafile path (FILENAME) and optionally a Materialized View name (TARGET_DATASOURCE), choose one of its nodes to materialize.\n\nThis command guides you to generate the Materialized View with name TARGET_DATASOURCE, the only requirement is having a valid Pipe datafile locally. Use `tb pull` to download resources from your workspace when needed.\n\nSyntax: tb materialize path/to/pipe.pipe',
      options: [

        Option(
          name: '--prefix',
          description: 'Use prefix for all the resources',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--push-deps',
          description: 'Push dependencies, disabled by default'
        ),
        Option(
          name: '--workspace_map',
          isRepeatable: true,
          args: [

            Arg(
              name: 'text'
            ),
            Arg(
              name: 'text'
            )
          ]
        ),
        Option(
          name: '--workspace',
          description: 'Add a workspace path to the list of external workspaces, usage: --workspace name path/to/folder',
          isRepeatable: true,
          args: [

            Arg(
              name: 'text'
            ),
            Arg(
              name: 'text'
            )
          ]
        ),
        Option(
          name: '--no-versions',
          description: 'When set, resource dependency versions are not used, it pushes the dependencies as-is'
        ),
        Option(
          name: '--verbose',
          description: 'Prints more log'
        ),
        Option(
          name: '--force-populate',
          description: 'Subset or full',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--unlink-on-populate-error',
          description: 'If the populate job fails the Materialized View is unlinked and new data won\'t be ingested in the Materialized View. First time a populate job fails, the Materialized View is always unlinked'
        ),
        Option(
          name: '--override-pipe',
          description: 'Override pipe if exists or prompt'
        ),
        Option(
          name: '--override-datasource',
          description: 'Override data source if exists or prompt'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ],
      args: [

        Arg(
          name: 'path',
          template: ['folders', 'filepaths']
        ),
        Arg(
          name: 'text'
        )
      ]
    ),
    Subcommand(
      name: 'prompt',
      description: 'Learn how to include info about the CLI in your shell PROMPT',
      options: [

        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'pull',
      description: 'Retrieve latest versions for project files from Tinybird',
      options: [

        Option(
          name: '--folder',
          description: 'Folder where files will be placed',
          args: [
            Arg(
            name: 'directory',
            template: ['folders']
          )
          ]
        ),
        Option(
          name: '--auto',
          description: 'Saves datafiles automatically into their default directories (/datasources or /pipes)'
        ),
        Option(
          name: '--match',
          description: 'Retrieve any resourcing matching the pattern. eg --match _test',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--prefix',
          description: 'Download only resources with this prefix',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Override existing files'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'push',
      description: 'Push files to Tinybird\n',
      options: [

        Option(
          name: '--prefix',
          description: 'Use prefix for all the resources',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--dry-run',
          description: 'Run the command without creating resources on the Tinybird account or any side effect'
        ),
        Option(
          name: '--check',
          description: 'Enable/Disable output checking, enabled by default',
          exclusiveOn: ['--no-check']
        ),
        Option(
          name: '--no-check',
          description: 'Enable/Disable output checking, enabled by default',
          exclusiveOn: ['--check']
        ),
        Option(
          name: '--push-deps',
          description: 'Push dependencies, disabled by default'
        ),
        Option(
          name: '--debug',
          description: 'Prints internal representation, can be combined with any command to get more information'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Override pipes when they already exist'
        ),
        Option(
          name: '--override-datasource',
          description: 'When pushing a pipe with a Materialized node if the target Data Source exists it will try to override it'
        ),
        Option(
          name: '--populate',
          description: 'Populate materialized nodes when pushing them'
        ),
        Option(
          name: '--subset',
          description: 'Populate with a subset percent of the data (limited to a maximum of 2M rows), this is useful to quickly test a materialized node with some data. The subset must be greater than 0 and lower than 0.1. A subset of 0.1 means a 10 percent of the data in the source Data Source will be used to populate the materialized view. Use it together with --populate, it has precedence over --sql-condition',
          args: [
            Arg(
            name: 'float'
          )
          ]
        ),
        Option(
          name: '--sql-condition',
          description: 'Populate with a SQL condition to be applied to the trigger Data Source of the Materialized View. For instance, `--sql-condition=\'date == toYYYYMM(now())\'` it\'ll populate taking all the rows from the trigger Data Source which `date` is the current month. Use it together with --populate. --sql-condition is not taken into account if the --subset param is present. Including in the ``sql_condition`` any column present in the Data Source ``engine_sorting_key`` will make the populate job process less data',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--unlink-on-populate-error',
          description: 'If the populate job fails the Materialized View is unlinked and new data won\'t be ingested in the Materialized View. First time a populate job fails, the Materialized View is always unlinked'
        ),
        Option(
          name: '--fixtures',
          description: 'Append fixtures to data sources'
        ),
        Option(
          name: '--wait',
          description: 'To be used along with --populate command. Waits for populate jobs to finish, showing a progress bar. Disabled by default'
        ),
        Option(
          name: '--yes',
          description: 'Do not ask for confirmation'
        ),
        Option(
          name: '--only-response-times',
          description: 'Checks only response times, when --force push a pipe'
        ),
        Option(
          name: '--workspace_map',
          isRepeatable: true,
          args: [

            Arg(
              name: 'text'
            ),
            Arg(
              name: 'text'
            )
          ]
        ),
        Option(
          name: '--workspace',
          description: 'Add a workspace path to the list of external workspaces, usage: --workspace name path/to/folder',
          isRepeatable: true,
          args: [

            Arg(
              name: 'text'
            ),
            Arg(
              name: 'text'
            )
          ]
        ),
        Option(
          name: '--no-versions',
          description: 'When set, resource dependency versions are not used, it pushes the dependencies as-is'
        ),
        Option(
          name: '--timeout',
          description: 'Timeout you want to use for the job populate',
          args: [
            Arg(
            name: 'float'
          )
          ]
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Number of requests to validate',
          args: [
            Arg(
            name: 'integer range'
          )
          ]
        ),
        Option(
          name: '--sample-by-params',
          description: 'When set, we will aggregate the pipe_stats_rt requests by extractURLParameterNames(assumeNotNull(url)) and for each combination we will take a sample of N requests',
          args: [
            Arg(
            name: 'integer range'
          )
          ]
        ),
        Option(
          name: ['-ff', '--failfast'],
          description: 'When set, the checker will exit as soon one test fails'
        ),
        Option(
          name: '--ignore-order',
          description: 'When set, the checker will ignore the order of list properties'
        ),
        Option(
          name: '--validate-processed-bytes',
          description: 'When set, the checker will validate that the new version doesn\'t process more than 25% than the current version'
        ),
        Option(
          name: '--last-requests-from-main',
          description: 'When set, the checker will get top requests requests from main'
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ],
      args: [
        Arg(
        name: 'path',
        template: ['folders', 'filepaths'],
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'sql',
      description: 'Run SQL query over data sources and pipes',
      options: [

        Option(
          name: '--rows_limit',
          description: 'Max number of rows retrieved',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--pipeline',
          description: 'The name of the Pipe to run the SQL Query',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--pipe',
          description: 'The path to the .pipe file to run the SQL Query of a specific NODE',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--node',
          description: 'The NODE name',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Output format',
          args: [
            Arg(
            name: 'choice',
            suggestions: [

              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'csv'),
              FigSuggestion(name: 'human')
            ]
          )
          ]
        ),
        Option(
          name: '--stats',
          description: 'Show query stats',
          exclusiveOn: ['--no-stats']
        ),
        Option(
          name: '--no-stats',
          description: 'Show query stats',
          exclusiveOn: ['--stats']
        ),
        Option(
          name: '--help',
          description: 'Show this message and exit'
        )
      ],
      args: [
        Arg(
        name: 'text'
      )
      ]
    )
  ]
);
