// Auto-generated from TypeScript source: hpc-cache.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hpc-cache` CLI
final FigSpec hpcCacheSpec = FigSpec(
  name: 'hpc-cache',
  description: 'Commands to manage hpc cache',
  subcommands: [

    Subcommand(
      name: 'blob-storage-target',
      description: 'Commands to create hpc cache blob storage target',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Create or update a blob Storage Target. This operation is allowed at any time, but if the Cache is down or unhealthy, the actual creation/modification of the Storage Target may be delayed until the Cache is healthy again',
          options: [

            Option(
              name: '--cache-name',
              description: 'Name of Cache',
              args: [
                Arg(
                name: 'cache-nam'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Name of target storage container',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the Storage Target',
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
              name: '--storage-account',
              description: 'Resource ID or Name of target storage account',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: ['--virtual-namespace-path', '-v'],
              description: 'Path to create for this storage target in the client-facing virtual filesystem',
              args: [
                Arg(
                name: 'virtual-namespace-pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Create or update a blob Storage Target. This operation is allowed at any time, but if the Cache is down or unhealthy, the actual creation/modification of the Storage Target may be delayed until the Cache is healthy again',
          options: [

            Option(
              name: '--cache-name',
              description: 'Name of Cache',
              args: [
                Arg(
                name: 'cache-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the Storage Target',
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
              name: '--container-name',
              description: 'Name of target storage container',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Resource ID or Name of target storage account',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: ['--virtual-namespace-path', '-v'],
              description: 'Path to create for this storage target in the client-facing virtual filesystem',
              args: [
                Arg(
                name: 'virtual-namespace-pat'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create or update a Cache',
      options: [

        Option(
          name: '--cache-size-gb',
          description: 'The size of this Cache, in GB',
          args: [
            Arg(
            name: 'cache-size-g'
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
          description: 'Name of Cache',
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
          name: '--sku-name',
          description: 'SKU name for this Cache',
          args: [
            Arg(
            name: 'sku-nam'
          )
          ]
        ),
        Option(
          name: '--subnet',
          description: 'Subnet used for the Cache',
          args: [
            Arg(
            name: 'subne'
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
      description: 'Schedule a Cache for deletion',
      options: [

        Option(
          name: '--name',
          description: 'Name of Cache',
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
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'flush',
      description: 'Tell a Cache to write all dirty data to the Storage Target(s). During the flush, clients will see errors returned until the flush is complete',
      options: [

        Option(
          name: '--name',
          description: 'Name of Cache',
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
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Return all Caches the user has access to under a resource group',
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
      description: 'Return a Cache',
      options: [

        Option(
          name: '--name',
          description: 'Name of Cache',
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
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Tell a Stopped state Cache to transition to Active state',
      options: [

        Option(
          name: '--name',
          description: 'Name of Cache',
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
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Tell an Active Cache to transition to Stopped state',
      options: [

        Option(
          name: '--name',
          description: 'Name of Cache',
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
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a Cache',
      options: [

        Option(
          name: '--name',
          description: 'Name of Cache',
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
      name: 'upgrade-firmware',
      description: 'Upgrade a Cache\'s firmware if a new version is available. Otherwise, this operation has no effect',
      options: [

        Option(
          name: '--name',
          description: 'Name of Cache',
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
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Wait a hpc Cache to specified state',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of Cache',
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
      name: 'nfs-storage-target',
      description: 'Commands to create hpc cache nfs storage target',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Create or update a nfs Storage Target. This operation is allowed at any time, but if the Cache is down or unhealthy, the actual creation/modification of the Storage Target may be delayed until the Cache is healthy again',
          options: [

            Option(
              name: '--cache-name',
              description: 'Name of Cache',
              args: [
                Arg(
                name: 'cache-nam'
              )
              ]
            ),
            Option(
              name: '--junction',
              description: 'List of Cache namespace junctions to target for namespace associations.The sub parameters contains: (1) --namespace-path: Namespace path on a Cache for a Storage Target (2) --nfs-export: NFS export where targetPath exists (3) --target-path(Optional): Path in Storage Target to which namespacePath points',
              args: [
                Arg(
                name: 'junctio'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the Storage Target',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--nfs3-target',
              description: 'IP address or host name of an NFSv3 host (e.g., 10.0.44.44)',
              args: [
                Arg(
                name: 'nfs3-targe'
              )
              ]
            ),
            Option(
              name: '--nfs3-usage-model',
              description: 'Identify the primary usage model to be used for this Storage Target. You can use command az hpc-cache usage-model list to see the names of usage models. For more details about usage models, please refer to https://docs.microsoft.com/azure/hpc-cache/hpc-cache-add-storage?tabs=azure-cli#choose-a-usage-model',
              args: [
                Arg(
                name: 'nfs3-usage-mode'
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
          description: 'Create or update a nfs Storage Target. This operation is allowed at any time, but if the Cache is down or unhealthy, the actual creation/modification of the Storage Target may be delayed until the Cache is healthy again',
          options: [

            Option(
              name: '--cache-name',
              description: 'Name of Cache',
              args: [
                Arg(
                name: 'cache-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the Storage Target',
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
              name: '--junction',
              description: 'List of Cache namespace junctions to target for namespace associations.The sub parameters contains: (1) --namespace-path: Namespace path on a Cache for a Storage Target (2) --nfs-export: NFS export where targetPath exists (3) --target-path(Optional): Path in Storage Target to which namespacePath points',
              args: [
                Arg(
                name: 'junctio'
              )
              ]
            ),
            Option(
              name: '--nfs3-target',
              description: 'IP address or host name of an NFSv3 host (e.g., 10.0.44.44)',
              args: [
                Arg(
                name: 'nfs3-targe'
              )
              ]
            ),
            Option(
              name: '--nfs3-usage-model',
              description: 'Identify the primary usage model to be used for this Storage Target. You can use command az hpc-cache usage-model list to see the names of usage models. For more details about usage models, please refer to https://docs.microsoft.com/azure/hpc-cache/hpc-cache-add-storage?tabs=azure-cli#choose-a-usage-model',
              args: [
                Arg(
                name: 'nfs3-usage-mode'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'skus',
      description: 'Commands to manage hpc cache skus',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get the list of StorageCache.Cache SKUs available to this subscription'
        )
      ]
    ),
    Subcommand(
      name: 'storage-target',
      description: 'Commands to manage hpc cache storage target',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Return a list of Storage Targets for the specified Cache',
          options: [

            Option(
              name: '--cache-name',
              description: 'Name of Cache',
              args: [
                Arg(
                name: 'cache-nam'
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
          name: 'remove',
          description: 'Remove a Storage Target from a Cache. This operation is allowed at any time, but if the Cache is down or unhealthy, the actual removal of the Storage Target may be delayed until the Cache is healthy again. Note that if the Cache has data to flush to the Storage Target, the data will be flushed before the Storage Target will be deleted',
          options: [

            Option(
              name: '--cache-name',
              description: 'Name of Cache',
              args: [
                Arg(
                name: 'cache-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the Storage Target',
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Return a Storage Target from a Cache',
          options: [

            Option(
              name: '--cache-name',
              description: 'Name of Cache',
              args: [
                Arg(
                name: 'cache-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the Storage Target',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'usage-model',
      description: 'Commands to manage hpc cache usage model',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get the list of Cache Usage Models available to this subscription'
        )
      ]
    )
  ]
);
