// Auto-generated from TypeScript source: datashare.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `datashare` CLI
final FigSpec datashareSpec = FigSpec(
  name: 'datashare',
  description: 'Manage Data Share',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage account with datashare',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
          description: 'DeleteAccount',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
          description: 'List Accounts in ResourceGroup And List Accounts in Subscription',
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
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
          description: 'Patch an account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the datashare account is met',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
      name: 'consumer-invitation',
      description: 'Manage consumer invitation with datashare',
      subcommands: [

        Subcommand(
          name: 'list-invitation',
          description: 'Lists invitations',
          options: [

            Option(
              name: '--skip-token',
              description: 'The continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reject-invitation',
          description: 'Reject an invitation',
          options: [

            Option(
              name: '--invitation-id',
              description: 'Unique id of the invitation',
              args: [
                Arg(
                name: 'invitation-i'
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an invitation',
          options: [

            Option(
              name: '--invitation-id',
              description: 'An invitation id',
              args: [
                Arg(
                name: 'invitation-i'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'consumer-source-data-set',
      description: 'Manage consumer source data set with datashare',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get source dataSets of a shareSubscription',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a share',
      options: [

        Option(
          name: '--account-name',
          description: 'The name of the share account',
          args: [
            Arg(
            name: 'account-nam'
          )
          ]
        ),
        Option(
          name: ['--share-name', '--name', '-n'],
          description: 'The name of the share',
          args: [
            Arg(
            name: 'share-nam'
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
          name: '--description',
          description: 'Share description',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--share-kind',
          description: 'Share kind',
          args: [
            Arg(
            name: 'share-kind',
            suggestions: [

              FigSuggestion(name: 'CopyBased'),
              FigSuggestion(name: 'InPlace')
            ]
          )
          ]
        ),
        Option(
          name: '--terms',
          description: 'Share terms',
          args: [
            Arg(
            name: 'term'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a share',
      options: [

        Option(
          name: '--account-name',
          description: 'The name of the share account',
          args: [
            Arg(
            name: 'account-nam'
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
          name: ['--share-name', '--name', '-n'],
          description: 'The name of the share',
          args: [
            Arg(
            name: 'share-nam'
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
      description: 'List shares in an account',
      options: [

        Option(
          name: '--account-name',
          description: 'The name of the share account',
          args: [
            Arg(
            name: 'account-nam'
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
          name: '--filter',
          description: 'Filters the results using OData syntax',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: '--orderby',
          description: 'Sorts the results using OData syntax',
          args: [
            Arg(
            name: 'orderb'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: 'Continuation Token',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-synchronization',
      description: 'List synchronizations of a share',
      options: [

        Option(
          name: '--account-name',
          description: 'The name of the share account',
          args: [
            Arg(
            name: 'account-nam'
          )
          ]
        ),
        Option(
          name: ['--share-name', '--name', '-n'],
          description: 'The name of the share',
          args: [
            Arg(
            name: 'share-nam'
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
          name: '--filter',
          description: 'Filters the results using OData syntax',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: '--orderby',
          description: 'Sorts the results using OData syntax',
          args: [
            Arg(
            name: 'orderb'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: 'Continuation token',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-synchronization-detail',
      description: 'List synchronization details',
      options: [

        Option(
          name: '--account-name',
          description: 'The name of the share account',
          args: [
            Arg(
            name: 'account-nam'
          )
          ]
        ),
        Option(
          name: ['--share-name', '--name', '-n'],
          description: 'The name of the share',
          args: [
            Arg(
            name: 'share-nam'
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
          name: '--consumer-email',
          description: 'Email of the user who created the synchronization',
          args: [
            Arg(
            name: 'consumer-emai'
          )
          ]
        ),
        Option(
          name: '--consumer-name',
          description: 'Name of the user who created the synchronization',
          args: [
            Arg(
            name: 'consumer-nam'
          )
          ]
        ),
        Option(
          name: '--consumer-tenant-name',
          description: 'Tenant name of the consumer who created the synchronization',
          args: [
            Arg(
            name: 'consumer-tenant-nam'
          )
          ]
        ),
        Option(
          name: '--duration-ms',
          description: 'Synchronization duration',
          args: [
            Arg(
            name: 'duration-m'
          )
          ]
        ),
        Option(
          name: '--end-time',
          description: 'End time of synchronization',
          args: [
            Arg(
            name: 'end-tim'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Filters the results using OData syntax',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: '--message',
          description: 'Message of synchronization',
          args: [
            Arg(
            name: 'messag'
          )
          ]
        ),
        Option(
          name: '--orderby',
          description: 'Sorts the results using OData syntax',
          args: [
            Arg(
            name: 'orderb'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: 'Continuation token',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'Start time of synchronization',
          args: [
            Arg(
            name: 'start-tim'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'Raw Status',
          args: [
            Arg(
            name: 'statu'
          )
          ]
        ),
        Option(
          name: '--synchronization-id',
          description: 'Synchronization id',
          args: [
            Arg(
            name: 'synchronization-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get a share',
      options: [

        Option(
          name: '--account-name',
          description: 'The name of the share account',
          args: [
            Arg(
            name: 'account-nam'
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
          name: ['--share-name', '--name', '-n'],
          description: 'The name of the share to retrieve',
          args: [
            Arg(
            name: 'share-nam'
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
      description: 'Place the CLI in a waiting state until a condition of the datashare is met',
      options: [

        Option(
          name: '--account-name',
          description: 'The name of the share account',
          args: [
            Arg(
            name: 'account-nam'
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
          name: ['--share-name', '--name', '-n'],
          description: 'The name of the share to retrieve',
          args: [
            Arg(
            name: 'share-nam'
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
    ),
    Subcommand(
      name: 'data-set',
      description: 'Manage data set with datashare',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a DataSet',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--data-set',
              description: 'The new data set information. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'data-se'
              )
              ]
            ),
            Option(
              name: ['--data-set-name', '--name', '-n'],
              description: 'The name of the dataSet',
              args: [
                Arg(
                name: 'data-set-nam'
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
              name: '--share-name',
              description: 'The name of the share to add the data set to',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a DataSet in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--data-set-name', '--name', '-n'],
              description: 'The name of the dataSet',
              args: [
                Arg(
                name: 'data-set-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          description: 'List DataSets in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filters the results using OData syntax',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results using OData syntax',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a DataSet in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--data-set-name', '--name', '-n'],
              description: 'The name of the dataSet',
              args: [
                Arg(
                name: 'data-set-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the datashare data-set is met',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--data-set-name', '--name', '-n'],
              description: 'The name of the dataSet',
              args: [
                Arg(
                name: 'data-set-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
      name: 'data-set-mapping',
      description: 'Manage data set mapping with datashare',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a DataSetMapping',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--data-set-mapping-name', '--name', '-n'],
              description: 'The name of the data set mapping to be created',
              args: [
                Arg(
                name: 'data-set-mapping-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the share subscription which will hold the data set sink',
              args: [
                Arg(
                name: 'share-subscription-nam'
              )
              ]
            ),
            Option(
              name: '--adls-gen2-file-data-set-mapping',
              description: 'An ADLS Gen2 file data set mapping',
              args: [
                Arg(
                name: 'adls-gen2-file-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--adls-gen2-file-system-data-set-mapping',
              description: 'An ADLS Gen2 file system data set mapping',
              args: [
                Arg(
                name: 'adls-gen2-file-system-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--adls-gen2-folder-data-set-mapping',
              description: 'An ADLS Gen2 folder data set mapping',
              args: [
                Arg(
                name: 'adls-gen2-folder-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--blob-container-data-set-mapping',
              description: 'A Blob container data set mapping',
              args: [
                Arg(
                name: 'blob-container-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--blob-data-set-mapping',
              description: 'A Blob data set mapping',
              args: [
                Arg(
                name: 'blob-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--blob-folder-data-set-mapping',
              description: 'A Blob folder data set mapping',
              args: [
                Arg(
                name: 'blob-folder-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--kusto-cluster-data-set-mapping',
              description: 'A Kusto cluster data set mapping',
              args: [
                Arg(
                name: 'kusto-cluster-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--kusto-database-data-set-mapping',
              description: 'A Kusto database data set mapping',
              args: [
                Arg(
                name: 'kusto-database-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--kusto-table-data-set-mapping',
              description: 'A Kusto database data set mapping',
              args: [
                Arg(
                name: 'kusto-table-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--sqldb-table-data-set-mapping',
              description: 'A SQL DB Table data set mapping',
              args: [
                Arg(
                name: 'sqldb-table-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--sqldw-table-data-set-mapping',
              description: 'A SQL DW Table data set mapping',
              args: [
                Arg(
                name: 'sqldw-table-data-set-mappin'
              )
              ]
            ),
            Option(
              name: '--synapse-workspace-sql-pool-table-data-set-mapping',
              description: 'A Synapse Workspace Sql Pool Table data set mapping',
              args: [
                Arg(
                name: 'synapse-workspace-sql-pool-table-data-set-mapping'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a DataSetMapping in a shareSubscription',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--data-set-mapping-name', '--name', '-n'],
              description: 'The name of the dataSetMapping',
              args: [
                Arg(
                name: 'data-set-mapping-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
          description: 'List DataSetMappings in a share subscription',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the share subscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filters the results using OData syntax',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results using OData syntax',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a DataSetMapping in a shareSubscription',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--data-set-mapping-name', '--name', '-n'],
              description: 'The name of the dataSetMapping',
              args: [
                Arg(
                name: 'data-set-mapping-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
      name: 'email-registration',
      description: 'Manage email registration with datashare',
      subcommands: [

        Subcommand(
          name: 'activate-email',
          description: 'Activate the email registration for the current tenant',
          options: [

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
              name: '--activation-code',
              description: 'Activation code for the registration',
              args: [
                Arg(
                name: 'activation-cod'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'register-email',
          description: 'Register an email for the current tenant',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'invitation',
      description: 'Manage invitation with datashare',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an invitation',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--invitation-name', '--name', '-n'],
              description: 'The name of the invitation',
              args: [
                Arg(
                name: 'invitation-nam'
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
              name: '--share-name',
              description: 'The name of the share to send the invitation for',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: '--expiration-date',
              description: 'The expiration date for the invitation and share subscription',
              args: [
                Arg(
                name: 'expiration-dat'
              )
              ]
            ),
            Option(
              name: '--target-active-directory-id',
              description: 'The target Azure AD Id. Can\'t be combined with email',
              args: [
                Arg(
                name: 'target-active-directory-i'
              )
              ]
            ),
            Option(
              name: '--target-email',
              description: 'The email the invitation is directed to',
              args: [
                Arg(
                name: 'target-emai'
              )
              ]
            ),
            Option(
              name: '--target-object-id',
              description: 'The target user or application Id that invitation is being sent to. Must be specified along TargetActiveDirectoryId. This enables sending invitations to specific users or applications in an AD tenant',
              args: [
                Arg(
                name: 'target-object-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an invitation in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--invitation-name', '--name', '-n'],
              description: 'The name of the invitation',
              args: [
                Arg(
                name: 'invitation-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          description: 'List invitations in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filters the results using OData syntax',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results using OData syntax',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'The continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an invitation in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--invitation-name', '--name', '-n'],
              description: 'The name of the invitation',
              args: [
                Arg(
                name: 'invitation-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
      name: 'provider-share-subscription',
      description: 'Manage provider share subscription with datashare',
      subcommands: [

        Subcommand(
          name: 'adjust',
          description: 'Adjust a share subscription\'s expiration date in a provider share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expiration-date',
              description: 'Expiration date of the share subscription in UTC format',
              args: [
                Arg(
                name: 'expiration-dat'
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
              name: '--provider-share-subscription-id',
              description: 'To locate shareSubscription',
              args: [
                Arg(
                name: 'provider-share-subscription-i'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          name: 'list',
          description: 'List share subscriptions in a provider share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation Token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reinstate',
          description: 'Reinstate share subscription in a provider share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expiration-date',
              description: 'Expiration date of the share subscription in UTC format',
              args: [
                Arg(
                name: 'expiration-dat'
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
              name: '--provider-share-subscription-id',
              description: 'To locate shareSubscription',
              args: [
                Arg(
                name: 'provider-share-subscription-i'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          name: 'revoke',
          description: 'Revoke share subscription in a provider share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--provider-share-subscription-id',
              description: 'To locate shareSubscription',
              args: [
                Arg(
                name: 'provider-share-subscription-i'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          name: 'show',
          description: 'Get share subscription in a provider share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--provider-share-subscription-id',
              description: 'To locate shareSubscription',
              args: [
                Arg(
                name: 'provider-share-subscription-i'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the datashare provider-share-subscription is met',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--provider-share-subscription-id',
              description: 'To locate shareSubscription',
              args: [
                Arg(
                name: 'provider-share-subscription-i'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
      name: 'share-subscription',
      description: 'Manage share subscription with datashare',
      subcommands: [

        Subcommand(
          name: 'cancel-synchronization',
          description: 'Request to cancel a synchronization',
          options: [

            Option(
              name: '--synchronization-id',
              description: 'Synchronization id',
              args: [
                Arg(
                name: 'synchronization-i'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a shareSubscription in an account',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--invitation-id',
              description: 'The invitation id',
              args: [
                Arg(
                name: 'invitation-i'
              )
              ]
            ),
            Option(
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
              name: '--source-share-location',
              description: 'Source share location',
              args: [
                Arg(
                name: 'source-share-locatio'
              )
              ]
            ),
            Option(
              name: '--expiration-date',
              description: 'The expiration date of the share subscription',
              args: [
                Arg(
                name: 'expiration-dat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a shareSubscription in an account',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
          description: 'List share subscriptions in an account',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--filter',
              description: 'Filters the results using OData syntax',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results using OData syntax',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation Token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-source-share-synchronization-setting',
          description: 'Get synchronization settings set on a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-synchronization',
          description: 'List synchronizations of a share subscription',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of the share subscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
              name: '--filter',
              description: 'Filters the results using OData syntax',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results using OData syntax',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-synchronization-detail',
          description: 'List synchronization details',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of the share subscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
              name: '--synchronization-id',
              description: 'Synchronization id',
              args: [
                Arg(
                name: 'synchronization-i'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filters the results using OData syntax',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results using OData syntax',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a shareSubscription in an account',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
          name: 'synchronize',
          description: 'Initiate a copy',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of share subscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
              name: '--synchronization-mode',
              description: 'Mode of synchronization used in triggers and snapshot sync. Incremental by default',
              args: [
                Arg(
                name: 'synchronization-mode',
                suggestions: [

                  FigSuggestion(name: 'FullSync'),
                  FigSuggestion(name: 'Incremental')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the datashare share-subscription is met',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--share-subscription-name', '--name', '-n'],
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
      name: 'synchronization-setting',
      description: 'Manage synchronization setting with datashare',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a synchronizationSetting',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--synchronization-setting-name', '--name', '-n'],
              description: 'The name of the synchronizationSetting',
              args: [
                Arg(
                name: 'synchronization-setting-nam'
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
              name: '--share-name',
              description: 'The name of the share to add the synchronization setting to',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: '--scheduled-synchronization-setting',
              description: 'A type of synchronization setting based on schedule',
              args: [
                Arg(
                name: 'scheduled-synchronization-settin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a synchronizationSetting in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--synchronization-setting-name', '--name', '-n'],
              description: 'The name of the synchronizationSetting',
              args: [
                Arg(
                name: 'synchronization-setting-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          description: 'List synchronizationSettings in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a synchronizationSetting in a share',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--synchronization-setting-name', '--name', '-n'],
              description: 'The name of the synchronizationSetting',
              args: [
                Arg(
                name: 'synchronization-setting-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the datashare synchronization-setting is met',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--synchronization-setting-name', '--name', '-n'],
              description: 'The name of the synchronizationSetting',
              args: [
                Arg(
                name: 'synchronization-setting-nam'
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
              name: '--share-name',
              description: 'The name of the share',
              args: [
                Arg(
                name: 'share-nam'
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
      name: 'trigger',
      description: 'Manage trigger with datashare',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Trigger',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--trigger-name', '--name', '-n'],
              description: 'The name of the trigger',
              args: [
                Arg(
                name: 'trigger-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the share subscription which will hold the data set sink',
              args: [
                Arg(
                name: 'share-subscription-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--scheduled-trigger',
              description: 'A type of trigger based on schedule',
              args: [
                Arg(
                name: 'scheduled-trigge'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Trigger in a shareSubscription',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The name of the trigger',
              args: [
                Arg(
                name: 'trigger-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
          description: 'List Triggers in a share subscription',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the share subscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Continuation token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a Trigger in a shareSubscription',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The name of the trigger',
              args: [
                Arg(
                name: 'trigger-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the datashare trigger is met',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the share account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The name of the trigger',
              args: [
                Arg(
                name: 'trigger-nam'
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
              name: '--share-subscription-name',
              description: 'The name of the shareSubscription',
              args: [
                Arg(
                name: 'share-subscription-nam'
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
    )
  ]
);
