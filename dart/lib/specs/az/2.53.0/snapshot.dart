// Auto-generated from TypeScript source: snapshot.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `snapshot` CLI
final FigSpec snapshotSpec = FigSpec(
  name: 'snapshot',
  description: 'Manage point-in-time copies of managed disks, native blobs, or other snapshots',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a snapshot',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the snapshot',
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
          name: '--accelerated-network',
          description: 'Customers can set on Managed Disks or Snapshots to enable the accelerated networking if the OS disk image support',
          args: [
            Arg(
            name: 'accelerated-network',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--architecture',
          description: 'CPU architecture',
          args: [
            Arg(
            name: 'architecture',
            suggestions: [

              FigSuggestion(name: 'Arm64'),
              FigSuggestion(name: 'x64')
            ]
          )
          ]
        ),
        Option(
          name: '--copy-start',
          description: 'Create snapshot by using a deep copy process, where the resource creation is considered complete only after all data has been copied from the source',
          args: [
            Arg(
            name: 'copy-start',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--disk-access',
          description: 'Name or ID of the disk access resource for using private endpoints on disks',
          args: [
            Arg(
            name: 'disk-acces'
          )
          ]
        ),
        Option(
          name: '--disk-encryption-set',
          description: 'Name or ID of disk encryption set that is used to encrypt the disk',
          args: [
            Arg(
            name: 'disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--edge-zone',
          description: 'The name of edge zone',
          args: [
            Arg(
            name: 'edge-zon'
          )
          ]
        ),
        Option(
          name: '--encryption-type',
          description: 'Encryption type. EncryptionAtRestWithPlatformKey: Disk is encrypted with XStore managed key at rest. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted with Customer managed key at rest',
          args: [
            Arg(
            name: 'encryption-type',
            suggestions: [

              FigSuggestion(name: 'EncryptionAtRestWithCustomerKey'),
              FigSuggestion(name: 'EncryptionAtRestWithPlatformAndCustomerKeys'),
              FigSuggestion(name: 'EncryptionAtRestWithPlatformKey')
            ]
          )
          ]
        ),
        Option(
          name: '--for-upload',
          description: 'Create the snapshot for uploading blobs later on through storage commands. Run "az snapshot grant-access --access-level Write" to retrieve the snapshot\'s SAS token',
          args: [
            Arg(
            name: 'for-upload',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--hyper-v-generation',
          description: 'The hypervisor generation of the Virtual Machine. Applicable to OS disks only',
          args: [
            Arg(
            name: 'hyper-v-generation',
            suggestions: [

              FigSuggestion(name: 'V1'),
              FigSuggestion(name: 'V2')
            ]
          )
          ]
        ),
        Option(
          name: '--incremental',
          description: 'Whether a snapshot is incremental. Incremental snapshots on the same disk occupy less space than full snapshots and can be diffed',
          args: [
            Arg(
            name: 'incremental',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. If location is not specified and no default location specified, location will be automatically set as same as the resource group',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--network-access-policy',
          description: 'Policy for accessing the disk via network',
          args: [
            Arg(
            name: 'network-access-policy',
            suggestions: [

              FigSuggestion(name: 'AllowAll'),
              FigSuggestion(name: 'AllowPrivate'),
              FigSuggestion(name: 'DenyAll')
            ]
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--public-network-access',
          description: 'Customers can set on Managed Disks or Snapshots to control the export policy on the disk',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: ['--size-gb', '-z'],
          description: 'Size in GB. Max size: 4095 GB (certain preview disks can be larger)',
          args: [
            Arg(
            name: 'size-g'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: '',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Premium_LRS'),
              FigSuggestion(name: 'Standard_LRS'),
              FigSuggestion(name: 'Standard_ZRS')
            ]
          )
          ]
        ),
        Option(
          name: '--source',
          description: 'Source to create the disk/snapshot from, including unmanaged blob uri, managed disk id or name, or snapshot id or name',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        ),
        Option(
          name: '--source-storage-account-id',
          description: 'Used when source blob is in a different subscription',
          args: [
            Arg(
            name: 'source-storage-account-i'
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
      description: 'Delete a snapshot',
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
          name: ['--snapshot-name', '--name', '-n'],
          description: 'The name of the snapshot that is being created. The name can\'t be changed after the snapshot is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The max name length is 80 characters',
          args: [
            Arg(
            name: 'snapshot-nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish',
          args: [
            Arg(
            name: 'no-wait',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
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
        )
      ]
    ),
    Subcommand(
      name: 'grant-access',
      description: 'Grant read access to a snapshot',
      options: [

        Option(
          name: '--duration-in-seconds',
          description: 'Time duration in seconds until the SAS access expires',
          args: [
            Arg(
            name: 'duration-in-second'
          )
          ]
        ),
        Option(
          name: '--access-level',
          description: 'Access level',
          args: [
            Arg(
            name: 'access-level',
            suggestions: [

              FigSuggestion(name: 'Read'),
              FigSuggestion(name: 'Write')
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
          description: 'The name of the snapshot',
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
      name: 'list',
      description: 'List snapshots under a resource group',
      options: [

        Option(
          name: '--max-items',
          description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
          args: [
            Arg(
            name: 'max-item'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
          args: [
            Arg(
            name: 'next-toke'
          )
          ]
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
      name: 'revoke-access',
      description: 'Revoke access to a snapshot',
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
          name: ['--snapshot-name', '--name', '-n'],
          description: 'The name of the snapshot',
          args: [
            Arg(
            name: 'snapshot-nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish',
          args: [
            Arg(
            name: 'no-wait',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
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
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get information about a snapshot',
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
          name: ['--snapshot-name', '--name', '-n'],
          description: 'The name of the snapshot that is being created. The name can\'t be changed after the snapshot is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The max name length is 80 characters',
          args: [
            Arg(
            name: 'snapshot-nam'
          )
          ]
        ),
        Option(
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
      description: 'Update a snapshot',
      options: [

        Option(
          name: '--accelerated-network',
          description: 'Customers can set on Managed Disks or Snapshots to enable the accelerated networking if the OS disk image support',
          args: [
            Arg(
            name: 'accelerated-network',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
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
          name: '--architecture',
          description: 'CPU architecture',
          args: [
            Arg(
            name: 'architecture',
            suggestions: [

              FigSuggestion(name: 'Arm64'),
              FigSuggestion(name: 'x64')
            ]
          )
          ]
        ),
        Option(
          name: '--disk-access',
          description: 'Name or ID of the disk access resource for using private endpoints on disks',
          args: [
            Arg(
            name: 'disk-acces'
          )
          ]
        ),
        Option(
          name: '--disk-encryption-set',
          description: 'Name or ID of disk encryption set that is used to encrypt the disk',
          args: [
            Arg(
            name: 'disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--encryption-type',
          description: 'Encryption type. EncryptionAtRestWithPlatformKey: Disk is encrypted with XStore managed key at rest. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted with Customer managed key at rest',
          args: [
            Arg(
            name: 'encryption-type',
            suggestions: [

              FigSuggestion(name: 'EncryptionAtRestWithCustomerKey'),
              FigSuggestion(name: 'EncryptionAtRestWithPlatformAndCustomerKeys'),
              FigSuggestion(name: 'EncryptionAtRestWithPlatformKey')
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
          name: ['--name', '-n'],
          description: 'The name of the snapshot',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--network-access-policy',
          description: 'Policy for accessing the disk via network',
          args: [
            Arg(
            name: 'network-access-policy',
            suggestions: [

              FigSuggestion(name: 'AllowAll'),
              FigSuggestion(name: 'AllowPrivate'),
              FigSuggestion(name: 'DenyAll')
            ]
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--public-network-access',
          description: 'Customers can set on Managed Disks or Snapshots to control the export policy on the disk',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
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
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: '',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Premium_LRS'),
              FigSuggestion(name: 'Standard_LRS'),
              FigSuggestion(name: 'Standard_ZRS')
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
      description: 'Place the CLI in a waiting state until a condition is met',
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
          name: ['--snapshot-name', '--name', '-n'],
          description: 'The name of the snapshot that is being created. The name can\'t be changed after the snapshot is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The max name length is 80 characters',
          args: [
            Arg(
            name: 'snapshot-nam'
          )
          ]
        ),
        Option(
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
);
