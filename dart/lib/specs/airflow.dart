// Auto-generated from TypeScript source: airflow.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `airflow` CLI
final FigSpec airflowSpec = FigSpec(
  name: 'airflow',
  description: 'Subcommand',
  subcommands: [

    Subcommand(
      name: 'celery',
      description: 'Celery components',
      subcommands: [

        Subcommand(
          name: 'flower',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-A', '--basic-auth'],
              description: 'Securing Flower with Basic Authentication. Accepts user:password pairs separated by a comma. Example: flower_basic_auth = user1:password1,user2:password2',
              args: [
                Arg(
                name: 'basic_auth',
                description: 'Securing Flower with Basic Authentication. Accepts user:password pairs separated by a comma. Example: flower_basic_auth = user1:password1,user2:password2'
              )
              ]
            ),
            Option(
              name: ['-a', '--broker-api'],
              description: 'Broker API',
              args: [
                Arg(
                name: 'broker_api',
                description: 'Broker API'
              )
              ]
            ),
            Option(
              name: ['-D', '--daemon'],
              description: 'Daemonize instead of running in the foreground'
            ),
            Option(
              name: ['-c', '--flower-conf'],
              description: 'Configuration file for flower',
              args: [
                Arg(
                name: 'flower_conf',
                description: 'Configuration file for flower'
              )
              ]
            ),
            Option(
              name: ['-H', '--hostname'],
              description: 'Set the hostname on which to run the server',
              args: [
                Arg(
                name: 'hostname',
                description: 'Set the hostname on which to run the server'
              )
              ]
            ),
            Option(
              name: ['-l', '--log-file'],
              description: 'Location of the log file',
              args: [
                Arg(
                name: 'log_file',
                description: 'Location of the log file'
              )
              ]
            ),
            Option(
              name: '--pid',
              description: 'PID file location',
              args: [
                Arg(
                isOptional: true,
                name: 'pid',
                description: 'PID file location'
              )
              ]
            ),
            Option(
              name: ['-p', '--port'],
              description: 'The port on which to run the server',
              args: [
                Arg(
                name: 'port',
                description: 'The port on which to run the server'
              )
              ]
            ),
            Option(
              name: '--stderr',
              description: 'Redirect stderr to this file',
              args: [
                Arg(
                name: 'stderr',
                description: 'Redirect stderr to this file'
              )
              ]
            ),
            Option(
              name: '--stdout',
              description: 'Redirect stdout to this file',
              args: [
                Arg(
                name: 'stdout',
                description: 'Redirect stdout to this file'
              )
              ]
            ),
            Option(
              name: ['-u', '--url-prefix'],
              description: 'URL prefix for Flower',
              args: [
                Arg(
                name: 'url_prefix',
                description: 'URL prefix for Flower'
              )
              ]
            )
          ],
          description: 'Start a Celery Flower'
        ),
        Subcommand(
          name: 'stop',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--pid',
              description: 'PID file location',
              args: [
                Arg(
                isOptional: true,
                name: 'pid',
                description: 'PID file location'
              )
              ]
            )
          ],
          description: 'Stop the Celery worker gracefully'
        ),
        Subcommand(
          name: 'worker',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-a', '--autoscale'],
              description: 'Minimum and Maximum number of worker to autoscale',
              args: [
                Arg(
                name: 'autoscale',
                description: 'Minimum and Maximum number of worker to autoscale'
              )
              ]
            ),
            Option(
              name: ['-H', '--celery-hostname'],
              description: 'Set the hostname of celery worker if you have multiple workers on a single machine',
              args: [
                Arg(
                name: 'celery_hostname',
                description: 'Set the hostname of celery worker if you have multiple workers on a single machine'
              )
              ]
            ),
            Option(
              name: ['-c', '--concurrency'],
              description: 'The number of worker processes',
              args: [
                Arg(
                name: 'concurrency',
                description: 'The number of worker processes'
              )
              ]
            ),
            Option(
              name: ['-D', '--daemon'],
              description: 'Daemonize instead of running in the foreground'
            ),
            Option(
              name: ['-l', '--log-file'],
              description: 'Location of the log file',
              args: [
                Arg(
                name: 'log_file',
                description: 'Location of the log file'
              )
              ]
            ),
            Option(
              name: '--pid',
              description: 'PID file location',
              args: [
                Arg(
                isOptional: true,
                name: 'pid',
                description: 'PID file location'
              )
              ]
            ),
            Option(
              name: ['-q', '--queues'],
              description: 'Comma delimited list of queues to serve',
              args: [
                Arg(
                name: 'queues',
                description: 'Comma delimited list of queues to serve'
              )
              ]
            ),
            Option(
              name: ['-s', '--skip-serve-logs'],
              description: 'Don\'t start the serve logs process along with the workers'
            ),
            Option(
              name: '--stderr',
              description: 'Redirect stderr to this file',
              args: [
                Arg(
                name: 'stderr',
                description: 'Redirect stderr to this file'
              )
              ]
            ),
            Option(
              name: '--stdout',
              description: 'Redirect stdout to this file',
              args: [
                Arg(
                name: 'stdout',
                description: 'Redirect stdout to this file'
              )
              ]
            ),
            Option(
              name: ['-u', '--umask'],
              description: 'Set the umask of celery worker in daemon mode',
              args: [
                Arg(
                name: 'umask',
                description: 'Set the umask of celery worker in daemon mode'
              )
              ]
            ),
            Option(
              name: '--without-gossip',
              description: 'Don\'t subscribe to other workers events'
            ),
            Option(
              name: '--without-mingle',
              description: 'Don\'t synchronize with other workers at start-up'
            )
          ],
          description: 'Start a Celery worker node'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'cheat-sheet',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Make logging output more verbose'
        )
      ],
      description: 'Display cheat sheet'
    ),
    Subcommand(
      name: 'config',
      description: 'View configuration',
      subcommands: [

        Subcommand(
          name: 'get-value',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          args: [

            Arg(
              name: 'section',
              description: 'The section name'
            ),
            Arg(
              name: 'option',
              description: 'The option name'
            )
          ],
          description: 'Print the value of the configuration'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--color',
              description: 'Do emit colored output (default: auto)',
              args: [
                Arg(
                name: 'color',
                description: 'Do emit colored output (default: auto)',
                suggestions: [

                  FigSuggestion(name: 'off'),
                  FigSuggestion(name: 'auto'),
                  FigSuggestion(name: 'on')
                ]
              )
              ]
            )
          ],
          description: 'List options for the configuration'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'connections',
      description: 'Manage connections',
      subcommands: [

        Subcommand(
          name: 'add',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--conn-description',
              description: 'Connection description, optional when adding a connection',
              args: [
                Arg(
                name: 'conn_description',
                description: 'Connection description, optional when adding a connection'
              )
              ]
            ),
            Option(
              name: '--conn-extra',
              description: 'Connection `Extra` field, optional when adding a connection',
              args: [
                Arg(
                name: 'conn_extra',
                description: 'Connection `Extra` field, optional when adding a connection'
              )
              ]
            ),
            Option(
              name: '--conn-host',
              description: 'Connection host, optional when adding a connection',
              args: [
                Arg(
                name: 'conn_host',
                description: 'Connection host, optional when adding a connection'
              )
              ]
            ),
            Option(
              name: '--conn-json',
              description: 'Connection JSON, required to add a connection using JSON representation',
              args: [
                Arg(
                name: 'conn_json',
                description: 'Connection JSON, required to add a connection using JSON representation'
              )
              ]
            ),
            Option(
              name: '--conn-login',
              description: 'Connection login, optional when adding a connection',
              args: [
                Arg(
                name: 'conn_login',
                description: 'Connection login, optional when adding a connection'
              )
              ]
            ),
            Option(
              name: '--conn-password',
              description: 'Connection password, optional when adding a connection',
              args: [
                Arg(
                name: 'conn_password',
                description: 'Connection password, optional when adding a connection'
              )
              ]
            ),
            Option(
              name: '--conn-port',
              description: 'Connection port, optional when adding a connection',
              args: [
                Arg(
                name: 'conn_port',
                description: 'Connection port, optional when adding a connection'
              )
              ]
            ),
            Option(
              name: '--conn-schema',
              description: 'Connection schema, optional when adding a connection',
              args: [
                Arg(
                name: 'conn_schema',
                description: 'Connection schema, optional when adding a connection'
              )
              ]
            ),
            Option(
              name: '--conn-type',
              description: 'Connection type, required to add a connection without conn_uri',
              args: [
                Arg(
                name: 'conn_type',
                description: 'Connection type, required to add a connection without conn_uri'
              )
              ]
            ),
            Option(
              name: '--conn-uri',
              description: 'Connection URI, required to add a connection without conn_type',
              args: [
                Arg(
                name: 'conn_uri',
                description: 'Connection URI, required to add a connection without conn_type'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'conn_id',
            description: 'Connection id, required to get/add/delete a connection'
          )
          ],
          description: 'Add a connection'
        ),
        Subcommand(
          name: 'delete',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--color',
              description: 'Do emit colored output (default: auto)',
              args: [
                Arg(
                name: 'color',
                description: 'Do emit colored output (default: auto)',
                suggestions: [

                  FigSuggestion(name: 'off'),
                  FigSuggestion(name: 'auto'),
                  FigSuggestion(name: 'on')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'conn_id',
            description: 'Connection id, required to get/add/delete a connection'
          )
          ],
          description: 'Delete a connection'
        ),
        Subcommand(
          name: 'export',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--file-format',
              description: 'File format for the export',
              args: [
                Arg(
                name: 'file_format',
                description: 'File format for the export',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'env')
                ]
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Deprecated -- use `--file-format` instead. File format to use for the export',
              args: [
                Arg(
                name: 'format',
                description: 'Deprecated -- use `--file-format` instead. File format to use for the export',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'env')
                ]
              )
              ]
            ),
            Option(
              name: '--serialization-format',
              description: 'When exporting as `.env` format, defines how connections should be serialized. Default is `uri`',
              args: [
                Arg(
                name: 'serialization_format',
                description: 'When exporting as `.env` format, defines how connections should be serialized. Default is `uri`',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'uri')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'file',
            description: 'Output file path for exporting the connections'
          )
          ],
          description: 'Export all connections'
        ),
        Subcommand(
          name: 'get',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--color',
              description: 'Do emit colored output (default: auto)',
              args: [
                Arg(
                name: 'color',
                description: 'Do emit colored output (default: auto)',
                suggestions: [

                  FigSuggestion(name: 'off'),
                  FigSuggestion(name: 'auto'),
                  FigSuggestion(name: 'on')
                ]
              )
              ]
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'conn_id',
            description: 'Connection id, required to get/add/delete a connection'
          )
          ],
          description: 'Get a connection'
        ),
        Subcommand(
          name: 'import',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          args: [
            Arg(
            name: 'file',
            description: 'Import connections from a file'
          )
          ],
          description: 'Import connections from a file'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--conn-id',
              description: 'If passed, only items with the specified connection ID will be displayed',
              args: [
                Arg(
                name: 'conn_id',
                description: 'If passed, only items with the specified connection ID will be displayed'
              )
              ]
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List connections'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'dag-processor',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: ['-D', '--daemon'],
          description: 'Daemonize instead of running in the foreground'
        ),
        Option(
          name: ['-p', '--do-pickle'],
          description: 'Attempt to pickle the DAG object to send over to the workers, instead of letting workers run their version of the code'
        ),
        Option(
          name: ['-l', '--log-file'],
          description: 'Location of the log file',
          args: [
            Arg(
            name: 'log_file',
            description: 'Location of the log file'
          )
          ]
        ),
        Option(
          name: ['-n', '--num-runs'],
          description: 'Set the number of runs to execute before exiting',
          args: [
            Arg(
            name: 'num_runs',
            description: 'Set the number of runs to execute before exiting'
          )
          ]
        ),
        Option(
          name: '--pid',
          description: 'PID file location',
          args: [
            Arg(
            isOptional: true,
            name: 'pid',
            description: 'PID file location'
          )
          ]
        ),
        Option(
          name: '--stderr',
          description: 'Redirect stderr to this file',
          args: [
            Arg(
            name: 'stderr',
            description: 'Redirect stderr to this file'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'Redirect stdout to this file',
          args: [
            Arg(
            name: 'stdout',
            description: 'Redirect stdout to this file'
          )
          ]
        ),
        Option(
          name: ['-S', '--subdir'],
          description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
          args: [
            Arg(
            name: 'subdir',
            description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
          )
          ]
        )
      ],
      description: 'Start a standalone Dag Processor instance'
    ),
    Subcommand(
      name: 'dags',
      description: 'Manage DAGs',
      subcommands: [

        Subcommand(
          name: 'backfill',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-c', '--conf'],
              description: 'JSON string that gets pickled into the DagRun\'s conf attribute',
              args: [
                Arg(
                name: 'conf',
                description: 'JSON string that gets pickled into the DagRun\'s conf attribute'
              )
              ]
            ),
            Option(
              name: '--continue-on-failures',
              description: 'If set, the backfill will keep going even if some of the tasks failed'
            ),
            Option(
              name: '--delay-on-limit',
              description: 'Amount of time in seconds to wait when the limit on maximum active dag runs (max_active_runs) has been reached before trying to execute a dag run again',
              args: [
                Arg(
                name: 'delay_on_limit',
                description: 'Amount of time in seconds to wait when the limit on maximum active dag runs (max_active_runs) has been reached before trying to execute a dag run again'
              )
              ]
            ),
            Option(
              name: ['-x', '--donot-pickle'],
              description: 'Do not attempt to pickle the DAG object to send over to the workers, just tell the workers to run their version of the code'
            ),
            Option(
              name: ['-n', '--dry-run'],
              description: 'Perform a dry run for each task. Only renders Template Fields for each task, nothing else'
            ),
            Option(
              name: ['-e', '--end-date'],
              description: 'Override end_date YYYY-MM-DD',
              args: [
                Arg(
                name: 'end_date',
                description: 'Override end_date YYYY-MM-DD'
              )
              ]
            ),
            Option(
              name: ['-i', '--ignore-dependencies'],
              description: 'Skip upstream tasks, run only the tasks matching the regexp. Only works in conjunction with task_regex'
            ),
            Option(
              name: ['-I', '--ignore-first-depends-on-past'],
              description: 'Ignores depends_on_past dependencies for the first set of tasks only (subsequent executions in the backfill DO respect depends_on_past)'
            ),
            Option(
              name: ['-l', '--local'],
              description: 'Run the task using the LocalExecutor'
            ),
            Option(
              name: ['-m', '--mark-success'],
              description: 'Mark jobs as succeeded without running them'
            ),
            Option(
              name: '--pool',
              description: 'Resource pool to use',
              args: [
                Arg(
                name: 'pool',
                description: 'Resource pool to use'
              )
              ]
            ),
            Option(
              name: '--rerun-failed-tasks',
              description: 'If set, the backfill will auto-rerun all the failed tasks for the backfill date range instead of throwing exceptions'
            ),
            Option(
              name: '--reset-dagruns',
              description: 'If set, the backfill will delete existing backfill-related DAG runs and start anew with fresh, running DAG runs'
            ),
            Option(
              name: ['-B', '--run-backwards'],
              description: 'If set, the backfill will run tasks from the most recent day first.  if there are tasks that depend_on_past this option will throw an exception'
            ),
            Option(
              name: ['-s', '--start-date'],
              description: 'Override start_date YYYY-MM-DD',
              args: [
                Arg(
                name: 'start_date',
                description: 'Override start_date YYYY-MM-DD'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-t', '--task-regex'],
              description: 'The regex to filter specific task_ids to backfill (optional)',
              args: [
                Arg(
                name: 'task_regex',
                description: 'The regex to filter specific task_ids to backfill (optional)'
              )
              ]
            ),
            Option(
              name: '--treat-dag-as-regex',
              description: 'If set, dag_id will be treated as regex instead of an exact string'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            ),
            Option(
              name: ['-y', '--yes'],
              description: 'Do not prompt to confirm. Use with care!'
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'Run subsections of a DAG for a specified date range'
        ),
        Subcommand(
          name: 'delete',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-y', '--yes'],
              description: 'Do not prompt to confirm. Use with care!'
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'Delete all DB records related to the specified DAG'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List all the DAGs'
        ),
        Subcommand(
          name: 'list-import-errors',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List all the DAGs that have import errors'
        ),
        Subcommand(
          name: 'list-jobs',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-d', '--dag-id'],
              description: 'The id of the dag',
              args: [
                Arg(
                name: 'dag_id',
                description: 'The id of the dag'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Return a limited number of records',
              args: [
                Arg(
                name: 'limit',
                description: 'Return a limited number of records'
              )
              ]
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'Only list the dag runs corresponding to the state',
              args: [
                Arg(
                name: 'state',
                description: 'Only list the dag runs corresponding to the state'
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List the jobs'
        ),
        Subcommand(
          name: 'list-runs',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-d', '--dag-id'],
              description: 'The id of the dag',
              args: [
                Arg(
                name: 'dag_id',
                description: 'The id of the dag'
              )
              ]
            ),
            Option(
              name: ['-e', '--end-date'],
              description: 'Override end_date YYYY-MM-DD',
              args: [
                Arg(
                name: 'end_date',
                description: 'Override end_date YYYY-MM-DD'
              )
              ]
            ),
            Option(
              name: '--no-backfill',
              description: 'Filter all the backfill dagruns given the dag id'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-s', '--start-date'],
              description: 'Override start_date YYYY-MM-DD',
              args: [
                Arg(
                name: 'start_date',
                description: 'Override start_date YYYY-MM-DD'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'Only list the dag runs corresponding to the state',
              args: [
                Arg(
                name: 'state',
                description: 'Only list the dag runs corresponding to the state'
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List DAG runs given a DAG id'
        ),
        Subcommand(
          name: 'next-execution',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-n', '--num-executions'],
              description: 'The number of next execution datetimes to show',
              args: [
                Arg(
                name: 'num_executions',
                description: 'The number of next execution datetimes to show'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'Get the next execution datetimes of a DAG'
        ),
        Subcommand(
          name: 'pause',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'Pause a DAG'
        ),
        Subcommand(
          name: 'report',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'Show DagBag loading report'
        ),
        Subcommand(
          name: 'reserialize',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--clear-only',
              description: 'If passed, serialized DAGs will be cleared but not reserialized'
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          description: 'Reserialize all DAGs by parsing the DagBag files'
        ),
        Subcommand(
          name: 'show',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--imgcat',
              description: 'Displays graph using the imgcat tool'
            ),
            Option(
              name: ['-s', '--save'],
              description: 'Saves the result to the indicated file',
              args: [
                Arg(
                name: 'save',
                description: 'Saves the result to the indicated file'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'Displays DAG\'s tasks with their dependencies'
        ),
        Subcommand(
          name: 'show-dependencies',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--imgcat',
              description: 'Displays graph using the imgcat tool'
            ),
            Option(
              name: ['-s', '--save'],
              description: 'Saves the result to the indicated file',
              args: [
                Arg(
                name: 'save',
                description: 'Saves the result to the indicated file'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          description: 'Displays DAGs with their dependencies'
        ),
        Subcommand(
          name: 'state',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              name: 'execution_date',
              description: 'The execution date of the DAG'
            )
          ],
          description: 'Get the status of a dag run'
        ),
        Subcommand(
          name: 'test',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-c', '--conf'],
              description: 'JSON string that gets pickled into the DagRun\'s conf attribute',
              args: [
                Arg(
                name: 'conf',
                description: 'JSON string that gets pickled into the DagRun\'s conf attribute'
              )
              ]
            ),
            Option(
              name: '--imgcat-dagrun',
              description: 'After completing the dag run, prints a diagram on the screen for the current DAG Run using the imgcat tool.\n'
            ),
            Option(
              name: '--save-dagrun',
              description: 'After completing the backfill, saves the diagram for current DAG Run to the indicated file.\n\n',
              args: [
                Arg(
                name: 'save_dagrun',
                description: 'After completing the backfill, saves the diagram for current DAG Run to the indicated file.\n\n'
              )
              ]
            ),
            Option(
              name: '--show-dagrun',
              description: 'After completing the backfill, shows the diagram for current DAG Run.\n\nThe diagram is in DOT language\n'
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              isOptional: true,
              name: 'execution_date',
              description: 'The execution date of the DAG (optional)'
            )
          ],
          description: 'Execute one single DagRun'
        ),
        Subcommand(
          name: 'trigger',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-c', '--conf'],
              description: 'JSON string that gets pickled into the DagRun\'s conf attribute',
              args: [
                Arg(
                name: 'conf',
                description: 'JSON string that gets pickled into the DagRun\'s conf attribute'
              )
              ]
            ),
            Option(
              name: ['-e', '--exec-date'],
              description: 'The execution date of the DAG',
              args: [
                Arg(
                name: 'exec_date',
                description: 'The execution date of the DAG'
              )
              ]
            ),
            Option(
              name: ['-r', '--run-id'],
              description: 'Helps to identify this run',
              args: [
                Arg(
                name: 'run_id',
                description: 'Helps to identify this run'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'Trigger a DAG run'
        ),
        Subcommand(
          name: 'unpause',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'Resume a paused DAG'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'db',
      description: 'Database operations',
      subcommands: [

        Subcommand(
          name: 'check',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          description: 'Check if the database can be reached'
        ),
        Subcommand(
          name: 'check-migrations',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-t', '--migration-wait-timeout'],
              description: 'Timeout to wait for db to migrate',
              args: [
                Arg(
                name: 'migration_wait_timeout',
                description: 'Timeout to wait for db to migrate'
              )
              ]
            )
          ],
          description: 'Check if migration have finished'
        ),
        Subcommand(
          name: 'clean',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--clean-before-timestamp',
              description: 'The date or timestamp before which data should be purged.\nIf no timezone info is supplied then dates are assumed to be in airflow default timezone.\nExample: \'2022-01-01 00:00:00+01:00\'',
              args: [
                Arg(
                name: 'clean_before_timestamp',
                description: 'The date or timestamp before which data should be purged.\nIf no timezone info is supplied then dates are assumed to be in airflow default timezone.\nExample: \'2022-01-01 00:00:00+01:00\''
              )
              ]
            ),
            Option(
              name: '--dry-run',
              description: 'Perform a dry run'
            ),
            Option(
              name: '--skip-archive',
              description: 'Don\'t preserve purged records in an archive table'
            ),
            Option(
              name: ['-t', '--tables'],
              description: 'Table names to perform maintenance on (use comma-separated list).\nOptions: [\'callback_request\', \'celery_taskmeta\', \'celery_tasksetmeta\', \'dag\', \'dag_run\', \'dataset_event\', \'import_error\', \'job\', \'log\', \'rendered_task_instance_fields\', \'sla_miss\', \'task_fail\', \'task_instance\', \'task_reschedule\', \'xcom\']',
              args: [
                Arg(
                name: 'tables',
                description: 'Table names to perform maintenance on (use comma-separated list).\nOptions: [\'callback_request\', \'celery_taskmeta\', \'celery_tasksetmeta\', \'dag\', \'dag_run\', \'dataset_event\', \'import_error\', \'job\', \'log\', \'rendered_task_instance_fields\', \'sla_miss\', \'task_fail\', \'task_instance\', \'task_reschedule\', \'xcom\']'
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            ),
            Option(
              name: ['-y', '--yes'],
              description: 'Do not prompt to confirm. Use with care!'
            )
          ],
          description: 'Purge old records in metastore tables'
        ),
        Subcommand(
          name: 'downgrade',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--from-revision',
              description: '(Optional) If generating sql, may supply a *from* Alembic revision',
              args: [
                Arg(
                name: 'from_revision',
                description: '(Optional) If generating sql, may supply a *from* Alembic revision'
              )
              ]
            ),
            Option(
              name: '--from-version',
              description: '(Optional) If generating sql, may supply a *from* version',
              args: [
                Arg(
                name: 'from_version',
                description: '(Optional) If generating sql, may supply a *from* version'
              )
              ]
            ),
            Option(
              name: ['-s', '--show-sql-only'],
              description: 'Don\'t actually run migrations; just print out sql scripts for offline migration. Required if using either `--from-version` or `--from-version`'
            ),
            Option(
              name: ['-r', '--to-revision'],
              description: 'The Alembic revision to downgrade to. Note: must provide either `--to-revision` or `--to-version`',
              args: [
                Arg(
                name: 'to_revision',
                description: 'The Alembic revision to downgrade to. Note: must provide either `--to-revision` or `--to-version`'
              )
              ]
            ),
            Option(
              name: ['-n', '--to-version'],
              description: '(Optional) If provided, only run migrations up to this version',
              args: [
                Arg(
                name: 'to_version',
                description: '(Optional) If provided, only run migrations up to this version'
              )
              ]
            ),
            Option(
              name: ['-y', '--yes'],
              description: 'Do not prompt to confirm. Use with care!'
            )
          ],
          description: 'Downgrade the schema of the metadata database'
        ),
        Subcommand(
          name: 'init',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          description: 'Initialize the metadata database'
        ),
        Subcommand(
          name: 'reset',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-s', '--skip-init'],
              description: 'Only remove tables; do not perform db init'
            ),
            Option(
              name: ['-y', '--yes'],
              description: 'Do not prompt to confirm. Use with care!'
            )
          ],
          description: 'Burn down and rebuild the metadata database'
        ),
        Subcommand(
          name: 'shell',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          description: 'Runs a shell to access the database'
        ),
        Subcommand(
          name: 'upgrade',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--from-revision',
              description: '(Optional) If generating sql, may supply a *from* Alembic revision',
              args: [
                Arg(
                name: 'from_revision',
                description: '(Optional) If generating sql, may supply a *from* Alembic revision'
              )
              ]
            ),
            Option(
              name: '--from-version',
              description: '(Optional) If generating sql, may supply a *from* version',
              args: [
                Arg(
                name: 'from_version',
                description: '(Optional) If generating sql, may supply a *from* version'
              )
              ]
            ),
            Option(
              name: ['-s', '--show-sql-only'],
              description: 'Don\'t actually run migrations; just print out sql scripts for offline migration. Required if using either `--from-version` or `--from-version`'
            ),
            Option(
              name: ['-r', '--to-revision'],
              description: '(Optional) If provided, only run migrations up to and including this Alembic revision',
              args: [
                Arg(
                name: 'to_revision',
                description: '(Optional) If provided, only run migrations up to and including this Alembic revision'
              )
              ]
            ),
            Option(
              name: ['-n', '--to-version'],
              description: '(Optional) The airflow version to upgrade to. Note: must provide either `--to-revision` or `--to-version`',
              args: [
                Arg(
                name: 'to_version',
                description: '(Optional) The airflow version to upgrade to. Note: must provide either `--to-revision` or `--to-version`'
              )
              ]
            )
          ],
          description: 'Upgrade the metadata database to latest version'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'info',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: '--anonymize',
          description: 'Minimize any personal identifiable information. Use it when sharing output with others'
        ),
        Option(
          name: '--file-io',
          description: 'Send output to file.io service and returns link'
        ),
        Option(
          name: ['-o', '--output'],
          description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
          args: [
            Arg(
            name: '(table, json, yaml, plain)',
            description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
            suggestions: [

              FigSuggestion(name: 'table'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml'),
              FigSuggestion(name: 'plain')
            ]
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Make logging output more verbose'
        )
      ],
      description: 'Show information about current Airflow and environment'
    ),
    Subcommand(
      name: 'jobs',
      description: 'Manage jobs',
      subcommands: [

        Subcommand(
          name: 'check',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--allow-multiple',
              description: 'If passed, this command will be successful even if multiple matching alive jobs are found'
            ),
            Option(
              name: '--hostname',
              description: 'The hostname of job(s) that will be checked',
              args: [
                Arg(
                name: 'hostname',
                description: 'The hostname of job(s) that will be checked'
              )
              ]
            ),
            Option(
              name: '--job-type',
              description: 'The type of job(s) that will be checked',
              args: [
                Arg(
                name: 'job_type',
                description: 'The type of job(s) that will be checked',
                suggestions: [

                  FigSuggestion(name: 'BackfillJob'),
                  FigSuggestion(name: 'LocalTaskJob'),
                  FigSuggestion(name: 'SchedulerJob'),
                  FigSuggestion(name: 'TriggererJob')
                ]
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'The number of recent jobs that will be checked. To disable limit, set 0',
              args: [
                Arg(
                name: 'limit',
                description: 'The number of recent jobs that will be checked. To disable limit, set 0'
              )
              ]
            )
          ],
          description: 'Checks if job(s) are still alive'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'kerberos',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: ['-D', '--daemon'],
          description: 'Daemonize instead of running in the foreground'
        ),
        Option(
          name: ['-k', '--keytab'],
          description: 'Keytab',
          args: [
            Arg(
            isOptional: true,
            name: 'keytab',
            description: 'Keytab'
          )
          ]
        ),
        Option(
          name: ['-l', '--log-file'],
          description: 'Location of the log file',
          args: [
            Arg(
            name: 'log_file',
            description: 'Location of the log file'
          )
          ]
        ),
        Option(
          name: '--pid',
          description: 'PID file location',
          args: [
            Arg(
            isOptional: true,
            name: 'pid',
            description: 'PID file location'
          )
          ]
        ),
        Option(
          name: '--stderr',
          description: 'Redirect stderr to this file',
          args: [
            Arg(
            name: 'stderr',
            description: 'Redirect stderr to this file'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'Redirect stdout to this file',
          args: [
            Arg(
            name: 'stdout',
            description: 'Redirect stdout to this file'
          )
          ]
        )
      ],
      args: [
        Arg(
        isOptional: true,
        name: 'principal',
        description: 'Kerberos principal'
      )
      ],
      description: 'Start a kerberos ticket renewer'
    ),
    Subcommand(
      name: 'kubernetes',
      description: 'Tools to help run the KubernetesExecutor',
      subcommands: [

        Subcommand(
          name: 'cleanup-pods',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--min-pending-minutes',
              description: 'Pending pods created before the time interval are to be cleaned up, measured in minutes. Default value is 30(m). The minimum value is 5(m)',
              args: [
                Arg(
                name: 'min_pending_minutes',
                description: 'Pending pods created before the time interval are to be cleaned up, measured in minutes. Default value is 30(m). The minimum value is 5(m)'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Kubernetes Namespace. Default value is `[kubernetes] namespace` in configuration',
              args: [
                Arg(
                name: 'namespace',
                description: 'Kubernetes Namespace. Default value is `[kubernetes] namespace` in configuration'
              )
              ]
            )
          ],
          description: 'Clean up Kubernetes pods (created by KubernetesExecutor/KubernetesPodOperator) in evicted/failed/succeeded/pending states'
        ),
        Subcommand(
          name: 'generate-dag-yaml',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output-path'],
              description: 'The output for generated yaml files',
              args: [
                Arg(
                name: 'output_path',
                description: 'The output for generated yaml files'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              name: 'execution_date',
              description: 'The execution date of the DAG'
            )
          ],
          description: 'Generate YAML files for all tasks in DAG. Useful for debugging tasks without launching into a cluster'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'plugins',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: ['-o', '--output'],
          description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
          args: [
            Arg(
            name: '(table, json, yaml, plain)',
            description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
            suggestions: [

              FigSuggestion(name: 'table'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml'),
              FigSuggestion(name: 'plain')
            ]
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Make logging output more verbose'
        )
      ],
      description: 'Dump information about loaded plugins'
    ),
    Subcommand(
      name: 'pools',
      description: 'Manage pools',
      subcommands: [

        Subcommand(
          name: 'delete',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'Pool name'
          )
          ],
          description: 'Delete pool'
        ),
        Subcommand(
          name: 'export',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          args: [
            Arg(
            name: 'FILEPATH',
            description: 'Export all pools to JSON file'
          )
          ],
          description: 'Export all pools'
        ),
        Subcommand(
          name: 'get',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'Pool name'
          )
          ],
          description: 'Get pool size'
        ),
        Subcommand(
          name: 'import',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'FILEPATH',
            description: 'Import pools from JSON file. Example format::\n\n    {\n        "pool_1": {"slots": 5, "description": ""},\n        "pool_2": {"slots": 10, "description": "test"}\n    }'
          )
          ],
          description: 'Import pools'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List pools'
        ),
        Subcommand(
          name: 'set',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [

            Arg(
              name: 'NAME',
              description: 'Pool name'
            ),
            Arg(
              name: 'slots',
              description: 'Pool slots'
            ),
            Arg(
              name: 'description',
              description: 'Pool description'
            )
          ],
          description: 'Configure pool'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'providers',
      description: 'Display providers',
      subcommands: [

        Subcommand(
          name: 'auth',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'Get information about API auth backends provided'
        ),
        Subcommand(
          name: 'behaviours',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'Get information about registered connection types with custom behaviours'
        ),
        Subcommand(
          name: 'get',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--color',
              description: 'Do emit colored output (default: auto)',
              args: [
                Arg(
                name: 'color',
                description: 'Do emit colored output (default: auto)',
                suggestions: [

                  FigSuggestion(name: 'off'),
                  FigSuggestion(name: 'auto'),
                  FigSuggestion(name: 'on')
                ]
              )
              ]
            ),
            Option(
              name: ['-f', '--full'],
              description: 'Full information about the provider, including documentation information'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'provider_name',
            description: 'Provider name, required to get provider information'
          )
          ],
          description: 'Get detailed information about a provider'
        ),
        Subcommand(
          name: 'hooks',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List registered provider hooks'
        ),
        Subcommand(
          name: 'links',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List extra links registered by the providers'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List installed providers'
        ),
        Subcommand(
          name: 'logging',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'Get information about task logging handlers provided'
        ),
        Subcommand(
          name: 'secrets',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'Get information about secrets backends provided'
        ),
        Subcommand(
          name: 'widgets',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'Get information about registered connection form widgets'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'roles',
      description: 'Manage roles',
      subcommands: [

        Subcommand(
          name: 'create',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            isOptional: true,
            isVariadic: true,
            name: 'role',
            description: 'The name of a role'
          )
          ],
          description: 'Create role'
        ),
        Subcommand(
          name: 'delete',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            isOptional: true,
            isVariadic: true,
            name: 'role',
            description: 'The name of a role'
          )
          ],
          description: 'Delete role'
        ),
        Subcommand(
          name: 'export',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-p', '--pretty'],
              description: 'Format output JSON file by sorting role names and indenting by 4 spaces'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'file',
            description: 'Export all roles to JSON file'
          )
          ],
          description: 'Export roles (without permissions) from db to JSON file'
        ),
        Subcommand(
          name: 'import',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'file',
            description: 'Import roles from JSON file'
          )
          ],
          description: 'Import roles (without permissions) from JSON file to db'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List roles'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'rotate-fernet-key',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ],
      description: 'Rotate encrypted connection credentials and variables'
    ),
    Subcommand(
      name: 'scheduler',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: ['-D', '--daemon'],
          description: 'Daemonize instead of running in the foreground'
        ),
        Option(
          name: ['-p', '--do-pickle'],
          description: 'Attempt to pickle the DAG object to send over to the workers, instead of letting workers run their version of the code'
        ),
        Option(
          name: ['-l', '--log-file'],
          description: 'Location of the log file',
          args: [
            Arg(
            name: 'log_file',
            description: 'Location of the log file'
          )
          ]
        ),
        Option(
          name: ['-n', '--num-runs'],
          description: 'Set the number of runs to execute before exiting',
          args: [
            Arg(
            name: 'num_runs',
            description: 'Set the number of runs to execute before exiting'
          )
          ]
        ),
        Option(
          name: '--pid',
          description: 'PID file location',
          args: [
            Arg(
            isOptional: true,
            name: 'pid',
            description: 'PID file location'
          )
          ]
        ),
        Option(
          name: ['-s', '--skip-serve-logs'],
          description: 'Don\'t start the serve logs process along with the workers'
        ),
        Option(
          name: '--stderr',
          description: 'Redirect stderr to this file',
          args: [
            Arg(
            name: 'stderr',
            description: 'Redirect stderr to this file'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'Redirect stdout to this file',
          args: [
            Arg(
            name: 'stdout',
            description: 'Redirect stdout to this file'
          )
          ]
        ),
        Option(
          name: ['-S', '--subdir'],
          description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
          args: [
            Arg(
            name: 'subdir',
            description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
          )
          ]
        )
      ],
      description: 'Start a scheduler instance'
    ),
    Subcommand(
      name: 'standalone',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ],
      description: 'Run an all-in-one copy of Airflow'
    ),
    Subcommand(
      name: 'sync-perm',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: '--include-dags',
          description: 'If passed, DAG specific permissions will also be synced'
        )
      ],
      description: 'Update permissions for existing roles and optionally DAGs'
    ),
    Subcommand(
      name: 'tasks',
      description: 'Manage tasks',
      subcommands: [

        Subcommand(
          name: 'clear',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-R', '--dag-regex'],
              description: 'Search dag_id as regex instead of exact string'
            ),
            Option(
              name: ['-d', '--downstream'],
              description: 'Include downstream tasks'
            ),
            Option(
              name: ['-e', '--end-date'],
              description: 'Override end_date YYYY-MM-DD',
              args: [
                Arg(
                name: 'end_date',
                description: 'Override end_date YYYY-MM-DD'
              )
              ]
            ),
            Option(
              name: ['-X', '--exclude-parentdag'],
              description: 'Exclude ParentDAGS if the task cleared is a part of a SubDAG'
            ),
            Option(
              name: ['-x', '--exclude-subdags'],
              description: 'Exclude subdags'
            ),
            Option(
              name: ['-f', '--only-failed'],
              description: 'Only failed jobs'
            ),
            Option(
              name: ['-r', '--only-running'],
              description: 'Only running jobs'
            ),
            Option(
              name: ['-s', '--start-date'],
              description: 'Override start_date YYYY-MM-DD',
              args: [
                Arg(
                name: 'start_date',
                description: 'Override start_date YYYY-MM-DD'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-t', '--task-regex'],
              description: 'The regex to filter specific task_ids to backfill (optional)',
              args: [
                Arg(
                name: 'task_regex',
                description: 'The regex to filter specific task_ids to backfill (optional)'
              )
              ]
            ),
            Option(
              name: ['-u', '--upstream'],
              description: 'Include upstream tasks'
            ),
            Option(
              name: ['-y', '--yes'],
              description: 'Do not prompt to confirm. Use with care!'
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'Clear a set of task instance, as if they never ran'
        ),
        Subcommand(
          name: 'failed-deps',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--map-index',
              description: 'Mapped task index',
              args: [
                Arg(
                name: 'map_index',
                description: 'Mapped task index'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              name: 'task_id',
              description: 'The id of the task'
            ),
            Arg(
              name: 'execution_date_or_run_id',
              description: 'The execution_date of the DAG or run_id of the DAGRun'
            )
          ],
          description: 'Returns the unmet dependencies for a task instance'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-t', '--tree'],
              description: 'Tree view'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'dag_id',
            description: 'The id of the dag'
          )
          ],
          description: 'List the tasks within a DAG'
        ),
        Subcommand(
          name: 'render',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--map-index',
              description: 'Mapped task index',
              args: [
                Arg(
                name: 'map_index',
                description: 'Mapped task index'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              name: 'task_id',
              description: 'The id of the task'
            ),
            Arg(
              name: 'execution_date_or_run_id',
              description: 'The execution_date of the DAG or run_id of the DAGRun'
            )
          ],
          description: 'Render a task instance\'s template(s)'
        ),
        Subcommand(
          name: 'run',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--cfg-path',
              description: 'Path to config file to use instead of airflow.cfg',
              args: [
                Arg(
                name: 'cfg_path',
                description: 'Path to config file to use instead of airflow.cfg'
              )
              ]
            ),
            Option(
              name: ['-f', '--force'],
              description: 'Ignore previous task instance state, rerun regardless if task already succeeded/failed'
            ),
            Option(
              name: ['-A', '--ignore-all-dependencies'],
              description: 'Ignores all non-critical dependencies, including ignore_ti_state and ignore_task_deps'
            ),
            Option(
              name: ['-i', '--ignore-dependencies'],
              description: 'Ignore task-specific dependencies, e.g. upstream, depends_on_past, and retry delay dependencies'
            ),
            Option(
              name: ['-I', '--ignore-depends-on-past'],
              description: 'Ignore depends_on_past dependencies (but respect upstream dependencies)'
            ),
            Option(
              name: ['-N', '--interactive'],
              description: 'Do not capture standard output and error streams (useful for interactive debugging)'
            ),
            Option(
              name: ['-j', '--job-id'],
              args: [
                Arg(
                name: 'job_id'
              )
              ]
            ),
            Option(
              name: ['-l', '--local'],
              description: 'Run the task using the LocalExecutor'
            ),
            Option(
              name: '--map-index',
              description: 'Mapped task index',
              args: [
                Arg(
                name: 'map_index',
                description: 'Mapped task index'
              )
              ]
            ),
            Option(
              name: ['-m', '--mark-success'],
              description: 'Mark jobs as succeeded without running them'
            ),
            Option(
              name: '--no-shut-down-logging'
            ),
            Option(
              name: ['-p', '--pickle'],
              description: 'Serialized pickle object of the entire dag (used internally)',
              args: [
                Arg(
                name: 'pickle',
                description: 'Serialized pickle object of the entire dag (used internally)'
              )
              ]
            ),
            Option(
              name: '--pool',
              description: 'Resource pool to use',
              args: [
                Arg(
                name: 'pool',
                description: 'Resource pool to use'
              )
              ]
            ),
            Option(
              name: ['-r', '--raw']
            ),
            Option(
              name: '--ship-dag',
              description: 'Pickles (serializes) the DAG and ships it to the worker'
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              name: 'task_id',
              description: 'The id of the task'
            ),
            Arg(
              name: 'execution_date_or_run_id',
              description: 'The execution_date of the DAG or run_id of the DAGRun'
            )
          ],
          description: 'Run a single task instance'
        ),
        Subcommand(
          name: 'state',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: '--map-index',
              description: 'Mapped task index',
              args: [
                Arg(
                name: 'map_index',
                description: 'Mapped task index'
              )
              ]
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              name: 'task_id',
              description: 'The id of the task'
            ),
            Arg(
              name: 'execution_date_or_run_id',
              description: 'The execution_date of the DAG or run_id of the DAGRun'
            )
          ],
          description: 'Get the status of a task instance'
        ),
        Subcommand(
          name: 'states-for-dag-run',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              name: 'execution_date_or_run_id',
              description: 'The execution_date of the DAG or run_id of the DAGRun'
            )
          ],
          description: 'Get the status of all task instances in a dag run'
        ),
        Subcommand(
          name: 'test',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-n', '--dry-run'],
              description: 'Perform a dry run for each task. Only renders Template Fields for each task, nothing else'
            ),
            Option(
              name: '--env-vars',
              description: 'Set env var in both parsing time and runtime for each of entry supplied in a JSON dict',
              args: [
                Arg(
                name: 'env_vars',
                description: 'Set env var in both parsing time and runtime for each of entry supplied in a JSON dict'
              )
              ]
            ),
            Option(
              name: '--map-index',
              description: 'Mapped task index',
              args: [
                Arg(
                name: 'map_index',
                description: 'Mapped task index'
              )
              ]
            ),
            Option(
              name: ['-m', '--post-mortem'],
              description: 'Open debugger on uncaught exception'
            ),
            Option(
              name: ['-S', '--subdir'],
              description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\'',
              args: [
                Arg(
                name: 'subdir',
                description: 'File location or directory from which to look for the dag. Defaults to \'[AIRFLOW_HOME]/dags\' where [AIRFLOW_HOME] is the value you set for \'AIRFLOW_HOME\' config you set in \'airflow.cfg\''
              )
              ]
            ),
            Option(
              name: ['-t', '--task-params'],
              description: 'Sends a JSON params dict to the task',
              args: [
                Arg(
                name: 'task_params',
                description: 'Sends a JSON params dict to the task'
              )
              ]
            )
          ],
          args: [

            Arg(
              name: 'dag_id',
              description: 'The id of the dag'
            ),
            Arg(
              name: 'task_id',
              description: 'The id of the task'
            ),
            Arg(
              isOptional: true,
              name: 'execution_date_or_run_id',
              description: 'The execution_date of the DAG or run_id of the DAGRun (optional)'
            )
          ],
          description: 'Test a task instance'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'triggerer',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: '--capacity',
          description: 'The maximum number of triggers that a Triggerer will run at one time',
          args: [
            Arg(
            name: 'capacity',
            description: 'The maximum number of triggers that a Triggerer will run at one time'
          )
          ]
        ),
        Option(
          name: ['-D', '--daemon'],
          description: 'Daemonize instead of running in the foreground'
        ),
        Option(
          name: ['-l', '--log-file'],
          description: 'Location of the log file',
          args: [
            Arg(
            name: 'log_file',
            description: 'Location of the log file'
          )
          ]
        ),
        Option(
          name: '--pid',
          description: 'PID file location',
          args: [
            Arg(
            isOptional: true,
            name: 'pid',
            description: 'PID file location'
          )
          ]
        ),
        Option(
          name: '--stderr',
          description: 'Redirect stderr to this file',
          args: [
            Arg(
            name: 'stderr',
            description: 'Redirect stderr to this file'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'Redirect stdout to this file',
          args: [
            Arg(
            name: 'stdout',
            description: 'Redirect stdout to this file'
          )
          ]
        )
      ],
      description: 'Start a triggerer instance'
    ),
    Subcommand(
      name: 'users',
      description: 'Manage users',
      subcommands: [

        Subcommand(
          name: 'add-role',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-e', '--email'],
              description: 'Email of the user',
              args: [
                Arg(
                name: 'email',
                description: 'Email of the user'
              )
              ]
            ),
            Option(
              name: ['-r', '--role'],
              description: 'Role of the user. Existing roles include Admin, User, Op, Viewer, and Public',
              args: [
                Arg(
                name: 'role',
                description: 'Role of the user. Existing roles include Admin, User, Op, Viewer, and Public'
              )
              ]
            ),
            Option(
              name: ['-u', '--username'],
              description: 'Username of the user',
              args: [
                Arg(
                name: 'username',
                description: 'Username of the user'
              )
              ]
            )
          ],
          description: 'Add role to a user'
        ),
        Subcommand(
          name: 'create',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-e', '--email'],
              description: 'Email of the user',
              args: [
                Arg(
                name: 'email',
                description: 'Email of the user'
              )
              ]
            ),
            Option(
              name: ['-f', '--firstname'],
              description: 'First name of the user',
              args: [
                Arg(
                name: 'firstname',
                description: 'First name of the user'
              )
              ]
            ),
            Option(
              name: ['-l', '--lastname'],
              description: 'Last name of the user',
              args: [
                Arg(
                name: 'lastname',
                description: 'Last name of the user'
              )
              ]
            ),
            Option(
              name: ['-p', '--password'],
              description: 'Password of the user, required to create a user without --use-random-password',
              args: [
                Arg(
                name: 'password',
                description: 'Password of the user, required to create a user without --use-random-password'
              )
              ]
            ),
            Option(
              name: ['-r', '--role'],
              description: 'Role of the user. Existing roles include Admin, User, Op, Viewer, and Public',
              args: [
                Arg(
                name: 'role',
                description: 'Role of the user. Existing roles include Admin, User, Op, Viewer, and Public'
              )
              ]
            ),
            Option(
              name: '--use-random-password',
              description: 'Do not prompt for password. Use random string instead. Required to create a user without --password'
            ),
            Option(
              name: ['-u', '--username'],
              description: 'Username of the user',
              args: [
                Arg(
                name: 'username',
                description: 'Username of the user'
              )
              ]
            )
          ],
          description: 'Create a user'
        ),
        Subcommand(
          name: 'delete',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-e', '--email'],
              description: 'Email of the user',
              args: [
                Arg(
                name: 'email',
                description: 'Email of the user'
              )
              ]
            ),
            Option(
              name: ['-u', '--username'],
              description: 'Username of the user',
              args: [
                Arg(
                name: 'username',
                description: 'Username of the user'
              )
              ]
            )
          ],
          description: 'Delete a user'
        ),
        Subcommand(
          name: 'export',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          args: [
            Arg(
            name: 'FILEPATH',
            description: 'Export all users to JSON file'
          )
          ],
          description: 'Export all users'
        ),
        Subcommand(
          name: 'import',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          args: [
            Arg(
            name: 'FILEPATH',
            description: 'Import users from JSON file. Example format::\n\n    [\n        {\n            "email": "foo@bar.org",\n            "firstname": "Jon",\n            "lastname": "Doe",\n            "roles": ["Public"],\n            "username": "jondoe"\n        }\n    ]'
          )
          ],
          description: 'Import users'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List users'
        ),
        Subcommand(
          name: 'remove-role',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-e', '--email'],
              description: 'Email of the user',
              args: [
                Arg(
                name: 'email',
                description: 'Email of the user'
              )
              ]
            ),
            Option(
              name: ['-r', '--role'],
              description: 'Role of the user. Existing roles include Admin, User, Op, Viewer, and Public',
              args: [
                Arg(
                name: 'role',
                description: 'Role of the user. Existing roles include Admin, User, Op, Viewer, and Public'
              )
              ]
            ),
            Option(
              name: ['-u', '--username'],
              description: 'Username of the user',
              args: [
                Arg(
                name: 'username',
                description: 'Username of the user'
              )
              ]
            )
          ],
          description: 'Remove role from a user'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'variables',
      description: 'Manage variables',
      subcommands: [

        Subcommand(
          name: 'delete',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          args: [
            Arg(
            name: 'key',
            description: 'Variable key'
          )
          ],
          description: 'Delete variable'
        ),
        Subcommand(
          name: 'export',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          args: [
            Arg(
            name: 'file',
            description: 'Export all variables to JSON file'
          )
          ],
          description: 'Export all variables'
        ),
        Subcommand(
          name: 'get',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-d', '--default'],
              description: 'Default value returned if variable does not exist',
              args: [
                Arg(
                name: 'VAL',
                description: 'Default value returned if variable does not exist'
              )
              ]
            ),
            Option(
              name: ['-j', '--json'],
              description: 'Deserialize JSON variable'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          args: [
            Arg(
            name: 'key',
            description: 'Variable key'
          )
          ],
          description: 'Get variable'
        ),
        Subcommand(
          name: 'import',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            )
          ],
          args: [
            Arg(
            name: 'file',
            description: 'Import variables from JSON file'
          )
          ],
          description: 'Import variables'
        ),
        Subcommand(
          name: 'list',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
              args: [
                Arg(
                name: '(table, json, yaml, plain)',
                description: 'Output format. Allowed values: json, yaml, plain, table (default: table)',
                suggestions: [

                  FigSuggestion(name: 'table'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'yaml'),
                  FigSuggestion(name: 'plain')
                ]
              )
              ]
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Make logging output more verbose'
            )
          ],
          description: 'List variables'
        ),
        Subcommand(
          name: 'set',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Show this help message and exit'
            ),
            Option(
              name: ['-j', '--json'],
              description: 'Serialize JSON variable'
            )
          ],
          args: [

            Arg(
              name: 'key',
              description: 'Variable key'
            ),
            Arg(
              name: 'VALUE',
              description: 'Variable value'
            )
          ],
          description: 'Set variable'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ]
    ),
    Subcommand(
      name: 'version',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        )
      ],
      description: 'Show the version'
    ),
    Subcommand(
      name: 'webserver',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show this help message and exit'
        ),
        Option(
          name: ['-A', '--access-logfile'],
          description: 'The logfile to store the webserver access log. Use \'-\' to print to stderr',
          args: [
            Arg(
            name: 'access_logfile',
            description: 'The logfile to store the webserver access log. Use \'-\' to print to stderr'
          )
          ]
        ),
        Option(
          name: ['-L', '--access-logformat'],
          description: 'The access log format for gunicorn logs',
          args: [
            Arg(
            name: 'access_logformat',
            description: 'The access log format for gunicorn logs'
          )
          ]
        ),
        Option(
          name: ['-D', '--daemon'],
          description: 'Daemonize instead of running in the foreground'
        ),
        Option(
          name: ['-d', '--debug'],
          description: 'Use the server that ships with Flask in debug mode'
        ),
        Option(
          name: ['-E', '--error-logfile'],
          description: 'The logfile to store the webserver error log. Use \'-\' to print to stderr',
          args: [
            Arg(
            name: 'error_logfile',
            description: 'The logfile to store the webserver error log. Use \'-\' to print to stderr'
          )
          ]
        ),
        Option(
          name: ['-H', '--hostname'],
          description: 'Set the hostname on which to run the web server',
          args: [
            Arg(
            name: 'hostname',
            description: 'Set the hostname on which to run the web server'
          )
          ]
        ),
        Option(
          name: ['-l', '--log-file'],
          description: 'Location of the log file',
          args: [
            Arg(
            name: 'log_file',
            description: 'Location of the log file'
          )
          ]
        ),
        Option(
          name: '--pid',
          description: 'PID file location',
          args: [
            Arg(
            isOptional: true,
            name: 'pid',
            description: 'PID file location'
          )
          ]
        ),
        Option(
          name: ['-p', '--port'],
          description: 'The port on which to run the server',
          args: [
            Arg(
            name: 'port',
            description: 'The port on which to run the server'
          )
          ]
        ),
        Option(
          name: '--ssl-cert',
          description: 'Path to the SSL certificate for the webserver',
          args: [
            Arg(
            name: 'ssl_cert',
            description: 'Path to the SSL certificate for the webserver'
          )
          ]
        ),
        Option(
          name: '--ssl-key',
          description: 'Path to the key to use with the SSL certificate',
          args: [
            Arg(
            name: 'ssl_key',
            description: 'Path to the key to use with the SSL certificate'
          )
          ]
        ),
        Option(
          name: '--stderr',
          description: 'Redirect stderr to this file',
          args: [
            Arg(
            name: 'stderr',
            description: 'Redirect stderr to this file'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'Redirect stdout to this file',
          args: [
            Arg(
            name: 'stdout',
            description: 'Redirect stdout to this file'
          )
          ]
        ),
        Option(
          name: ['-t', '--worker-timeout'],
          description: 'The timeout for waiting on webserver workers',
          args: [
            Arg(
            name: 'worker_timeout',
            description: 'The timeout for waiting on webserver workers'
          )
          ]
        ),
        Option(
          name: ['-k', '--workerclass'],
          description: 'The worker class to use for Gunicorn',
          args: [
            Arg(
            name: 'workerclass',
            description: 'The worker class to use for Gunicorn',
            suggestions: [

              FigSuggestion(name: 'sync'),
              FigSuggestion(name: 'eventlet'),
              FigSuggestion(name: 'gevent'),
              FigSuggestion(name: 'tornado')
            ]
          )
          ]
        ),
        Option(
          name: ['-w', '--workers'],
          description: 'Number of workers to run the webserver on',
          args: [
            Arg(
            name: 'workers',
            description: 'Number of workers to run the webserver on'
          )
          ]
        )
      ],
      description: 'Start a Airflow webserver instance'
    )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Show this help message and exit'
    )
  ]
);
