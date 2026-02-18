// Auto-generated from TypeScript source: redis.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `redis` CLI
final FigSpec redisSpec = FigSpec(
  name: 'redis',
  description: 'Manage dedicated Redis caches for your Azure applications',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create new Redis Cache instance',
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
          name: ['--name', '-n'],
          description: 'Name of the Redis cache',
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
          name: '--sku',
          description: 'Type of Redis cache',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Premium'),
              FigSuggestion(name: 'Standard')
            ]
          )
          ]
        ),
        Option(
          name: '--vm-size',
          description: 'Size of Redis cache to deploy. Basic and Standard Cache sizes start with C. Premium Cache sizes start with P',
          args: [
            Arg(
            name: 'vm-size',
            suggestions: [

              FigSuggestion(name: 'c0'),
              FigSuggestion(name: 'c1'),
              FigSuggestion(name: 'c2'),
              FigSuggestion(name: 'c3'),
              FigSuggestion(name: 'c4'),
              FigSuggestion(name: 'c5'),
              FigSuggestion(name: 'c6'),
              FigSuggestion(name: 'p1'),
              FigSuggestion(name: 'p2'),
              FigSuggestion(name: 'p3'),
              FigSuggestion(name: 'p4'),
              FigSuggestion(name: 'p5')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-non-ssl-port',
          description: 'If specified, then the non-ssl redis server port (6379) will be enabled',
          args: [
            Arg(
            name: 'enable-non-ssl-por'
          )
          ]
        ),
        Option(
          name: '--mi-system-assigned',
          description: 'Flag to specify system assigned identity',
          args: [
            Arg(
            name: 'mi-system-assigne'
          )
          ]
        ),
        Option(
          name: '--mi-user-assigned',
          description: 'One or more space separated resource IDs of user assigned identities',
          args: [
            Arg(
            name: 'mi-user-assigne'
          )
          ]
        ),
        Option(
          name: '--minimum-tls-version',
          description: 'Specifies the TLS version required by clients to connect to cache',
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
          name: '--redis-configuration',
          description: 'A json file used to set redis-configuration settings. You may encounter parse errors if the json file is invalid',
          args: [
            Arg(
            name: 'redis-configuratio'
          )
          ]
        ),
        Option(
          name: '--redis-version',
          description: 'Redis version. This should be in the form \'major[.minor]\' (only \'major\' is required) or the value \'latest\' which refers to the latest stable Redis version that is available. Supported versions: 4.0, 6.0 (latest). Default value is \'latest\'',
          args: [
            Arg(
            name: 'redis-versio'
          )
          ]
        ),
        Option(
          name: '--replicas-per-master',
          description: 'The number of replicas to be created per master',
          args: [
            Arg(
            name: 'replicas-per-maste'
          )
          ]
        ),
        Option(
          name: '--shard-count',
          description: 'The number of shards to be created on a Premium Cluster Cache',
          args: [
            Arg(
            name: 'shard-coun'
          )
          ]
        ),
        Option(
          name: '--static-ip',
          description: 'Specify a static ip if required for the VNET. If you do not specify a static IP then an IP address is chosen automatically',
          args: [
            Arg(
            name: 'static-i'
          )
          ]
        ),
        Option(
          name: '--subnet-id',
          description: 'The full resource ID of a subnet in a virtual network to deploy the redis cache in. Example format /subscriptions/{subid}/resourceGroups/{resourceGroupName}/providers/Microsoft.{Network|ClassicNetwork}/virtualNetworks/vnet1/subnets/subnet1',
          args: [
            Arg(
            name: 'subnet-i'
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
          name: '--tenant-settings',
          description: 'Space-separated tenant settings in key[=value] format',
          args: [
            Arg(
            name: 'tenant-setting'
          )
          ]
        ),
        Option(
          name: ['--zones', '-z'],
          description: 'Space-separated list of availability zones into which to provision the resource',
          args: [
            Arg(
            name: 'zones',
            suggestions: [

              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '3')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes a Redis cache',
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
          description: 'Name of the Redis cache',
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
      name: 'export',
      description: 'Export data stored in a Redis cache',
      options: [

        Option(
          name: '--container',
          description: 'SAS url for container where data needs to be exported to',
          args: [
            Arg(
            name: 'containe'
          )
          ]
        ),
        Option(
          name: '--prefix',
          description: 'Prefix to use for exported files',
          args: [
            Arg(
            name: 'prefi'
          )
          ]
        ),
        Option(
          name: ['--preferred-data-archive-auth-method', '--auth-method'],
          description: 'Preferred auth method to communicate to storage account used for data archive, default value is SAS',
          args: [
            Arg(
            name: 'preferred-data-archive-auth-method',
            suggestions: [

              FigSuggestion(name: 'ManagedIdentity'),
              FigSuggestion(name: 'SAS')
            ]
          )
          ]
        ),
        Option(
          name: '--file-format',
          description: 'Format of the blob (Currently rdb is the only supported format, with other formats expected in the future)',
          args: [
            Arg(
            name: 'file-forma'
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
          description: 'Name of the Redis cache',
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
      name: 'force-reboot',
      description: 'Reboot specified Redis node(s)',
      options: [

        Option(
          name: '--reboot-type',
          description: 'Which Redis node(s) to reboot. Depending on this value data loss is possible',
          args: [
            Arg(
            name: 'reboot-type',
            suggestions: [

              FigSuggestion(name: 'AllNodes'),
              FigSuggestion(name: 'PrimaryNode'),
              FigSuggestion(name: 'SecondaryNode')
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
          description: 'Name of the Redis cache',
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
          name: '--shard-id',
          description: 'If clustering is enabled, the ID of the shard to be rebooted',
          args: [
            Arg(
            name: 'shard-i'
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
      description: 'Import data into a Redis cache',
      options: [

        Option(
          name: '--files',
          description: 'SAS url for blobs that needs to be imported',
          args: [
            Arg(
            name: 'file'
          )
          ]
        ),
        Option(
          name: ['--preferred-data-archive-auth-method', '--auth-method'],
          description: 'Preferred auth method to communicate to storage account used for data archive, default value is SAS',
          args: [
            Arg(
            name: 'preferred-data-archive-auth-method',
            suggestions: [

              FigSuggestion(name: 'ManagedIdentity'),
              FigSuggestion(name: 'SAS')
            ]
          )
          ]
        ),
        Option(
          name: '--file-format',
          description: 'Format of the blob (Currently rdb is the only supported format, with other formats expected in the future)',
          args: [
            Arg(
            name: 'file-forma'
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
          description: 'Name of the Redis cache',
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
      name: 'import-method',
      description: 'Import data into Redis cache',
      options: [

        Option(
          name: '--files',
          description: 'SAS url for blobs that needs to be imported',
          args: [
            Arg(
            name: 'file'
          )
          ]
        ),
        Option(
          name: ['--preferred-data-archive-auth-method', '--auth-method'],
          description: 'Preferred auth method to communicate to storage account used for data archive, default value is SAS',
          args: [
            Arg(
            name: 'preferred-data-archive-auth-method',
            suggestions: [

              FigSuggestion(name: 'ManagedIdentity'),
              FigSuggestion(name: 'SAS')
            ]
          )
          ]
        ),
        Option(
          name: '--file-format',
          description: 'Format of the blob (Currently rdb is the only supported format, with other formats expected in the future)',
          args: [
            Arg(
            name: 'file-forma'
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
          description: 'Name of the Redis cache',
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
      description: 'List Redis Caches',
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
      name: 'list-keys',
      description: 'Retrieve a Redis cache\'s access keys',
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
          description: 'Name of the Redis cache',
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
      name: 'regenerate-keys',
      description: 'Regenerate Redis cache\'s access keys',
      options: [

        Option(
          name: '--key-type',
          description: 'The Redis access key to regenerate',
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
          description: 'Name of the Redis cache',
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
      description: 'Gets a Redis cache (resource description)',
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
          description: 'Name of the Redis cache',
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
      description: 'Update a Redis cache',
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
          description: 'Name of the Redis cache',
          args: [
            Arg(
            name: 'nam'
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
          description: 'Type of Redis cache',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Premium'),
              FigSuggestion(name: 'Standard')
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
          name: '--vm-size',
          description: 'Size of Redis cache to deploy. Basic and Standard Cache sizes start with C. Premium Cache sizes start with P',
          args: [
            Arg(
            name: 'vm-size',
            suggestions: [

              FigSuggestion(name: 'c0'),
              FigSuggestion(name: 'c1'),
              FigSuggestion(name: 'c2'),
              FigSuggestion(name: 'c3'),
              FigSuggestion(name: 'c4'),
              FigSuggestion(name: 'c5'),
              FigSuggestion(name: 'c6'),
              FigSuggestion(name: 'p1'),
              FigSuggestion(name: 'p2'),
              FigSuggestion(name: 'p3'),
              FigSuggestion(name: 'p4'),
              FigSuggestion(name: 'p5')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'firewall-rules',
      description: 'Manage Redis firewall rules',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a redis cache firewall rule',
          options: [

            Option(
              name: '--end-ip',
              description: 'Highest IP address included in the range',
              args: [
                Arg(
                name: 'end-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
              name: '--rule-name',
              description: 'The name of the firewall rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: '--start-ip',
              description: 'Lowest IP address included in the range',
              args: [
                Arg(
                name: 'start-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a single firewall rule in a specified redis cache',
          options: [

            Option(
              name: '--rule-name',
              description: 'The name of the firewall rule',
              args: [
                Arg(
                name: 'rule-nam'
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
              description: 'Name of the Redis cache',
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
          description: 'Gets all firewall rules in the specified redis cache',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
          description: 'Gets a single firewall rule in a specified redis cache',
          options: [

            Option(
              name: '--rule-name',
              description: 'The name of the firewall rule',
              args: [
                Arg(
                name: 'rule-nam'
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
              description: 'Name of the Redis cache',
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
          description: 'Update a redis cache firewall rule',
          options: [

            Option(
              name: '--end-ip',
              description: 'Highest IP address included in the range',
              args: [
                Arg(
                name: 'end-i'
              )
              ]
            ),
            Option(
              name: '--rule-name',
              description: 'The name of the firewall rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: '--start-ip',
              description: 'Lowest IP address included in the range',
              args: [
                Arg(
                name: 'start-i'
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
              description: 'Name of the Redis cache',
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
      name: 'identity',
      description: 'Manage identity assigned to Azure cache for Redis',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign identity for Azure cache for Redis',
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
              name: '--mi-system-assigned',
              description: 'Flag to specify system assigned identity',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'One or more space separated resource IDs of user assigned identities',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
          name: 'remove',
          description: 'Remove the identity already assigned for Azure cache for Redis',
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
              name: '--mi-system-assigned',
              description: 'Flag to specify system assigned identity',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'One or more space separated resource IDs of user assigned identities',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
          description: 'Show the identity assigned for Azure cache for Redis',
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
              description: 'Name of the Redis cache',
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
      name: 'patch-schedule',
      description: 'Manage Redis patch schedules',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create patching schedule for Redis cache',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
              name: '--schedule-entries',
              description: 'List of Patch schedule entries. Example Value:[{"dayOfWeek":"Monday","startHourUtc":"00","maintenanceWindow":"PT5H"}]',
              args: [
                Arg(
                name: 'schedule-entrie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes the patching schedule of a redis cache',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
          description: 'Gets the patching schedule of a redis cache',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
          name: 'update',
          description: 'Update the patching schedule for Redis cache',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
              name: '--schedule-entries',
              description: 'List of Patch schedule entries. Example Value:[{"dayOfWeek":"Monday","startHourUtc":"00","maintenanceWindow":"PT5H"}]',
              args: [
                Arg(
                name: 'schedule-entrie'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'server-link',
      description: 'Manage Redis server links',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Adds a server link to the Redis cache (requires Premium SKU)',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--replication-role',
              description: 'Role of the redis cache to be linked',
              args: [
                Arg(
                name: 'replication-role',
                suggestions: [

                  FigSuggestion(name: 'Primary'),
                  FigSuggestion(name: 'Secondary')
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
              name: '--server-to-link',
              description: 'Resource ID or name of the redis cache to be linked',
              args: [
                Arg(
                name: 'server-to-lin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes the linked server from a redis cache (requires Premium SKU)',
          options: [

            Option(
              name: '--linked-server-name',
              description: 'Name of the linked redis cache',
              args: [
                Arg(
                name: 'linked-server-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
          description: 'Gets the list of linked servers associated with this redis cache (requires Premium SKU)',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
          description: 'Gets the detailed information about a linked server of a redis cache (requires Premium SKU)',
          options: [

            Option(
              name: '--linked-server-name',
              description: 'Name of the linked redis cache',
              args: [
                Arg(
                name: 'linked-server-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Redis cache',
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
    )
  ]
);
