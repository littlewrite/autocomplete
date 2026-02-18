// Auto-generated from TypeScript source: synapse.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `synapse` CLI
final FigSpec synapseSpec = FigSpec(
  name: 'synapse',
  description: 'Manage and operate Synapse Workspace, Spark Pool, SQL Pool',
  subcommands: [

    Subcommand(
      name: 'activity-run',
      description: 'Synapse activity-run',
      subcommands: [

        Subcommand(
          name: 'query-by-pipeline-run',
          description: 'Query activity runs based on input filter conditions',
          options: [

            Option(
              name: '--last-updated-after',
              description: 'The time at or after which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-afte'
              )
              ]
            ),
            Option(
              name: '--last-updated-before',
              description: 'The time at or before which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-befor'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'The pipeline run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--continuation-token',
              description: 'The continuation token for getting the next page of results. Null for first page',
              args: [
                Arg(
                name: 'continuation-toke'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'List of filters',
              args: [
                Arg(
                name: 'filter'
              )
              ]
            ),
            Option(
              name: '--order-by',
              description: 'List of OrderBy option',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ad-only-auth',
      description: 'Manage Azure Active Directly only Authentication settings for this Synapse workspace',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable Azure Active Directly only Authentication for this Synapse workspace',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable Azure Active Directly only Authentication for this Synapse workspace',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get a specific Azure Active Directly only Authentication property',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'data-flow',
      description: 'Manage Synapse\'s data flows',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a data flow',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The data flow name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a data flow',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The data flow name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List data flows',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set an exist data flow',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The data flow name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a data flow',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The data flow name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dataset',
      description: 'Manage Synapse\'s datasets',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a dataset',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a dataset',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List datasets',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update an exist dataset',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a dataset',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an exist dataset',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'integration-runtime',
      description: 'Manage Synapse\'s integration runtimes',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an integration runtime',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'The integration runtime type',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'Managed'),
                  FigSuggestion(name: 'SelfHosted')
                ]
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--compute-type',
              description: 'Compute type of the data flow cluster which will execute data flow job',
              args: [
                Arg(
                name: 'compute-type',
                suggestions: [

                  FigSuggestion(name: 'ComputeOptimized'),
                  FigSuggestion(name: 'General'),
                  FigSuggestion(name: 'MemoryOptimized')
                ]
              )
              ]
            ),
            Option(
              name: '--core-count',
              description: 'Core count of the data flow cluster which will execute data flow job',
              args: [
                Arg(
                name: 'core-coun'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The integration runtime description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the integration runtime entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The integration runtime location',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--time-to-live',
              description: 'Time to live (in minutes) setting of the data flow cluster which will execute data flow job',
              args: [
                Arg(
                name: 'time-to-liv'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an integration runtime',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'get-connection-info',
          description: 'Get the integration runtime connection infomation',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-monitoring-data',
          description: 'Get metric data for a self-hosted integration runtime',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-status',
          description: 'Gets detailed status information for an integration runtime',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List integration runtimes',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-auth-key',
          description: 'Get keys for a self-hosted integration runtime',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'regenerate-auth-key',
          description: 'Regenerate self-hosted integration runtime key',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'The name of the authentication key to regenerate',
              args: [
                Arg(
                name: 'key-name',
                suggestions: [

                  FigSuggestion(name: 'authKey1'),
                  FigSuggestion(name: 'authKey2')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an integration runtime',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'ETag of the integration runtime entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned. Default value is None',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start an SSIS integration runtime',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop an SSIS integration runtime',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'sync-credentials',
          description: 'Synchronize credentials among integration runtime nodes',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an integration runtime',
          options: [

            Option(
              name: '--auto-update',
              description: 'Enable or disable the self-hosted integration runtime auto-update',
              args: [
                Arg(
                name: 'auto-update',
                suggestions: [

                  FigSuggestion(name: 'Off'),
                  FigSuggestion(name: 'On')
                ]
              )
              ]
            ),
            Option(
              name: '--update-delay-offset',
              description: 'The time of the day for the self-hosted integration runtime auto-update',
              args: [
                Arg(
                name: 'update-delay-offse'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade self-hosted integration runtime',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of a integration runtime is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--if-none-match',
              description: 'ETag of the integration runtime entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned. Default value is None',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        ),
        Subcommand(
          name: 'managed',
          description: 'Manage integration runtime with synapse sub group managed',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an managed integration runtime',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The integration runtime name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--compute-type',
                  description: 'Compute type of the data flow cluster which will execute data flow job',
                  args: [
                    Arg(
                    name: 'compute-type',
                    suggestions: [

                      FigSuggestion(name: 'ComputeOptimized'),
                      FigSuggestion(name: 'General'),
                      FigSuggestion(name: 'MemoryOptimized')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--core-count',
                  description: 'Core count of the data flow cluster which will execute data flow job',
                  args: [
                    Arg(
                    name: 'core-coun'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'The integration runtime description',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the integration runtime entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The integration runtime location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--time-to-live',
                  description: 'Time to live (in minutes) setting of the data flow cluster which will execute data flow job',
                  args: [
                    Arg(
                    name: 'time-to-liv'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'self-hosted',
          description: 'Manage integration runtime with synapse sub group self-hosted',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an self-hosted integration runtime',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The integration runtime name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'The integration runtime description',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the integration runtime entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'integration-runtime-node',
      description: 'Manage Synapse\'s self-hosted integration runtime nodes',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Remove a self-hosted integration runtime node',
          options: [

            Option(
              name: '--node-name',
              description: 'The integration runtime node name',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'get-ip-address',
          description: 'Get self-hosted integration runtime node ip',
          options: [

            Option(
              name: '--node-name',
              description: 'The integration runtime node name',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get self-hosted integration runtime node information',
          options: [

            Option(
              name: '--node-name',
              description: 'The integration runtime node name',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update self-hosted integration runtime node',
          options: [

            Option(
              name: '--auto-update',
              description: 'Enable or disable the self-hosted integration runtime auto-update',
              args: [
                Arg(
                name: 'auto-update',
                suggestions: [

                  FigSuggestion(name: 'Off'),
                  FigSuggestion(name: 'On')
                ]
              )
              ]
            ),
            Option(
              name: '--node-name',
              description: 'The integration runtime node name',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
              name: '--update-delay-offset',
              description: 'The time of the day for the self-hosted integration runtime auto-update',
              args: [
                Arg(
                name: 'update-delay-offse'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'kql-script',
      description: 'Manage script with kusto',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a KQL script',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'The KQL query file path',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the KQL script',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--kusto-database-name',
              description: 'The name of the Kusto database',
              args: [
                Arg(
                name: 'kusto-database-nam'
              )
              ]
            ),
            Option(
              name: '--kusto-pool-name',
              description: 'The name of the Kusto pool',
              args: [
                Arg(
                name: 'kusto-pool-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a KQL script',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the KQL script',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export KQL scripts',
          options: [

            Option(
              name: '--output-folder',
              description: 'The name of the output folder',
              args: [
                Arg(
                name: 'output-folde'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the KQL script',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Creates a KQL script',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'The KQL query file path',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the KQL script',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--kusto-database-name',
              description: 'The name of the Kusto database',
              args: [
                Arg(
                name: 'kusto-database-nam'
              )
              ]
            ),
            Option(
              name: '--kusto-pool-name',
              description: 'The name of the Kusto pool',
              args: [
                Arg(
                name: 'kusto-pool-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List KQL scripts',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a KQL script',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the KQL script',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of a KQL script is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the KQL script',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'kusto',
      description: 'Manage synapse kusto',
      subcommands: [

        Subcommand(
          name: 'attached-database-configuration',
          description: 'Manage kusto pool attached database configuration with synapse',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an attached database configuration',
              options: [

                Option(
                  name: '--attached-database-configuration-name',
                  description: 'The name of the attached database configuration',
                  args: [
                    Arg(
                    name: 'attached-database-configuration-nam'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database which you would like to attach, use * if you want to follow all current and future databases',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--default-principals-modification-kind',
                  description: 'The default principals modification kind',
                  args: [
                    Arg(
                    name: 'default-principals-modification-kind',
                    suggestions: [

                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'Replace'),
                      FigSuggestion(name: 'Union')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-resource-id',
                  description: 'The resource id of the kusto pool where the databases you would like to attach reside',
                  args: [
                    Arg(
                    name: 'kusto-pool-resource-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--table-level-sharing-properties',
                  description: 'Table level sharing specifications',
                  args: [
                    Arg(
                    name: 'table-level-sharing-propertie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the attached database configuration with the given name',
              options: [

                Option(
                  name: '--attached-database-configuration-name',
                  description: 'The name of the attached database configuration',
                  args: [
                    Arg(
                    name: 'attached-database-configuration-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Returns the list of attached database configurations of the given Kusto Pool',
              options: [

                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Returns an attached database configuration',
              options: [

                Option(
                  name: '--attached-database-configuration-name',
                  description: 'The name of the attached database configuration',
                  args: [
                    Arg(
                    name: 'attached-database-configuration-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an attached database configuration',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--attached-database-configuration-name',
                  description: 'The name of the attached database configuration',
                  args: [
                    Arg(
                    name: 'attached-database-configuration-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database which you would like to attach, use * if you want to follow all current and future databases',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--default-principals-modification-kind',
                  description: 'The default principals modification kind',
                  args: [
                    Arg(
                    name: 'default-principals-modification-kind',
                    suggestions: [

                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'Replace'),
                      FigSuggestion(name: 'Union')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-resource-id',
                  description: 'The resource id of the kusto pool where the databases you would like to attach reside',
                  args: [
                    Arg(
                    name: 'kusto-pool-resource-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--table-level-sharing-properties',
                  description: 'Table level sharing specifications',
                  args: [
                    Arg(
                    name: 'table-level-sharing-propertie'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the synapse kusto attached-database-configuration is met',
              options: [

                Option(
                  name: '--attached-database-configuration-name',
                  description: 'The name of the attached database configuration',
                  args: [
                    Arg(
                    name: 'attached-database-configuration-nam'
                  )
                  ]
                ),
                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'data-connection',
          description: 'Manage kusto pool data connection with synapse',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Deletes the data connection with the given name',
              options: [

                Option(
                  name: '--data-connection-name',
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Returns the list of data connections of the given Kusto pool database',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Returns a data connection',
              options: [

                Option(
                  name: '--data-connection-name',
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the synapse kusto data-connection is met',
              options: [

                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--data-connection-name',
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'event-grid',
              description: 'Manage kusto pool data connection with synapse sub group event-grid',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a data connection',
                  options: [

                    Option(
                      name: '--data-connection-name',
                      description: 'The name of the data connection',
                      args: [
                        Arg(
                        name: 'data-connection-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'The name of the database in the Kusto pool',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--kusto-pool-name',
                      description: 'The name of the Kusto pool',
                      args: [
                        Arg(
                        name: 'kusto-pool-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--blob-storage-event-type',
                      description: 'The name of blob storage event type to process',
                      args: [
                        Arg(
                        name: 'blob-storage-event-type',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft.Storage.BlobCreated'),
                          FigSuggestion(name: 'Microsoft.Storage.BlobRenamed')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--consumer-group',
                      description: 'The event hub consumer group',
                      args: [
                        Arg(
                        name: 'consumer-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-format',
                      description: 'The data format of the message. Optionally the data format can be added to each message',
                      args: [
                        Arg(
                        name: 'data-format',
                        suggestions: [

                          FigSuggestion(name: 'APACHEAVRO'),
                          FigSuggestion(name: 'AVRO'),
                          FigSuggestion(name: 'CSV'),
                          FigSuggestion(name: 'JSON'),
                          FigSuggestion(name: 'MULTIJSON'),
                          FigSuggestion(name: 'ORC'),
                          FigSuggestion(name: 'PARQUET'),
                          FigSuggestion(name: 'PSV'),
                          FigSuggestion(name: 'RAW'),
                          FigSuggestion(name: 'SCSV'),
                          FigSuggestion(name: 'SINGLEJSON'),
                          FigSuggestion(name: 'SOHSV'),
                          FigSuggestion(name: 'TSV'),
                          FigSuggestion(name: 'TSVE'),
                          FigSuggestion(name: 'TXT'),
                          FigSuggestion(name: 'W3CLOGFILE')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--event-hub-resource-id',
                      description: 'The resource ID where the event grid is configured to send events',
                      args: [
                        Arg(
                        name: 'event-hub-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--ignore-first-record',
                      description: 'A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file',
                      args: [
                        Arg(
                        name: 'ignore-first-record',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--location', '-l'],
                      description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                      args: [
                        Arg(
                        name: 'locatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--mapping-rule-name',
                      description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                      args: [
                        Arg(
                        name: 'mapping-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: '--storage-account-resource-id',
                      description: 'The resource ID of the storage account where the data resides',
                      args: [
                        Arg(
                        name: 'storage-account-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--table-name',
                      description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                      args: [
                        Arg(
                        name: 'table-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Updates a data connection',
                  options: [

                    Option(
                      name: '--blob-storage-event-type',
                      description: 'The name of blob storage event type to process',
                      args: [
                        Arg(
                        name: 'blob-storage-event-type',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft.Storage.BlobCreated'),
                          FigSuggestion(name: 'Microsoft.Storage.BlobRenamed')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--consumer-group',
                      description: 'The event hub consumer group',
                      args: [
                        Arg(
                        name: 'consumer-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-connection-name',
                      description: 'The name of the data connection',
                      args: [
                        Arg(
                        name: 'data-connection-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-format',
                      description: 'The data format of the message. Optionally the data format can be added to each message',
                      args: [
                        Arg(
                        name: 'data-format',
                        suggestions: [

                          FigSuggestion(name: 'APACHEAVRO'),
                          FigSuggestion(name: 'AVRO'),
                          FigSuggestion(name: 'CSV'),
                          FigSuggestion(name: 'JSON'),
                          FigSuggestion(name: 'MULTIJSON'),
                          FigSuggestion(name: 'ORC'),
                          FigSuggestion(name: 'PARQUET'),
                          FigSuggestion(name: 'PSV'),
                          FigSuggestion(name: 'RAW'),
                          FigSuggestion(name: 'SCSV'),
                          FigSuggestion(name: 'SINGLEJSON'),
                          FigSuggestion(name: 'SOHSV'),
                          FigSuggestion(name: 'TSV'),
                          FigSuggestion(name: 'TSVE'),
                          FigSuggestion(name: 'TXT'),
                          FigSuggestion(name: 'W3CLOGFILE')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'The name of the database in the Kusto pool',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--event-hub-resource-id',
                      description: 'The resource ID where the event grid is configured to send events',
                      args: [
                        Arg(
                        name: 'event-hub-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--ignore-first-record',
                      description: 'A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file',
                      args: [
                        Arg(
                        name: 'ignore-first-record',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--kusto-pool-name',
                      description: 'The name of the Kusto pool',
                      args: [
                        Arg(
                        name: 'kusto-pool-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--location', '-l'],
                      description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                      args: [
                        Arg(
                        name: 'locatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--mapping-rule-name',
                      description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                      args: [
                        Arg(
                        name: 'mapping-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-account-resource-id',
                      description: 'The resource ID of the storage account where the data resides',
                      args: [
                        Arg(
                        name: 'storage-account-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--table-name',
                      description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                      args: [
                        Arg(
                        name: 'table-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'event-hub',
              description: 'Manage kusto pool data connection with synapse sub group event-hub',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a data connection',
                  options: [

                    Option(
                      name: '--data-connection-name',
                      description: 'The name of the data connection',
                      args: [
                        Arg(
                        name: 'data-connection-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'The name of the database in the Kusto pool',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--kusto-pool-name',
                      description: 'The name of the Kusto pool',
                      args: [
                        Arg(
                        name: 'kusto-pool-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--compression',
                      description: 'The event hub messages compression type',
                      args: [
                        Arg(
                        name: 'compression',
                        suggestions: [

                          FigSuggestion(name: 'GZip'),
                          FigSuggestion(name: 'None')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--consumer-group',
                      description: 'The event hub consumer group',
                      args: [
                        Arg(
                        name: 'consumer-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-format',
                      description: 'The data format of the message. Optionally the data format can be added to each message',
                      args: [
                        Arg(
                        name: 'data-format',
                        suggestions: [

                          FigSuggestion(name: 'APACHEAVRO'),
                          FigSuggestion(name: 'AVRO'),
                          FigSuggestion(name: 'CSV'),
                          FigSuggestion(name: 'JSON'),
                          FigSuggestion(name: 'MULTIJSON'),
                          FigSuggestion(name: 'ORC'),
                          FigSuggestion(name: 'PARQUET'),
                          FigSuggestion(name: 'PSV'),
                          FigSuggestion(name: 'RAW'),
                          FigSuggestion(name: 'SCSV'),
                          FigSuggestion(name: 'SINGLEJSON'),
                          FigSuggestion(name: 'SOHSV'),
                          FigSuggestion(name: 'TSV'),
                          FigSuggestion(name: 'TSVE'),
                          FigSuggestion(name: 'TXT'),
                          FigSuggestion(name: 'W3CLOGFILE')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--event-hub-resource-id',
                      description: 'The resource ID of the event hub to be used to create a data connection',
                      args: [
                        Arg(
                        name: 'event-hub-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--event-system-properties',
                      description: 'System properties of the event hub',
                      args: [
                        Arg(
                        name: 'event-system-propertie'
                      )
                      ]
                    ),
                    Option(
                      name: ['--location', '-l'],
                      description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                      args: [
                        Arg(
                        name: 'locatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--managed-identity-resource-id',
                      description: 'The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub',
                      args: [
                        Arg(
                        name: 'managed-identity-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--mapping-rule-name',
                      description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                      args: [
                        Arg(
                        name: 'mapping-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: '--table-name',
                      description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                      args: [
                        Arg(
                        name: 'table-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Updates a data connection',
                  options: [

                    Option(
                      name: '--compression',
                      description: 'The event hub messages compression type',
                      args: [
                        Arg(
                        name: 'compression',
                        suggestions: [

                          FigSuggestion(name: 'GZip'),
                          FigSuggestion(name: 'None')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--consumer-group',
                      description: 'The event hub consumer group',
                      args: [
                        Arg(
                        name: 'consumer-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-connection-name',
                      description: 'The name of the data connection',
                      args: [
                        Arg(
                        name: 'data-connection-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-format',
                      description: 'The data format of the message. Optionally the data format can be added to each message',
                      args: [
                        Arg(
                        name: 'data-format',
                        suggestions: [

                          FigSuggestion(name: 'APACHEAVRO'),
                          FigSuggestion(name: 'AVRO'),
                          FigSuggestion(name: 'CSV'),
                          FigSuggestion(name: 'JSON'),
                          FigSuggestion(name: 'MULTIJSON'),
                          FigSuggestion(name: 'ORC'),
                          FigSuggestion(name: 'PARQUET'),
                          FigSuggestion(name: 'PSV'),
                          FigSuggestion(name: 'RAW'),
                          FigSuggestion(name: 'SCSV'),
                          FigSuggestion(name: 'SINGLEJSON'),
                          FigSuggestion(name: 'SOHSV'),
                          FigSuggestion(name: 'TSV'),
                          FigSuggestion(name: 'TSVE'),
                          FigSuggestion(name: 'TXT'),
                          FigSuggestion(name: 'W3CLOGFILE')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'The name of the database in the Kusto pool',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--event-hub-resource-id',
                      description: 'The resource ID of the event hub to be used to create a data connection',
                      args: [
                        Arg(
                        name: 'event-hub-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--event-system-properties',
                      description: 'System properties of the event hub',
                      args: [
                        Arg(
                        name: 'event-system-propertie'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--kusto-pool-name',
                      description: 'The name of the Kusto pool',
                      args: [
                        Arg(
                        name: 'kusto-pool-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--location', '-l'],
                      description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                      args: [
                        Arg(
                        name: 'locatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--managed-identity-resource-id',
                      description: 'The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub',
                      args: [
                        Arg(
                        name: 'managed-identity-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--mapping-rule-name',
                      description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                      args: [
                        Arg(
                        name: 'mapping-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--table-name',
                      description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                      args: [
                        Arg(
                        name: 'table-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'iot-hub',
              description: 'Manage kusto pool data connection with synapse sub group iot-hub',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a data connection',
                  options: [

                    Option(
                      name: '--data-connection-name',
                      description: 'The name of the data connection',
                      args: [
                        Arg(
                        name: 'data-connection-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'The name of the database in the Kusto pool',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--kusto-pool-name',
                      description: 'The name of the Kusto pool',
                      args: [
                        Arg(
                        name: 'kusto-pool-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--consumer-group',
                      description: 'The iot hub consumer group',
                      args: [
                        Arg(
                        name: 'consumer-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-format',
                      description: 'The data format of the message. Optionally the data format can be added to each message',
                      args: [
                        Arg(
                        name: 'data-format',
                        suggestions: [

                          FigSuggestion(name: 'APACHEAVRO'),
                          FigSuggestion(name: 'AVRO'),
                          FigSuggestion(name: 'CSV'),
                          FigSuggestion(name: 'JSON'),
                          FigSuggestion(name: 'MULTIJSON'),
                          FigSuggestion(name: 'ORC'),
                          FigSuggestion(name: 'PARQUET'),
                          FigSuggestion(name: 'PSV'),
                          FigSuggestion(name: 'RAW'),
                          FigSuggestion(name: 'SCSV'),
                          FigSuggestion(name: 'SINGLEJSON'),
                          FigSuggestion(name: 'SOHSV'),
                          FigSuggestion(name: 'TSV'),
                          FigSuggestion(name: 'TSVE'),
                          FigSuggestion(name: 'TXT'),
                          FigSuggestion(name: 'W3CLOGFILE')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--event-system-properties',
                      description: 'System properties of the iot hub',
                      args: [
                        Arg(
                        name: 'event-system-propertie'
                      )
                      ]
                    ),
                    Option(
                      name: '--iot-hub-resource-id',
                      description: 'The resource ID of the Iot hub to be used to create a data connection',
                      args: [
                        Arg(
                        name: 'iot-hub-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--location', '-l'],
                      description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                      args: [
                        Arg(
                        name: 'locatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--mapping-rule-name',
                      description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                      args: [
                        Arg(
                        name: 'mapping-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: '--shared-access-policy-name',
                      description: 'The name of the share access policy',
                      args: [
                        Arg(
                        name: 'shared-access-policy-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--table-name',
                      description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                      args: [
                        Arg(
                        name: 'table-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Updates a data connection',
                  options: [

                    Option(
                      name: '--consumer-group',
                      description: 'The iot hub consumer group',
                      args: [
                        Arg(
                        name: 'consumer-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-connection-name',
                      description: 'The name of the data connection',
                      args: [
                        Arg(
                        name: 'data-connection-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--data-format',
                      description: 'The data format of the message. Optionally the data format can be added to each message',
                      args: [
                        Arg(
                        name: 'data-format',
                        suggestions: [

                          FigSuggestion(name: 'APACHEAVRO'),
                          FigSuggestion(name: 'AVRO'),
                          FigSuggestion(name: 'CSV'),
                          FigSuggestion(name: 'JSON'),
                          FigSuggestion(name: 'MULTIJSON'),
                          FigSuggestion(name: 'ORC'),
                          FigSuggestion(name: 'PARQUET'),
                          FigSuggestion(name: 'PSV'),
                          FigSuggestion(name: 'RAW'),
                          FigSuggestion(name: 'SCSV'),
                          FigSuggestion(name: 'SINGLEJSON'),
                          FigSuggestion(name: 'SOHSV'),
                          FigSuggestion(name: 'TSV'),
                          FigSuggestion(name: 'TSVE'),
                          FigSuggestion(name: 'TXT'),
                          FigSuggestion(name: 'W3CLOGFILE')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'The name of the database in the Kusto pool',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--event-system-properties',
                      description: 'System properties of the iot hub',
                      args: [
                        Arg(
                        name: 'event-system-propertie'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--iot-hub-resource-id',
                      description: 'The resource ID of the Iot hub to be used to create a data connection',
                      args: [
                        Arg(
                        name: 'iot-hub-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--kusto-pool-name',
                      description: 'The name of the Kusto pool',
                      args: [
                        Arg(
                        name: 'kusto-pool-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--location', '-l'],
                      description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                      args: [
                        Arg(
                        name: 'locatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--mapping-rule-name',
                      description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                      args: [
                        Arg(
                        name: 'mapping-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--shared-access-policy-name',
                      description: 'The name of the share access policy',
                      args: [
                        Arg(
                        name: 'shared-access-policy-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--table-name',
                      description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                      args: [
                        Arg(
                        name: 'table-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'database',
          description: 'Manage kusto pool database with synapse',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a database',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--read-write-database',
                  description: 'Class representing a read write database',
                  args: [
                    Arg(
                    name: 'read-write-databas'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the database with the given name',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Returns the list of databases of the given Kusto pool',
              options: [

                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Returns a database',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates a database',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--read-write-database',
                  description: 'Class representing a read write database',
                  args: [
                    Arg(
                    name: 'read-write-databas'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the synapse kusto database is met',
              options: [

                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'database-principal-assignment',
          description: 'Manage kusto pool database principal assignment with synapse',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a Kusto pool database principalAssignment',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--principal-id',
                  description: 'The principal ID assigned to the database principal. It can be a user email, application ID, or security group name',
                  args: [
                    Arg(
                    name: 'principal-i'
                  )
                  ]
                ),
                Option(
                  name: '--principal-type',
                  description: 'Principal type',
                  args: [
                    Arg(
                    name: 'principal-type',
                    suggestions: [

                      FigSuggestion(name: 'App'),
                      FigSuggestion(name: 'Group'),
                      FigSuggestion(name: 'User')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'Database principal role',
                  args: [
                    Arg(
                    name: 'role',
                    suggestions: [

                      FigSuggestion(name: 'Admin'),
                      FigSuggestion(name: 'Ingestor'),
                      FigSuggestion(name: 'Monitor'),
                      FigSuggestion(name: 'UnrestrictedViewer'),
                      FigSuggestion(name: 'User'),
                      FigSuggestion(name: 'Viewer')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tenant-id',
                  description: 'The tenant id of the principal',
                  args: [
                    Arg(
                    name: 'tenant-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a Kusto pool principalAssignment',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all Kusto pool database principalAssignments',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets a Kusto pool database principalAssignment',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Kusto pool database principalAssignment',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-id',
                  description: 'The principal ID assigned to the database principal. It can be a user email, application ID, or security group name',
                  args: [
                    Arg(
                    name: 'principal-i'
                  )
                  ]
                ),
                Option(
                  name: '--principal-type',
                  description: 'Principal type',
                  args: [
                    Arg(
                    name: 'principal-type',
                    suggestions: [

                      FigSuggestion(name: 'App'),
                      FigSuggestion(name: 'Group'),
                      FigSuggestion(name: 'User')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'Database principal role',
                  args: [
                    Arg(
                    name: 'role',
                    suggestions: [

                      FigSuggestion(name: 'Admin'),
                      FigSuggestion(name: 'Ingestor'),
                      FigSuggestion(name: 'Monitor'),
                      FigSuggestion(name: 'UnrestrictedViewer'),
                      FigSuggestion(name: 'User'),
                      FigSuggestion(name: 'Viewer')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tenant-id',
                  description: 'The tenant id of the principal',
                  args: [
                    Arg(
                    name: 'tenant-i'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the synapse kusto database-principal-assignment is met',
              options: [

                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto pool',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pool',
          description: 'Manage kusto pool with synapse',
          subcommands: [

            Subcommand(
              name: 'add-language-extension',
              description: 'Add a list of language extensions that can run within KQL queries',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--value',
                  description: 'The list of language extensions',
                  args: [
                    Arg(
                    name: 'valu'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a Kusto pool',
              options: [

                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--sku',
                  description: 'The SKU of the kusto pool',
                  args: [
                    Arg(
                    name: 'sk'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--enable-purge',
                  description: 'A boolean value that indicates if the purge operations are enabled',
                  args: [
                    Arg(
                    name: 'enable-purge',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--enable-streaming-ingest', '--esig'],
                  description: 'A boolean value that indicates if the streaming ingest is enabled',
                  args: [
                    Arg(
                    name: 'enable-streaming-ingest',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'The ETag of the Kusto Pool. Omit this value to always overwrite the current Kusto Pool. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--if-none-match',
                  description: 'Set to \'*\' to allow a new Kusto Pool to be created, but to prevent updating an existing Kusto Pool. Other values will result in a 412 Pre-condition Failed response',
                  args: [
                    Arg(
                    name: 'if-none-matc'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--optimized-autoscale',
                  description: 'Optimized auto scale definition',
                  args: [
                    Arg(
                    name: 'optimized-autoscal'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-uid',
                  description: 'The workspace unique identifier',
                  args: [
                    Arg(
                    name: 'workspace-ui'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a Kusto pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'detach-follower-database',
              description: 'Detaches all followers of a database owned by this Kusto Pool',
              options: [

                Option(
                  name: ['--attached-database-configuration-name', '--adcn'],
                  description: 'Resource name of the attached database configuration in the follower cluster',
                  args: [
                    Arg(
                    name: 'attached-database-configuration-nam'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-resource-id',
                  description: 'Resource id of the cluster that follows a database owned by this cluster',
                  args: [
                    Arg(
                    name: 'kusto-pool-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all Kusto pools',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-follower-database',
              description: 'Returns a list of databases that are owned by this Kusto Pool and were followed by another Kusto Pool',
              options: [

                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-language-extension',
              description: 'Returns a list of language extensions that can run within KQL queries',
              options: [

                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-sku',
              description: 'Returns the SKUs available for the provided resource',
              options: [

                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove-language-extension',
              description: 'Remove a list of language extensions that can run within KQL queries',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--value',
                  description: 'The list of language extensions',
                  args: [
                    Arg(
                    name: 'valu'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets a Kusto pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'start',
              description: 'Starts a Kusto pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'stop',
              description: 'Stops a Kusto pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Kusto Kusto Pool',
              options: [

                Option(
                  name: '--enable-purge',
                  description: 'A boolean value that indicates if the purge operations are enabled',
                  args: [
                    Arg(
                    name: 'enable-purge',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--enable-streaming-ingest', '--esig'],
                  description: 'A boolean value that indicates if the streaming ingest is enabled',
                  args: [
                    Arg(
                    name: 'enable-streaming-ingest',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'The ETag of the Kusto Pool. Omit this value to always overwrite the current Kusto Pool. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--optimized-autoscale',
                  description: 'Optimized auto scale definition',
                  args: [
                    Arg(
                    name: 'optimized-autoscal'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--sku',
                  description: 'The SKU of the kusto pool',
                  args: [
                    Arg(
                    name: 'sk'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-uid',
                  description: 'The workspace unique identifier',
                  args: [
                    Arg(
                    name: 'workspace-ui'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the synapse kusto pool is met',
              options: [

                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: ['--kusto-pool-name', '--name', '-n'],
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pool-principal-assignment',
          description: 'Manage kusto pool principal assignment with synapse',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Kusto pool principalAssignment',
              options: [

                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--principal-id',
                  description: 'The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name',
                  args: [
                    Arg(
                    name: 'principal-i'
                  )
                  ]
                ),
                Option(
                  name: '--principal-type',
                  description: 'Principal type',
                  args: [
                    Arg(
                    name: 'principal-type',
                    suggestions: [

                      FigSuggestion(name: 'App'),
                      FigSuggestion(name: 'Group'),
                      FigSuggestion(name: 'User')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'Cluster principal role',
                  args: [
                    Arg(
                    name: 'role',
                    suggestions: [

                      FigSuggestion(name: 'AllDatabasesAdmin'),
                      FigSuggestion(name: 'AllDatabasesViewer')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tenant-id',
                  description: 'The tenant id of the principal',
                  args: [
                    Arg(
                    name: 'tenant-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a Kusto pool principalAssignment',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all Kusto pool principalAssignments',
              options: [

                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets a Kusto pool principalAssignment',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Kusto pool principalAssignment',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-id',
                  description: 'The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name',
                  args: [
                    Arg(
                    name: 'principal-i'
                  )
                  ]
                ),
                Option(
                  name: '--principal-type',
                  description: 'Principal type',
                  args: [
                    Arg(
                    name: 'principal-type',
                    suggestions: [

                      FigSuggestion(name: 'App'),
                      FigSuggestion(name: 'Group'),
                      FigSuggestion(name: 'User')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'Cluster principal role',
                  args: [
                    Arg(
                    name: 'role',
                    suggestions: [

                      FigSuggestion(name: 'AllDatabasesAdmin'),
                      FigSuggestion(name: 'AllDatabasesViewer')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tenant-id',
                  description: 'The tenant id of the principal',
                  args: [
                    Arg(
                    name: 'tenant-i'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the synapse kusto pool-principal-assignment is met',
              options: [

                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--kusto-pool-name',
                  description: 'The name of the Kusto pool',
                  args: [
                    Arg(
                    name: 'kusto-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-assignment-name',
                  description: 'The name of the Kusto principalAssignment',
                  args: [
                    Arg(
                    name: 'principal-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'kusto-operation',
      description: 'Manage kusto operation with synapse',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists available operations for the Kusto sub-resources inside Microsoft.Synapse provider'
        )
      ]
    ),
    Subcommand(
      name: 'link-connection',
      description: 'Manage Synapse\'s link connection',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a link connection',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a link connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'edit-link-tables',
          description: 'Edit tables for a link connection',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'The Edit link-tables file path, The file format can be viewed using --help',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-link-tables-status',
          description: 'Query the link table status of a link connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--continuation-token',
              description: 'Continuation token to query table status',
              args: [
                Arg(
                name: 'continuation-toke'
              )
              ]
            ),
            Option(
              name: '--max-segment-count',
              description: 'Max segment count to query table status',
              args: [
                Arg(
                name: 'max-segment-coun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-status',
          description: 'Check a link connection status after start/stop a link connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List link connections in a synapse workspace',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-link-tables',
          description: 'List the link tables of a link connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a link connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start a link connnection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop a link connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a link connection',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-landing-zone-credential',
          description: 'Update landing zone credetial of a link connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The link connection name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--sas-token',
              description: 'Value of secure string',
              args: [
                Arg(
                name: 'sas-toke'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'linked-service',
      description: 'Manage Synapse\'s linked services',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a linked service',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a linked service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List linked services',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update an exist linked service',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a linked service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an exist linked service',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'managed-private-endpoints',
      description: 'Manage synapse managed private endpoints',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a synapse managed private endpoints',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--pe-name',
              description: 'The managed private endpoint name',
              args: [
                Arg(
                name: 'pe-nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete synapse managed private endpoints in a workspace',
          options: [

            Option(
              name: '--pe-name',
              description: 'The managed private endpoint name',
              args: [
                Arg(
                name: 'pe-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List synapse managed private endpoints in a workspace',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a synapse managed private endpoints',
          options: [

            Option(
              name: '--pe-name',
              description: 'The managed private endpoint name',
              args: [
                Arg(
                name: 'pe-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'notebook',
      description: 'Manage Synapse\'s notebooks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a notebook',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The notebook name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--executor-count',
              description: 'Number of executors to be allocated in the specified Spark pool for the job',
              args: [
                Arg(
                name: 'executor-coun'
              )
              ]
            ),
            Option(
              name: '--executor-size',
              description: 'Number of core and memory to be used for executors allocated in the specified Spark pool for the job',
              args: [
                Arg(
                name: 'executor-size',
                suggestions: [

                  FigSuggestion(name: 'Large'),
                  FigSuggestion(name: 'Medium'),
                  FigSuggestion(name: 'Small')
                ]
              )
              ]
            ),
            Option(
              name: '--folder-path',
              description: 'The folder that this notebook is in. If not specified, this notebook will appear at the root level. Eg: folder/subfolder1',
              args: [
                Arg(
                name: 'folder-pat'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--spark-pool-name',
              description: 'The name of the Spark pool',
              args: [
                Arg(
                name: 'spark-pool-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a notebook',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The notebook name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export notebooks',
          options: [

            Option(
              name: '--output-folder',
              description: 'The folder where the notebook should be placed',
              args: [
                Arg(
                name: 'output-folde'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The notebook name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Import a notebook',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The notebook name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--executor-count',
              description: 'Number of executors to be allocated in the specified Spark pool for the job',
              args: [
                Arg(
                name: 'executor-coun'
              )
              ]
            ),
            Option(
              name: '--executor-size',
              description: 'Number of core and memory to be used for executors allocated in the specified Spark pool for the job',
              args: [
                Arg(
                name: 'executor-size',
                suggestions: [

                  FigSuggestion(name: 'Large'),
                  FigSuggestion(name: 'Medium'),
                  FigSuggestion(name: 'Small')
                ]
              )
              ]
            ),
            Option(
              name: '--folder-path',
              description: 'The folder that this notebook is in. If not specified, this notebook will appear at the root level. Eg: folder/subfolder1',
              args: [
                Arg(
                name: 'folder-pat'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--spark-pool-name',
              description: 'The name of the Spark pool',
              args: [
                Arg(
                name: 'spark-pool-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List notebooks',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set an exist notebook',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The notebook name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--executor-count',
              description: 'Number of executors to be allocated in the specified Spark pool for the job',
              args: [
                Arg(
                name: 'executor-coun'
              )
              ]
            ),
            Option(
              name: '--executor-size',
              description: 'Number of core and memory to be used for executors allocated in the specified Spark pool for the job',
              args: [
                Arg(
                name: 'executor-size',
                suggestions: [

                  FigSuggestion(name: 'Large'),
                  FigSuggestion(name: 'Medium'),
                  FigSuggestion(name: 'Small')
                ]
              )
              ]
            ),
            Option(
              name: '--folder-path',
              description: 'The folder that this notebook is in. If not specified, this notebook will appear at the root level. Eg: folder/subfolder1',
              args: [
                Arg(
                name: 'folder-pat'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--spark-pool-name',
              description: 'The name of the Spark pool',
              args: [
                Arg(
                name: 'spark-pool-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a notebook',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The notebook name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipeline',
      description: 'Manage Synapse\'s pipelines',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a pipeline',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'create-run',
          description: 'Creates a run of a pipeline',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--is-recovery',
              description: 'Recovery mode flag. If recovery mode is set to true, the specified referenced pipeline run and the new run will be grouped under the same groupId',
              args: [
                Arg(
                name: 'is-recovery',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'Parameters for pipeline run. Can be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--reference-pipeline-run-id', '--run-id'],
              description: 'The pipeline run ID for rerun. If run ID is specified, the parameters of the specified run will be used to create a new run',
              args: [
                Arg(
                name: 'reference-pipeline-run-i'
              )
              ]
            ),
            Option(
              name: '--start-activity-name',
              description: 'In recovery mode, the rerun will start from this activity. If not specified, all activities will run',
              args: [
                Arg(
                name: 'start-activity-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a pipeline',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List pipelines',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update an exist pipeline',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a pipeline',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an exist pipeline',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipeline-run',
      description: 'Manage Synapse\'s pipeline run',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a pipeline run by its run ID',
          options: [

            Option(
              name: '--run-id',
              description: 'The pipeline run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--is-recursive',
              description: 'If true, cancel all the Child pipelines that are triggered by the current pipeline',
              args: [
                Arg(
                name: 'is-recursive',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'query-by-workspace',
          description: 'Query pipeline runs in the workspace based on input filter conditions',
          options: [

            Option(
              name: '--last-updated-after',
              description: 'The time at or after which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-afte'
              )
              ]
            ),
            Option(
              name: '--last-updated-before',
              description: 'The time at or before which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-befor'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--continuation-token',
              description: 'The continuation token for getting the next page of results. Null for first page',
              args: [
                Arg(
                name: 'continuation-toke'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'List of filters',
              args: [
                Arg(
                name: 'filter'
              )
              ]
            ),
            Option(
              name: '--order-by',
              description: 'List of OrderBy option',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a pipeline run by its run ID',
          options: [

            Option(
              name: '--run-id',
              description: 'The pipeline run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'role',
      description: 'Manage Synapse\'s role assignments and definitions',
      subcommands: [

        Subcommand(
          name: 'assignment',
          description: 'Manage Synapse\'s role assignments',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a role assignment',
              options: [

                Option(
                  name: '--role',
                  description: 'The role name/id that is assigned to the principal',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--assignee',
                  description: 'Represent a user or service principal. Supported format: object id, user sign-in name, or service principal name',
                  args: [
                    Arg(
                    name: 'assigne'
                  )
                  ]
                ),
                Option(
                  name: '--assignee-object-id',
                  description: 'Use this parameter instead of \'--assignee\' to bypass Graph API invocation in case of insufficient privileges. This parameter only works with object ids for users, groups, service principals, and managed identities. For managed identities use the principal id. For service principals, use the object id and not the app id',
                  args: [
                    Arg(
                    name: 'assignee-object-i'
                  )
                  ]
                ),
                Option(
                  name: ['--assignee-principal-type', '--assignee-type'],
                  description: 'Use with --assignee-object-id to avoid errors caused by propagation latency in AAD Graph',
                  args: [
                    Arg(
                    name: 'assignee-principal-type',
                    suggestions: [

                      FigSuggestion(name: 'Group'),
                      FigSuggestion(name: 'ServicePrincipal'),
                      FigSuggestion(name: 'User')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--assignment-id',
                  description: 'Custom role assignment id in guid format, if not specified, assignment id will be randomly generated',
                  args: [
                    Arg(
                    name: 'assignment-i'
                  )
                  ]
                ),
                Option(
                  name: '--item',
                  description: 'Item granted access in the workspace. Using with --item-type to combine the scope of assignment',
                  args: [
                    Arg(
                    name: 'ite'
                  )
                  ]
                ),
                Option(
                  name: '--item-type',
                  description: 'Item type granted access in the workspace. Using with --item to combine the scope of assignment',
                  args: [
                    Arg(
                    name: 'item-type',
                    suggestions: [

                      FigSuggestion(name: 'bigDataPools'),
                      FigSuggestion(name: 'credentials'),
                      FigSuggestion(name: 'integrationRuntimes'),
                      FigSuggestion(name: 'linkedServices')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'A scope defines the resources or artifacts that the access applies to. Synapse supports hierarchical scopes. Permissions granted at a higher-level scope are inherited by objects at a lower level. In Synapse RBAC, the top-level scope is a workspace. Assigning a role with workspace scope grants permissions to all applicable objects in the workspace',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete role assignments of workspace',
              options: [

                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--assignee',
                  description: 'Represent a user or service principal. Supported format: object id, user sign-in name, or service principal name',
                  args: [
                    Arg(
                    name: 'assigne'
                  )
                  ]
                ),
                Option(
                  name: '--assignee-object-id',
                  description: 'Use this parameter instead of \'--assignee\' to bypass Graph API invocation in case of insufficient privileges. This parameter only works with object ids for users, groups, service principals, and managed identities. For managed identities use the principal id. For service principals, use the object id and not the app id',
                  args: [
                    Arg(
                    name: 'assignee-object-i'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'Space-separated role assignment ids. You should not provide --role or --assignee when --ids is provided',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--item',
                  description: 'Item granted access in the workspace. Using with --item-type to combine the scope of assignment.Using az role assignment with filter condition before executing delete operation to be clearly aware of which assignments will be deleted',
                  args: [
                    Arg(
                    name: 'ite'
                  )
                  ]
                ),
                Option(
                  name: '--item-type',
                  description: 'Item type granted access in the workspace. Using with --item to combine the scope of assignment.Using az role assignment with filter condition before executing delete operation to be clearly aware of which assignments will be deleted',
                  args: [
                    Arg(
                    name: 'item-type',
                    suggestions: [

                      FigSuggestion(name: 'bigDataPools'),
                      FigSuggestion(name: 'credentials'),
                      FigSuggestion(name: 'integrationRuntimes'),
                      FigSuggestion(name: 'linkedServices')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'The role name/id that is assigned to the principal',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'A scope defines the resources or artifacts that the access applies to. Synapse supports hierarchical scopes. Permissions granted at a higher-level scope are inherited by objects at a lower level. In Synapse RBAC, the top-level scope is a workspace. Using az role assignment with filter condition before executing delete operation to be clearly aware of which assignments will be deleted',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List role assignments',
              options: [

                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--assignee',
                  description: 'Represent a user or service principal. Supported format: object id, user sign-in name, or service principal name',
                  args: [
                    Arg(
                    name: 'assigne'
                  )
                  ]
                ),
                Option(
                  name: '--assignee-object-id',
                  description: 'Use this parameter instead of \'--assignee\' to bypass Graph API invocation in case of insufficient privileges. This parameter only works with object ids for users, groups, service principals, and managed identities. For managed identities use the principal id. For service principals, use the object id and not the app id',
                  args: [
                    Arg(
                    name: 'assignee-object-i'
                  )
                  ]
                ),
                Option(
                  name: '--item',
                  description: 'Item granted access in the workspace. Using with --item-type to combine the scope of assignment',
                  args: [
                    Arg(
                    name: 'ite'
                  )
                  ]
                ),
                Option(
                  name: '--item-type',
                  description: 'Item type granted access in the workspace. Using with --item to combine the scope of assignment',
                  args: [
                    Arg(
                    name: 'item-type',
                    suggestions: [

                      FigSuggestion(name: 'bigDataPools'),
                      FigSuggestion(name: 'credentials'),
                      FigSuggestion(name: 'integrationRuntimes'),
                      FigSuggestion(name: 'linkedServices')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'The role name/id that is assigned to the principal',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'A scope defines the resources or artifacts that the access applies to. Synapse supports hierarchical scopes. Permissions granted at a higher-level scope are inherited by objects at a lower level. In Synapse RBAC, the top-level scope is a workspace. Assigning a role with workspace scope grants permissions to all applicable objects in the workspace',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a role assignment by id',
              options: [

                Option(
                  name: '--id',
                  description: 'Id of the role that is assigned to the principal',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'definition',
          description: 'Manage Synapse\'s role definitions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List role definitions',
              options: [

                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--is-built-in',
                  description: 'Is a Synapse Built-In Role or not',
                  args: [
                    Arg(
                    name: 'is-built-in',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get role definition by role id/name',
              options: [

                Option(
                  name: '--role',
                  description: 'The role name/id that is assigned to the principal',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scope',
          description: 'Manage Synapse\'s role scopes',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List role scopes',
              options: [

                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spark',
      description: 'Manage Spark pools and Spark jobs',
      subcommands: [

        Subcommand(
          name: 'job',
          description: 'Manage Synapse Spark batch jobs',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancel a Spark job',
              options: [

                Option(
                  name: '--livy-id',
                  description: 'The id of the Spark job',
                  args: [
                    Arg(
                    name: 'livy-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all Spark jobs',
              options: [

                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--from-index',
                  description: 'Optional parameter specifying which index the list should begin from',
                  args: [
                    Arg(
                    name: 'from-inde'
                  )
                  ]
                ),
                Option(
                  name: '--size',
                  description: 'The size of the returned list.By default it is 20 and that is the maximum',
                  args: [
                    Arg(
                    name: 'siz'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a Spark job',
              options: [

                Option(
                  name: '--livy-id',
                  description: 'The id of the Spark job',
                  args: [
                    Arg(
                    name: 'livy-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'submit',
              description: 'Submit a Spark job',
              options: [

                Option(
                  name: '--executor-size',
                  description: 'The executor size',
                  args: [
                    Arg(
                    name: 'executor-size',
                    suggestions: [

                      FigSuggestion(name: 'Large'),
                      FigSuggestion(name: 'Medium'),
                      FigSuggestion(name: 'Small')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--executors',
                  description: 'The number of executors',
                  args: [
                    Arg(
                    name: 'executor'
                  )
                  ]
                ),
                Option(
                  name: '--main-definition-file',
                  description: 'The main file used for the job',
                  args: [
                    Arg(
                    name: 'main-definition-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The Spark job name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--archives',
                  description: 'The array of archives',
                  args: [
                    Arg(
                    name: 'archive'
                  )
                  ]
                ),
                Option(
                  name: '--arguments',
                  description: 'Optional arguments to the job (Note: please use storage URIs for file arguments)',
                  args: [
                    Arg(
                    name: 'argument'
                  )
                  ]
                ),
                Option(
                  name: '--configuration',
                  description: 'The configuration of Spark job',
                  args: [
                    Arg(
                    name: 'configuratio'
                  )
                  ]
                ),
                Option(
                  name: '--language',
                  description: 'The Spark job language',
                  args: [
                    Arg(
                    name: 'language',
                    suggestions: [

                      FigSuggestion(name: 'CSharp'),
                      FigSuggestion(name: 'PySpark'),
                      FigSuggestion(name: 'Python'),
                      FigSuggestion(name: 'Scala'),
                      FigSuggestion(name: 'Spark'),
                      FigSuggestion(name: 'SparkDotNet')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--main-class-name',
                  description: 'The fully-qualified identifier or the main class that is in the main definition file',
                  args: [
                    Arg(
                    name: 'main-class-nam'
                  )
                  ]
                ),
                Option(
                  name: '--reference-files',
                  description: 'Additional files used for reference in the main definition file',
                  args: [
                    Arg(
                    name: 'reference-file'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pool',
          description: 'Manage Spark pools',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Spark pool',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--node-count',
                  description: 'The number of node',
                  args: [
                    Arg(
                    name: 'node-coun'
                  )
                  ]
                ),
                Option(
                  name: '--node-size',
                  description: 'The level of compute power that each node in the Big Data pool has',
                  args: [
                    Arg(
                    name: 'node-size',
                    suggestions: [

                      FigSuggestion(name: 'Large'),
                      FigSuggestion(name: 'Medium'),
                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'Small'),
                      FigSuggestion(name: 'XLarge'),
                      FigSuggestion(name: 'XXLarge'),
                      FigSuggestion(name: 'XXXLarge')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--spark-version',
                  description: 'The supported Spark version is 2.4 now',
                  args: [
                    Arg(
                    name: 'spark-versio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--delay',
                  description: 'The delay time whose unit is minute',
                  args: [
                    Arg(
                    name: 'dela'
                  )
                  ]
                ),
                Option(
                  name: '--enable-auto-pause',
                  description: 'The flag of enabling auto pause',
                  args: [
                    Arg(
                    name: 'enable-auto-pause',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-auto-scale',
                  description: 'The flag of enabling auto scale',
                  args: [
                    Arg(
                    name: 'enable-auto-scale',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-dynamic-exec',
                  description: 'Indicates whether Dynamic Executor Allocation is enabled or not',
                  args: [
                    Arg(
                    name: 'enable-dynamic-exec',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--max-executors',
                  description: 'The maximum number of executors alloted',
                  args: [
                    Arg(
                    name: 'max-executor'
                  )
                  ]
                ),
                Option(
                  name: '--max-node-count',
                  description: 'The max node count',
                  args: [
                    Arg(
                    name: 'max-node-coun'
                  )
                  ]
                ),
                Option(
                  name: '--min-executors',
                  description: 'The minimum number of executors alloted',
                  args: [
                    Arg(
                    name: 'min-executor'
                  )
                  ]
                ),
                Option(
                  name: '--min-node-count',
                  description: 'The min node count',
                  args: [
                    Arg(
                    name: 'min-node-coun'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--node-size-family',
                  description: 'The kind of nodes that the Big Data pool provides',
                  args: [
                    Arg(
                    name: 'node-size-family',
                    suggestions: [

                      FigSuggestion(name: 'HardwareAcceleratedFPGA'),
                      FigSuggestion(name: 'HardwareAcceleratedGPU'),
                      FigSuggestion(name: 'MemoryOptimized'),
                      FigSuggestion(name: 'None')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--spark-config-file-path',
                  description: 'Absolute path of Spark pool properties configuration file',
                  args: [
                    Arg(
                    name: 'spark-config-file-pat'
                  )
                  ]
                ),
                Option(
                  name: '--spark-events-folder',
                  description: 'The Spark events folder',
                  args: [
                    Arg(
                    name: 'spark-events-folde'
                  )
                  ]
                ),
                Option(
                  name: '--spark-log-folder',
                  description: 'The default Spark log folder',
                  args: [
                    Arg(
                    name: 'spark-log-folde'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Spark pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all Spark pools',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a Spark pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the Spark pool',
              options: [

                Option(
                  name: '--delay',
                  description: 'The delay time whose unit is minute',
                  args: [
                    Arg(
                    name: 'dela'
                  )
                  ]
                ),
                Option(
                  name: '--enable-auto-pause',
                  description: 'The flag of enabling auto pause',
                  args: [
                    Arg(
                    name: 'enable-auto-pause',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-auto-scale',
                  description: 'The flag of enabling auto scale',
                  args: [
                    Arg(
                    name: 'enable-auto-scale',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-dynamic-exec',
                  description: 'Indicates whether Dynamic Executor Allocation is enabled or not',
                  args: [
                    Arg(
                    name: 'enable-dynamic-exec',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'The flag of force operation'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--library-requirements',
                  description: 'The library requirements file',
                  args: [
                    Arg(
                    name: 'library-requirement'
                  )
                  ]
                ),
                Option(
                  name: '--max-executors',
                  description: 'The maximum number of executors alloted',
                  args: [
                    Arg(
                    name: 'max-executor'
                  )
                  ]
                ),
                Option(
                  name: '--max-node-count',
                  description: 'The max node count',
                  args: [
                    Arg(
                    name: 'max-node-coun'
                  )
                  ]
                ),
                Option(
                  name: '--min-executors',
                  description: 'The minimum number of executors alloted',
                  args: [
                    Arg(
                    name: 'min-executor'
                  )
                  ]
                ),
                Option(
                  name: '--min-node-count',
                  description: 'The min node count',
                  args: [
                    Arg(
                    name: 'min-node-coun'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--node-count',
                  description: 'The number of node',
                  args: [
                    Arg(
                    name: 'node-coun'
                  )
                  ]
                ),
                Option(
                  name: '--node-size',
                  description: 'The level of compute power that each node in the Big Data pool has',
                  args: [
                    Arg(
                    name: 'node-size',
                    suggestions: [

                      FigSuggestion(name: 'Large'),
                      FigSuggestion(name: 'Medium'),
                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'Small'),
                      FigSuggestion(name: 'XLarge'),
                      FigSuggestion(name: 'XXLarge'),
                      FigSuggestion(name: 'XXXLarge')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--package',
                  description: 'List of workspace packages name',
                  args: [
                    Arg(
                    name: 'packag'
                  )
                  ]
                ),
                Option(
                  name: '--package-action',
                  description: 'Package action must be specified when you add or remove a workspace package from a Apache Spark pool',
                  args: [
                    Arg(
                    name: 'package-action',
                    suggestions: [

                      FigSuggestion(name: 'Add'),
                      FigSuggestion(name: 'Remove')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--spark-config-file-path',
                  description: 'Absolute path of Spark pool properties configuration file',
                  args: [
                    Arg(
                    name: 'spark-config-file-pat'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of a Spark pool is met',
              options: [

                Option(
                  name: '--big-data-pool-name',
                  description: 'Big Data pool name',
                  args: [
                    Arg(
                    name: 'big-data-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'session',
          description: 'Manage Synapse Spark sessions',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancel a Spark session',
              options: [

                Option(
                  name: '--livy-id',
                  description: 'The id of the Spark session job',
                  args: [
                    Arg(
                    name: 'livy-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a Spark session',
              options: [

                Option(
                  name: '--executor-size',
                  description: 'The executor size',
                  args: [
                    Arg(
                    name: 'executor-size',
                    suggestions: [

                      FigSuggestion(name: 'Large'),
                      FigSuggestion(name: 'Medium'),
                      FigSuggestion(name: 'Small')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--executors',
                  description: 'The number of executors',
                  args: [
                    Arg(
                    name: 'executor'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The Spark session name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--configuration',
                  description: 'The configuration of Spark session',
                  args: [
                    Arg(
                    name: 'configuratio'
                  )
                  ]
                ),
                Option(
                  name: '--reference-files',
                  description: 'Additional files used for reference in the main definition file',
                  args: [
                    Arg(
                    name: 'reference-file'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all Spark sessions',
              options: [

                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--from-index',
                  description: 'Optional parameter specifying which index the list should begin from',
                  args: [
                    Arg(
                    name: 'from-inde'
                  )
                  ]
                ),
                Option(
                  name: '--size',
                  description: 'The size of the returned list.By default it is 20 and that is the maximum',
                  args: [
                    Arg(
                    name: 'siz'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'reset-timeout',
              description: 'Reset a Spark session timeout time',
              options: [

                Option(
                  name: '--livy-id',
                  description: 'The id of the Spark session job',
                  args: [
                    Arg(
                    name: 'livy-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a Spark session',
              options: [

                Option(
                  name: '--livy-id',
                  description: 'The id of the Spark session job',
                  args: [
                    Arg(
                    name: 'livy-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'statement',
          description: 'Manage Synapse Spark statements',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancel a Spark statement',
              options: [

                Option(
                  name: '--livy-id',
                  description: 'The id of the statement',
                  args: [
                    Arg(
                    name: 'livy-i'
                  )
                  ]
                ),
                Option(
                  name: '--session-id',
                  description: 'The id of Spark session',
                  args: [
                    Arg(
                    name: 'session-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'invoke',
              description: 'Invoke a Spark statement',
              options: [

                Option(
                  name: '--code',
                  description: 'The code of Spark statement. This is either the code contents or use @<file path> to load the content from a file',
                  args: [
                    Arg(
                    name: 'cod'
                  )
                  ]
                ),
                Option(
                  name: '--language',
                  description: 'The language of Spark statement',
                  args: [
                    Arg(
                    name: 'language',
                    suggestions: [

                      FigSuggestion(name: 'CSharp'),
                      FigSuggestion(name: 'PySpark'),
                      FigSuggestion(name: 'Python'),
                      FigSuggestion(name: 'SQL'),
                      FigSuggestion(name: 'Scala'),
                      FigSuggestion(name: 'Spark'),
                      FigSuggestion(name: 'SparkDotNet')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--session-id',
                  description: 'The id of Spark session',
                  args: [
                    Arg(
                    name: 'session-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all Spark statements',
              options: [

                Option(
                  name: '--session-id',
                  description: 'The id of Spark session',
                  args: [
                    Arg(
                    name: 'session-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a Spark statement',
              options: [

                Option(
                  name: '--livy-id',
                  description: 'The id of the statement',
                  args: [
                    Arg(
                    name: 'livy-i'
                  )
                  ]
                ),
                Option(
                  name: '--session-id',
                  description: 'The id of Spark session',
                  args: [
                    Arg(
                    name: 'session-i'
                  )
                  ]
                ),
                Option(
                  name: '--spark-pool-name',
                  description: 'The name of the Spark pool',
                  args: [
                    Arg(
                    name: 'spark-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spark-job-definition',
      description: 'Manage spark job definitions in a synapse workspace',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a spark job definition',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The spark job definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--folder-path',
              description: 'The folder that this spark job definition is in. If not specified, it will appear at the root level. Eg: folder/subfolder1',
              args: [
                Arg(
                name: 'folder-pat'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a spark job definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The spark job definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List spark job definitions',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a spark job definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The spark job definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a spark job definition',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The spark job definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--folder-path',
              description: 'The folder that this spark job definition is in. If not specified, it will appear at the root level. Eg: folder/subfolder1',
              args: [
                Arg(
                name: 'folder-pat'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of a spark job definition is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The spark job definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sql',
      description: 'Manage SQL pools',
      subcommands: [

        Subcommand(
          name: 'ad-admin',
          description: 'Manage SQL Active Directory administrator',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create the SQL Azure Active Directory administrator',
              options: [

                Option(
                  name: ['--display-name', '-u'],
                  description: 'Display name of the Azure AD administrator user or group',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--object-id', '-i'],
                  description: 'The unique ID of the Azure AD administrator',
                  args: [
                    Arg(
                    name: 'object-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the SQL Azure Active Directory administrator',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the SQL Azure Active Directory administrator',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the SQL Azure Active Directory administrator',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: ['--display-name', '-u'],
                  description: 'Display name of the Azure AD administrator user or group',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--object-id', '-i'],
                  description: 'The unique ID of the Azure AD administrator',
                  args: [
                    Arg(
                    name: 'object-i'
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition is met',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'audit-policy',
          description: 'Manage SQL auditing policy',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Get a SQL\'s auditing policy',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a SQL\'s auditing policy',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--actions',
                  description: 'List of actions and action groups to audit',
                  args: [
                    Arg(
                    name: 'action'
                  )
                  ]
                ),
                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--blob-auditing-policy-name',
                  description: '',
                  args: [
                    Arg(
                    name: 'blob-auditing-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--blob-storage-target-state', '--bsts'],
                  description: 'Indicate whether blob storage is a destination for audit records',
                  args: [
                    Arg(
                    name: 'blob-storage-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub', '--eh'],
                  description: 'The name of the event hub. If none is specified when providing event_hub_authorization_rule_id, the default event hub will be selected',
                  args: [
                    Arg(
                    name: 'event-hu'
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub-authorization-rule-id', '--ehari'],
                  description: 'The resource Id for the event hub authorization rule',
                  args: [
                    Arg(
                    name: 'event-hub-authorization-rule-i'
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub-target-state', '--ehts'],
                  description: 'Indicate whether event hub is a destination for audit records',
                  args: [
                    Arg(
                    name: 'event-hub-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-azure-monitor',
                  description: 'Whether enabling azure monitor target or not',
                  args: [
                    Arg(
                    name: 'enable-azure-monitor',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: ['--log-analytics-target-state', '--lats'],
                  description: 'Indicate whether log analytics is a destination for audit records',
                  args: [
                    Arg(
                    name: 'log-analytics-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--log-analytics-workspace-resource-id', '--lawri'],
                  description: 'The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Audit Logs',
                  args: [
                    Arg(
                    name: 'log-analytics-workspace-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--queue-delay-milliseconds', '--queue-delay-time'],
                  description: 'The amount of time in milliseconds that can elapse before audit actions are forced to be processed',
                  args: [
                    Arg(
                    name: 'queue-delay-millisecond'
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
                  )
                  ]
                ),
                Option(
                  name: '--retention-days',
                  description: 'The number of days to retain audit logs',
                  args: [
                    Arg(
                    name: 'retention-day'
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--state',
                  description: 'Auditing policy state',
                  args: [
                    Arg(
                    name: 'state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--storage-account',
                  description: 'Name of the storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--storage-endpoint',
                  description: 'The storage account endpoint',
                  args: [
                    Arg(
                    name: 'storage-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--storage-key',
                  description: 'Access key for the storage account',
                  args: [
                    Arg(
                    name: 'storage-ke'
                  )
                  ]
                ),
                Option(
                  name: '--storage-subscription',
                  description: 'The subscription id of storage account',
                  args: [
                    Arg(
                    name: 'storage-subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--use-secondary-key',
                  description: 'Indicates whether using the secondary storeage key or not',
                  args: [
                    Arg(
                    name: 'use-secondary-key',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition is met',
              options: [

                Option(
                  name: '--blob-auditing-policy-name',
                  description: 'The name of the blob auditing policy',
                  args: [
                    Arg(
                    name: 'blob-auditing-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pool',
          description: 'Manage SQL pools',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a SQL pool',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The SQL pool name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--performance-level',
                  description: 'The performance level',
                  args: [
                    Arg(
                    name: 'performance-leve'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--collation',
                  description: 'Collation defines the rules that sort and compare data, and cannot be changed after SQL pool creation. The default collation is "SQL_Latin1_General_CP1_CI_AS"',
                  args: [
                    Arg(
                    name: 'collatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--storage-type',
                  description: 'The Storage Account Type',
                  args: [
                    Arg(
                    name: 'storage-type',
                    suggestions: [

                      FigSuggestion(name: 'GRS'),
                      FigSuggestion(name: 'LRS')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a SQL pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The SQL pool name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all SQL pools',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-deleted',
              description: 'List all deleted SQL pools',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pause',
              description: 'Pause a SQL pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The SQL pool name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore',
              description: 'Create a new SQL pool by restoring from a backup',
              options: [

                Option(
                  name: ['--destination-name', '--dest-name'],
                  description: 'Name of the sql pool that will be created as the restore destination',
                  args: [
                    Arg(
                    name: 'destination-nam'
                  )
                  ]
                ),
                Option(
                  name: '--deleted-time',
                  description: 'If specified, restore from a deleted database instead of from an existing database. Must match the deleted time of a deleted database in the same server. Either --time or --deleted-time (or both) must be specified. Time should be in following format: "YYYY-MM-DDTHH:MM:SS"',
                  args: [
                    Arg(
                    name: 'deleted-tim'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The SQL pool name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--performance-level',
                  description: 'The performance level',
                  args: [
                    Arg(
                    name: 'performance-leve'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--storage-type',
                  description: 'The Storage Account Type',
                  args: [
                    Arg(
                    name: 'storage-type',
                    suggestions: [

                      FigSuggestion(name: 'GRS'),
                      FigSuggestion(name: 'LRS')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--time', '-t'],
                  description: 'The point in time of the source database that will be restored to create the new database. Must be greater than or equal to the source database\'s earliestRestoreDate value. Either --time or --deleted-time (or both) must be specified. Time should be in following format: "YYYY-MM-DDTHH:MM:SS"',
                  args: [
                    Arg(
                    name: 'tim'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'resume',
              description: 'Resume a SQL pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The SQL pool name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a SQL pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The SQL pool name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-connection-string',
              description: 'Generate a connection string to a SQL pool',
              options: [

                Option(
                  name: ['--client', '-c'],
                  description: 'Type of client connection provider',
                  args: [
                    Arg(
                    name: 'client',
                    suggestions: [

                      FigSuggestion(name: 'ado.net'),
                      FigSuggestion(name: 'jdbc'),
                      FigSuggestion(name: 'odbc'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'php_pdo')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--auth-type', '-a'],
                  description: 'Type of authentication',
                  args: [
                    Arg(
                    name: 'auth-type',
                    suggestions: [

                      FigSuggestion(name: 'ADIntegrated'),
                      FigSuggestion(name: 'ADPassword'),
                      FigSuggestion(name: 'SqlPassword')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The SQL pool name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a SQL pool',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The SQL pool name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--performance-level',
                  description: 'The performance level',
                  args: [
                    Arg(
                    name: 'performance-leve'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of a SQL pool is met',
              options: [

                Option(
                  name: '--sql-pool-name',
                  description: 'SQL pool name',
                  args: [
                    Arg(
                    name: 'sql-pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'audit-policy',
              description: 'Manage a SQL pool\'s auditing policy',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Get a SQL pool\'s auditing policy',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a SQL pool\'s auditing policy',
                  options: [

                    Option(
                      name: '--actions',
                      description: 'List of actions and action groups to audit',
                      args: [
                        Arg(
                        name: 'action'
                      )
                      ]
                    ),
                    Option(
                      name: '--add',
                      description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                      args: [
                        Arg(
                        name: 'ad'
                      )
                      ]
                    ),
                    Option(
                      name: ['--blob-storage-target-state', '--bsts'],
                      description: 'Indicate whether blob storage is a destination for audit records',
                      args: [
                        Arg(
                        name: 'blob-storage-target-state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--event-hub', '--eh'],
                      description: 'The name of the event hub. If none is specified when providing event_hub_authorization_rule_id, the default event hub will be selected',
                      args: [
                        Arg(
                        name: 'event-hu'
                      )
                      ]
                    ),
                    Option(
                      name: ['--event-hub-authorization-rule-id', '--ehari'],
                      description: 'The resource Id for the event hub authorization rule',
                      args: [
                        Arg(
                        name: 'event-hub-authorization-rule-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--event-hub-target-state', '--ehts'],
                      description: 'Indicate whether event hub is a destination for audit records',
                      args: [
                        Arg(
                        name: 'event-hub-target-state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--enable-azure-monitor',
                      description: 'Whether enabling azure monitor target or not',
                      args: [
                        Arg(
                        name: 'enable-azure-monitor',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--log-analytics-target-state', '--lats'],
                      description: 'Indicate whether log analytics is a destination for audit records',
                      args: [
                        Arg(
                        name: 'log-analytics-target-state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--log-analytics-workspace-resource-id',
                        '--lawri',
                      ],
                      description: 'The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Audit Logs',
                      args: [
                        Arg(
                        name: 'log-analytics-workspace-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--remove',
                      description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                      args: [
                        Arg(
                        name: 'remov'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--retention-days',
                      description: 'The number of days to retain audit logs',
                      args: [
                        Arg(
                        name: 'retention-day'
                      )
                      ]
                    ),
                    Option(
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: '--state',
                      description: 'Auditing policy state',
                      args: [
                        Arg(
                        name: 'state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-account',
                      description: 'Name of the storage account',
                      args: [
                        Arg(
                        name: 'storage-accoun'
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-endpoint',
                      description: 'The storage account endpoint',
                      args: [
                        Arg(
                        name: 'storage-endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-key',
                      description: 'Access key for the storage account',
                      args: [
                        Arg(
                        name: 'storage-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-subscription',
                      description: 'The subscription id of storage account',
                      args: [
                        Arg(
                        name: 'storage-subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--use-secondary-key',
                      description: 'Indicates whether using the secondary storeage key or not',
                      args: [
                        Arg(
                        name: 'use-secondary-key',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'classification',
              description: 'Manage sensitivity classifications',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a column\'s sensitivity classification',
                  options: [

                    Option(
                      name: '--column',
                      description: 'The name of column',
                      args: [
                        Arg(
                        name: 'colum'
                      )
                      ]
                    ),
                    Option(
                      name: '--information-type',
                      description: 'The information type',
                      args: [
                        Arg(
                        name: 'information-typ'
                      )
                      ]
                    ),
                    Option(
                      name: '--label',
                      description: 'The label name',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--schema',
                      description: 'The name of schema',
                      args: [
                        Arg(
                        name: 'schem'
                      )
                      ]
                    ),
                    Option(
                      name: '--table',
                      description: 'The name of table',
                      args: [
                        Arg(
                        name: 'tabl'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete the sensitivity classification of a given column',
                  options: [

                    Option(
                      name: '--column',
                      description: 'The name of column',
                      args: [
                        Arg(
                        name: 'colum'
                      )
                      ]
                    ),
                    Option(
                      name: '--schema',
                      description: 'The name of schema',
                      args: [
                        Arg(
                        name: 'schem'
                      )
                      ]
                    ),
                    Option(
                      name: '--table',
                      description: 'The name of table',
                      args: [
                        Arg(
                        name: 'tabl'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'Get the sensitivity classifications of a given SQL pool',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--filter',
                      description: 'An OData filter expression that filters elements in the collection. Default value is None',
                      args: [
                        Arg(
                        name: 'filte'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the sensitivity classification of a given column',
                  options: [

                    Option(
                      name: '--column',
                      description: 'The name of column',
                      args: [
                        Arg(
                        name: 'colum'
                      )
                      ]
                    ),
                    Option(
                      name: '--schema',
                      description: 'The name of schema',
                      args: [
                        Arg(
                        name: 'schem'
                      )
                      ]
                    ),
                    Option(
                      name: '--table',
                      description: 'The name of table',
                      args: [
                        Arg(
                        name: 'tabl'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a column\'s sensitivity classification',
                  options: [

                    Option(
                      name: '--column',
                      description: 'The name of column',
                      args: [
                        Arg(
                        name: 'colum'
                      )
                      ]
                    ),
                    Option(
                      name: '--schema',
                      description: 'The name of schema',
                      args: [
                        Arg(
                        name: 'schem'
                      )
                      ]
                    ),
                    Option(
                      name: '--table',
                      description: 'The name of table',
                      args: [
                        Arg(
                        name: 'tabl'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--information-type',
                      description: 'The information type',
                      args: [
                        Arg(
                        name: 'information-typ'
                      )
                      ]
                    ),
                    Option(
                      name: '--label',
                      description: 'The label name',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'recommendation',
                  description: 'Manage sensitivity classification recommendations',
                  subcommands: [

                    Subcommand(
                      name: 'disable',
                      description: 'Disable sensitivity recommendations for a given column(recommendations are enabled by default on all columns)',
                      options: [

                        Option(
                          name: '--column',
                          description: 'The name of column',
                          args: [
                            Arg(
                            name: 'colum'
                          )
                          ]
                        ),
                        Option(
                          name: '--schema',
                          description: 'The name of schema',
                          args: [
                            Arg(
                            name: 'schem'
                          )
                          ]
                        ),
                        Option(
                          name: '--table',
                          description: 'The name of table',
                          args: [
                            Arg(
                            name: 'tabl'
                          )
                          ]
                        ),
                        Option(
                          name: '--ids',
                          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                          args: [
                            Arg(
                            name: 'id'
                          )
                          ]
                        ),
                        Option(
                          name: ['--name', '-n'],
                          description: 'The SQL pool name',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: ['--resource-group', '-g'],
                          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                          args: [
                            Arg(
                            name: 'resource-grou'
                          )
                          ]
                        ),
                        Option(
                          name: '--subscription',
                          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                          args: [
                            Arg(
                            name: 'subscriptio'
                          )
                          ]
                        ),
                        Option(
                          name: '--workspace-name',
                          description: 'The workspace name',
                          args: [
                            Arg(
                            name: 'workspace-nam'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'enable',
                      description: 'Enable sensitivity recommendations for a given column(recommendations are enabled by default on all columns)',
                      options: [

                        Option(
                          name: '--column',
                          description: 'The name of column',
                          args: [
                            Arg(
                            name: 'colum'
                          )
                          ]
                        ),
                        Option(
                          name: '--schema',
                          description: 'The name of schema',
                          args: [
                            Arg(
                            name: 'schem'
                          )
                          ]
                        ),
                        Option(
                          name: '--table',
                          description: 'The name of table',
                          args: [
                            Arg(
                            name: 'tabl'
                          )
                          ]
                        ),
                        Option(
                          name: '--ids',
                          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                          args: [
                            Arg(
                            name: 'id'
                          )
                          ]
                        ),
                        Option(
                          name: ['--name', '-n'],
                          description: 'The SQL pool name',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: ['--resource-group', '-g'],
                          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                          args: [
                            Arg(
                            name: 'resource-grou'
                          )
                          ]
                        ),
                        Option(
                          name: '--subscription',
                          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                          args: [
                            Arg(
                            name: 'subscriptio'
                          )
                          ]
                        ),
                        Option(
                          name: '--workspace-name',
                          description: 'The workspace name',
                          args: [
                            Arg(
                            name: 'workspace-nam'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'list',
                      description: 'List the recommended sensitivity classifications of a given SQL pool',
                      options: [

                        Option(
                          name: ['--name', '-n'],
                          description: 'The SQL pool name',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: ['--resource-group', '-g'],
                          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                          args: [
                            Arg(
                            name: 'resource-grou'
                          )
                          ]
                        ),
                        Option(
                          name: '--workspace-name',
                          description: 'The workspace name',
                          args: [
                            Arg(
                            name: 'workspace-nam'
                          )
                          ]
                        ),
                        Option(
                          name: '--filter',
                          description: 'An OData filter expression that filters elements in the collection. Default value is None',
                          args: [
                            Arg(
                            name: 'filte'
                          )
                          ]
                        ),
                        Option(
                          name: '--included-disabled',
                          description: 'Indicates whether the result should include disabled recommendations',
                          args: [
                            Arg(
                            name: 'included-disabled',
                            suggestions: [

                              FigSuggestion(name: 'false'),
                              FigSuggestion(name: 'true')
                            ]
                          )
                          ]
                        ),
                        Option(
                          name: '--skip-token',
                          description: 'An OData query option to indicate how many elements to skip in the collection. Default value is None',
                          args: [
                            Arg(
                            name: 'skip-toke'
                          )
                          ]
                        )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'tde',
              description: 'Manage a SQL pool\'s transparent data encryption',
              subcommands: [

                Subcommand(
                  name: 'set',
                  description: 'Set a SQL pool\'s transparent data encryption configuration',
                  options: [

                    Option(
                      name: '--status',
                      description: 'Status of the transparent data encryption',
                      args: [
                        Arg(
                        name: 'status',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--transparent-data-encryption-name', '-d'],
                      description: 'Name of the transparent data encryption',
                      args: [
                        Arg(
                        name: 'transparent-data-encryption-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get a SQL pool\'s transparent data encryption configuration',
                  options: [

                    Option(
                      name: ['--transparent-data-encryption-name', '-d'],
                      description: 'Name of the transparent data encryption',
                      args: [
                        Arg(
                        name: 'transparent-data-encryption-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'threat-policy',
              description: 'Manage a SQL pool\'s threat detection policies',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Get a SQL pool\'s threat detection policy',
                  options: [

                    Option(
                      name: ['--security-alert-policy-name', '-s'],
                      description: 'Name of the security alert policy',
                      args: [
                        Arg(
                        name: 'security-alert-policy-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a SQL pool\'s threat detection policy',
                  options: [

                    Option(
                      name: '--add',
                      description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                      args: [
                        Arg(
                        name: 'ad'
                      )
                      ]
                    ),
                    Option(
                      name: '--disabled-alerts',
                      description: 'List of disabled alerts',
                      args: [
                        Arg(
                        name: 'disabled-alert'
                      )
                      ]
                    ),
                    Option(
                      name: '--email-account-admins',
                      description: 'Whether the alert is sent to the account administrators',
                      args: [
                        Arg(
                        name: 'email-account-admins',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--email-addresses',
                      description: 'List of email addresses that alerts are sent to',
                      args: [
                        Arg(
                        name: 'email-addresse'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The SQL pool name',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--remove',
                      description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                      args: [
                        Arg(
                        name: 'remov'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--retention-days',
                      description: 'The number of days to retain threat detection logs',
                      args: [
                        Arg(
                        name: 'retention-day'
                      )
                      ]
                    ),
                    Option(
                      name: ['--security-alert-policy-name', '-s'],
                      description: 'Name of the security alert policy',
                      args: [
                        Arg(
                        name: 'security-alert-policy-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: '--state',
                      description: 'Threat detection policy state',
                      args: [
                        Arg(
                        name: 'state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled'),
                          FigSuggestion(name: 'New')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-account',
                      description: 'Name of the storage account',
                      args: [
                        Arg(
                        name: 'storage-accoun'
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-endpoint',
                      description: 'The storage account endpoint',
                      args: [
                        Arg(
                        name: 'storage-endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-key',
                      description: 'Access key for the storage account',
                      args: [
                        Arg(
                        name: 'storage-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The workspace name',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sql-script',
      description: 'Manage SQL scripts in a synapse workspace',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create or update a SQL script',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'The SQL query file path',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The SQL script name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--additional-properties',
              description: 'The SQL script additional properties',
              args: [
                Arg(
                name: 'additional-propertie'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The SQL script description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--folder-name',
              description: 'The folder that this SQL script is in. If not specified, this SQL script will appear at the root level. Eg: folder/subfolder1',
              args: [
                Arg(
                name: 'folder-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--result-limit',
              description: 'The SQL query results limit. Default is 5000. \'-1\' is no limit',
              args: [
                Arg(
                name: 'result-limit',
                suggestions: [

                  FigSuggestion(name: '-1'),
                  FigSuggestion(name: '5000')
                ]
              )
              ]
            ),
            Option(
              name: '--sql-database-name',
              description: 'The SQL database name',
              args: [
                Arg(
                name: 'sql-database-nam'
              )
              ]
            ),
            Option(
              name: '--sql-pool-name',
              description: 'The SQL pool name',
              args: [
                Arg(
                name: 'sql-pool-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a SQL script',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The SQL script name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export a SQL script',
          options: [

            Option(
              name: '--output-folder',
              description: 'The SQL script export path',
              args: [
                Arg(
                name: 'output-folde'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The SQL script name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Import a SQL script',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'The SQL query file path',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The SQL script name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--additional-properties',
              description: 'The SQL script additional properties',
              args: [
                Arg(
                name: 'additional-propertie'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The SQL script description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--folder-name',
              description: 'The folder that this SQL script is in. If not specified, this SQL script will appear at the root level. Eg: folder/subfolder1',
              args: [
                Arg(
                name: 'folder-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--result-limit',
              description: 'The SQL query results limit. Default is 5000. \'-1\' is no limit',
              args: [
                Arg(
                name: 'result-limit',
                suggestions: [

                  FigSuggestion(name: '-1'),
                  FigSuggestion(name: '5000')
                ]
              )
              ]
            ),
            Option(
              name: '--sql-database-name',
              description: 'The SQL database name',
              args: [
                Arg(
                name: 'sql-database-nam'
              )
              ]
            ),
            Option(
              name: '--sql-pool-name',
              description: 'The SQL pool name',
              args: [
                Arg(
                name: 'sql-pool-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List SQL scripts in a synapse workspace',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a SQL script',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The SQL script name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of a sql script is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The SQL script name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'trigger',
      description: 'Manage Synapse\'s triggers',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a trigger',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a trigger',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'get-event-subscription-status',
          description: 'Get a trigger\'s event subscription status',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List triggers',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update an exist trigger',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a trigger',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Starts a trigger',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stops a trigger',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'subscribe-to-event',
          description: 'Subscribe event trigger to events',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'unsubscribe-from-event',
          description: 'Unsubscribe event trigger from events',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an exist trigger',
          options: [

            Option(
              name: '--file',
              description: 'Properties may be supplied from a JSON file using the @{path} syntax or a JSON string',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of a trigger is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'trigger-run',
      description: 'Synapse trigger-run',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a single trigger instance by runId',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'The trigger run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'query-by-workspace',
          description: 'Query trigger runs in the workspace based on input filter conditions',
          options: [

            Option(
              name: '--last-updated-after',
              description: 'The time at or after which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-afte'
              )
              ]
            ),
            Option(
              name: '--last-updated-before',
              description: 'The time at or before which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-befor'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--continuation-token',
              description: 'The continuation token for getting the next page of results. Null for first page',
              args: [
                Arg(
                name: 'continuation-toke'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'List of filters',
              args: [
                Arg(
                name: 'filter'
              )
              ]
            ),
            Option(
              name: '--order-by',
              description: 'List of OrderBy option',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rerun',
          description: 'Rerun single trigger instance by runId',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'The trigger run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'workspace',
      description: 'Manage Synapse workspaces',
      subcommands: [

        Subcommand(
          name: 'activate',
          description: 'Activates a workspace and change it\'s state from pending to success state when the workspace is first being provisioned and double encryption is enabled',
          options: [

            Option(
              name: '--key-identifier',
              description: 'The Key Vault Url of the workspace encryption key. should be in the format of: https://{keyvaultname}.vault.azure.net/keys/{keyname}',
              args: [
                Arg(
                name: 'key-identifie'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The workspace customer-managed key display name. All existing keys can be found using /"az synapse workspace key list/" cmdlet',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'check-name',
          description: 'Check if a Synapse workspace name is available or not',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name you wanted to check',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a Synapse workspace',
          options: [

            Option(
              name: '--file-system',
              description: 'The file system of the data lake storage account',
              args: [
                Arg(
                name: 'file-syste'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The workspace name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--sql-admin-login-password', '-p'],
              description: 'The sql administrator login password',
              args: [
                Arg(
                name: 'sql-admin-login-passwor'
              )
              ]
            ),
            Option(
              name: ['--sql-admin-login-user', '-u'],
              description: 'The sql administrator login user name',
              args: [
                Arg(
                name: 'sql-admin-login-use'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'The data lake storage account name or resource id',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'GitHub account name used for the repository or Azure devops organization name',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--allowed-tenant-ids',
              description: 'The approved Azure AD tenants which outbound data traffic allowed to. The Azure AD tenant of the current user will be included by default. Use (\'\' in PowerShell) to disable all allowed tenant ids',
              args: [
                Arg(
                name: 'allowed-tenant-id'
              )
              ]
            ),
            Option(
              name: ['--key-identifier', '--cmk'],
              description: 'The customer-managed key used to encrypt all data at rest in the workspace. Key identifier should be in the format of: https://{keyvaultname}.vault.azure.net/keys/{keyname}',
              args: [
                Arg(
                name: 'key-identifie'
              )
              ]
            ),
            Option(
              name: '--collaboration-branch',
              description: 'The branch name where you will collaborate with others and from which you will publish',
              args: [
                Arg(
                name: 'collaboration-branc'
              )
              ]
            ),
            Option(
              name: [
                '--enable-managed-virtual-network',
                '--enable-managed-vnet',
              ],
              description: 'The flag indicates whether enable managed virtual network',
              args: [
                Arg(
                name: 'enable-managed-virtual-network',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--host-name',
              description: 'If using github Enterprise Server, provide sever URL like https://github.mydomain.com.Do not use this option with GitHub Enterprise Cloud',
              args: [
                Arg(
                name: 'host-nam'
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'The workspace customer-managed key display name. All existing keys can be found using "az synapse workspace key list" cmdlet',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--last-commit-id',
              description: 'The last commit ID',
              args: [
                Arg(
                name: 'last-commit-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--managed-rg-name',
              description: 'Workspace managed resource group. The resource group name uniquely identifies the resource group within the user subscriptionId',
              args: [
                Arg(
                name: 'managed-rg-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--prevent-data-exfiltration', '--prevent-exfiltration'],
              description: 'The flag indicates whether enable data exfiltration',
              args: [
                Arg(
                name: 'prevent-data-exfiltration',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The project name to which you are connecting',
              args: [
                Arg(
                name: 'project-nam'
              )
              ]
            ),
            Option(
              name: '--repository-name',
              description: 'The name of the repository to which you are connecting',
              args: [
                Arg(
                name: 'repository-nam'
              )
              ]
            ),
            Option(
              name: '--repository-type',
              description: 'The repository configuration type',
              args: [
                Arg(
                name: 'repository-type',
                suggestions: [

                  FigSuggestion(name: 'AzureDevOpsGit'),
                  FigSuggestion(name: 'GitHub')
                ]
              )
              ]
            ),
            Option(
              name: '--root-folder',
              description: 'The name of the folder to the location of your Azure synapse JSON resources are imported. Default is /',
              args: [
                Arg(
                name: 'root-folde'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The tenant id used to connect Azure devops',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: '--uami-id',
              description: 'The list of User-assigned Managed Identity Id for workspace',
              args: [
                Arg(
                name: 'uami-i'
              )
              ]
            ),
            Option(
              name: '--uami-id-in-encrypt',
              description: 'User assigned identity resource Id used in Workspace Encryption',
              args: [
                Arg(
                name: 'uami-id-in-encryp'
              )
              ]
            ),
            Option(
              name: '--use-sami-in-encrypt',
              description: 'Whether use System assigned identity in Workspace Encryption. If use uami, please set True.If not, set False',
              args: [
                Arg(
                name: 'use-sami-in-encryp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Synapse workspace',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The workspace name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all Synapse workspaces',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a Synapse workspace',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The workspace name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a Synapse workspace',
          options: [

            Option(
              name: '--account-name',
              description: 'GitHub account name used for the repository or Azure devops organization name',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--allowed-tenant-ids',
              description: 'The approved Azure AD tenants which outbound data traffic allowed to. The Azure AD tenant of the current user will be included by default. Use (\'\' in PowerShell) to disable all allowed tenant ids',
              args: [
                Arg(
                name: 'allowed-tenant-id'
              )
              ]
            ),
            Option(
              name: '--collaboration-branch',
              description: 'The branch name where you will collaborate with others and from which you will publish',
              args: [
                Arg(
                name: 'collaboration-branc'
              )
              ]
            ),
            Option(
              name: '--host-name',
              description: 'If using github Enterprise Server, provide sever URL like https://github.mydomain.com.Do not use this option with GitHub Enterprise Cloud',
              args: [
                Arg(
                name: 'host-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'The workspace customer-managed key display name. All existing keys can be found using "az synapse workspace key list" cmdlet',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--last-commit-id',
              description: 'The last commit ID',
              args: [
                Arg(
                name: 'last-commit-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The workspace name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--project-name',
              description: 'The project name to which you are connecting',
              args: [
                Arg(
                name: 'project-nam'
              )
              ]
            ),
            Option(
              name: '--repository-name',
              description: 'The name of the repository to which you are connecting',
              args: [
                Arg(
                name: 'repository-nam'
              )
              ]
            ),
            Option(
              name: '--repository-type',
              description: 'The repository configuration type',
              args: [
                Arg(
                name: 'repository-type',
                suggestions: [

                  FigSuggestion(name: 'AzureDevOpsGit'),
                  FigSuggestion(name: 'GitHub')
                ]
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--root-folder',
              description: 'The name of the folder to the location of your Azure synapse JSON resources are imported. Default is /',
              args: [
                Arg(
                name: 'root-folde'
              )
              ]
            ),
            Option(
              name: ['--sql-admin-login-password', '-p'],
              description: 'The sql administrator login password',
              args: [
                Arg(
                name: 'sql-admin-login-passwor'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The tenant id used to connect Azure devops',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: '--uami-action',
              description: 'Action must be specified when you add/remove/set user assigned managed identities for workspace.The supported actions are:Add,Remove,Set.Add means to add user assigned managed identities for workspace, Remove means to remove user assigned managed identities from workspace, Set can be used when you want to add and remove user assigned managed identities at the same time, current identities will be coverd by specified ones',
              args: [
                Arg(
                name: 'uami-action',
                suggestions: [

                  FigSuggestion(name: 'Add'),
                  FigSuggestion(name: 'Remove'),
                  FigSuggestion(name: 'Set')
                ]
              )
              ]
            ),
            Option(
              name: '--uami-id',
              description: 'The list of User-assigned Managed Identity Id for workspace',
              args: [
                Arg(
                name: 'uami-i'
              )
              ]
            ),
            Option(
              name: '--uami-id-in-encrypt',
              description: 'User assigned identity resource Id used in Workspace Encryption',
              args: [
                Arg(
                name: 'uami-id-in-encryp'
              )
              ]
            ),
            Option(
              name: '--use-sami-in-encrypt',
              description: 'Whether use System assigned identity in Workspace Encryption. If use uami, please set True.If not, set False',
              args: [
                Arg(
                name: 'use-sami-in-encryp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the workspace is met',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        ),
        Subcommand(
          name: 'firewall-rule',
          description: 'Manage a workspace\'s firewall rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a firewall rule',
              options: [

                Option(
                  name: '--end-ip-address',
                  description: 'The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The IP firewall rule name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--start-ip-address',
                  description: 'The start IP address of the firewall rule. Must be IPv4 format',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a firewall rule',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The IP firewall rule name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all firewall rules',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a firewall rule',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The IP firewall rule name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a firewall rule',
              options: [

                Option(
                  name: '--end-ip-address',
                  description: 'The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The IP firewall rule name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--start-ip-address',
                  description: 'The start IP address of the firewall rule. Must be IPv4 format',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of a firewall rule is met',
              options: [

                Option(
                  name: '--rule-name',
                  description: 'The IP firewall rule name',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'key',
          description: 'Manage workspace\'s keys',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a workspace\'s key',
              options: [

                Option(
                  name: '--key-identifier',
                  description: 'The Key Vault Url of the workspace encryption key. should be in the format of: https://{keyvaultname}.vault.azure.net/keys/{keyname}',
                  args: [
                    Arg(
                    name: 'key-identifie'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The workspace customer-managed key display name. All existing keys can be found using /"az synapse workspace key list/" cmdlet',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a workspace\'s key. The key at active status can\'t be deleted',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The workspace customer-managed key display name. All existing keys can be found using /"az synapse workspace key list/" cmdlet',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List keys under specified workspace',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a workspace\'s key by name',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The workspace customer-managed key display name. All existing keys can be found using /"az synapse workspace key list/" cmdlet',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of a workspace key is met',
              options: [

                Option(
                  name: '--key-name',
                  description: 'The name of the workspace key',
                  args: [
                    Arg(
                    name: 'key-nam'
                  )
                  ]
                ),
                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'managed-identity',
          description: 'Manage workspace\'s managed-identity',
          subcommands: [

            Subcommand(
              name: 'grant-sql-access',
              description: 'Grant workspace\'s sql-access to managed-identity',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'revoke-sql-access',
              description: 'Revoke workspace\'s sql-access to managed-identity',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-sql-access',
              description: 'Show workspace\'s sql-access state to managed-identity',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of sql-access state to managed-identity is met',
              options: [

                Option(
                  name: '--created',
                  description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
                ),
                Option(
                  name: '--custom',
                  description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
                  args: [
                    Arg(
                    name: 'custo'
                  )
                  ]
                ),
                Option(
                  name: '--deleted',
                  description: 'Wait until deleted'
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum wait in seconds',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--updated',
                  description: 'Wait until updated with provisioningState at \'Succeeded\''
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'workspace-package',
      description: 'Manage Synapse\'s workspace packages',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a workspace package',
          options: [

            Option(
              name: ['--package-name', '--package', '--name', '-n'],
              description: 'The workspace package name',
              args: [
                Arg(
                name: 'package-nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List workspace packages',
          options: [

            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a workspace package',
          options: [

            Option(
              name: ['--package-name', '--package', '--name', '-n'],
              description: 'The workspace package name',
              args: [
                Arg(
                name: 'package-nam'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upload',
          description: 'Upload a local workspace package file to an Azure Synapse workspace',
          options: [

            Option(
              name: ['--package', '--file', '-f'],
              description: 'Specifies a local file path for a file to upload as workspace package',
              args: [
                Arg(
                name: 'packag'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-progress',
              description: 'Include this flag to disable progress reporting for the command'
            )
          ]
        ),
        Subcommand(
          name: 'upload-batch',
          description: 'Upload workspace package files from a local directory to an Azure Synapse workspace',
          options: [

            Option(
              name: ['--source', '-s'],
              description: 'The directory where the files to be uploaded are located',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--workspace-name',
              description: 'The workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--no-progress',
              description: 'Include this flag to disable progress reporting for the command'
            )
          ]
        )
      ]
    )
  ]
);
