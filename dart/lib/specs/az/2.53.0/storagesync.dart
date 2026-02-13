// Auto-generated from TypeScript source: storagesync.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `storagesync` CLI
final FigSpec storagesyncSpec = FigSpec(
  name: 'storagesync',
  description: 'Manage Azure File Sync',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a new storage sync service',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of storage sync service',
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
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
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
      description: 'Delete a given storage sync service',
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
          description: 'The name of storage sync service',
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all storage sync services in a resource group or a subscription',
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
      description: 'Show the properties for a given storage sync service',
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
          description: 'The name of storage sync service',
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
      name: 'registered-server',
      description: 'Manage registered server',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Unregister an on-premises server from it\'s storage sync service',
          options: [

            Option(
              name: '--server-id',
              description: 'GUID identifying the on-premises server',
              args: [
                Arg(
                name: 'server-i'
              )
              ]
            ),
            Option(
              name: '--storage-sync-service',
              description: 'The name or ID of storage sync service',
              args: [
                Arg(
                name: 'storage-sync-servic'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all registered servers for a given storage sync service',
          options: [

            Option(
              name: '--storage-sync-service',
              description: 'The name or ID of storage sync service',
              args: [
                Arg(
                name: 'storage-sync-servic'
              )
              ]
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
          description: 'Show the properties for a given registered server',
          options: [

            Option(
              name: '--server-id',
              description: 'GUID identifying the on-premises server',
              args: [
                Arg(
                name: 'server-i'
              )
              ]
            ),
            Option(
              name: '--storage-sync-service',
              description: 'The name or ID of storage sync service',
              args: [
                Arg(
                name: 'storage-sync-servic'
              )
              ]
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of a registered server is met',
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
              name: '--server-id',
              description: 'GUID identifying the on-premises server',
              args: [
                Arg(
                name: 'server-i'
              )
              ]
            ),
            Option(
              name: '--storage-sync-service-name',
              description: 'Name of Storage Sync Service resource',
              args: [
                Arg(
                name: 'storage-sync-service-nam'
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
      name: 'sync-group',
      description: 'Manage sync group',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new sync group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of sync group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--storage-sync-service',
              description: 'The name or ID of storage sync service',
              args: [
                Arg(
                name: 'storage-sync-servic'
              )
              ]
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
          name: 'delete',
          description: 'Delete a given sync group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of sync group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--storage-sync-service',
              description: 'The name or ID of storage sync service',
              args: [
                Arg(
                name: 'storage-sync-servic'
              )
              ]
            ),
            Option(
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
          description: 'List all sync groups in a storage sync service',
          options: [

            Option(
              name: '--storage-sync-service',
              description: 'The name or ID of storage sync service',
              args: [
                Arg(
                name: 'storage-sync-servic'
              )
              ]
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
          description: 'Show the properties for a given sync group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of sync group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--storage-sync-service',
              description: 'The name or ID of storage sync service',
              args: [
                Arg(
                name: 'storage-sync-servic'
              )
              ]
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
          name: 'cloud-endpoint',
          description: 'Manage cloud endpoint',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new cloud endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of cloud endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--azure-file-share-name',
                  description: 'The name of Azure file share',
                  args: [
                    Arg(
                    name: 'azure-file-share-nam'
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
                  name: '--storage-account',
                  description: 'The name or ID of the storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--storage-account-tenant-id',
                  description: 'The id of the tenant that the storage account is in',
                  args: [
                    Arg(
                    name: 'storage-account-tenant-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a given cloud endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of cloud endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all cloud endpoints in a sync group',
              options: [

                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
                  )
                  ]
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
              description: 'Show the properties for a given cloud endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of cloud endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
                  )
                  ]
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
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of a cloud endpoint is met',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of cloud endpoint',
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
                  name: '--storage-sync-service-name',
                  description: 'Name of Storage Sync Service resource',
                  args: [
                    Arg(
                    name: 'storage-sync-service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'Name of Sync Group resource',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
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
          name: 'server-endpoint',
          description: 'Manage server endpoint',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new server endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of server endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registered-server-id', '--server-id'],
                  description: 'The resource id or GUID of the registered server',
                  args: [
                    Arg(
                    name: 'registered-server-i'
                  )
                  ]
                ),
                Option(
                  name: '--server-local-path',
                  description: 'The local path of the registered server',
                  args: [
                    Arg(
                    name: 'server-local-pat'
                  )
                  ]
                ),
                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--cloud-tiering',
                  description: 'A switch to enable or disable cloud tiering. With cloud tiering, infrequently used or accessed files can be tiered to Azure Files',
                  args: [
                    Arg(
                    name: 'cloud-tiering',
                    suggestions: [

                      FigSuggestion(name: 'off'),
                      FigSuggestion(name: 'on')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--offline-data-transfer',
                  description: 'A switch to enable or disable offline data transfer. With offline data transfer, you can use alternative means, like Azure Data Box, to transport large amounts of files into Azure without network',
                  args: [
                    Arg(
                    name: 'offline-data-transfer',
                    suggestions: [

                      FigSuggestion(name: 'off'),
                      FigSuggestion(name: 'on')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--offline-data-transfer-share-name',
                  description: 'The name of Azure file share that is used to transfer data offline',
                  args: [
                    Arg(
                    name: 'offline-data-transfer-share-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--tier-files-older-than-days',
                  description: 'The days that the files are older than will be tiered',
                  args: [
                    Arg(
                    name: 'tier-files-older-than-day'
                  )
                  ]
                ),
                Option(
                  name: '--volume-free-space-percent',
                  description: 'The amount of free space to reserve on the volume on which the server endpoint is located. For example, if volume free space is set to 50% on a volume that has a single server endpoint, roughly half the amount of data is tiered to Azure Files. Regardless of whether cloud tiering is enabled, your Azure file share always has a complete copy of the data in the sync group',
                  args: [
                    Arg(
                    name: 'volume-free-space-percen'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a given server endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of server endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all server endpoints in a sync group',
              options: [

                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
                  )
                  ]
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
              description: 'Show the properties for a given server endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of server endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
                  )
                  ]
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
              description: 'Update the properties for a given server endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of server endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--storage-sync-service',
                  description: 'The name or ID of storage sync service',
                  args: [
                    Arg(
                    name: 'storage-sync-servic'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'The name of sync group',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--cloud-tiering',
                  description: 'A switch to enable or disable cloud tiering. With cloud tiering, infrequently used or accessed files can be tiered to Azure Files',
                  args: [
                    Arg(
                    name: 'cloud-tiering',
                    suggestions: [

                      FigSuggestion(name: 'off'),
                      FigSuggestion(name: 'on')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--offline-data-transfer',
                  description: 'A switch to enable or disable offline data transfer. With offline data transfer, you can use alternative means, like Azure Data Box, to transport large amounts of files into Azure without network',
                  args: [
                    Arg(
                    name: 'offline-data-transfer',
                    suggestions: [

                      FigSuggestion(name: 'off'),
                      FigSuggestion(name: 'on')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--offline-data-transfer-share-name',
                  description: 'The name of Azure file share that is used to transfer data offline',
                  args: [
                    Arg(
                    name: 'offline-data-transfer-share-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--tier-files-older-than-days',
                  description: 'The days that the files are older than will be tiered',
                  args: [
                    Arg(
                    name: 'tier-files-older-than-day'
                  )
                  ]
                ),
                Option(
                  name: '--volume-free-space-percent',
                  description: 'The amount of free space to reserve on the volume on which the server endpoint is located. For example, if volume free space is set to 50% on a volume that has a single server endpoint, roughly half the amount of data is tiered to Azure Files. Regardless of whether cloud tiering is enabled, your Azure file share always has a complete copy of the data in the sync group',
                  args: [
                    Arg(
                    name: 'volume-free-space-percen'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of a server endpoint is met',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of server endpoint',
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
                  name: '--storage-sync-service-name',
                  description: 'Name of Storage Sync Service resource',
                  args: [
                    Arg(
                    name: 'storage-sync-service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--sync-group-name',
                  description: 'Name of Sync Group resource',
                  args: [
                    Arg(
                    name: 'sync-group-nam'
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
    )
  ]
);
