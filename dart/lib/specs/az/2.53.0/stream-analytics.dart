// Auto-generated from TypeScript source: stream-analytics.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `stream-analytics` CLI
final FigSpec streamAnalyticsSpec = FigSpec(
  name: 'stream-analytics',
  description: 'Manage Stream Analytics',
  subcommands: [

    Subcommand(
      name: 'cluster',
      description: 'Manage cluster with stream analytics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Stream Analytics Cluster or replaces an already existing cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--if-match',
              description: 'The ETag of the resource. Omit this value to always overwrite the current record set. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'Set to \'*\' to allow a new resource to be created, but to prevent updating an existing record set. Other values will result in a 412 Pre-condition Failed response',
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
              name: '--sku',
              description: 'The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests',
              args: [
                Arg(
                name: 'sk'
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
          description: 'Delete the specified cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          description: 'List all of the clusters in the given resource group. And Lists all of the clusters in the given subscription',
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
          name: 'list-streaming-job',
          description: 'List all of the streaming jobs in the given cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get information about the specified cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          description: 'Update an existing cluster. This can be used to partially update (ie. update one or two properties) a cluster without affecting the rest of the cluster definition',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              description: 'The ETag of the resource. Omit this value to always overwrite the current record set. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
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
              description: 'The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests',
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the stream-analytics cluster is met',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'function',
      description: 'Manage function with stream analytics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a function or replaces an already existing function under an existing streaming job',
          options: [

            Option(
              name: ['--function-name', '--name', '-n'],
              description: 'The name of the function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--if-match',
              description: 'The ETag of the function. Omit this value to always overwrite the current function. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'Set to \'*\' to allow a new function to be created, but to prevent updating an existing function. Other values will result in a 412 Pre-condition Failed response',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--properties',
              description: 'The properties that are associated with a function. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a function from the streaming job',
          options: [

            Option(
              name: ['--function-name', '--name', '-n'],
              description: 'The name of the function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'inspect',
          description: 'Retrieve the default definition of a function based on the parameters specified',
          options: [

            Option(
              name: ['--function-name', '--name', '-n'],
              description: 'The name of the function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--ml-properties',
              description: 'The parameters needed to retrieve the default function definition for an Azure Machine Learning web service function',
              args: [
                Arg(
                name: 'ml-propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all of the functions under the specified streaming job',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--select',
              description: 'The \$select OData query parameter. This is a comma-separated list of structural properties to include in the response, or "" to include all properties. By default, all properties are returned except diagnostics. Currently only accepts \'\' as a valid value',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details about the specified function',
          options: [

            Option(
              name: ['--function-name', '--name', '-n'],
              description: 'The name of the function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'test',
          description: 'Test if the information provided for a function is valid. This can range from testing the connection to the underlying web service behind the function or making sure the function code provided is syntactically correct',
          options: [

            Option(
              name: ['--function-name', '--name', '-n'],
              description: 'The name of the function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--properties',
              description: 'The properties that are associated with a function. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing function under an existing streaming job. This can be used to partially update (ie. update one or two properties) a function without affecting the rest the job or function definition',
          options: [

            Option(
              name: ['--function-name', '--name', '-n'],
              description: 'The name of the function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--if-match',
              description: 'The ETag of the function. Omit this value to always overwrite the current function. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--properties',
              description: 'The properties that are associated with a function. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the stream-analytics function is met',
          options: [

            Option(
              name: ['--function-name', '--name', '-n'],
              description: 'The name of the function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
      name: 'input',
      description: 'Manage input with stream analytics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an input or replaces an already existing input under an existing streaming job',
          options: [

            Option(
              name: ['--input-name', '--name', '-n'],
              description: 'The name of the input',
              args: [
                Arg(
                name: 'input-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--if-match',
              description: 'The ETag of the input. Omit this value to always overwrite the current input. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'Set to \'*\' to allow a new input to be created, but to prevent updating an existing input. Other values will result in a 412 Pre-condition Failed response',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--properties',
              description: 'The properties that are associated with an input. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an input from the streaming job',
          options: [

            Option(
              name: ['--input-name', '--name', '-n'],
              description: 'The name of the input',
              args: [
                Arg(
                name: 'input-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all of the inputs under the specified streaming job',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--select',
              description: 'The \$select OData query parameter. This is a comma-separated list of structural properties to include in the response, or "" to include all properties. By default, all properties are returned except diagnostics. Currently only accepts \'\' as a valid value',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details about the specified input',
          options: [

            Option(
              name: ['--input-name', '--name', '-n'],
              description: 'The name of the input',
              args: [
                Arg(
                name: 'input-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'test',
          description: 'Test whether an input’s datasource is reachable and usable by the Azure Stream Analytics service',
          options: [

            Option(
              name: ['--input-name', '--name', '-n'],
              description: 'The name of the input',
              args: [
                Arg(
                name: 'input-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--properties',
              description: 'The properties that are associated with an input. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing input under an existing streaming job. This can be used to partially update (ie. update one or two properties) an input without affecting the rest the job or input definition',
          options: [

            Option(
              name: ['--input-name', '--name', '-n'],
              description: 'The name of the input',
              args: [
                Arg(
                name: 'input-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--if-match',
              description: 'The ETag of the input. Omit this value to always overwrite the current input. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--properties',
              description: 'The properties that are associated with an input. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the stream-analytics input is met',
          options: [

            Option(
              name: ['--input-name', '--name', '-n'],
              description: 'The name of the input',
              args: [
                Arg(
                name: 'input-nam'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
      name: 'job',
      description: 'Manage streaming job with stream analytics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a streaming job or replaces an already existing streaming job',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--arrival-max-delay',
              description: 'The maximum tolerable delay in seconds where events arriving late could be included. Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1',
              args: [
                Arg(
                name: 'arrival-max-dela'
              )
              ]
            ),
            Option(
              name: '--compatibility-level',
              description: 'Controls certain runtime behaviors of the streaming job',
              args: [
                Arg(
                name: 'compatibility-level',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.2')
                ]
              )
              ]
            ),
            Option(
              name: '--content-storage-policy',
              description: 'Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property',
              args: [
                Arg(
                name: 'content-storage-policy',
                suggestions: [

                  FigSuggestion(name: 'JobStorageAccount'),
                  FigSuggestion(name: 'SystemAccount')
                ]
              )
              ]
            ),
            Option(
              name: '--data-locale',
              description: 'The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to \'en-US\' if none specified',
              args: [
                Arg(
                name: 'data-local'
              )
              ]
            ),
            Option(
              name: '--functions',
              description: 'A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'function'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of cluster',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'Describe the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs',
              args: [
                Arg(
                name: 'identit'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'The ETag of the streaming job. Omit this value to always overwrite the current record set. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'Set to \'*\' to allow a new streaming job to be created, but to prevent updating an existing record set. Other values will result in a 412 Pre-condition Failed response',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--inputs',
              description: 'A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'input'
              )
              ]
            ),
            Option(
              name: '--job-storage-account',
              description: 'The properties that are associated with an Azure Storage account with MSI',
              args: [
                Arg(
                name: 'job-storage-accoun'
              )
              ]
            ),
            Option(
              name: '--job-type',
              description: 'Describes the type of the job. Valid modes are Cloud and \'Edge\'',
              args: [
                Arg(
                name: 'job-type',
                suggestions: [

                  FigSuggestion(name: 'Cloud'),
                  FigSuggestion(name: 'Edge')
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--order-max-delay',
              description: 'The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order',
              args: [
                Arg(
                name: 'order-max-dela'
              )
              ]
            ),
            Option(
              name: '--out-of-order-policy',
              description: 'Indicates the policy to apply to events that arrive out of order in the input event stream',
              args: [
                Arg(
                name: 'out-of-order-policy',
                suggestions: [

                  FigSuggestion(name: 'Adjust'),
                  FigSuggestion(name: 'Drop')
                ]
              )
              ]
            ),
            Option(
              name: '--output-error-policy',
              description: 'Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size)',
              args: [
                Arg(
                name: 'output-error-policy',
                suggestions: [

                  FigSuggestion(name: 'Drop'),
                  FigSuggestion(name: 'Stop')
                ]
              )
              ]
            ),
            Option(
              name: '--output-start-mode',
              description: 'This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time',
              args: [
                Arg(
                name: 'output-start-mode',
                suggestions: [

                  FigSuggestion(name: 'CustomTime'),
                  FigSuggestion(name: 'JobStartTime'),
                  FigSuggestion(name: 'LastOutputEventTime')
                ]
              )
              ]
            ),
            Option(
              name: '--output-start-time',
              description: 'Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime',
              args: [
                Arg(
                name: 'output-start-tim'
              )
              ]
            ),
            Option(
              name: '--outputs',
              description: 'A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'output'
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
              name: '--transformation',
              description: 'Indicate the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation',
              args: [
                Arg(
                name: 'transformatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a streaming job',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
          description: 'List all of the streaming jobs in the specified resource group. And Lists all of the streaming jobs in the given subscription',
          options: [

            Option(
              name: '--expand',
              description: 'The \$expand OData query parameter. This is a comma-separated list of additional streaming job properties to include in the response, beyond the default set returned when this parameter is absent. The default set is all streaming job properties other than \'inputs\', \'transformation\', \'outputs\', and \'functions\'',
              args: [
                Arg(
                name: 'expan'
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
            )
          ]
        ),
        Subcommand(
          name: 'scale',
          description: 'Scale a streaming job when the job is running',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--streaming-units',
              description: 'Specifies the number of streaming units that the streaming job will scale to',
              args: [
                Arg(
                name: 'streaming-unit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details about the specified streaming job',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--expand',
              description: 'The \$expand OData query parameter. This is a comma-separated list of additional streaming job properties to include in the response, beyond the default set returned when this parameter is absent. The default set is all streaming job properties other than \'inputs\', \'transformation\', \'outputs\', and \'functions\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start a streaming job. Once a job is started it will start processing input events and produce output',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--output-start-mode',
              description: 'Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time',
              args: [
                Arg(
                name: 'output-start-mode',
                suggestions: [

                  FigSuggestion(name: 'CustomTime'),
                  FigSuggestion(name: 'JobStartTime'),
                  FigSuggestion(name: 'LastOutputEventTime')
                ]
              )
              ]
            ),
            Option(
              name: '--output-start-time',
              description: 'Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime',
              args: [
                Arg(
                name: 'output-start-tim'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop a running streaming job. This will cause a running streaming job to stop processing input events and producing output',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing streaming job. This can be used to partially update (ie. update one or two properties) a streaming job without affecting the rest the job definition',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--arrival-max-delay',
              description: 'The maximum tolerable delay in seconds where events arriving late could be included. Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1',
              args: [
                Arg(
                name: 'arrival-max-dela'
              )
              ]
            ),
            Option(
              name: '--compatibility-level',
              description: 'Controls certain runtime behaviors of the streaming job',
              args: [
                Arg(
                name: 'compatibility-level',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.2')
                ]
              )
              ]
            ),
            Option(
              name: '--content-storage-policy',
              description: 'Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property',
              args: [
                Arg(
                name: 'content-storage-policy',
                suggestions: [

                  FigSuggestion(name: 'JobStorageAccount'),
                  FigSuggestion(name: 'SystemAccount')
                ]
              )
              ]
            ),
            Option(
              name: '--data-locale',
              description: 'The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to \'en-US\' if none specified',
              args: [
                Arg(
                name: 'data-local'
              )
              ]
            ),
            Option(
              name: '--functions',
              description: 'A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'function'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of cluster',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'Describe the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs',
              args: [
                Arg(
                name: 'identit'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'The ETag of the streaming job. Omit this value to always overwrite the current record set. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--inputs',
              description: 'A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'input'
              )
              ]
            ),
            Option(
              name: '--job-storage-account',
              description: 'The properties that are associated with an Azure Storage account with MSI',
              args: [
                Arg(
                name: 'job-storage-accoun'
              )
              ]
            ),
            Option(
              name: '--job-type',
              description: 'Describes the type of the job. Valid modes are Cloud and \'Edge\'',
              args: [
                Arg(
                name: 'job-type',
                suggestions: [

                  FigSuggestion(name: 'Cloud'),
                  FigSuggestion(name: 'Edge')
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
              name: '--order-max-delay',
              description: 'The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order',
              args: [
                Arg(
                name: 'order-max-dela'
              )
              ]
            ),
            Option(
              name: '--out-of-order-policy',
              description: 'Indicates the policy to apply to events that arrive out of order in the input event stream',
              args: [
                Arg(
                name: 'out-of-order-policy',
                suggestions: [

                  FigSuggestion(name: 'Adjust'),
                  FigSuggestion(name: 'Drop')
                ]
              )
              ]
            ),
            Option(
              name: '--output-error-policy',
              description: 'Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size)',
              args: [
                Arg(
                name: 'output-error-policy',
                suggestions: [

                  FigSuggestion(name: 'Drop'),
                  FigSuggestion(name: 'Stop')
                ]
              )
              ]
            ),
            Option(
              name: '--output-start-mode',
              description: 'This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time',
              args: [
                Arg(
                name: 'output-start-mode',
                suggestions: [

                  FigSuggestion(name: 'CustomTime'),
                  FigSuggestion(name: 'JobStartTime'),
                  FigSuggestion(name: 'LastOutputEventTime')
                ]
              )
              ]
            ),
            Option(
              name: '--output-start-time',
              description: 'Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime',
              args: [
                Arg(
                name: 'output-start-tim'
              )
              ]
            ),
            Option(
              name: '--outputs',
              description: 'A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'output'
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
              name: '--transformation',
              description: 'Indicate the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation',
              args: [
                Arg(
                name: 'transformatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the stream-analytics job is met',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--expand',
              description: 'The \$expand OData query parameter. This is a comma-separated list of additional streaming job properties to include in the response, beyond the default set returned when this parameter is absent. The default set is all streaming job properties other than \'inputs\', \'transformation\', \'outputs\', and \'functions\'',
              args: [
                Arg(
                name: 'expan'
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
        )
      ]
    ),
    Subcommand(
      name: 'output',
      description: 'Manage output with stream analytics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an output or replaces an already existing output under an existing streaming job',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--output-name', '--name', '-n'],
              description: 'The name of the output',
              args: [
                Arg(
                name: 'output-nam'
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
              name: '--datasource',
              description: 'Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'datasourc'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'The ETag of the output. Omit this value to always overwrite the current output. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'Set to \'*\' to allow a new output to be created, but to prevent updating an existing output. Other values will result in a 412 Pre-condition Failed response',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--serialization',
              description: 'Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'serializatio'
              )
              ]
            ),
            Option(
              name: '--size-window',
              description: 'The size window to constrain a Stream Analytics output to',
              args: [
                Arg(
                name: 'size-windo'
              )
              ]
            ),
            Option(
              name: '--time-window',
              description: 'The time frame for filtering Stream Analytics job outputs',
              args: [
                Arg(
                name: 'time-windo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an output from the streaming job',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--output-name', '--name', '-n'],
              description: 'The name of the output',
              args: [
                Arg(
                name: 'output-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all of the outputs under the specified streaming job',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
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
              name: '--select',
              description: 'The \$select OData query parameter. This is a comma-separated list of structural properties to include in the response, or "" to include all properties. By default, all properties are returned except diagnostics. Currently only accepts \'\' as a valid value',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details about the specified output',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--output-name', '--name', '-n'],
              description: 'The name of the output',
              args: [
                Arg(
                name: 'output-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'test',
          description: 'Test whether an output’s datasource is reachable and usable by the Azure Stream Analytics service',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--output-name', '--name', '-n'],
              description: 'The name of the output',
              args: [
                Arg(
                name: 'output-nam'
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
              name: '--datasource',
              description: 'Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'datasourc'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--serialization',
              description: 'Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'serializatio'
              )
              ]
            ),
            Option(
              name: '--size-window',
              description: 'The size window to constrain a Stream Analytics output to',
              args: [
                Arg(
                name: 'size-windo'
              )
              ]
            ),
            Option(
              name: '--time-window',
              description: 'The time frame for filtering Stream Analytics job outputs',
              args: [
                Arg(
                name: 'time-windo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing output under an existing streaming job. This can be used to partially update (ie. update one or two properties) an output without affecting the rest the job or output definition',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--output-name', '--name', '-n'],
              description: 'The name of the output',
              args: [
                Arg(
                name: 'output-nam'
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
              name: '--datasource',
              description: 'Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'datasourc'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'The ETag of the output. Omit this value to always overwrite the current output. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--serialization',
              description: 'Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'serializatio'
              )
              ]
            ),
            Option(
              name: '--size-window',
              description: 'The size window to constrain a Stream Analytics output to',
              args: [
                Arg(
                name: 'size-windo'
              )
              ]
            ),
            Option(
              name: '--time-window',
              description: 'The time frame for filtering Stream Analytics job outputs',
              args: [
                Arg(
                name: 'time-windo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the stream-analytics output is met',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--output-name', '--name', '-n'],
              description: 'The name of the output',
              args: [
                Arg(
                name: 'output-nam'
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
      name: 'private-endpoint',
      description: 'Manage private endpoint with stream analytics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Stream Analytics Private Endpoint or replaces an already existing Private Endpoint',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--private-endpoint-name', '--name', '-n'],
              description: 'The name of the private endpoint',
              args: [
                Arg(
                name: 'private-endpoint-nam'
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
              name: '--connections',
              description: 'A list of connections to the remote resource. Immutable after it is set. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'connection'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'The ETag of the resource. Omit this value to always overwrite the current record set. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'Set to \'*\' to allow a new resource to be created, but to prevent updating an existing record set. Other values will result in a 412 Pre-condition Failed response',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the specified private endpoint',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--private-endpoint-name', '--name', '-n'],
              description: 'The name of the private endpoint',
              args: [
                Arg(
                name: 'private-endpoint-nam'
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
          description: 'List the private endpoints in the cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get information about the specified Private Endpoint',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--private-endpoint-name', '--name', '-n'],
              description: 'The name of the private endpoint',
              args: [
                Arg(
                name: 'private-endpoint-nam'
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the stream-analytics private-endpoint is met',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--private-endpoint-name', '--name', '-n'],
              description: 'The name of the private endpoint',
              args: [
                Arg(
                name: 'private-endpoint-nam'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'subscription',
      description: 'Manage subscription with stream analytics',
      subcommands: [

        Subcommand(
          name: 'inspect',
          description: 'Retrieve the subscription\'s current quota information in a particular region',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
        )
      ]
    ),
    Subcommand(
      name: 'transformation',
      description: 'Manage transformation with stream analytics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a transformation or replaces an already existing transformation under an existing streaming job',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--transformation-name', '--name', '-n'],
              description: 'The name of the transformation',
              args: [
                Arg(
                name: 'transformation-nam'
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
              name: '--if-match',
              description: 'The ETag of the transformation. Omit this value to always overwrite the current transformation. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'Set to \'*\' to allow a new transformation to be created, but to prevent updating an existing transformation. Other values will result in a 412 Pre-condition Failed response',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--saql',
              description: 'Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests',
              args: [
                Arg(
                name: 'saq'
              )
              ]
            ),
            Option(
              name: '--streaming-units',
              description: 'Specifies the number of streaming units that the streaming job uses',
              args: [
                Arg(
                name: 'streaming-unit'
              )
              ]
            ),
            Option(
              name: '--valid-streaming-units',
              description: 'Specifies the valid streaming units a streaming job can scale to',
              args: [
                Arg(
                name: 'valid-streaming-unit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details about the specified transformation',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--transformation-name', '--name', '-n'],
              description: 'The name of the transformation',
              args: [
                Arg(
                name: 'transformation-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing transformation under an existing streaming job. This can be used to partially update (ie. update one or two properties) a transformation without affecting the rest the job or transformation definition',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the streaming job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--transformation-name', '--name', '-n'],
              description: 'The name of the transformation',
              args: [
                Arg(
                name: 'transformation-nam'
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
              name: '--if-match',
              description: 'The ETag of the transformation. Omit this value to always overwrite the current transformation. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--saql',
              description: 'Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests',
              args: [
                Arg(
                name: 'saq'
              )
              ]
            ),
            Option(
              name: '--streaming-units',
              description: 'Specifies the number of streaming units that the streaming job uses',
              args: [
                Arg(
                name: 'streaming-unit'
              )
              ]
            ),
            Option(
              name: '--valid-streaming-units',
              description: 'Specifies the valid streaming units a streaming job can scale to',
              args: [
                Arg(
                name: 'valid-streaming-unit'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
