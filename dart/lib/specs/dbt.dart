// Auto-generated from TypeScript source: dbt.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dbt` CLI
final FigSpec dbtSpec = FigSpec(
  name: 'dbt',
  description: 'CLI for dbt - Data Build Tool',
  subcommands: [

    Subcommand(
      name: 'build',
      description: 'Run models, test tests, snapshot snapshots, and seed seeds',
      options: [

        Option(
          name: '--full-refresh',
          description: 'Treat incremental models as table models'
        ),
        Option(
          name: ['-x', '--fail-fast'],
          description: 'Exit immediately if a single model fails to build'
        ),
        Option(
          name: '--profiles-dir',
          description: 'Set the profiles directory',
          args: [
            Arg(
            name: 'directory',
            description: 'Directory containing profiles.yml',
            template: 'folders',
            suggestions: [

              FigSuggestion(name: 'profiles')
            ]
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Use the selected profile',
          args: [
            Arg(
            name: 'name',
            description: 'Name of profile to use when running dbt project',
            suggestions: [

              FigSuggestion(name: 'default')
            ]
          )
          ]
        ),
        Option(
          name: '--target',
          description: 'Target profile configuration i.e. prod/dev',
          args: [
            Arg(
            name: 'profile',
            description: 'Target profile configuration (dev/prod)',
            suggestions: [

              FigSuggestion(name: 'dev'),
              FigSuggestion(name: 'prod')
            ]
          )
          ]
        ),
        Option(
          name: '--vars',
          description: 'Variable values to override dbt_project.yml',
          args: [
            Arg(
            name: 'variables',
            description: 'A short YAML string eg. \'{my_variable: my_value}\''
          )
          ]
        ),
        Option(
          name: '--threads',
          description: 'Number of concurrent database jobs',
          args: [
            Arg(
            name: 'THREAD'
          )
          ]
        ),
        Option(
          name: ['-s', '--select'],
          description: 'Select subset of models',
          args: [
            Arg(
            name: 'subset',
            description: 'Select subset of models',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Exclude subset of models',
          args: [
            Arg(
            name: 'subset',
            description: 'Exclude subset of models',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--bypass-cache',
          description: 'Bypass the cache'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Runs the models in a project',
      options: [

        Option(
          name: '--full-refresh',
          description: 'Treat incremental models as table models'
        ),
        Option(
          name: ['-x', '--fail-fast'],
          description: 'Exit immediately if a single model fails to build'
        ),
        Option(
          name: '--use-colors',
          description: 'Default value -- colorize run logs'
        ),
        Option(
          name: '--no-use-colors',
          description: 'Disable log colorizing'
        ),
        Option(
          name: '--profiles-dir',
          description: 'Set the profiles directory',
          args: [
            Arg(
            name: 'directory',
            description: 'Directory containing profiles.yml',
            template: 'folders',
            suggestions: [

              FigSuggestion(name: 'profiles')
            ]
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Select the profile to use',
          args: [
            Arg(
            name: 'name',
            description: 'Name of profile to use when running dbt project',
            suggestions: [

              FigSuggestion(name: 'default')
            ]
          )
          ]
        ),
        Option(
          name: '--target',
          description: 'The target profile',
          args: [
            Arg(
            name: 'Target profile',
            description: 'Target profile configuration (dev/prod)',
            suggestions: [

              FigSuggestion(name: 'dev'),
              FigSuggestion(name: 'prod')
            ]
          )
          ]
        ),
        Option(
          name: '--vars',
          description: 'Variable values to override dbt_project.yml',
          args: [
            Arg(
            name: 'variables',
            description: 'A short YAML string eg. \'{my_variable: my_value}\''
          )
          ]
        ),
        Option(
          name: '--threads',
          description: 'Number of concurrent database jobs',
          args: [
            Arg(
            name: 'thread'
          )
          ]
        ),
        Option(
          name: ['-s', '--select'],
          description: 'Select subset of models',
          args: [
            Arg(
            name: 'subset',
            description: 'Select subset of models',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Exclude subset of models',
          args: [
            Arg(
            name: 'subset',
            description: 'Exclude subset of models',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--bypass-cache',
          description: 'Bypass the cache'
        )
      ]
    ),
    Subcommand(
      name: 'debug',
      description: 'Debugs dbt connections and projects',
      options: [

        Option(
          name: '--config-dir'
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initializes a new dbt project',
      args: [
        Arg(
        name: 'name'
      )
      ],
      options: [

        Option(
          name: '--adapter',
          description: 'Add an adapter',
          args: [
            Arg(
            name: 'adapter',
            description: 'E.g. big quer'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'compile',
      description: 'Compiles (but does not run) the models in a project',
      options: [

        Option(
          name: '--profiles-dir',
          description: 'Set the profiles directory',
          args: [
            Arg(
            name: 'directory',
            description: 'Directory containing profiles.yml',
            template: 'folders',
            suggestions: [

              FigSuggestion(name: 'profiles')
            ]
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Select the profile to use',
          args: [
            Arg(
            name: 'name',
            description: 'Name of profile to use when running dbt project',
            suggestions: [

              FigSuggestion(name: 'default')
            ]
          )
          ]
        ),
        Option(
          name: '--target',
          description: 'The target profile',
          args: [
            Arg(
            name: 'Target profile',
            description: 'Target profile configuration (dev/prod)',
            suggestions: [

              FigSuggestion(name: 'dev'),
              FigSuggestion(name: 'prod')
            ]
          )
          ]
        ),
        Option(
          name: '--vars',
          description: 'Variable values to override dbt_project.yml',
          args: [
            Arg(
            name: 'Variable values',
            description: 'A short YAML string eg. \'{my_variable: my_value}\''
          )
          ]
        ),
        Option(
          name: '--threads',
          description: 'Number of concurrent database jobs',
          args: [
            Arg(
            name: 'THREAD'
          )
          ]
        ),
        Option(
          name: '--select',
          description: 'Select subset of models',
          args: [
            Arg(
            name: 'Select subset',
            description: 'Select subset of models',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Exclude subset of models',
          args: [
            Arg(
            name: 'Exclude subset',
            description: 'Exclude subset of models',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--bypass-cache',
          description: 'Bypass the cache'
        ),
        Option(
          name: '--selector',
          description: 'This flag specifies one or more named selectors, defined in a <selector name>.yml file',
          args: [
            Arg(
            name: 'YAML selector file name',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: '--defer',
          description: 'Defer'
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Executes tests defined in a project',
      options: [

        Option(
          name: ['-x', '--fail-fast'],
          description: 'Exit immediately if a single model fails to build'
        ),
        Option(
          name: '--profiles-dir',
          description: 'Set the profiles directory',
          args: [
            Arg(
            name: 'directory',
            description: 'Directory containing profiles.yml',
            template: 'folders',
            suggestions: [

              FigSuggestion(name: 'profiles')
            ]
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Select the profile to use',
          args: [
            Arg(
            name: 'name',
            description: 'Name of profile to use when running dbt project',
            suggestions: [

              FigSuggestion(name: 'default')
            ]
          )
          ]
        ),
        Option(
          name: '--data',
          description: 'Run only custom data tests'
        ),
        Option(
          name: '--schema',
          description: 'Run only schema tests'
        ),
        Option(
          name: ['-s', '--select'],
          description: 'Select subset of models',
          args: [
            Arg(
            name: 'subset',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Exclude subset of models',
          args: [
            Arg(
            name: 'subset',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--bypass-cache',
          description: 'Bypass the cache'
        ),
        Option(
          name: '--selector',
          description: 'This flag specifies one or more named selectors, defined in a <selector name>.yml file',
          args: [
            Arg(
            name: 'YAML selector file name',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: '--defer',
          description: 'Defer'
        )
      ]
    ),
    Subcommand(
      name: 'deps',
      description: 'Downloads dependencies for a project'
    ),
    Subcommand(
      name: 'snapshot',
      description: 'Executes \'snapshot\' jobs defined in a project',
      options: [

        Option(
          name: '--profiles-dir',
          description: 'Set the profiles directory',
          args: [
            Arg(
            name: 'profiles directory',
            description: 'Directory containing profiles.yml',
            template: 'folders',
            suggestions: [

              FigSuggestion(name: 'profiles')
            ]
          )
          ]
        ),
        Option(
          name: ['-x', '--fail-fast'],
          description: 'Exit immediately if a single model fails to build'
        ),
        Option(
          name: '--profile',
          description: 'Select the profile to use',
          args: [
            Arg(
            name: 'Profile name',
            description: 'Name of profile to use when running dbt project',
            suggestions: [

              FigSuggestion(name: 'default')
            ]
          )
          ]
        ),
        Option(
          name: '--target',
          description: 'The target profile',
          args: [
            Arg(
            name: 'Target profile',
            description: 'Target profile configuration (dev/prod)',
            suggestions: [

              FigSuggestion(name: 'dev'),
              FigSuggestion(name: 'prod')
            ]
          )
          ]
        ),
        Option(
          name: '--vars',
          description: 'Variable values to override dbt_project.yml',
          args: [
            Arg(
            name: 'Variable values',
            description: 'A short YAML string eg. \'{my_variable: my_value}\''
          )
          ]
        ),
        Option(
          name: '--threads',
          description: 'Number of concurrent database jobs',
          args: [
            Arg(
            name: 'threa'
          )
          ]
        ),
        Option(
          name: '--select',
          description: 'Select subset of models',
          args: [
            Arg(
            name: 'subset',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Exclude subset of models',
          args: [
            Arg(
            name: 'Exclude subset',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--bypass-cache',
          description: 'Bypass the cache'
        )
      ]
    ),
    Subcommand(
      name: 'clean',
      description: 'Deletes artifacts present in the dbt project'
    ),
    Subcommand(
      name: 'seed',
      description: 'Loads CSV files into the database',
      options: [

        Option(
          name: '--profiles-dir',
          description: 'Set the profiles directory',
          args: [
            Arg(
            name: 'profiles directory',
            description: 'Directory containing profiles.yml',
            template: 'folders',
            suggestions: [

              FigSuggestion(name: 'profiles')
            ]
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Select the profile to use',
          args: [
            Arg(
            name: 'Profile name',
            description: 'Name of profile to use when running dbt project',
            suggestions: [

              FigSuggestion(name: 'default')
            ]
          )
          ]
        ),
        Option(
          name: ['-x', '--fail-fast'],
          description: 'Exit immediately if a single model fails to build'
        ),
        Option(
          name: '--select',
          description: 'Run specific seeds',
          args: [
            Arg(
            name: 'Select subset',
            description: 'E.g. country_codes',
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Exclude subset of models',
          args: [
            Arg(
            name: 'Exclude subset',
            description: 'Exclude subset of models',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--bypass-cache',
          description: 'Bypass the cache'
        ),
        Option(
          name: '--selector',
          description: 'This flag specifies one or more named selectors, defined in a <selector name>.yml file',
          args: [
            Arg(
            name: 'YAML selector file name',
            isVariadic: true
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'docs',
      description: 'Generates documentation for a project',
      subcommands: [

        Subcommand(
          name: 'generate',
          description: 'Generate your project\'s documentation website',
          options: [

            Option(
              name: '--no-compile',
              description: 'Skip re-compilation'
            )
          ]
        ),
        Subcommand(
          name: 'serve',
          description: 'Serve your documentation on a local webserver (default prot 8000)',
          options: [

            Option(
              name: '--profiles-dir',
              description: 'Skip re-compilation',
              args: [
                Arg(
                name: 'PROFILES_DIR',
                description: 'Path to profiles directory',
                template: 'folders'
              )
              ]
            ),
            Option(
              name: '--profile',
              description: 'Choose a profile',
              args: [
                Arg(
                name: 'PROFILE NAME'
              )
              ]
            ),
            Option(
              name: '--target',
              description: 'The target profile',
              args: [
                Arg(
                name: 'Target profile',
                description: 'Target profile configuration (dev/prod)',
                suggestions: [

                  FigSuggestion(name: 'dev'),
                  FigSuggestion(name: 'prod')
                ]
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'Choose a port',
              args: [
                Arg(
                name: 'port number',
                description: 'Default is 8000'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'source',
      description: 'Provides tools for working with source data (including validating that sources are \'fresh\')',
      subcommands: [

        Subcommand(
          name: 'snapshot-freshness',
          options: [

            Option(
              name: ['-o', '--output'],
              description: 'Override the destination for sources.json',
              args: [
                Arg(
                name: 'FILEPATH',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'This flag specifies one or more selection-type arguments used to filter the nodes returned by the dbt ls command',
              args: [
                Arg(
                name: 'Select subset',
                isVariadic: true,
                suggestions: [

                  FigSuggestion(name: 'path:'),
                  FigSuggestion(name: 'tag:'),
                  FigSuggestion(name: 'config:'),
                  FigSuggestion(name: 'test_type:'),
                  FigSuggestion(name: 'test_name:')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run-operation',
      description: 'Runs arbitrary maintenance SQL against the database',
      args: [
        Arg(
        name: 'MACRO',
        description: 'Dbt will call this macro with the supplied arguments and then exit'
      )
      ],
      options: [

        Option(
          name: '--args',
          description: 'Supply arguments to the macro',
          args: [
            Arg(
            name: 'ARGS',
            description: 'A short YAML string eg. \'{my_variable: my_value}\''
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rpc',
      description: 'Runs an RPC server that clients can submit queries to',
      options: [

        Option(
          name: '--host',
          description: 'Specify the host to listen on',
          args: [
            Arg(
            name: 'HOST',
            description: 'Default: 0.0.0.0'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'The port to use',
          args: [
            Arg(
            name: 'PORT',
            description: 'Default: 8580'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['ls', 'list'],
      description: 'Lists resources defined in a dbt project',
      options: [

        Option(
          name: '--resource-type',
          description: 'This flag limits the \'resource types\' that dbt will return in the dbt ls command. By default, the following resources are included in the results of dbt ls: models, snapshots, seeds, tests, and sources',
          args: [
            Arg(
            name: 'resource-type',
            suggestions: [

              FigSuggestion(name: 'source'),
              FigSuggestion(name: 'analysis'),
              FigSuggestion(name: 'model'),
              FigSuggestion(name: 'snapshot'),
              FigSuggestion(name: 'test'),
              FigSuggestion(name: 'seed'),
              FigSuggestion(name: 'default'),
              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-s', '--select'],
          description: 'This flag specifies one or more selection-type arguments used to filter the nodes returned by the dbt ls command',
          args: [
            Arg(
            name: 'SELECTION_ARG',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Specify selectors that should be excluded from the list of returned nodes',
          args: [
            Arg(
            name: 'SELECTOR',
            isVariadic: true,
            suggestions: [

              FigSuggestion(name: 'path:'),
              FigSuggestion(name: 'tag:'),
              FigSuggestion(name: 'config:'),
              FigSuggestion(name: 'test_type:'),
              FigSuggestion(name: 'test_name:')
            ]
          )
          ]
        ),
        Option(
          name: '--selector',
          description: 'This flag specifies one or more named selectors, defined in a <selector name>.yml file',
          args: [
            Arg(
            name: 'YAML selector file name',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: '--output',
          description: 'This flag controls the format of output from the dbt ls command',
          args: [
            Arg(
            name: 'output',
            suggestions: [

              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'name'),
              FigSuggestion(name: 'path'),
              FigSuggestion(name: 'selector')
            ],
            isVariadic: true
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'parse',
      description: 'Parse dbt project and write detailed timing information'
    )
  ],
  options: [

    Option(
      name: '--version',
      description: 'Currently installed version'
    ),
    Option(
      name: ['-r', '--record-timing-info'],
      description: 'Create a new file to record timing info',
      args: [
        Arg(
        name: 'file name',
        description: 'Create a new file to record timing info'
      )
      ]
    ),
    Option(
      name: ['-d', '--debug'],
      description: 'Redirect debug logs to standard out'
    ),
    Option(
      name: '--log-format',
      description: 'Specify how dbt\'s logs should be formatted',
      args: [
        Arg(
        name: 'log format',
        suggestions: [

          FigSuggestion(name: 'text'),
          FigSuggestion(name: 'json'),
          FigSuggestion(name: 'default')
        ]
      )
      ]
    ),
    Option(
      name: '--no-write-json',
      description: 'Prevent dbt from writing JSOn artifacts to the \'target/\' directory'
    ),
    Option(
      name: ['-S', '--strict'],
      description: 'Perform extra validation of dbt objects and internal consistency checks during compilation. Use only during development'
    ),
    Option(
      name: '--warn-error',
      description: 'Convert dbt warnings into errors'
    ),
    Option(
      name: '--partial-parse',
      description: 'Configure partial parsing for your project'
    ),
    Option(
      name: '--no-partial-parse',
      description: 'Turn off partial parsing for your project'
    ),
    Option(
      name: '--use-colors',
      description: 'Default value -- colorize run logs'
    ),
    Option(
      name: '--no-use-colors',
      description: 'Disable log colorizing'
    )
  ]
);
