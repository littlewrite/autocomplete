// Auto-generated from TypeScript source: redisenterprise.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `redisenterprise` CLI
final FigSpec redisenterpriseSpec = FigSpec(
  name: 'redisenterprise',
  description: 'Manage the redisenterprise cache',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create an existing (overwrite/recreate, with potential downtime) cache cluster',
      options: [

        Option(
          name: ['--cluster-name', '--name', '-n'],
          description: 'The name of the RedisEnterprise cluster',
          args: [
            Arg(
            name: 'cluster-nam'
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
          description: 'The type of RedisEnterprise cluster to deploy. Possible values: (Enterprise_E10, EnterpriseFlash_F300 etc.)',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'EnterpriseFlash_F1500'),
              FigSuggestion(name: 'EnterpriseFlash_F300'),
              FigSuggestion(name: 'EnterpriseFlash_F700'),
              FigSuggestion(name: 'Enterprise_E10'),
              FigSuggestion(name: 'Enterprise_E100'),
              FigSuggestion(name: 'Enterprise_E20'),
              FigSuggestion(name: 'Enterprise_E200'),
              FigSuggestion(name: 'Enterprise_E400'),
              FigSuggestion(name: 'Enterprise_E5'),
              FigSuggestion(name: 'Enterprise_E50')
            ]
          )
          ]
        ),
        Option(
          name: ['--user-assigned-identities', '--assigned-identities'],
          description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests',
          args: [
            Arg(
            name: 'user-assigned-identitie'
          )
          ]
        ),
        Option(
          name: '--capacity',
          description: 'The size of the RedisEnterprise cluster. Defaults to 2 or 3 depending on SKU. Valid values are (2, 4, 6, ...) for Enterprise SKUs and (3, 9, 15, ...) for Flash SKUs',
          args: [
            Arg(
            name: 'capacit'
          )
          ]
        ),
        Option(
          name: '--client-protocol',
          description: 'Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted',
          args: [
            Arg(
            name: 'client-protocol',
            suggestions: [

              FigSuggestion(name: 'Encrypted'),
              FigSuggestion(name: 'Plaintext')
            ]
          )
          ]
        ),
        Option(
          name: '--clustering-policy',
          description: 'Clustering policy - default is OSSCluster. Specified at create time',
          args: [
            Arg(
            name: 'clustering-policy',
            suggestions: [

              FigSuggestion(name: 'EnterpriseCluster'),
              FigSuggestion(name: 'OSSCluster')
            ]
          )
          ]
        ),
        Option(
          name: '--eviction-policy',
          description: 'Redis eviction policy - default is VolatileLRU',
          args: [
            Arg(
            name: 'eviction-policy',
            suggestions: [

              FigSuggestion(name: 'AllKeysLFU'),
              FigSuggestion(name: 'AllKeysLRU'),
              FigSuggestion(name: 'AllKeysRandom'),
              FigSuggestion(name: 'NoEviction'),
              FigSuggestion(name: 'VolatileLFU'),
              FigSuggestion(name: 'VolatileLRU'),
              FigSuggestion(name: 'VolatileRandom'),
              FigSuggestion(name: 'VolatileTTL')
            ]
          )
          ]
        ),
        Option(
          name: '--group-nickname',
          description: 'Name for the group of linked database resources',
          args: [
            Arg(
            name: 'group-nicknam'
          )
          ]
        ),
        Option(
          name: [
            '--user-assigned-identity-resource-id',
            '--identity-resource-id',
          ],
          description: 'User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions//resourceGroups//providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId',
          args: [
            Arg(
            name: 'user-assigned-identity-resource-i'
          )
          ]
        ),
        Option(
          name: '--identity-type',
          description: 'Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed)',
          args: [
            Arg(
            name: 'identity-type',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'SystemAssigned'),
              FigSuggestion(name: 'SystemAssigned'),
              FigSuggestion(name: 'UserAssigned'),
              FigSuggestion(name: 'UserAssigned')
            ]
          )
          ]
        ),
        Option(
          name: ['--key-encryption-identity-type', '--key-identity-type'],
          description: 'Only userAssignedIdentity is supported in this API version; other types may be supported in the future',
          args: [
            Arg(
            name: 'key-encryption-identity-type',
            suggestions: [

              FigSuggestion(name: 'systemAssignedIdentity'),
              FigSuggestion(name: 'userAssignedIdentity')
            ]
          )
          ]
        ),
        Option(
          name: '--key-encryption-key-url',
          description: 'Key encryption key Url, versioned only.Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78',
          args: [
            Arg(
            name: 'key-encryption-key-ur'
          )
          ]
        ),
        Option(
          name: '--linked-databases',
          description: 'List of database resources to link with this database',
          args: [
            Arg(
            name: 'linked-database'
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
          name: '--minimum-tls-version',
          description: 'The minimum TLS version for the cluster to support, e.g. \'1.2\'',
          args: [
            Arg(
            name: 'minimum-tls-version',
            suggestions: [

              FigSuggestion(name: '1.0'),
              FigSuggestion(name: '1.1'),
              FigSuggestion(name: '1.2')
            ]
          )
          ]
        ),
        Option(
          name: ['--modules', '--module'],
          description: 'Optional set of redis modules to enable in this database - modules can only be added at creation time',
          args: [
            Arg(
            name: 'module'
          )
          ]
        ),
        Option(
          name: '--no-database',
          description: 'Advanced. Do not automatically create a default database. Warning: the cache will not be usable until you create a database'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--persistence',
          description: 'Persistence settings',
          args: [
            Arg(
            name: 'persistenc'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'TCP port of the database endpoint. Specified at create time. Defaults to an available port',
          args: [
            Arg(
            name: 'por'
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
          name: ['--zones', '-z'],
          description: 'The Availability Zones where this cluster will be deployed',
          args: [
            Arg(
            name: 'zone'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a RedisEnterprise cache cluster',
      options: [

        Option(
          name: ['--cluster-name', '--name', '-n'],
          description: 'The name of the RedisEnterprise cluster',
          args: [
            Arg(
            name: 'cluster-nam'
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
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all RedisEnterprise clusters in the specified subscription',
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
      description: 'Get information about a RedisEnterprise cluster',
      options: [

        Option(
          name: ['--cluster-name', '--name', '-n'],
          description: 'The name of the RedisEnterprise cluster',
          args: [
            Arg(
            name: 'cluster-nam'
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
      description: 'Update an existing (overwrite/recreate, with potential downtime) cache cluster',
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
          name: ['--user-assigned-identities', '--assigned-identities'],
          description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'user-assigned-identitie'
          )
          ]
        ),
        Option(
          name: '--capacity',
          description: 'The size of the RedisEnterprise cluster. Defaults to 2 or 3 depending on SKU. Valid values are (2, 4, 6, ...) for Enterprise SKUs and (3, 9, 15, ...) for Flash SKUs',
          args: [
            Arg(
            name: 'capacit'
          )
          ]
        ),
        Option(
          name: ['--cluster-name', '--name', '-n'],
          description: 'The name of the RedisEnterprise cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
          args: [
            Arg(
            name: 'force-string',
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
          name: [
            '--user-assigned-identity-resource-id',
            '--identity-resource-id',
          ],
          description: 'User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions//resourceGroups//providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId',
          args: [
            Arg(
            name: 'user-assigned-identity-resource-i'
          )
          ]
        ),
        Option(
          name: '--identity-type',
          description: 'Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed)',
          args: [
            Arg(
            name: 'identity-type',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'SystemAssigned'),
              FigSuggestion(name: 'SystemAssigned'),
              FigSuggestion(name: 'UserAssigned'),
              FigSuggestion(name: 'UserAssigned')
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
          name: ['--key-encryption-identity-type', '--key-identity-type'],
          description: 'Only userAssignedIdentity is supported in this API version; other types may be supported in the future',
          args: [
            Arg(
            name: 'key-encryption-identity-type',
            suggestions: [

              FigSuggestion(name: 'systemAssignedIdentity'),
              FigSuggestion(name: 'userAssignedIdentity')
            ]
          )
          ]
        ),
        Option(
          name: '--key-encryption-key-url',
          description: 'Key encryption key Url, versioned only. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78',
          args: [
            Arg(
            name: 'key-encryption-key-ur'
          )
          ]
        ),
        Option(
          name: '--minimum-tls-version',
          description: 'The minimum TLS version for the cluster to support, e.g. \'1.2\'',
          args: [
            Arg(
            name: 'minimum-tls-version',
            suggestions: [

              FigSuggestion(name: '1.0'),
              FigSuggestion(name: '1.1'),
              FigSuggestion(name: '1.2')
            ]
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
          description: 'The type of RedisEnterprise cluster to deploy. Possible values: (Enterprise_E10, EnterpriseFlash_F300 etc.)',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'EnterpriseFlash_F1500'),
              FigSuggestion(name: 'EnterpriseFlash_F300'),
              FigSuggestion(name: 'EnterpriseFlash_F700'),
              FigSuggestion(name: 'Enterprise_E10'),
              FigSuggestion(name: 'Enterprise_E100'),
              FigSuggestion(name: 'Enterprise_E20'),
              FigSuggestion(name: 'Enterprise_E200'),
              FigSuggestion(name: 'Enterprise_E400'),
              FigSuggestion(name: 'Enterprise_E5'),
              FigSuggestion(name: 'Enterprise_E50')
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
        ),
        Option(
          name: '--tags',
          description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--zones',
          description: 'The Availability Zones where this cluster will be deployed. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'zone'
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
          name: ['--cluster-name', '--name', '-n'],
          description: 'The name of the RedisEnterprise cluster',
          args: [
            Arg(
            name: 'cluster-nam'
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
    ),
    Subcommand(
      name: 'database',
      description: 'Manage Redis Enterprise databases',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--client-protocol',
              description: 'Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted',
              args: [
                Arg(
                name: 'client-protocol',
                suggestions: [

                  FigSuggestion(name: 'Encrypted'),
                  FigSuggestion(name: 'Plaintext')
                ]
              )
              ]
            ),
            Option(
              name: '--clustering-policy',
              description: 'Clustering policy - default is OSSCluster. Specified at create time',
              args: [
                Arg(
                name: 'clustering-policy',
                suggestions: [

                  FigSuggestion(name: 'EnterpriseCluster'),
                  FigSuggestion(name: 'OSSCluster')
                ]
              )
              ]
            ),
            Option(
              name: '--eviction-policy',
              description: 'Redis eviction policy - default is VolatileLRU',
              args: [
                Arg(
                name: 'eviction-policy',
                suggestions: [

                  FigSuggestion(name: 'AllKeysLFU'),
                  FigSuggestion(name: 'AllKeysLRU'),
                  FigSuggestion(name: 'AllKeysRandom'),
                  FigSuggestion(name: 'NoEviction'),
                  FigSuggestion(name: 'VolatileLFU'),
                  FigSuggestion(name: 'VolatileLRU'),
                  FigSuggestion(name: 'VolatileRandom'),
                  FigSuggestion(name: 'VolatileTTL')
                ]
              )
              ]
            ),
            Option(
              name: '--group-nickname',
              description: 'Name for the group of linked database resources',
              args: [
                Arg(
                name: 'group-nicknam'
              )
              ]
            ),
            Option(
              name: [
                '--linked-databases',
                '--linked-database',
                '--linkeddatabase',
              ],
              description: 'List of database resources to link with this database Support shorthand-syntax, json-file and yaml-file. Try "??" to show more. Singular flags: --linked-database --linked-databases',
              args: [
                Arg(
                name: 'linked-database'
              )
              ]
            ),
            Option(
              name: ['--modules', '--module', '--mods'],
              description: 'Optional set of redis modules to enable in this database - modules can only be added at creation time. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more. Singular flags: --module --modules',
              args: [
                Arg(
                name: 'module'
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
              name: '--persistence',
              description: 'Persistence settings Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'persistenc'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'TCP port of the database endpoint. Specified at create time. Defaults to an available port',
              args: [
                Arg(
                name: 'por'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a single database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Exports a database file from target database',
          options: [

            Option(
              name: '--sas-uri',
              description: 'SAS URI for the target directory to export to',
              args: [
                Arg(
                name: 'sas-ur'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          name: 'flush',
          description: 'Flushes all the keys in this database and also from its linked databases',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--linked-ids',
              description: 'The resource identifiers of all the other database resources in the georeplication group to be flushed Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'linked-id'
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
          name: 'force-unlink',
          description: 'Forcibly removes the link to the specified database resource',
          options: [

            Option(
              name: '--unlink-ids',
              description: 'The resource IDs of the database resources to be unlinked. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'unlink-id'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          name: 'import',
          description: 'Imports database files to target database',
          options: [

            Option(
              name: '--sas-uris',
              description: 'SAS URIs for the target blobs to import from Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'sas-uri'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          name: 'list',
          description: 'List all databases in the specified RedisEnterprise cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          name: 'list-keys',
          description: 'Retrieves the access keys for the RedisEnterprise database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          name: 'regenerate-key',
          description: 'Regenerates the RedisEnterprise database\'s access keys',
          options: [

            Option(
              name: '--key-type',
              description: 'Which access key to regenerate',
              args: [
                Arg(
                name: 'key-type',
                suggestions: [

                  FigSuggestion(name: 'Primary'),
                  FigSuggestion(name: 'Secondary')
                ]
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          description: 'Get information about a database in a RedisEnterprise cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
          description: 'Update a database',
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
              name: '--client-protocol',
              description: 'Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted',
              args: [
                Arg(
                name: 'client-protocol',
                suggestions: [

                  FigSuggestion(name: 'Encrypted'),
                  FigSuggestion(name: 'Plaintext')
                ]
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--eviction-policy',
              description: 'Redis eviction policy - default is VolatileLRU',
              args: [
                Arg(
                name: 'eviction-policy',
                suggestions: [

                  FigSuggestion(name: 'AllKeysLFU'),
                  FigSuggestion(name: 'AllKeysLRU'),
                  FigSuggestion(name: 'AllKeysRandom'),
                  FigSuggestion(name: 'NoEviction'),
                  FigSuggestion(name: 'VolatileLFU'),
                  FigSuggestion(name: 'VolatileLRU'),
                  FigSuggestion(name: 'VolatileRandom'),
                  FigSuggestion(name: 'VolatileTTL')
                ]
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
              args: [
                Arg(
                name: 'force-string',
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
              name: '--persistence',
              description: 'Persistence settings Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'persistenc'
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
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the RedisEnterprise cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
      name: 'operation-status',
      description: 'Get the status of an operation',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Get the status of operation',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--operation-id', '--name', '-n'],
              description: 'The ID of an ongoing async operation',
              args: [
                Arg(
                name: 'operation-i'
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
