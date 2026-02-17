// Auto-generated from TypeScript source: databoxedge.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `databoxedge` CLI
final FigSpec databoxedgeSpec = FigSpec(
  name: 'databoxedge',
  description: 'Support data box edge device and management',
  subcommands: [

    Subcommand(
      name: 'alert',
      description: 'Manage alert with databoxedge',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get all the alerts for a Data Box Edge/Data Box Gateway device',
          options: [

            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          description: 'Get an alert by name',
          options: [

            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
              description: 'The alert name',
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
        )
      ]
    ),
    Subcommand(
      name: 'bandwidth-schedule',
      description: 'Manage bandwidth schedule with databoxedge',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a bandwidth schedule',
          options: [

            Option(
              name: '--days',
              description: 'The days of the week when this schedule is applicable',
              args: [
                Arg(
                name: 'day'
              )
              ]
            ),
            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The bandwidth schedule name which needs to be added/updated',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--rate-in-mbps',
              description: 'The bandwidth rate in Mbps',
              args: [
                Arg(
                name: 'rate-in-mbp'
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
              name: '--start',
              description: 'The start time of the schedule in UTC',
              args: [
                Arg(
                name: 'star'
              )
              ]
            ),
            Option(
              name: '--stop',
              description: 'The stop time of the schedule in UTC',
              args: [
                Arg(
                name: 'sto'
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
          description: 'Delete the specified bandwidth schedule',
          options: [

            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
              description: 'The bandwidth schedule name',
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
          description: 'Get all the bandwidth schedules for a Data Box Edge/Data Box Gateway device',
          options: [

            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          description: 'Get the properties of the specified bandwidth schedule',
          options: [

            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
              description: 'The bandwidth schedule name',
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
          description: 'Update a bandwidth schedule',
          options: [

            Option(
              name: '--days',
              description: 'The days of the week when this schedule is applicable',
              args: [
                Arg(
                name: 'day'
              )
              ]
            ),
            Option(
              name: '--rate-in-mbps',
              description: 'The bandwidth rate in Mbps',
              args: [
                Arg(
                name: 'rate-in-mbp'
              )
              ]
            ),
            Option(
              name: '--start',
              description: 'The start time of the schedule in UTC',
              args: [
                Arg(
                name: 'star'
              )
              ]
            ),
            Option(
              name: '--stop',
              description: 'The stop time of the schedule in UTC',
              args: [
                Arg(
                name: 'sto'
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
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
              description: 'The bandwidth schedule name which needs to be added/updated',
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the databoxedge bandwidth-schedule is met',
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
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
              )
              ]
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
              name: ['--name', '-n'],
              description: 'The bandwidth schedule name',
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
      name: 'device',
      description: 'Manage device with databoxedge',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Data Box Edge/Data Box Gateway resource',
          options: [

            Option(
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
              description: 'The Description of the Data Box Edge/Gateway device',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'The etag for the devices',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--friendly-name',
              description: 'The Data Box Edge/Gateway device name',
              args: [
                Arg(
                name: 'friendly-nam'
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
              name: '--model-description',
              description: 'The description of the Data Box Edge/Gateway device model',
              args: [
                Arg(
                name: 'model-descriptio'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--sku',
              description: 'The SKU type',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'EP2_128_1T4_Mx1_W'),
                  FigSuggestion(name: 'EP2_256_2T4_W'),
                  FigSuggestion(name: 'EP2_64_1VPU_W'),
                  FigSuggestion(name: 'Edge'),
                  FigSuggestion(name: 'EdgeMR_Mini'),
                  FigSuggestion(name: 'EdgePR_Base'),
                  FigSuggestion(name: 'EdgePR_Base_UPS'),
                  FigSuggestion(name: 'EdgeP_Base'),
                  FigSuggestion(name: 'EdgeP_High'),
                  FigSuggestion(name: 'GPU'),
                  FigSuggestion(name: 'Gateway'),
                  FigSuggestion(name: 'Management'),
                  FigSuggestion(name: 'RCA_Large'),
                  FigSuggestion(name: 'RCA_Small'),
                  FigSuggestion(name: 'RDC'),
                  FigSuggestion(name: 'TCA_Large'),
                  FigSuggestion(name: 'TCA_Small'),
                  FigSuggestion(name: 'TDC'),
                  FigSuggestion(name: 'TEA_1Node'),
                  FigSuggestion(name: 'TEA_1Node_Heater'),
                  FigSuggestion(name: 'TEA_1Node_UPS'),
                  FigSuggestion(name: 'TEA_1Node_UPS_Heater'),
                  FigSuggestion(name: 'TEA_4Node_Heater'),
                  FigSuggestion(name: 'TEA_4Node_UPS_Heater'),
                  FigSuggestion(name: 'TMA')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The status of the Data Box Edge/Gateway device',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Disconnected'),
                  FigSuggestion(name: 'Maintenance'),
                  FigSuggestion(name: 'NeedsAttention'),
                  FigSuggestion(name: 'Offline'),
                  FigSuggestion(name: 'Online'),
                  FigSuggestion(name: 'PartiallyDisconnected'),
                  FigSuggestion(name: 'ReadyToSetup')
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
          description: 'Delete the Data Box Edge/Data Box Gateway device',
          options: [

            Option(
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          name: 'download-update',
          description: 'Download the updates on a Data Box Edge/Data Box Gateway device',
          options: [

            Option(
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'install-update',
          description: 'Install the updates on the Data Box Edge/Data Box Gateway device',
          options: [

            Option(
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get all the Data Box Edge/Data Box Gateway devices in a resource group or in a subscription',
          options: [

            Option(
              name: '--expand',
              description: 'Specify \$expand=details to populate additional fields related to the resource or Specify \$skipToken= to populate the next page in the list',
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
          name: 'scan-for-update',
          description: 'Scan for updates on a Data Box Edge/Data Box Gateway device',
          options: [

            Option(
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the properties of the Data Box Edge/Data Box Gateway device',
          options: [

            Option(
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          name: 'show-update-summary',
          description: 'Get information about the availability of updates based on the last scan of the device. It also gets information about any ongoing download or install jobs on the device',
          options: [

            Option(
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          description: 'Modify a Data Box Edge/Data Box Gateway resource',
          options: [

            Option(
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the databoxedge device is met',
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
              name: ['--device-name', '--name', '-n'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
              )
              ]
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
      name: 'list-node',
      description: 'Get all the nodes currently configured under this Data Box Edge device',
      options: [

        Option(
          name: ['--device-name', '-d'],
          description: 'The device name',
          args: [
            Arg(
            name: 'device-nam'
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
      name: 'list-sku',
      description: 'List all the available Skus in the region and information related to them',
      options: [

        Option(
          name: '--filter',
          description: 'Specify \$filter=\'location eq \' to filter on location',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show-job',
      description: 'Get the details of a specified job on a Data Box Edge/Data Box Gateway device',
      options: [

        Option(
          name: ['--device-name', '-d'],
          description: 'The device name',
          args: [
            Arg(
            name: 'device-nam'
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
          description: 'The job name',
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
      name: 'order',
      description: 'Manage order with databoxedge',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an order',
          options: [

            Option(
              name: '--address-line1',
              description: 'The address line1',
              args: [
                Arg(
                name: 'address-line'
              )
              ]
            ),
            Option(
              name: '--city',
              description: 'The city name',
              args: [
                Arg(
                name: 'cit'
              )
              ]
            ),
            Option(
              name: '--company-name',
              description: 'The name of the company',
              args: [
                Arg(
                name: 'company-nam'
              )
              ]
            ),
            Option(
              name: '--contact-person',
              description: 'The contact person name',
              args: [
                Arg(
                name: 'contact-perso'
              )
              ]
            ),
            Option(
              name: '--country',
              description: 'The country name',
              args: [
                Arg(
                name: 'countr'
              )
              ]
            ),
            Option(
              name: ['--device-name', '-d'],
              description: 'The order details of a device',
              args: [
                Arg(
                name: 'device-nam'
              )
              ]
            ),
            Option(
              name: '--email-list',
              description: 'The email list',
              args: [
                Arg(
                name: 'email-lis'
              )
              ]
            ),
            Option(
              name: '--phone',
              description: 'The phone number',
              args: [
                Arg(
                name: 'phon'
              )
              ]
            ),
            Option(
              name: '--postal-code',
              description: 'The postal code',
              args: [
                Arg(
                name: 'postal-cod'
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
              name: '--state',
              description: 'The state name',
              args: [
                Arg(
                name: 'stat'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Status of the order as per the allowed status types',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Arriving'),
                  FigSuggestion(name: 'AwaitingFulfilment'),
                  FigSuggestion(name: 'AwaitingPreparation'),
                  FigSuggestion(name: 'AwaitingReturnShipment'),
                  FigSuggestion(name: 'AwaitingShipment'),
                  FigSuggestion(name: 'CollectedAtMicrosoft'),
                  FigSuggestion(name: 'Declined'),
                  FigSuggestion(name: 'Delivered'),
                  FigSuggestion(name: 'LostDevice'),
                  FigSuggestion(name: 'ReplacementRequested'),
                  FigSuggestion(name: 'ReturnInitiated'),
                  FigSuggestion(name: 'Shipped'),
                  FigSuggestion(name: 'ShippedBack'),
                  FigSuggestion(name: 'Untracked')
                ]
              )
              ]
            ),
            Option(
              name: '--address-line2',
              description: 'The address line2',
              args: [
                Arg(
                name: 'address-line'
              )
              ]
            ),
            Option(
              name: '--address-line3',
              description: 'The address line3',
              args: [
                Arg(
                name: 'address-line'
              )
              ]
            ),
            Option(
              name: '--comments',
              description: 'Comments related to this status change',
              args: [
                Arg(
                name: 'comment'
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
          description: 'Delete the order related to the device',
          options: [

            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          description: 'List all the orders related to a Data Box Edge/Data Box Gateway device',
          options: [

            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          description: 'Get a specific order by name',
          options: [

            Option(
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
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
          description: 'Update an order',
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
              name: '--address-line1',
              description: 'The address line1',
              args: [
                Arg(
                name: 'address-line'
              )
              ]
            ),
            Option(
              name: '--address-line2',
              description: 'The address line2',
              args: [
                Arg(
                name: 'address-line'
              )
              ]
            ),
            Option(
              name: '--address-line3',
              description: 'The address line3',
              args: [
                Arg(
                name: 'address-line'
              )
              ]
            ),
            Option(
              name: '--city',
              description: 'The city name',
              args: [
                Arg(
                name: 'cit'
              )
              ]
            ),
            Option(
              name: '--comments',
              description: 'Comments related to this status change',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--company-name',
              description: 'The name of the company',
              args: [
                Arg(
                name: 'company-nam'
              )
              ]
            ),
            Option(
              name: '--contact-person',
              description: 'The contact person name',
              args: [
                Arg(
                name: 'contact-perso'
              )
              ]
            ),
            Option(
              name: '--country',
              description: 'The country name',
              args: [
                Arg(
                name: 'countr'
              )
              ]
            ),
            Option(
              name: ['--device-name', '-d'],
              description: 'The order details of a device',
              args: [
                Arg(
                name: 'device-nam'
              )
              ]
            ),
            Option(
              name: '--email-list',
              description: 'The email list',
              args: [
                Arg(
                name: 'email-lis'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--phone',
              description: 'The phone number',
              args: [
                Arg(
                name: 'phon'
              )
              ]
            ),
            Option(
              name: '--postal-code',
              description: 'The postal code',
              args: [
                Arg(
                name: 'postal-cod'
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
              description: 'The state name',
              args: [
                Arg(
                name: 'stat'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Status of the order as per the allowed status types',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Arriving'),
                  FigSuggestion(name: 'AwaitingFulfilment'),
                  FigSuggestion(name: 'AwaitingPreparation'),
                  FigSuggestion(name: 'AwaitingReturnShipment'),
                  FigSuggestion(name: 'AwaitingShipment'),
                  FigSuggestion(name: 'CollectedAtMicrosoft'),
                  FigSuggestion(name: 'Declined'),
                  FigSuggestion(name: 'Delivered'),
                  FigSuggestion(name: 'LostDevice'),
                  FigSuggestion(name: 'ReplacementRequested'),
                  FigSuggestion(name: 'ReturnInitiated'),
                  FigSuggestion(name: 'Shipped'),
                  FigSuggestion(name: 'ShippedBack'),
                  FigSuggestion(name: 'Untracked')
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the databoxedge order is met',
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
              name: ['--device-name', '-d'],
              description: 'The device name',
              args: [
                Arg(
                name: 'device-nam'
              )
              ]
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
    )
  ]
);
