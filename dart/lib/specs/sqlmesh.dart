// Auto-generated from TypeScript source: sqlmesh.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sqlmesh` CLI
final FigSpec sqlmeshSpec = FigSpec(
  name: 'sqlmesh',
  description: 'SQLMesh command line tool',
  options: [

    Option(
      name: '--paths',
      description: 'Paths to SQLMesh project files',
      args: [
        Arg(
        name: 'paths',
        template: 'folders',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--config',
      description: 'Path to config file',
      args: [
        Arg(
        name: 'config',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--gateway',
      description: 'The name of the gateway',
      args: [
        Arg(
        name: 'gateway'
      )
      ]
    ),
    Option(
      name: '--ignore-warnings',
      description: 'Ignore warnings'
    ),
    Option(
      name: '--debug',
      description: 'Enable debug mode'
    ),
    Option(
      name: '--log-to-stdout',
      description: 'Display logs in stdout'
    ),
    Option(
      name: '--log-file-dir',
      description: 'The directory to write log files to',
      args: [
        Arg(
        name: 'directory',
        template: 'folders'
      )
      ]
    )
  ],
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Create a new SQLMesh repository',
      options: [

        Option(
          name: ['-t', '--template'],
          description: 'Project template. Supported values: airflow, dbt, dlt, default, empty',
          args: [
            Arg(
            name: 'template',
            suggestions: [

              FigSuggestion(name: 'airflow'),
              FigSuggestion(name: 'dbt'),
              FigSuggestion(name: 'dlt'),
              FigSuggestion(name: 'default'),
              FigSuggestion(name: 'empty')
            ]
          )
          ]
        ),
        Option(
          name: '--dlt-pipeline',
          description: 'DLT pipeline for which to generate a SQLMesh project. Use alongside template: dlt',
          args: [
            Arg(
            name: 'pipeline'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'sql_dialect',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'render',
      description: 'Render a model\'s query, optionally expanding referenced models',
      options: [

        Option(
          name: '--dialect',
          description: 'The SQL dialect to render the query as',
          args: [
            Arg(
            name: 'dialect'
          )
          ]
        ),
        Option(
          name: '--no-format',
          description: 'Disable fancy formatting of the query'
        ),
        Option(
          name: '--start',
          description: 'Start time for the render',
          args: [
            Arg(
            name: 'start'
          )
          ]
        ),
        Option(
          name: '--end',
          description: 'End time for the render',
          args: [
            Arg(
            name: 'end'
          )
          ]
        ),
        Option(
          name: '--execution-time',
          description: 'Execution time for the render',
          args: [
            Arg(
            name: 'time'
          )
          ]
        ),
        Option(
          name: '--expand',
          description: 'Expand referenced models',
          args: [
            Arg(
            name: 'models',
            isVariadic: true
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'model'
      )
      ]
    ),
    Subcommand(
      name: 'evaluate',
      description: 'Evaluate a model and return a dataframe with a default limit of 1000',
      options: [

        Option(
          name: '--start',
          description: 'Start time for evaluation',
          args: [
            Arg(
            name: 'start'
          )
          ]
        ),
        Option(
          name: '--end',
          description: 'End time for evaluation',
          args: [
            Arg(
            name: 'end'
          )
          ]
        ),
        Option(
          name: '--execution-time',
          description: 'Execution time for evaluation',
          args: [
            Arg(
            name: 'time'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The number of rows which the query should be limited to',
          args: [
            Arg(
            name: 'limit'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'model'
      )
      ]
    ),
    Subcommand(
      name: 'format',
      description: 'Format all SQL models and audits',
      options: [

        Option(
          name: ['-t', '--transpile'],
          description: 'Transpile project models to the specified dialect',
          args: [
            Arg(
            name: 'dialect'
          )
          ]
        ),
        Option(
          name: '--append-newline',
          description: 'Include a newline at the end of each file'
        ),
        Option(
          name: '--no-rewrite-casts',
          description: 'Preserve the existing casts, without rewriting them to use the :: syntax'
        ),
        Option(
          name: '--normalize',
          description: 'Whether or not to normalize identifiers to lowercase'
        ),
        Option(
          name: '--pad',
          description: 'Determines the pad size in a formatted string',
          args: [
            Arg(
            name: 'size'
          )
          ]
        ),
        Option(
          name: '--indent',
          description: 'Determines the indentation size in a formatted string',
          args: [
            Arg(
            name: 'size'
          )
          ]
        ),
        Option(
          name: '--normalize-functions',
          description: 'Whether or not to normalize all function names',
          args: [
            Arg(
            name: 'mode',
            suggestions: [

              FigSuggestion(name: 'upper'),
              FigSuggestion(name: 'lower')
            ]
          )
          ]
        ),
        Option(
          name: '--leading-comma',
          description: 'Determines whether or not the comma is leading or trailing in select expressions'
        ),
        Option(
          name: '--max-text-width',
          description: 'The max number of characters in a segment before creating new lines in pretty mode',
          args: [
            Arg(
            name: 'width'
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Whether or not to check formatting (but not actually format anything)'
        )
      ],
      args: [
        Arg(
        name: 'paths',
        template: 'filepaths',
        isVariadic: true,
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'diff',
      description: 'Show the diff between the local state and the target environment',
      args: [
        Arg(
        name: 'environment'
      )
      ]
    ),
    Subcommand(
      name: 'plan',
      description: 'Apply local changes to the target environment',
      options: [

        Option(
          name: '--create-from',
          description: 'The environment to create the target environment from if it doesn\'t exist. Default: prod',
          args: [
            Arg(
            name: 'environment'
          )
          ]
        ),
        Option(
          name: '--skip-tests',
          description: 'Skip tests prior to generating the plan if they are defined'
        ),
        Option(
          name: '--restate-model',
          description: 'Restate data for specified models and models downstream from the one specified',
          args: [
            Arg(
            name: 'model'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: '--no-gaps',
          description: 'Ensure that new snapshots have no data gaps when comparing to existing snapshots'
        ),
        Option(
          name: '--skip-backfill',
          description: 'Skip the backfill step and only create a virtual update for the plan'
        ),
        Option(
          name: '--empty-backfill',
          description: 'Produce empty backfill'
        ),
        Option(
          name: '--forward-only',
          description: 'Create a plan for forward-only changes'
        ),
        Option(
          name: '--allow-destructive-model',
          description: 'Allow destructive forward-only changes to models whose names match the expression',
          args: [
            Arg(
            name: 'model'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: '--effective-from',
          description: 'The effective date from which to apply forward-only changes on production',
          args: [
            Arg(
            name: 'date'
          )
          ]
        ),
        Option(
          name: '--no-prompts',
          description: 'Disable interactive prompts for the backfill time range'
        ),
        Option(
          name: '--auto-apply',
          description: 'Automatically apply the new plan after creation'
        ),
        Option(
          name: '--no-auto-categorization',
          description: 'Disable automatic change categorization'
        ),
        Option(
          name: '--include-unmodified',
          description: 'Include unmodified models in the target environment'
        ),
        Option(
          name: '--select-model',
          description: 'Select specific model changes that should be included in the plan',
          args: [
            Arg(
            name: 'model'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: '--backfill-model',
          description: 'Backfill only the models whose names match the expression',
          args: [
            Arg(
            name: 'model'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: '--no-diff',
          description: 'Hide text differences for changed models'
        ),
        Option(
          name: '--run',
          description: 'Run latest intervals as part of the plan application (prod environment only)'
        ),
        Option(
          name: '--enable-preview',
          description: 'Enable preview for forward-only models when targeting a development environment'
        ),
        Option(
          name: '--verbose',
          description: 'Enable verbose output'
        )
      ],
      args: [
        Arg(
        name: 'environment',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Evaluate missing intervals for the target environment',
      options: [

        Option(
          name: '--start',
          description: 'Start time for the run',
          args: [
            Arg(
            name: 'start'
          )
          ]
        ),
        Option(
          name: '--end',
          description: 'End time for the run',
          args: [
            Arg(
            name: 'end'
          )
          ]
        ),
        Option(
          name: '--skip-janitor',
          description: 'Skip the janitor task'
        ),
        Option(
          name: '--ignore-cron',
          description: 'Run for all missing intervals, ignoring individual cron schedules'
        ),
        Option(
          name: '--select-model',
          description: 'Select specific models to run. Note: this always includes upstream dependencies',
          args: [
            Arg(
            name: 'model'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: '--exit-on-env-update',
          description: 'Exit with specified code if the run is interrupted by an update to the target environment',
          args: [
            Arg(
            name: 'code'
          )
          ]
        ),
        Option(
          name: '--no-auto-upstream',
          description: 'Do not automatically include upstream models. Only applicable when --select-model is used'
        )
      ],
      args: [
        Arg(
        name: 'environment',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'invalidate',
      description: 'Invalidate the target environment, forcing its removal during the next run of the janitor process',
      options: [

        Option(
          name: ['-s', '--sync'],
          description: 'Wait for the environment to be deleted before returning'
        )
      ],
      args: [
        Arg(
        name: 'environment'
      )
      ]
    ),
    Subcommand(
      name: 'janitor',
      description: 'Run the janitor process on-demand',
      options: [

        Option(
          name: '--ignore-ttl',
          description: 'Cleanup snapshots that are not referenced in any environment, regardless of when they\'re set to expire'
        )
      ]
    ),
    Subcommand(
      name: 'dag',
      description: 'Render the DAG as an html file',
      options: [

        Option(
          name: '--select-model',
          description: 'Select specific models to include in the dag',
          args: [
            Arg(
            name: 'model'
          )
          ],
          isRepeatable: true
        )
      ],
      args: [
        Arg(
        name: 'file'
      )
      ]
    ),
    Subcommand(
      name: 'create_test',
      description: 'Generate a unit test fixture for a given model',
      options: [

        Option(
          name: ['-q', '--query'],
          description: 'Queries that will be used to generate data for the model\'s dependencies',
          args: [

            Arg(
              name: 'name'
            ),
            Arg(
              name: 'query'
            )
          ],
          isRepeatable: true
        ),
        Option(
          name: ['-o', '--overwrite'],
          description: 'When true, the fixture file will be overwritten in case it already exists'
        ),
        Option(
          name: ['-v', '--var'],
          description: 'Key-value pairs that will define variables needed by the model',
          args: [

            Arg(
              name: 'key'
            ),
            Arg(
              name: 'value'
            )
          ],
          isRepeatable: true
        ),
        Option(
          name: ['-p', '--path'],
          description: 'The file path corresponding to the fixture, relative to the test directory',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The name of the test that will be created',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--include-ctes',
          description: 'When true, CTE fixtures will also be generated'
        )
      ],
      args: [
        Arg(
        name: 'model'
      )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Run model unit tests',
      options: [

        Option(
          name: ['-k', '--match-pattern'],
          description: 'Only run tests matching pattern',
          args: [
            Arg(
            name: 'pattern'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: '--verbose',
          description: 'Enable verbose output'
        ),
        Option(
          name: '--preserve-fixtures',
          description: 'Preserve the fixture tables in the testing database, useful for debugging'
        )
      ],
      args: [
        Arg(
        name: 'tests',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'audit',
      description: 'Run audits for the target model(s)',
      options: [

        Option(
          name: '--model',
          description: 'A model to audit',
          args: [
            Arg(
            name: 'model'
          )
          ],
          isRepeatable: true
        ),
        Option(
          name: '--start',
          description: 'Start time for the audit',
          args: [
            Arg(
            name: 'start'
          )
          ]
        ),
        Option(
          name: '--end',
          description: 'End time for the audit',
          args: [
            Arg(
            name: 'end'
          )
          ]
        ),
        Option(
          name: '--execution-time',
          description: 'Execution time for the audit',
          args: [
            Arg(
            name: 'time'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ui',
      description: 'Start a browser-based SQLMesh UI',
      options: [

        Option(
          name: '--host',
          description: 'Bind socket to this host',
          args: [
            Arg(
            name: 'host',
            defaultValue: '127.0.0.1'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'Bind socket to this port',
          args: [
            Arg(
            name: 'port',
            defaultValue: '8000'
          )
          ]
        ),
        Option(
          name: '--mode',
          description: 'Mode to start the UI in',
          args: [
            Arg(
            name: 'mode',
            suggestions: [

              FigSuggestion(name: 'ide'),
              FigSuggestion(name: 'catalog'),
              FigSuggestion(name: 'docs'),
              FigSuggestion(name: 'plan')
            ],
            defaultValue: 'ide'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Migrate SQLMesh to the current running version'
    ),
    Subcommand(
      name: 'rollback',
      description: 'Rollback SQLMesh to the previous migration'
    ),
    Subcommand(
      name: 'create_external_models',
      description: 'Create a schema file containing external model schemas',
      options: [

        Option(
          name: '--strict',
          description: 'Raise an error if the external model is missing in the database'
        )
      ]
    )
  ]
);
