// Auto-generated from TypeScript source: datadog.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `datadog` CLI
final FigSpec datadogSpec = FigSpec(
  name: 'datadog',
  description: 'Manage datadog',
  subcommands: [

    Subcommand(
      name: 'monitor',
      description: 'Manage monitor with datadog',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a monitor resource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
              name: '--datadog-organization-properties',
              description: 'Datadog organization properties',
              args: [
                Arg(
                name: 'datadog-organization-propertie'
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
              name: '--sku-name',
              description: 'Name of the SKU',
              args: [
                Arg(
                name: 'sku-nam'
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
              name: '--type',
              description: 'Identity type',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'UserAssigned')
                ]
              )
              ]
            ),
            Option(
              name: '--user-info',
              description: 'User info',
              args: [
                Arg(
                name: 'user-inf'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a monitor resource',
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'get-default-key',
          description: 'Get the default api key',
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'list',
          description: 'List all monitors under the specified resource group. And List all monitors under the specified subscription',
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
          name: 'list-api-key',
          description: 'List the api keys for a given monitor resource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'list-host',
          description: 'List the hosts for a given monitor resource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'list-linked-resource',
          description: 'List all Azure resources associated to the same Datadog organization as the target resource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'list-monitored-resource',
          description: 'List the resources currently being monitored by the Datadog monitor resource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'refresh-set-password-link',
          description: 'Refresh the set password link and return a latest one',
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'set-default-key',
          description: 'Set the default api key',
          options: [

            Option(
              name: '--created',
              description: 'The time of creation of the API key',
              args: [
                Arg(
                name: 'create'
              )
              ]
            ),
            Option(
              name: '--created-by',
              description: 'The user that created the API key',
              args: [
                Arg(
                name: 'created-b'
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
              name: '--key',
              description: 'The value of the API key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the API key',
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
          name: 'show',
          description: 'Get the properties of a specific monitor resource',
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          description: 'Update a monitor resource',
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
              )
              ]
            ),
            Option(
              name: '--monitoring-status',
              description: 'Flag specifying if the resource monitoring is enabled or disabled. Allowed values: "Enabled", "Disabled"',
              args: [
                Arg(
                name: 'monitoring-statu'
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
              name: '--sku-name',
              description: 'Name of the SKU',
              args: [
                Arg(
                name: 'sku-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the datadog monitor is met',
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
      name: 'sso-config',
      description: 'Manage sso config with datadog',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Configures single-sign-on for this resource',
          options: [

            Option(
              name: '--configuration-name',
              description: 'Configuration name',
              args: [
                Arg(
                name: 'configuration-nam'
              )
              ]
            ),
            Option(
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'list',
          description: 'List the single sign-on configurations for a given monitor resource',
          options: [

            Option(
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          description: 'Gets the datadog single sign-on resource for the given Monitor',
          options: [

            Option(
              name: '--configuration-name',
              description: 'Configuration name',
              args: [
                Arg(
                name: 'configuration-nam'
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
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          description: 'Configures single-sign-on for this resource',
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
              name: '--configuration-name',
              description: 'Configuration name',
              args: [
                Arg(
                name: 'configuration-nam'
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
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the datadog sso-config is met',
          options: [

            Option(
              name: '--configuration-name',
              description: 'Configuration name',
              args: [
                Arg(
                name: 'configuration-nam'
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
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
      name: 'tag-rule',
      description: 'Manage tag rule with datadog',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a tag rule set for a given monitor resource',
          options: [

            Option(
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
              name: '--rule-set-name',
              description: 'Rule set name',
              args: [
                Arg(
                name: 'rule-set-nam'
              )
              ]
            ),
            Option(
              name: '--filtering-tags',
              description: 'List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags',
              args: [
                Arg(
                name: 'filtering-tag'
              )
              ]
            ),
            Option(
              name: '--log-rules-filtering-tags',
              description: 'List of filtering tags to be used for capturing logs. This only takes effect if SendResourceLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags',
              args: [
                Arg(
                name: 'log-rules-filtering-tag'
              )
              ]
            ),
            Option(
              name: '--send-aad-logs',
              description: 'Flag specifying if AAD logs should be sent for the Monitor resource',
              args: [
                Arg(
                name: 'send-aad-logs',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--send-resource-logs',
              description: 'Flag specifying if Azure resource logs should be sent for the Monitor resource',
              args: [
                Arg(
                name: 'send-resource-logs',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--send-subscription-logs',
              description: 'Flag specifying if Azure subscription logs should be sent for the Monitor resource',
              args: [
                Arg(
                name: 'send-subscription-logs',
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
          name: 'list',
          description: 'List the tag rules for a given monitor resource',
          options: [

            Option(
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
          description: 'Get a tag rule set for a given monitor resource',
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
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
              name: '--rule-set-name',
              description: 'Rule set name',
              args: [
                Arg(
                name: 'rule-set-nam'
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
          description: 'Update a tag rule set for a given monitor resource',
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
              name: '--filtering-tags',
              description: 'List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags',
              args: [
                Arg(
                name: 'filtering-tag'
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
              name: '--log-rules-filtering-tags',
              description: 'List of filtering tags to be used for capturing logs. This only takes effect if SendResourceLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags',
              args: [
                Arg(
                name: 'log-rules-filtering-tag'
              )
              ]
            ),
            Option(
              name: '--monitor-name',
              description: 'Monitor resource name',
              args: [
                Arg(
                name: 'monitor-nam'
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
              name: '--rule-set-name',
              description: 'Rule set name',
              args: [
                Arg(
                name: 'rule-set-nam'
              )
              ]
            ),
            Option(
              name: '--send-aad-logs',
              description: 'Flag specifying if AAD logs should be sent for the Monitor resource',
              args: [
                Arg(
                name: 'send-aad-logs',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--send-resource-logs',
              description: 'Flag specifying if Azure resource logs should be sent for the Monitor resource',
              args: [
                Arg(
                name: 'send-resource-logs',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--send-subscription-logs',
              description: 'Flag specifying if Azure subscription logs should be sent for the Monitor resource',
              args: [
                Arg(
                name: 'send-subscription-logs',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'terms',
      description: 'Manage marketplace agreements with datadog',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create Datadog marketplace agreement in the subscription',
          options: [

            Option(
              name: '--properties',
              description: 'Represents the properties of the resource',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List datadog marketplace agreements'
        ),
        Subcommand(
          name: 'update',
          description: 'Update Datadog marketplace agreement in the subscription',
          options: [

            Option(
              name: '--properties',
              description: 'Represents the properties of the resource',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
