// Auto-generated from TypeScript source: purview.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `purview` CLI
final FigSpec purviewSpec = FigSpec(
  name: 'purview',
  description: 'Manage Purview',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage account with purview',
      subcommands: [

        Subcommand(
          name: 'add-root-collection-admin',
          description: 'Add the administrator for root collection associated with this account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the account',
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
              name: '--object-id',
              description: 'Gets or sets the object identifier of the admin',
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
          description: 'Create an account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the account',
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
              name: '--managed-group-name',
              description: 'Gets or sets the managed resource group name',
              args: [
                Arg(
                name: 'managed-group-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--public-network-access',
              description: 'Gets or sets the public network access',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'NotSpecified')
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
          description: 'Deletes an account resource',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the account',
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
          description: 'List accounts in ResourceGroup And List accounts in Subscription',
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
              description: 'The skip token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-key',
          description: 'List the authorization keys associated with this account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the account',
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the account',
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
          description: 'Updates an account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the account',
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
              name: '--managed-group-name',
              description: 'Gets or sets the managed resource group name',
              args: [
                Arg(
                name: 'managed-group-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--public-network-access',
              description: 'Gets or sets the public network access',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'NotSpecified')
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
          description: 'Place the CLI in a waiting state until a condition of the purview account is met',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the account',
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
      name: 'default-account',
      description: 'Manage default account with purview',
      subcommands: [

        Subcommand(
          name: 'remove',
          description: 'Removes the default account from the scope',
          options: [

            Option(
              name: '--scope-tenant-id',
              description: 'The tenant ID',
              args: [
                Arg(
                name: 'scope-tenant-i'
              )
              ]
            ),
            Option(
              name: '--scope-type',
              description: 'The scope for the default account',
              args: [
                Arg(
                name: 'scope-type',
                suggestions: [

                  FigSuggestion(name: 'Subscription'),
                  FigSuggestion(name: 'Tenant')
                ]
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The Id of the scope object, for example if the scope is "Subscription" then it is the ID of that subscription',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Sets the default account for the scope',
          options: [

            Option(
              name: '--scope-tenant-id',
              description: 'The scope tenant in which the default account is set',
              args: [
                Arg(
                name: 'scope-tenant-i'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'The subscription ID of the account that is set as the default',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the account that is set as the default',
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
              name: '--scope',
              description: 'The scope object ID. For example, sub ID or tenant ID',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--scope-type',
              description: 'The scope where the default account is set',
              args: [
                Arg(
                name: 'scope-type',
                suggestions: [

                  FigSuggestion(name: 'Subscription'),
                  FigSuggestion(name: 'Tenant')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the default account for the scope',
          options: [

            Option(
              name: '--scope-tenant-id',
              description: 'The tenant ID',
              args: [
                Arg(
                name: 'scope-tenant-i'
              )
              ]
            ),
            Option(
              name: '--scope-type',
              description: 'The scope for the default account',
              args: [
                Arg(
                name: 'scope-type',
                suggestions: [

                  FigSuggestion(name: 'Subscription'),
                  FigSuggestion(name: 'Tenant')
                ]
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The Id of the scope object, for example if the scope is "Subscription" then it is the ID of that subscription',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
