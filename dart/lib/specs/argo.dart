// Auto-generated from TypeScript source: argo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `argo` CLI
final FigSpec argoSpec = FigSpec(
  name: 'argo',
  description: '',
  subcommands: [
    Subcommand(
      name: 'archive',
      description: 'Manage the workflow archive',
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete a workflow in the archive'
        ),
        Subcommand(
          name: 'get',
          description: 'Get a workflow in the archive',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide (default "wide")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List workflows in the archive',
          options: [
            Option(
              name: '--chunk-size',
              description: 'Return large lists in chunks rather than all at once. Pass 0 to disable',
              args: [
                Arg(
                name: 'int'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for list'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide (default "wide")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--selector', '-l'],
              description: 'Selector (label query) to filter on not including uninitialized ones supports \'=\' \'==\' and \'!=\'.(e.g. -l key1=value1,key2=value2)',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-label-keys',
          description: 'List workflows label keys in the archive'
        ),
        Subcommand(
          name: 'list-label-values',
          description: 'Get workflow label values in the archive',
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for list-label-values'
            ),
            Option(
              name: ['--selector', '-l'],
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resubmit',
          description: 'Resubmit one or more workflows',
          options: [
            Option(
              name: '--field-selector',
              description: 'Selector (field query) to filter on supports \'=\' \'==\' and \'!=\'.(e.g. --field-selector key1=value1,key2=value2). The server only supports a limited number of field queries per type',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for resubmit'
            ),
            Option(
              name: '--log',
              description: 'Log the workflow until it completes'
            ),
            Option(
              name: '--memoized',
              description: 'Re-use successful steps & outputs from the previous run'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: name|json|yaml|wide',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--parameter', '-p'],
              description: 'Input parameter to override on the original workflow spec',
              args: [
                Arg(
                name: 'stringArray'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'Workflow priority',
              args: [
                Arg(
                name: 'int32'
              )
              ]
            ),
            Option(
              name: ['--selector', '-l'],
              description: 'Selector (label query) to filter on not including uninitialized ones supports \'=\' \'==\' and \'!=\'.(e.g. -l key1=value1,key2=value2)',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--wait', '-w'],
              description: 'Wait for the workflow to complete only works when a single workflow is resubmitted'
            ),
            Option(
              name: '--watch',
              description: 'Watch the workflow until it completes only works when a single workflow is resubmitted'
            )
          ]
        ),
        Subcommand(
          name: 'retry',
          description: 'Retry zero or more workflows',
          options: [
            Option(
              name: '--field-selector',
              description: 'Selector (field query) to filter on, supports \'=\'',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for retry'
            ),
            Option(
              name: '--log',
              description: 'Log the workflow until it completes'
            ),
            Option(
              name: '--node-field-selector',
              description: 'Selector of nodes to reset eg: --node-field-selector inputs.paramaters.myparam.value=abc',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: name|json|yaml|wide',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--parameter', '-p'],
              description: 'Input parameter to override on the original workflow spec',
              args: [
                Arg(
                name: 'stringArray'
              )
              ]
            ),
            Option(
              name: '--restart-successful',
              description: 'Indicates to restart successful nodes matching the --node-field-selector'
            ),
            Option(
              name: ['--selector', '-l'],
              description: 'Selector (label query) to filter on not including uninitialized ones supports \'=\' \'==\'',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--wait', '-w'],
              description: 'Wait for the workflow to complete only works when a single workflow is retried'
            ),
            Option(
              name: '--watch',
              description: 'Watch the workflow until it completes only works when a single workflow is retried'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'auth',
      description: 'Manage authentication settings',
      subcommands: [
        Subcommand(
          name: 'token',
          description: 'Print the auth token'
        )
      ]
    ),
    Subcommand(
      name: ['cluster-template', 'cwftmpl', 'cwft'],
      description: 'Manipulate cluster workflow templates',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a cluster workflow template',
          args: [
            Arg(
            name: 'files'
          )
          ],
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for create'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: name|json|yaml|wide',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--strict',
              description: 'Perform strict workflow validation (default true)'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a cluster workflow template',
          args: [
            Arg(
            name: 'WORKFLOW_TEMPLATE'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'Delete all cluster workflow templates'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for delete'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Display details about a cluster workflow template',
          args: [
            Arg(
              name: 'CLUSTER'
            ),
            Arg(
              name: 'WORKFLOW_TEMPLATE'
            )
          ],
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for get'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'lint',
          description: 'Validate files or directories of cluster workflow template manifests',
          args: [
            Arg(
            name: 'FILE'
          )
          ],
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for lint'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Linting results output format. One of: pretty|simple (default "pretty")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--strict',
              description: 'Perform strict workflow validation (default true)'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List cluster workflow templates',
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for list'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: wide|name',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Output shell completion code for the specified shell (bash or zsh)',
      args: [
        Arg(
        name: 'SHEL'
      )
      ],
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Help for completion'
        )
      ]
    ),
    Subcommand(
      name: 'cp',
      description: 'Copy artifacts from workflow',
      args: [
        Arg(
          name: 'my-wf'
        ),
        Arg(
          name: 'output-directory'
        )
      ],
      options: [
        Option(
          name: '--artifact-name',
          description: 'Name of output artifact in workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for cp'
        ),
        Option(
          name: '--node-id',
          description: 'Id of node in workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--path',
          description: 'Use variables {workflowName} {nodeId} {templateName} {artifactName} and {namespace} to create a customized path to store the artifacts; example: {workflowName}/{templateName}/{artifactName} (default "{namespace}/{workflowName}/{nodeId}/outputs/{artifactName}")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--template-name',
          description: 'Name of template in workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'cron',
      description: 'Manage cron workflows',
      options: [
        Option(
          name: '--help',
          description: 'Help for cron'
        )
      ],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a cron workflow',
          args: [
            Arg(
            name: 'FILE1 FILE2...'
          )
          ],
          options: [
            Option(
              name: '--entrypoint',
              description: 'Override entrypoint',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--generate-name',
              description: 'Override metadata.generateName',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for create'
            ),
            Option(
              name: ['--labels', '-l'],
              description: 'Comma separated labels to apply to the workflow. Will override previous values',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Override metadata.name',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: name|json|yaml|wide',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--parameter', '-p'],
              description: 'Pass an input parameter',
              args: [
                Arg(
                name: 'stringArray'
              )
              ]
            ),
            Option(
              name: ['--parameter-file', '-f'],
              description: 'Pass a file containing all input parameters',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--schedule',
              description: 'Override cron workflow schedule',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--serviceaccount',
              description: 'Run all pods in the workflow using specified serviceaccount',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--strict',
              description: 'Perform strict workflow validation (default true)'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a cron workflow',
          args: [
            Arg(
            name: '[CRON_WORKFLOW... | --all]'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'Delete all cron workflows'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for delete'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Display details about a cron workflow',
          args: [
            Arg(
            name: 'CRON_WORKFLOW'
          )
          ],
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for get'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: json|yaml|wide',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'lint',
          description: 'Validate files or directories of cron workflow manifests',
          args: [
            Arg(
            name: 'FILE'
          )
          ],
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for lint'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Linting results output format. One of: pretty|simple (default "pretty")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--strict',
              description: 'Perform strict validation (default true)'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List cron workflows',
          options: [
            Option(
              name: ['--all-namespaces', '-A'],
              description: 'Show workflows from all namespaces'
            ),
            Option(
              name: '--chunk-size',
              description: 'Return large lists in chunks rather than all at once. Pass 0 to disable',
              args: [
                Arg(
                name: 'int'
              )
              ]
            ),
            Option(
              name: '--completed',
              description: 'Show completed workflows. Mutually exclusive with --running'
            ),
            Option(
              name: '--field-selector',
              description: 'Selector (field query) to filter on. Supports \'=\' \'==\' and \'!=\'.(e.g. --field-selector key1=value1,key2=value2). The server only supports a limited number of field queries per type',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for list'
            ),
            Option(
              name: '--no-headers',
              description: 'Don\'t print headers (default print headers)'
            ),
            Option(
              name: '--older',
              description: 'List completed workflows finished before the specified duration (e.g. 10m 3h 1d)',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: name|wide|yaml|json',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--prefix',
              description: 'Filter workflows by prefix',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--resubmitted',
              description: 'Show resubmitted workflows'
            ),
            Option(
              name: '--running',
              description: 'Show running workflows. Mutually exclusive with --completed'
            ),
            Option(
              name: ['--selector', '-l'],
              description: 'Selector (label query) to filter on',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--since',
              description: 'Show only workflows created after than a relative duration',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Filter by status (comma separated)',
              args: [
                Arg(
                name: 'strings'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resume',
          description: 'Resume zero or more cron workflows',
          args: [
            Arg(
            name: 'CRON_WORKFLOW'
          )
          ]
        ),
        Subcommand(
          name: 'suspend',
          description: 'Suspend zero or more cron workflows',
          args: [
            Arg(
            name: 'CRON_WORKFLOW'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete workflows',
      args: [
        Arg(
        name: 'WORKFLOW'
      )
      ],
      options: [
        Option(
          name: '--all',
          description: 'Delete all workflows'
        ),
        Option(
          name: ['--all-namespaces', '-A'],
          description: 'Delete workflows from all namespaces'
        ),
        Option(
          name: '--completed',
          description: 'Delete completed workflows'
        ),
        Option(
          name: '--dry-run',
          description: 'Do not delete the workflow only print what would happen'
        ),
        Option(
          name: '--field-selector',
          description: 'Selector (field query) to filter on supports \'=\' \'==\' and \'!=\'.(e.g. --field-selector key1=value1,key2=value2). The server only supports a limited number of field queries per type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Force delete workflows by removing finalizers'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for delete'
        ),
        Option(
          name: '--older',
          description: 'Delete completed workflows finished before the specified duration (e.g. 10m 3h 1d)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--prefix',
          description: 'Delete workflows by prefix',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resubmitted',
          description: 'Delete resubmitted workflows'
        ),
        Option(
          name: ['--selector', '-l'],
          description: 'Selector (label query) to filter on not including uninitialized ones supports \'=\'\'==\'and \'!=\'.(e.g. -l key1=value1,key2=value2)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'executor-plugin',
      description: 'Manage executor plugins',
      subcommands: [
        Subcommand(
          name: 'build',
          description: 'Build an executor plugin',
          args: [
            Arg(
            name: 'DIR'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Display details about a workflow',
      args: [
        Arg(
        name: 'WORKFLOW'
      )
      ],
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Help for get'
        ),
        Option(
          name: '--no-color',
          description: 'Disable colorized output'
        ),
        Option(
          name: '--no-utf8',
          description: 'Use plain 7-bits ascii characters'
        ),
        Option(
          name: '--node-field-selector',
          description: 'Selector of node to display, Eg: --node-field-selector phase=abc',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output format. One of: json|yaml|short|wide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'Filter by status (Pending, Running, Succeeded, Skipped, Failed, Error)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command'
    ),
    Subcommand(
      name: 'lint',
      description: 'Validate files or directories of manifests',
      args: [
        Arg(
        name: 'FILE'
      )
      ],
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Help for lint'
        ),
        Option(
          name: '--kinds',
          description: 'Which kinds will be linted. Can be: workflows|workflowtemplates|cronworkflows|clusterworkflowtemplates (default [all])',
          args: [
            Arg(
            name: 'strings'
          )
          ]
        ),
        Option(
          name: '--offline',
          description: 'Perform offline linting'
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Linting results output format. One of: pretty|simple (default "pretty")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--strict',
          description: 'Perform strict workflow validation (default true)'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List workflows',
      options: [
        Option(
          name: ['--all-namespaces', '-A'],
          description: 'Show workflows from all namespaces'
        ),
        Option(
          name: '--chunk-size',
          description: 'Return large lists in chunks rather than all at once. Pass 0 to disable',
          args: [
            Arg(
            name: 'int'
          )
          ]
        ),
        Option(
          name: '--completed',
          description: 'Show completed workflows. Mutually exclusive with --running'
        ),
        Option(
          name: '--field-selector',
          description: 'Selector (field query) to filter on supports \'=\' \'==\' and \'!=\'.(e.g. --field-selector key1=value1,key2=value2). The server only supports a limited number of field queries per type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for list'
        ),
        Option(
          name: '--no-headers',
          description: 'Don\'t print headers (default print headers)'
        ),
        Option(
          name: '--older',
          description: 'List completed workflows finished before the specified duration (e.g. 10m 3h 1d)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output format. One of: name|wide|yaml|json',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--prefix',
          description: 'Filter workflows by prefix',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resubmitted',
          description: 'Show resubmitted workflows'
        ),
        Option(
          name: '--running',
          description: 'Show running workflows. Mutually exclusive with --completed'
        ),
        Option(
          name: ['--selector', '-l'],
          description: 'Selector (label query) to filter on not including uninitialized ones supports \'=\' \'==\' and \'!=\'.(e.g. -l key1=value1,key2=value2)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--since',
          description: 'Show only workflows created after than a relative duration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'Filter by status (comma separated)',
          args: [
            Arg(
            name: 'strings'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logs',
      description: 'View logs of a pod or workflow',
      args: [
        Arg(
          name: 'WORKFOW'
        ),
        Arg(
          name: 'POD',
          isOptional: true
        )
      ],
      options: [
        Option(
          name: ['--container', '-c'],
          description: 'Print the logs of this container (default "main")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--follow', '-f'],
          description: 'Specify if the logs should be streamed'
        ),
        Option(
          name: '--grep',
          description: 'Grep for lines',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for logs'
        ),
        Option(
          name: '--no-color',
          description: 'Disable colorized output'
        ),
        Option(
          name: ['--previous', '-p'],
          description: 'Specify if the previously terminated container logs should be returned'
        ),
        Option(
          name: ['--selector', '-l'],
          description: 'Log selector for some pod',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--since',
          description: 'Only return logs newer than a relative duration like 5s 2m or 3h. Defaults to all logs. Only one of since-time / since may be used',
          args: [
            Arg(
            name: 'duration'
          )
          ]
        ),
        Option(
          name: '--since-time',
          description: 'Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / since may be used',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tail',
          description: 'If set the number of lines from the end of the logs to show. If not specified logs are shown from the creation of the container or sinceSeconds or sinceTime (default -1)',
          args: [
            Arg(
            name: 'int'
          )
          ]
        ),
        Option(
          name: '--timestamps',
          description: 'Include timestamps on each line in the log output'
        )
      ]
    ),
    Subcommand(
      name: 'node',
      description: 'Perform action on a node in a workflow',
      args: [
        Arg(
          name: 'ACTION'
        ),
        Arg(
          name: 'WORKFLOW'
        ),
        Arg(
          name: 'FLAGS'
        )
      ],
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Help for node'
        ),
        Option(
          name: ['--message', '-m'],
          description: 'Set the message of a node eg: --message "Hello World"',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--node-field-selector',
          description: 'Selector of node to set eg: --node-field-selector inputs.paramaters.myparam.value=abc',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--output-parameter', '-p'],
          description: 'Set a "supplied" output parameter of node eg: --output-parameter parameter-name="Hello world!"',
          args: [
            Arg(
            name: 'stringArray'
          )
          ]
        ),
        Option(
          name: '--phase',
          description: 'Phase to set the node to eg: --phase Succeeded',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'resubmit',
      description: 'Resubmit one or more workflows',
      args: [
        Arg(
        name: 'WORKFLOW..'
      )
      ],
      options: [
        Option(
          name: '--field-selector',
          description: 'Selector (field query) to filter on: supports \'=\' \'==\' and \'!=\'.(e.g. --field-selector key1=value1,key2=value2). The server only supports a limited number of field queries per type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for resubmit'
        ),
        Option(
          name: '--log',
          description: 'Log the workflow until it completes'
        ),
        Option(
          name: '--memoized',
          description: 'Re-use successful steps & outputs from the previous run'
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output format. One of: name|json|yaml|wide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--parameter', '-p'],
          description: 'Input parameter to override on the original workflow spec',
          args: [
            Arg(
            name: 'stringArray'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'Workflow priority',
          args: [
            Arg(
            name: 'int32'
          )
          ]
        ),
        Option(
          name: ['--selector', '-l'],
          description: 'Selector (label query) to filter on',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--wait', '-w'],
          description: 'Wait for the workflow to complete - only works when a single workflow is resubmitted'
        ),
        Option(
          name: '--watch',
          description: 'Watch the workflow until it completes - only works when a single workflow is resubmitted'
        )
      ]
    ),
    Subcommand(
      name: 'resume',
      description: 'Resume zero or more workflows',
      args: [
        Arg(
          name: 'WORKFLOW1'
        ),
        Arg(
          name: 'WORKFLOW2...'
        )
      ],
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Help for resume'
        ),
        Option(
          name: '--node-field-selector',
          description: 'Selector of node to resume, Eg: --node-field-selector inputs.paramaters.myparam.value=abc',
          args: [
            Arg(
            name: 'strin'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'retry',
      description: 'Retry zero or more workflows',
      args: [
        Arg(
        name: 'WORKFLOW...'
      )
      ],
      options: [
        Option(
          name: '--field-selector',
          description: 'Selector (field query) to filter on, Supports \'=\'; \'==\'; and \'!=\'.(e.g. --field-selector key1=value1,key2=value2). The server only supports a limited number of field queries per type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for retry'
        ),
        Option(
          name: '--log',
          description: 'Log the workflow until it completes'
        ),
        Option(
          name: '--node-field-selector',
          description: 'Selector of nodes to reset; eg: --node-field-selector inputs.paramaters.myparam.value=abc',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output format. One of: name|json|yaml|wide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--parameter', '-p'],
          description: 'Input parameter to override on the original workflow spec',
          args: [
            Arg(
            name: 'stringArray'
          )
          ]
        ),
        Option(
          name: '--restart-successful',
          description: 'Indicates to restart successful nodes matching the --node-field-selector'
        ),
        Option(
          name: ['--selector', '-l'],
          description: 'Selector (label query) to filter on; not including uninitialized ones supports \'=\' \'==\' and \'!=\'.(e.g. -l key1=value1,key2=value2)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--wait', '-w'],
          description: 'Wait for the workflow to complete only works when a single workflow is retried'
        ),
        Option(
          name: '--watch',
          description: 'Watch the workflow until it completes only works when a single workflow is retried'
        )
      ]
    ),
    Subcommand(
      name: 'server',
      description: 'Start the Argo Server',
      options: [
        Option(
          name: '--access-control-allow-origin',
          description: 'Set Access-Control-Allow-Origin header in HTTP responses',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--allowed-link-protocol',
          description: 'Allowed link protocol in configMap. Used if the allowed configMap links protocol are different from http https. Defaults to the environment variable ALLOWED_LINK_PROTOCOL (default [http https])',
          args: [
            Arg(
            name: 'stringArray'
          )
          ]
        ),
        Option(
          name: '--api-rate-limit',
          description: 'Set limit per IP for api ratelimiter (default 1000)',
          args: [
            Arg(
            name: 'uint'
          )
          ]
        ),
        Option(
          name: '--auth-mode',
          description: 'API server authentication mode. Any 1 or more length permutation of: client server sso (default [client])',
          args: [
            Arg(
            name: 'stringArray'
          )
          ]
        ),
        Option(
          name: '--basehref',
          description: 'Value for base href in index.html. Used if the server is running behind reverse proxy under subpath different from /. Defaults to the environment variable BASE_HREF. (default " /")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-b', '--browser'],
          description: 'Enable automatic launching of the browser [local mode]'
        ),
        Option(
          name: '--configmap',
          description: 'Name of K8s configmap to retrieve workflow controller configuration (default "workflow-controller-configmap")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--event-async-dispatch',
          description: 'Dispatch event async'
        ),
        Option(
          name: '--event-operation-queue-size',
          description: 'How many events operations that can be queued at once (default 16)',
          args: [
            Arg(
            name: 'int'
          )
          ]
        ),
        Option(
          name: '--event-worker-count',
          description: 'How many event workers to run (default 4)',
          args: [
            Arg(
            name: 'int'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Help for server'
        ),
        Option(
          name: '--hsts',
          description: 'Whether or not we should add a HTTP Secure Transport Security header. This only has effect if secure is enabled. (default true)'
        ),
        Option(
          name: '--log-format',
          description: 'The formatter to use for logs. One of: text|json (default "text")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--managed-namespace',
          description: 'Namespace that watches default to the installation namespace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--namespaced',
          description: 'Run as namespaced mode'
        ),
        Option(
          name: ['-p', '--port'],
          description: 'Port to listen on (default 2746)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tls-certificate-secret-name',
          description: 'The name of a Kubernetes secret that contains the server certificates',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--x-frame-options',
          description: 'Set X-Frame-Options header in HTTP responses. (default "DENY")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop zero or more workflows allowing all exit handlers to run',
      args: [
        Arg(
          name: 'WORKFLOW1'
        ),
        Arg(
          name: 'WORKFLOW2...'
        )
      ],
      options: [
        Option(
          name: '--dry-run',
          description: 'If true, only stop the workflows that would be stopped, without stopping them'
        ),
        Option(
          name: '--field-selector',
          description: 'Selector (field query) to filter on  supports \'=\'  \'==\'  and \'!=\'.(e.g. --field-selector key1=value1,key2=value2). The server only supports a limited number of field queries per type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Help for stop'
        ),
        Option(
          name: '--message',
          description: 'Message to add to previously running nodes',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--node-field-selector',
          description: 'Selector of node to stop eg: --node-field-selector inputs.paramaters.myparam.value=abc',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-l', '--selector'],
          description: 'Selector (label query) to filter on not including uninitialized ones supports \'=\' \'==\' and \'!=\'.(e.g. -l key1=value1, key2=value2)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'submit',
      description: 'Submit a workflow',
      args: [
        Arg(
        name: 'FILE...'
      )
      ],
      options: [
        Option(
          name: '--dry-run',
          description: 'Modify the workflow on the client-side without creating it'
        ),
        Option(
          name: '--entrypoint',
          description: 'Override entrypoint',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--from',
          description: 'Submit from an existing kind/name E.g. --from=cronwf/hello-world-cwf',
          args: [
            Arg(
            name: 'kind/name'
          )
          ]
        ),
        Option(
          name: '--generate-name',
          description: 'Override metadata.generateName',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Help for submit'
        ),
        Option(
          name: ['-l', '--labels'],
          description: 'Comma separated labels to apply to the workflow. Will override previous values',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--log',
          description: 'Log the workflow until it completes'
        ),
        Option(
          name: '--name',
          description: 'Override metadata.name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--node-field-selector',
          description: 'Selector of node to display eg: --node-field-selector phase=abc',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-o', '--output'],
          description: 'Output format. One of: name|json|yaml|wide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-p', '--parameter'],
          description: 'Pass an input parameter',
          args: [
            Arg(
            name: 'stringArray'
          )
          ]
        ),
        Option(
          name: ['-f', '--parameter-file'],
          description: 'Pass a file containing all input parameters',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'Workflow priority',
          args: [
            Arg(
            name: 'int32'
          )
          ]
        ),
        Option(
          name: '--scheduled-time',
          description: 'Override the workflow\'s scheduledTime parameter (useful for backfilling). The time must be RFC3339',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--server-dry-run',
          description: 'Send request to server with dry-run flag which will modify the workflow without creating it'
        ),
        Option(
          name: '--serviceaccount',
          description: 'Run all pods in the workflow using specified serviceaccount',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'Filter by status (Pending Running Succeeded Skipped Failed Error). Should only be used with --watch',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--strict',
          description: 'Perform strict workflow validation (default true)'
        ),
        Option(
          name: ['-w', '--wait'],
          description: 'Wait for the workflow to complete'
        ),
        Option(
          name: '--watch',
          description: 'Watch the workflow until it completes'
        )
      ]
    ),
    Subcommand(
      name: 'suspend',
      description: 'Suspend zero or more workflow',
      args: [
        Arg(
          name: 'WORKFLOW1'
        ),
        Arg(
          name: 'WORKFLOW2...'
        )
      ],
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Help for suspend'
        )
      ]
    ),
    Subcommand(
      name: 'template',
      description: 'Manipulate workflow templates',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Help for template'
        )
      ],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a workflow template',
          args: [
            Arg(
              name: 'FILE1'
            ),
            Arg(
              name: 'FILE2...'
            )
          ],
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for create'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: name|json|yaml|wide',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--strict',
              description: 'Perform strict workflow validation (default true)'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a workflow template',
          args: [
            Arg(
            name: 'WORKFLOW_TEMPLATE'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'Delete all workflow templates'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Help for delete'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Display details about a workflow template',
          args: [
            Arg(
            name: 'WORKFLOW_TEMPLATE'
          )
          ],
          options: [
            Option(
              name: ['-h', '--help'],
              description: 'Help for get'
            ),
            Option(
              name: ['-o', '--output'],
              args: [
                Arg(
                name: 'string'
              )
              ],
              description: 'Output format. One of: json|yaml|wide'
            )
          ]
        ),
        Subcommand(
          name: 'lint',
          description: 'Validate a file or directory of workflow template manifests',
          args: [
            Arg(
              name: 'DIRECTORY'
            ),
            Arg(
              name: 'FILE1 FILE2 FILE3...'
            )
          ],
          options: [
            Option(
              name: ['--help', '-h'],
              description: 'Help for lint'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Linting results output format. One of: pretty|simple (default "pretty")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--strict',
              description: 'Perform strict workflow validation (default true)'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List workflow templates',
          options: [
            Option(
              name: ['--all-namespaces', '-A'],
              description: 'Show workflows from all namespaces'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for list'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: wide|name',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'terminate',
      description: 'Terminate zero or more workflows immediately',
      args: [
        Arg(
        name: 'WORKFLOOW WORKFLOW2...'
      )
      ],
      options: [
        Option(
          name: '--dry-run',
          description: 'Do not terminate the workflow only print what would happen'
        ),
        Option(
          name: '--field-selector',
          description: 'Selector (field query) to filter on supports \'=\' \'==\' and \'!=\'.(e.g. --field-selector key1=value1key2=value2). The server only supports a limited number of field queries per type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Help for terminate'
        ),
        Option(
          name: ['-l', '--selector'],
          description: 'Selector (label query) to filter on not including uninitialized ones supports \'=\' \'==\' and \'!=\'.(e.g. -l key1=value1key2=value2)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print version information',
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Help for version'
        ),
        Option(
          name: '--short',
          description: 'Print just the version number'
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Waits for workflows to complete',
      args: [
        Arg(
        name: '[WORKFLOW...]'
      )
      ],
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Help for wait'
        ),
        Option(
          name: '--ignore-not-found',
          description: 'Ignore the wait if the workflow is not found'
        )
      ]
    ),
    Subcommand(
      name: 'watch',
      description: 'Watch a workflow until it completes',
      args: [
        Arg(
        name: 'WORKFLOW'
      )
      ],
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Help for watch'
        ),
        Option(
          name: '--node-field-selector',
          description: 'Selector of node to display eg: --node-field-selector phase=abc',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'Filter by status (Pending, Running, Succeeded, Skipped, Failed, Error)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    )
  ]
);
