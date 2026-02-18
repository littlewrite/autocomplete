// Auto-generated from TypeScript source: disk-pool.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `disk-pool` CLI
final FigSpec diskPoolSpec = FigSpec(
  name: 'disk-pool',
  description: 'Manage Azure disk pool',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create Disk pool. This Create operation can take 15 minutes to complete. This is expected service behavior',
      options: [

        Option(
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
          )
          ]
        ),
        Option(
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
          description: 'Determines the SKU of the Disk Pool',
          args: [
            Arg(
            name: 'sk'
          )
          ]
        ),
        Option(
          name: '--subnet-id',
          description: 'Azure Resource ID of a Subnet for the Disk Pool',
          args: [
            Arg(
            name: 'subnet-i'
          )
          ]
        ),
        Option(
          name: ['--additional-capabilities', '-a'],
          description: 'List of additional capabilities for a Disk Pool',
          args: [
            Arg(
            name: 'additional-capabilitie'
          )
          ]
        ),
        Option(
          name: '--availability-zones',
          description: 'Logical zone for Disk Pool resource; example: ["1"]',
          args: [
            Arg(
            name: 'availability-zone'
          )
          ]
        ),
        Option(
          name: '--disks',
          description: 'List of Azure Managed Disks to attach to a Disk Pool',
          args: [
            Arg(
            name: 'disk'
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
          name: '--managed-by',
          description: 'Azure resource id. Indicates if this resource is managed by another Azure resource',
          args: [
            Arg(
            name: 'managed-b'
          )
          ]
        ),
        Option(
          name: '--managed-by-extended',
          description: 'List of Azure resource ids that manage this resource',
          args: [
            Arg(
            name: 'managed-by-extende'
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
      description: 'Delete a Disk pool; attached disks are not affected. This delete operation can take 10 minutes to complete. This is expected service behavior',
      options: [

        Option(
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
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
      description: 'Gets a list of DiskPools in a resource group. And Gets a list of Disk Pools in a subscription',
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
      name: 'list-outbound-network-dependency-endpoint',
      description: 'Gets the network endpoints of all outbound dependencies of a Disk Pool',
      options: [

        Option(
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
          )
          ]
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
      name: 'list-skus',
      description: 'Lists available StoragePool resources and skus in an Azure location',
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
    ),
    Subcommand(
      name: 'list-zones',
      description: 'Lists available Disk Pool Skus in an Azure location',
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
    ),
    Subcommand(
      name: 'redeploy',
      description: 'Redeploy replaces the underlying virtual machine hosts one at a time. This operation can take 10-15 minutes to complete. This is expected service behavior',
      options: [

        Option(
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
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
      description: 'Get a Disk pool',
      options: [

        Option(
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
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
      name: 'start',
      description: 'The operation to start a Disk Pool. This start operation can take 10 minutes to complete. This is expected service behavior',
      options: [

        Option(
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
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
      name: 'stop',
      description: 'Shuts down the Disk Pool and releases the compute resources. You are not billed for the compute resources that this Disk Pool uses. This operation can take 10 minutes to complete. This is expected service behavior',
      options: [

        Option(
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
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
      name: 'update',
      description: 'Update a Disk pool',
      options: [

        Option(
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
          )
          ]
        ),
        Option(
          name: '--disks',
          description: 'List of Azure Managed Disks to attach to a Disk Pool',
          args: [
            Arg(
            name: 'disk'
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
          name: '--managed-by',
          description: 'Azure resource id. Indicates if this resource is managed by another Azure resource',
          args: [
            Arg(
            name: 'managed-b'
          )
          ]
        ),
        Option(
          name: '--managed-by-extended',
          description: 'List of Azure resource ids that manage this resource',
          args: [
            Arg(
            name: 'managed-by-extende'
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
          description: 'Determines the SKU of the Disk Pool',
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
      description: 'Place the CLI in a waiting state until a condition of the disk-pool is met',
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
          name: ['--disk-pool-name', '--name', '-n'],
          description: 'The name of the Disk Pool',
          args: [
            Arg(
            name: 'disk-pool-nam'
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
    ),
    Subcommand(
      name: 'iscsi-target',
      description: 'Manage iSCSI target with a Disk Pool',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an iSCSI Target',
          options: [

            Option(
              name: '--acl-mode',
              description: 'Mode for Target connectivity',
              args: [
                Arg(
                name: 'acl-mode',
                suggestions: [

                  FigSuggestion(name: 'Dynamic'),
                  FigSuggestion(name: 'Static')
                ]
              )
              ]
            ),
            Option(
              name: '--disk-pool-name',
              description: 'The name of the Disk Pool',
              args: [
                Arg(
                name: 'disk-pool-nam'
              )
              ]
            ),
            Option(
              name: ['--iscsi-target-name', '--name', '-n'],
              description: 'The name of the iSCSI Target',
              args: [
                Arg(
                name: 'iscsi-target-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--luns',
              description: 'List of LUNs to be exposed through iSCSI Target',
              args: [
                Arg(
                name: 'lun'
              )
              ]
            ),
            Option(
              name: '--managed-by',
              description: 'Azure resource id. Indicates if this resource is managed by another Azure resource',
              args: [
                Arg(
                name: 'managed-b'
              )
              ]
            ),
            Option(
              name: '--managed-by-extended',
              description: 'List of Azure resource ids that manage this resource',
              args: [
                Arg(
                name: 'managed-by-extende'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--static-acls',
              description: 'Access Control List (ACL) for an iSCSI Target; defines LUN masking policy',
              args: [
                Arg(
                name: 'static-acl'
              )
              ]
            ),
            Option(
              name: '--target-iqn',
              description: 'ISCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server"',
              args: [
                Arg(
                name: 'target-iq'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an iSCSI Target',
          options: [

            Option(
              name: '--disk-pool-name',
              description: 'The name of the Disk Pool',
              args: [
                Arg(
                name: 'disk-pool-nam'
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
              name: ['--iscsi-target-name', '--name', '-n'],
              description: 'The name of the iSCSI Target',
              args: [
                Arg(
                name: 'iscsi-target-nam'
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
          description: 'Get iSCSI Targets in a Disk pool',
          options: [

            Option(
              name: '--disk-pool-name',
              description: 'The name of the Disk Pool',
              args: [
                Arg(
                name: 'disk-pool-nam'
              )
              ]
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
          description: 'Get an iSCSI Target',
          options: [

            Option(
              name: '--disk-pool-name',
              description: 'The name of the Disk Pool',
              args: [
                Arg(
                name: 'disk-pool-nam'
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
              name: ['--iscsi-target-name', '--name', '-n'],
              description: 'The name of the iSCSI Target',
              args: [
                Arg(
                name: 'iscsi-target-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update an iSCSI Target',
          options: [

            Option(
              name: '--disk-pool-name',
              description: 'The name of the Disk Pool',
              args: [
                Arg(
                name: 'disk-pool-nam'
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
              name: ['--iscsi-target-name', '--name', '-n'],
              description: 'The name of the iSCSI Target',
              args: [
                Arg(
                name: 'iscsi-target-nam'
              )
              ]
            ),
            Option(
              name: '--luns',
              description: 'List of LUNs to be exposed through iSCSI Target',
              args: [
                Arg(
                name: 'lun'
              )
              ]
            ),
            Option(
              name: '--managed-by',
              description: 'Azure resource id. Indicates if this resource is managed by another Azure resource',
              args: [
                Arg(
                name: 'managed-b'
              )
              ]
            ),
            Option(
              name: '--managed-by-extended',
              description: 'List of Azure resource ids that manage this resource',
              args: [
                Arg(
                name: 'managed-by-extende'
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
              name: '--static-acls',
              description: 'Access Control List (ACL) for an iSCSI Target; defines LUN masking policy',
              args: [
                Arg(
                name: 'static-acl'
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
          description: 'Place the CLI in a waiting state until a condition of the disk-pool iscsi-target is met',
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
              name: '--disk-pool-name',
              description: 'The name of the Disk Pool',
              args: [
                Arg(
                name: 'disk-pool-nam'
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
              name: ['--iscsi-target-name', '--name', '-n'],
              description: 'The name of the iSCSI Target',
              args: [
                Arg(
                name: 'iscsi-target-nam'
              )
              ]
            ),
            Option(
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
