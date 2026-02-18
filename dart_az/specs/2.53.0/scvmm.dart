// Auto-generated from TypeScript source: scvmm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `scvmm` CLI
final FigSpec scvmmSpec = FigSpec(
  name: 'scvmm',
  description: 'Commands for managing Arc for SCVMM resources',
  subcommands: [

    Subcommand(
      name: 'avset',
      description: 'Manage Arc for SCVMM Availability Set resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create availabilty set resource',
          options: [

            Option(
              name: ['--avset-name', '-a'],
              description: 'Name of the Availabilty Set',
              args: [
                Arg(
                name: 'avset-nam'
              )
              ]
            ),
            Option(
              name: '--custom-location',
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
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
              name: ['--name', '-n'],
              description: 'Name of the resource',
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
              name: ['--vmmserver', '-v'],
              description: 'Name or ID of the vmmserver that is managing this resource',
              args: [
                Arg(
                name: 'vmmserve'
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
          description: 'Delete availabilty set resource',
          options: [

            Option(
              name: '--force',
              description: 'Force the resource to be deleted from azure',
              args: [
                Arg(
                name: 'forc'
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
              description: 'Name of the resource',
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
          description: 'Retrieve a list of availabilty sets',
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
          description: 'Get details of an availabilty set',
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
              description: 'Name of the resource',
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
          description: 'Update availabilty set resource',
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
              description: 'Name of the resource',
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
          description: 'Place the CLI in a waiting state until a condition of the availability set is met',
          options: [

            Option(
              name: '--availability-set-name',
              description: 'Name of the AvailabilitySet',
              args: [
                Arg(
                name: 'availability-set-nam'
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
      name: 'cloud',
      description: 'Manage Arc for SCVMM Cloud resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create cloud resource',
          options: [

            Option(
              name: '--custom-location',
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
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
              name: ['--name', '-n'],
              description: 'Name of the resource',
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
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
            ),
            Option(
              name: '--uuid',
              description: 'The ID of the resource created in the VMM',
              args: [
                Arg(
                name: 'uui'
              )
              ]
            ),
            Option(
              name: ['--vmmserver', '-v'],
              description: 'Name or ID of the vmmserver that is managing this resource',
              args: [
                Arg(
                name: 'vmmserve'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete cloud resource',
          options: [

            Option(
              name: '--force',
              description: 'Force the resource to be deleted from azure',
              args: [
                Arg(
                name: 'forc'
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
              description: 'Name of the resource',
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
          description: 'Retrieve a list of clouds',
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
          description: 'Get details of a cloud',
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
              description: 'Name of the resource',
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
          description: 'Update cloud resource',
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
              description: 'Name of the resource',
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
          description: 'Place the CLI in a waiting state until a condition of the cloud is met',
          options: [

            Option(
              name: '--cloud-name',
              description: 'Name of the Cloud',
              args: [
                Arg(
                name: 'cloud-nam'
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
      name: 'virtual-network',
      description: 'Manage Arc for SCVMM Virtual Network resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create virtual-network resource',
          options: [

            Option(
              name: '--custom-location',
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
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
              name: ['--name', '-n'],
              description: 'Name of the resource',
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
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
            ),
            Option(
              name: '--uuid',
              description: 'The ID of the resource created in the VMM',
              args: [
                Arg(
                name: 'uui'
              )
              ]
            ),
            Option(
              name: ['--vmmserver', '-v'],
              description: 'Name or ID of the vmmserver that is managing this resource',
              args: [
                Arg(
                name: 'vmmserve'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete virtual-network resource',
          options: [

            Option(
              name: '--force',
              description: 'Force the resource to be deleted from azure',
              args: [
                Arg(
                name: 'forc'
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
              description: 'Name of the resource',
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
          description: 'Retrieve a list of virtual-networks',
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
          description: 'Get details of a virtual-network',
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
              description: 'Name of the resource',
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
          description: 'Update virtual-network resource',
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
              description: 'Name of the resource',
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
          description: 'Place the CLI in a waiting state until a condition of the virtual-network is met',
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
              name: '--virtual-network-name',
              description: 'Name of the VirtualNetwork',
              args: [
                Arg(
                name: 'virtual-network-nam'
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
      name: 'vm',
      description: 'Manage Arc for SCVMM Virtual Machine resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create VM resource',
          options: [

            Option(
              name: '--custom-location',
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource',
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
              name: '--admin-password',
              description: 'Admin password for the vm',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--availability-sets', '-a'],
              description: 'List of the name or the ID of the availability sets for the vm',
              args: [
                Arg(
                name: 'availability-set'
              )
              ]
            ),
            Option(
              name: ['--cloud', '-c'],
              description: 'Name or ID of the cloud for deploying the vm',
              args: [
                Arg(
                name: 'clou'
              )
              ]
            ),
            Option(
              name: '--cpu-count',
              description: 'Number of desired vCPUs for the vm',
              args: [
                Arg(
                name: 'cpu-coun'
              )
              ]
            ),
            Option(
              name: '--disk',
              description: 'Disk overrides for the vm.Usage: --disk name=<> disk-size=<> template-disk-id=<> bus-type=<> bus=<> lun=<> vhd-type=<> qos-name=<> qos-id=<>',
              args: [
                Arg(
                name: 'dis'
              )
              ]
            ),
            Option(
              name: '--dynamic-memory-enabled',
              description: 'If dynamic memory should be enabled',
              args: [
                Arg(
                name: 'dynamic-memory-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--dynamic-memory-max',
              description: 'DynamicMemoryMax in MBs for the vm',
              args: [
                Arg(
                name: 'dynamic-memory-ma'
              )
              ]
            ),
            Option(
              name: '--dynamic-memory-min',
              description: 'DynamicMemoryMin in MBs for the vm',
              args: [
                Arg(
                name: 'dynamic-memory-mi'
              )
              ]
            ),
            Option(
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
              name: '--memory-size',
              description: 'Desired memory size in MBs for the vm',
              args: [
                Arg(
                name: 'memory-siz'
              )
              ]
            ),
            Option(
              name: '--nic',
              description: 'Network overrides for the vm.Usage: --nic name=<> network=<> ipv4-address-type=<> ipv6-address-type=<> mac-address-type=<> mac-address=<>',
              args: [
                Arg(
                name: 'ni'
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
            ),
            Option(
              name: ['--vm-template', '-t'],
              description: 'Name or ID of the vm template for deploying the vm',
              args: [
                Arg(
                name: 'vm-templat'
              )
              ]
            ),
            Option(
              name: ['--vmmserver', '-v'],
              description: 'Name or ID of the vmmserver that is managing this resource',
              args: [
                Arg(
                name: 'vmmserve'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-checkpoint',
          description: 'Create a VM checkpoint',
          options: [

            Option(
              name: '--checkpoint-description',
              description: 'Description of the checkpoint to be created',
              args: [
                Arg(
                name: 'checkpoint-descriptio'
              )
              ]
            ),
            Option(
              name: '--checkpoint-name',
              description: 'Name of the checkpoint to be created',
              args: [
                Arg(
                name: 'checkpoint-nam'
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
              description: 'Name of the resource',
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
          name: 'delete',
          description: 'Delete VM resource',
          options: [

            Option(
              name: '--delete-from-host',
              description: 'Delete the VM from the VMware host',
              args: [
                Arg(
                name: 'delete-from-hos'
              )
              ]
            ),
            Option(
              name: '--delete-machine',
              description: 'Delete the parent Microsoft.HybridCompute Machine resource',
              args: [
                Arg(
                name: 'delete-machin'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Force delete the azure resource',
              args: [
                Arg(
                name: 'forc'
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
              description: 'Name of the resource',
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
          name: 'delete-checkpoint',
          description: 'Delete the specified VM checkpoint',
          options: [

            Option(
              name: '--checkpoint-id',
              description: 'Checkpoint UUID',
              args: [
                Arg(
                name: 'checkpoint-i'
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
              description: 'Name of the resource',
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
          name: 'list',
          description: 'Retrieve a list of VMs',
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
          name: 'restart',
          description: 'Restart a VM',
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
              description: 'Name of the resource',
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
          name: 'restore-checkpoint',
          description: 'Restore VM checkpoint',
          options: [

            Option(
              name: '--checkpoint-id',
              description: 'Checkpoint UUID',
              args: [
                Arg(
                name: 'checkpoint-i'
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
              description: 'Name of the resource',
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
          name: 'show',
          description: 'Get details of an VM',
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
              description: 'Name of the resource',
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
          name: 'start',
          description: 'Start a VM',
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
              description: 'Name of the resource',
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
          name: 'stop',
          description: 'Stop a VM',
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
              description: 'Name of the resource',
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
              name: '--skip-shutdown',
              description: 'Skip shutdown and power-off immediately',
              args: [
                Arg(
                name: 'skip-shutdown',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
          name: 'update',
          description: 'Update a VM. Management of VM disks and NICs are not using this subcommand. There are separate subcommands for the same',
          options: [

            Option(
              name: ['--availability-sets', '-a'],
              description: 'List of the name or the ID of the availability sets for the vm',
              args: [
                Arg(
                name: 'availability-set'
              )
              ]
            ),
            Option(
              name: '--cpu-count',
              description: 'Number of desired vCPUs for the vm',
              args: [
                Arg(
                name: 'cpu-coun'
              )
              ]
            ),
            Option(
              name: '--dynamic-memory-enabled',
              description: 'If dynamic memory should be enabled',
              args: [
                Arg(
                name: 'dynamic-memory-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--dynamic-memory-max',
              description: 'DynamicMemoryMax in MBs for the vm',
              args: [
                Arg(
                name: 'dynamic-memory-ma'
              )
              ]
            ),
            Option(
              name: '--dynamic-memory-min',
              description: 'DynamicMemoryMin in MBs for the vm',
              args: [
                Arg(
                name: 'dynamic-memory-mi'
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
              name: '--memory-size',
              description: 'Desired memory size in MBs for the vm',
              args: [
                Arg(
                name: 'memory-siz'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource',
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
          description: 'Place the CLI in a waiting state until a condition of the vm is met',
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
              name: '--virtual-machine-name',
              description: 'Name of the VirtualMachine',
              args: [
                Arg(
                name: 'virtual-machine-nam'
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
          name: 'disk',
          description: 'Managing the Disks of Arc for SCVMM Virtual Machine',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a virtual disk to a virtual machine',
              options: [

                Option(
                  name: '--bus',
                  description: 'Bus Number for the disk',
                  args: [
                    Arg(
                    name: 'bu'
                  )
                  ]
                ),
                Option(
                  name: '--disk-size',
                  description: 'Size of the disk in GB',
                  args: [
                    Arg(
                    name: 'disk-siz'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Disk',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--bus-type',
                  description: 'Bus Type of the Disk',
                  args: [
                    Arg(
                    name: 'bus-type',
                    suggestions: [

                      FigSuggestion(name: 'IDE'),
                      FigSuggestion(name: 'SCSI')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--lun',
                  description: 'Lun Number for the disk',
                  args: [
                    Arg(
                    name: 'lu'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--qos-id',
                  description: 'UUID of the Storage QoS Policy to be applied on the disk',
                  args: [
                    Arg(
                    name: 'qos-i'
                  )
                  ]
                ),
                Option(
                  name: '--qos-name',
                  description: 'Name of the Storage QoS Policy to be applied on the disk',
                  args: [
                    Arg(
                    name: 'qos-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vhd-type',
                  description: 'VHD Type of the Disk',
                  args: [
                    Arg(
                    name: 'vhd-type',
                    suggestions: [

                      FigSuggestion(name: 'Dynamic'),
                      FigSuggestion(name: 'Static')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete disks of a virtual machine',
              options: [

                Option(
                  name: '--disks',
                  description: 'Names of the Disks',
                  args: [
                    Arg(
                    name: 'disk'
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
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
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
              description: 'Retrieve the list of disks present in a VM',
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
                  description: 'Name of the virtual machine',
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
              description: 'Get the details of a disk present in a VM',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Disk',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
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
              description: 'Update a disk of a VM',
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
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--bus',
                  description: 'Bus Number for the disk',
                  args: [
                    Arg(
                    name: 'bu'
                  )
                  ]
                ),
                Option(
                  name: '--bus-type',
                  description: 'Bus Type of the Disk',
                  args: [
                    Arg(
                    name: 'bus-type',
                    suggestions: [

                      FigSuggestion(name: 'IDE'),
                      FigSuggestion(name: 'SCSI')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--disk-id',
                  description: 'UUID of the Disk',
                  args: [
                    Arg(
                    name: 'disk-i'
                  )
                  ]
                ),
                Option(
                  name: '--disk-size',
                  description: 'Size of the disk in GB',
                  args: [
                    Arg(
                    name: 'disk-siz'
                  )
                  ]
                ),
                Option(
                  name: '--lun',
                  description: 'Lun Number for the disk',
                  args: [
                    Arg(
                    name: 'lu'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Disk',
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
                  name: '--qos-id',
                  description: 'UUID of the Storage QoS Policy to be applied on the disk',
                  args: [
                    Arg(
                    name: 'qos-i'
                  )
                  ]
                ),
                Option(
                  name: '--qos-name',
                  description: 'Name of the Storage QoS Policy to be applied on the disk',
                  args: [
                    Arg(
                    name: 'qos-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vhd-type',
                  description: 'VHD Type of the Disk',
                  args: [
                    Arg(
                    name: 'vhd-type',
                    suggestions: [

                      FigSuggestion(name: 'Dynamic'),
                      FigSuggestion(name: 'Static')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the vm disk is met',
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
                  name: '--virtual-machine-name',
                  description: 'Name of the VirtualMachine',
                  args: [
                    Arg(
                    name: 'virtual-machine-nam'
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
          name: 'extension',
          description: 'Manage vm extension with scvmm',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'The operation to create the extension',
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
                  name: '--name',
                  description: 'The name of the vm extension',
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
                  name: '--vm-name',
                  description: 'The name of the vm where the extension should be created or updated',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auto-upgrade-minor',
                  description: 'Indicate whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true',
                  args: [
                    Arg(
                    name: 'auto-upgrade-minor',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-auto-upgrade',
                  description: 'Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available',
                  args: [
                    Arg(
                    name: 'enable-auto-upgrade',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force-update-tag',
                  description: 'How the extension handler should be forced to update even if the extension configuration has not changed',
                  args: [
                    Arg(
                    name: 'force-update-ta'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--protected-settings',
                  description: 'The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'protected-setting'
                  )
                  ]
                ),
                Option(
                  name: '--publisher',
                  description: 'The name of the extension handler publisher',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--settings',
                  description: 'Json formatted public settings for the extension. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'setting'
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
                  description: 'Specify the type of the extension; an example is "CustomScriptExtension"',
                  args: [
                    Arg(
                    name: 'typ'
                  )
                  ]
                ),
                Option(
                  name: '--type-handler-version',
                  description: 'Specifies the version of the script handler',
                  args: [
                    Arg(
                    name: 'type-handler-versio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'The operation to delete the extension',
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
                  name: '--name',
                  description: 'The name of the vm extension',
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
                  description: 'The name of the vm where the extension should be deleted',
                  args: [
                    Arg(
                    name: 'vm-nam'
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
              description: 'The operation to get all extensions of a non-Azure vm',
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
                  description: 'The name of the vm containing the extension',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--expand',
                  description: 'The expand expression to apply on the operation',
                  args: [
                    Arg(
                    name: 'expan'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'The operation to get the extension',
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
                  name: '--name',
                  description: 'The name of the vm extension',
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
                  description: 'The name of the vm containing the extension',
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
              description: 'The operation to update the extension',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the vm extension',
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
                  name: '--vm-name',
                  description: 'The name of the vm where the extension should be created or updated',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auto-upgrade-minor',
                  description: 'Indicate whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true',
                  args: [
                    Arg(
                    name: 'auto-upgrade-minor',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-auto-upgrade',
                  description: 'Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available',
                  args: [
                    Arg(
                    name: 'enable-auto-upgrade',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force-update-tag',
                  description: 'How the extension handler should be forced to update even if the extension configuration has not changed',
                  args: [
                    Arg(
                    name: 'force-update-ta'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--protected-settings',
                  description: 'The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'protected-setting'
                  )
                  ]
                ),
                Option(
                  name: '--publisher',
                  description: 'The name of the extension handler publisher',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--settings',
                  description: 'Json formatted public settings for the extension. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'setting'
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
                  description: 'Specify the type of the extension; an example is "CustomScriptExtension"',
                  args: [
                    Arg(
                    name: 'typ'
                  )
                  ]
                ),
                Option(
                  name: '--type-handler-version',
                  description: 'Specifies the version of the script handler',
                  args: [
                    Arg(
                    name: 'type-handler-versio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'guest-agent',
          description: 'Vm guest agent',
          subcommands: [

            Subcommand(
              name: 'enable',
              description: 'Enable guest agent on the vm',
              options: [

                Option(
                  name: '--password',
                  description: 'Username password credentials to use for connecting to the VM',
                  args: [
                    Arg(
                    name: 'passwor'
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
                  name: '--username',
                  description: 'Username to use for connecting to the vm',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'Name of the VM',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--https-proxy',
                  description: 'HTTPS proxy server url for the VM',
                  args: [
                    Arg(
                    name: 'https-prox'
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
              description: 'Get details of a guest agent by guest agent name, resource-group and vm name',
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
                  description: 'Name of the VM',
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
          name: 'nic',
          description: 'Managing the NICs of Arc for SCVMM Virtual Machine',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a network interface card to a virtual machine',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the NIC',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ipv4-address-type',
                  description: 'The allocation type of the ipv4 address',
                  args: [
                    Arg(
                    name: 'ipv4-address-type',
                    suggestions: [

                      FigSuggestion(name: 'Dynamic'),
                      FigSuggestion(name: 'Static')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ipv6-address-type',
                  description: 'The allocation type of the ipv6 address',
                  args: [
                    Arg(
                    name: 'ipv6-address-type',
                    suggestions: [

                      FigSuggestion(name: 'Dynamic'),
                      FigSuggestion(name: 'Static')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--mac-address',
                  description: 'MAC address of the NIC',
                  args: [
                    Arg(
                    name: 'mac-addres'
                  )
                  ]
                ),
                Option(
                  name: '--mac-address-type',
                  description: 'The allocation type of the MAC address',
                  args: [
                    Arg(
                    name: 'mac-address-type',
                    suggestions: [

                      FigSuggestion(name: 'Dynamic'),
                      FigSuggestion(name: 'Static')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--network',
                  description: 'Name or Id of the virtual network',
                  args: [
                    Arg(
                    name: 'networ'
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
              description: 'Delete NICs of a virtual machine',
              options: [

                Option(
                  name: '--nics',
                  description: 'Names of the NICs',
                  args: [
                    Arg(
                    name: 'nic'
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
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
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
              description: 'Retrieve the list of NICs present in a VM',
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
                  description: 'Name of the virtual machine',
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
              description: 'Get the details of a NIC present in a VM',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the NIC',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
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
              description: 'Update a NIC of a VM',
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
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--disconnect',
                  description: 'Disconnect the NIC from any virtual network it is connected to'
                ),
                Option(
                  name: '--ipv4-address-type',
                  description: 'The allocation type of the ipv4 address',
                  args: [
                    Arg(
                    name: 'ipv4-address-type',
                    suggestions: [

                      FigSuggestion(name: 'Dynamic'),
                      FigSuggestion(name: 'Static')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ipv6-address-type',
                  description: 'The allocation type of the ipv6 address',
                  args: [
                    Arg(
                    name: 'ipv6-address-type',
                    suggestions: [

                      FigSuggestion(name: 'Dynamic'),
                      FigSuggestion(name: 'Static')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--mac-address-type',
                  description: 'The allocation type of the MAC address',
                  args: [
                    Arg(
                    name: 'mac-address-type',
                    suggestions: [

                      FigSuggestion(name: 'Dynamic'),
                      FigSuggestion(name: 'Static')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the NIC',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--network',
                  description: 'Name or Id of the virtual network',
                  args: [
                    Arg(
                    name: 'networ'
                  )
                  ]
                ),
                Option(
                  name: '--nic-id',
                  description: 'UUID of the NIC',
                  args: [
                    Arg(
                    name: 'nic-i'
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
              description: 'Place the CLI in a waiting state until a condition of the vm nic is met',
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
                  name: '--virtual-machine-name',
                  description: 'Name of the VirtualMachine',
                  args: [
                    Arg(
                    name: 'virtual-machine-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'vm-template',
      description: 'Manage Arc for SCVMM Virtual Machine Template resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create vm-template resource',
          options: [

            Option(
              name: '--custom-location',
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
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
              name: ['--name', '-n'],
              description: 'Name of the resource',
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
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
            ),
            Option(
              name: '--uuid',
              description: 'The ID of the resource created in the VMM',
              args: [
                Arg(
                name: 'uui'
              )
              ]
            ),
            Option(
              name: ['--vmmserver', '-v'],
              description: 'Name or ID of the vmmserver that is managing this resource',
              args: [
                Arg(
                name: 'vmmserve'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete vm-template resource',
          options: [

            Option(
              name: '--force',
              description: 'Force the resource to be deleted from azure',
              args: [
                Arg(
                name: 'forc'
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
              description: 'Name of the resource',
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
          description: 'Retrieve a list of vm-templates',
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
          description: 'Get details of a vm-template',
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
              description: 'Name of the resource',
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
          description: 'Update vm-template resource',
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
              description: 'Name of the resource',
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
          description: 'Place the CLI in a waiting state until a condition of the vm-template is met',
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
              name: '--vm-template-name',
              description: 'Name of the VirtualMachineTemplate',
              args: [
                Arg(
                name: 'vm-template-nam'
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
      name: 'vmmserver',
      description: 'Manage Arc for SCVMM VMMServer resources',
      subcommands: [

        Subcommand(
          name: 'connect',
          description: 'Create a vmmserver resource',
          options: [

            Option(
              name: '--custom-location',
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
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
              name: '--fqdn',
              description: 'FQDN/IP address of the vmmserver',
              args: [
                Arg(
                name: 'fqd'
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
              description: 'Name of the resource',
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
              name: '--password',
              description: 'Username password credentials to use for connecting to the vmmserver',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'The port of the vmmserver',
              args: [
                Arg(
                name: 'por'
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
              name: '--username',
              description: 'Username to use for connecting to the vmmserver',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a vmmserver resource',
          options: [

            Option(
              name: '--force',
              description: 'Force the resource to be deleted from azure',
              args: [
                Arg(
                name: 'forc'
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
              description: 'Name of the resource',
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
          name: 'list',
          description: 'Retrieve a list of vmmservers',
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
          description: 'Get details of a vmmserver',
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
              description: 'Name of the resource',
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
          description: 'Update vmmserver resource',
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
              description: 'Name of the resource',
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
          description: 'Place the CLI in a waiting state until a condition of the vmmserver is met',
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
              name: '--vmm-server-name',
              description: 'Name of the VMMServer',
              args: [
                Arg(
                name: 'vmm-server-nam'
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
          name: 'inventory-item',
          description: 'Inventory item resource',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieve a list of inventory items present in a vmmserver',
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
                  name: ['--vmmserver', '-v'],
                  description: 'Name or ID of the vmmserver that is managing this resource',
                  args: [
                    Arg(
                    name: 'vmmserve'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get details of an inventory item present in a vmmserver',
              options: [

                Option(
                  name: ['--inventory-item', '-i'],
                  description: 'Name or ID of the inventory item',
                  args: [
                    Arg(
                    name: 'inventory-ite'
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
                  name: ['--vmmserver', '-v'],
                  description: 'Name or ID of the vmmserver that is managing this resource',
                  args: [
                    Arg(
                    name: 'vmmserve'
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
);
