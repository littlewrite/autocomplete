// Auto-generated from TypeScript source: guestconfig.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `guestconfig` CLI
final FigSpec guestconfigSpec = FigSpec(
  name: 'guestconfig',
  description: 'Manage Guest Configuration',
  subcommands: [

    Subcommand(
      name: 'guest-configuration-assignment',
      description: 'Guestconfig guest-configuration-assignment',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates an association between a VM and guest configuration',
          options: [

            Option(
              name: '--guest-configuration-assignment-name',
              description: 'Name of the guest configuration assignment',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            ),
            Option(
              name: '--context',
              description: 'The source which initiated the guest configuration assignment. Ex: Azure Policy',
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-configuration-parameter',
              description: 'The configuration parameters for the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-configuration-paramete'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-configuration-setting',
              description: 'The configuration setting for the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-configuration-settin'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-name',
              description: 'Name of the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-version',
              description: 'Version of the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-versio'
              )
              ]
            ),
            Option(
              name: '--latest-assignment-report-assignment',
              description: 'Configuration details of the guest configuration assignment. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'latest-assignment-report-assignmen'
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
              name: '--name',
              description: 'Name of the guest configuration assignment',
              args: [
                Arg(
                name: 'nam'
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
          description: 'Delete a guest configuration assignment',
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
              description: 'Name of the guest configuration assignment',
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all guest configuration assignments for a virtual machine',
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get information about a guest configuration assignment',
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
              description: 'The guest configuration assignment name',
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Creates an association between a VM and guest configuration',
          options: [

            Option(
              name: '--context',
              description: 'The source which initiated the guest configuration assignment. Ex: Azure Policy',
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-assignment-name',
              description: 'Name of the guest configuration assignment',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-configuration-parameter',
              description: 'The configuration parameters for the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-configuration-paramete'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-configuration-setting',
              description: 'The configuration setting for the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-configuration-settin'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-name',
              description: 'Name of the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-version',
              description: 'Version of the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-versio'
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
              name: '--latest-assignment-report-assignment',
              description: 'Configuration details of the guest configuration assignment. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'latest-assignment-report-assignmen'
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
              name: '--name',
              description: 'Name of the guest configuration assignment',
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the guestconfig guest-configuration-assignment is met',
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
              name: ['--name', '-n'],
              description: 'The guest configuration assignment name',
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
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'guest-configuration-assignment-report',
      description: 'Guestconfig guest-configuration-assignment-report',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all reports for the guest configuration assignment, latest report first',
          options: [

            Option(
              name: '--guest-configuration-assignment-name',
              description: 'The guest configuration assignment name',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a report for the guest configuration assignment, by reportId',
          options: [

            Option(
              name: '--guest-configuration-assignment-name',
              description: 'The guest configuration assignment name',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
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
              name: '--report-id',
              description: 'The GUID for the guest configuration assignment report',
              args: [
                Arg(
                name: 'report-i'
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'guest-configuration-hcrp-assignment',
      description: 'Guestconfig guest-configuration-hcrp-assignment',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates an association between a ARC machine and guest configuration',
          options: [

            Option(
              name: '--guest-configuration-assignment-name',
              description: 'Name of the guest configuration assignment',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--machine-name',
              description: 'The name of the ARC machine',
              args: [
                Arg(
                name: 'machine-nam'
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
              name: '--context',
              description: 'The source which initiated the guest configuration assignment. Ex: Azure Policy',
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-configuration-parameter',
              description: 'The configuration parameters for the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-configuration-paramete'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-configuration-setting',
              description: 'The configuration setting for the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-configuration-settin'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-name',
              description: 'Name of the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-version',
              description: 'Version of the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-versio'
              )
              ]
            ),
            Option(
              name: '--latest-assignment-report-assignment',
              description: 'Configuration details of the guest configuration assignment. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'latest-assignment-report-assignmen'
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
              name: '--name',
              description: 'Name of the guest configuration assignment',
              args: [
                Arg(
                name: 'nam'
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
          description: 'Delete a guest configuration assignment',
          options: [

            Option(
              name: '--guest-configuration-assignment-name',
              description: 'Name of the guest configuration assignment',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
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
              name: '--machine-name',
              description: 'The name of the ARC machine',
              args: [
                Arg(
                name: 'machine-nam'
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
          description: 'List all guest configuration assignments for an ARC machine',
          options: [

            Option(
              name: '--machine-name',
              description: 'The name of the ARC machine',
              args: [
                Arg(
                name: 'machine-nam'
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
          description: 'Get information about a guest configuration assignment',
          options: [

            Option(
              name: '--guest-configuration-assignment-name',
              description: 'The guest configuration assignment name',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
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
              name: '--machine-name',
              description: 'The name of the ARC machine',
              args: [
                Arg(
                name: 'machine-nam'
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
          description: 'Creates an association between a ARC machine and guest configuration',
          options: [

            Option(
              name: '--context',
              description: 'The source which initiated the guest configuration assignment. Ex: Azure Policy',
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-assignment-name',
              description: 'Name of the guest configuration assignment',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-configuration-parameter',
              description: 'The configuration parameters for the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-configuration-paramete'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-configuration-setting',
              description: 'The configuration setting for the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-configuration-settin'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-name',
              description: 'Name of the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--guest-configuration-version',
              description: 'Version of the guest configuration',
              args: [
                Arg(
                name: 'guest-configuration-versio'
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
              name: '--latest-assignment-report-assignment',
              description: 'Configuration details of the guest configuration assignment. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'latest-assignment-report-assignmen'
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
              name: '--machine-name',
              description: 'The name of the ARC machine',
              args: [
                Arg(
                name: 'machine-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the guest configuration assignment',
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the guestconfig guest-configuration-hcrp-assignment is met',
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
              name: '--guest-configuration-assignment-name',
              description: 'The guest configuration assignment name',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
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
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--machine-name',
              description: 'The name of the ARC machine',
              args: [
                Arg(
                name: 'machine-nam'
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
      name: 'guest-configuration-hcrp-assignment-report',
      description: 'Guestconfig guest-configuration-hcrp-assignment-report',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all reports for the guest configuration assignment, latest report first',
          options: [

            Option(
              name: '--guest-configuration-assignment-name',
              description: 'The guest configuration assignment name',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--machine-name',
              description: 'The name of the ARC machine',
              args: [
                Arg(
                name: 'machine-nam'
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
          description: 'Get a report for the guest configuration assignment, by reportId',
          options: [

            Option(
              name: '--guest-configuration-assignment-name',
              description: 'The guest configuration assignment name',
              args: [
                Arg(
                name: 'guest-configuration-assignment-nam'
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
              name: '--machine-name',
              description: 'The name of the ARC machine',
              args: [
                Arg(
                name: 'machine-nam'
              )
              ]
            ),
            Option(
              name: '--report-id',
              description: 'The GUID for the guest configuration assignment report',
              args: [
                Arg(
                name: 'report-i'
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
    )
  ]
);
