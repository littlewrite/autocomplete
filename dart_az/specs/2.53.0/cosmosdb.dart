// Auto-generated from TypeScript source: cosmosdb.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cosmosdb` CLI
final FigSpec cosmosdbSpec = FigSpec(
  name: 'cosmosdb',
  description: 'Manage Azure Cosmos DB database accounts',
  subcommands: [

    Subcommand(
      name: 'cassandra',
      description: 'Manage Cassandra resources of Azure Cosmos DB account',
      subcommands: [

        Subcommand(
          name: 'keyspace',
          description: 'Manage Azure Cosmos DB Cassandra keyspaces',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Cassandra keyspace under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Keyspace name',
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
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput of Cassandra keyspace (RU/s). Default value is 400',
                  args: [
                    Arg(
                    name: 'throughpu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the Cassandra keyspace under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Keyspace name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'exists',
              description: 'Checks if an Azure Cosmos DB Cassandra keyspace exists',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Keyspace name',
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
              description: 'List the Cassandra keyspaces under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
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
              description: 'Show the details of a Cassandra keyspace under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Keyspace name',
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
              name: 'throughput',
              description: 'Manage throughput of Cassandra keyspace under an Azure Cosmos DB account',
              subcommands: [

                Subcommand(
                  name: 'migrate',
                  description: 'Migrate the throughput of the Cassandra keyspace between autoscale and manually provisioned',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Keyspace name',
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
                      name: ['--throughput-type', '-t'],
                      description: 'The type of throughput to migrate to',
                      args: [
                        Arg(
                        name: 'throughput-type',
                        suggestions: [

                          FigSuggestion(name: 'autoscale'),
                          FigSuggestion(name: 'manual')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the throughput of the Cassandra keyspace under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Keyspace name',
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
                  description: 'Update the throughput of the Cassandra keyspace under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Keyspace name',
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
                      name: '--max-throughput',
                      description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                      args: [
                        Arg(
                        name: 'max-throughpu'
                      )
                      ]
                    ),
                    Option(
                      name: '--throughput',
                      description: 'The throughput of Cassandra keyspace (RU/s)',
                      args: [
                        Arg(
                        name: 'throughpu'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'table',
          description: 'Manage Azure Cosmos DB Cassandra tables',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Cassandra table under an Azure Cosmos DB Cassandra keyspace',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--keyspace-name', '-k'],
                  description: 'Keyspace name',
                  args: [
                    Arg(
                    name: 'keyspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Table name',
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
                  name: '--schema',
                  description: 'Schema, you can enter it as a string or as a file, e.g., --schema @schema-file.json or --schema "{"columns": [{"name": "columnA","type": "uuid"}, {"name": "columnB","type": "Ascii"}],"partitionKeys": [{"name": "columnA"}]}"',
                  args: [
                    Arg(
                    name: 'schem'
                  )
                  ]
                ),
                Option(
                  name: '--analytical-storage-ttl',
                  description: 'Analytical TTL, when analytical storage is enabled',
                  args: [
                    Arg(
                    name: 'analytical-storage-tt'
                  )
                  ]
                ),
                Option(
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput of Cassandra table (RU/s). Default value is 400. Omit this parameter if the keyspace has shared throughput unless the table should have dedicated throughput',
                  args: [
                    Arg(
                    name: 'throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--ttl',
                  description: 'Default TTL. If the value is missing or set to "-1", items don’t expire. If the value is set to "n", items will expire "n" seconds after last modified time',
                  args: [
                    Arg(
                    name: 'tt'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the Cassandra table under an Azure Cosmos DB Cassandra keyspace',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--keyspace-name', '-k'],
                  description: 'Keyspace name',
                  args: [
                    Arg(
                    name: 'keyspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Table name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'exists',
              description: 'Checks if an Azure Cosmos DB Cassandra table exists',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--keyspace-name', '-k'],
                  description: 'Keyspace name',
                  args: [
                    Arg(
                    name: 'keyspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Table name',
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
              description: 'List the Cassandra tables under an Azure Cosmos DB Cassandra keyspace',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--keyspace-name', '-k'],
                  description: 'Keyspace name',
                  args: [
                    Arg(
                    name: 'keyspace-nam'
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
              description: 'Show the details of a Cassandra table under an Azure Cosmos DB Cassandra keyspace',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--keyspace-name', '-k'],
                  description: 'Keyspace name',
                  args: [
                    Arg(
                    name: 'keyspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Table name',
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
              description: 'Update an Cassandra table under an Azure Cosmos DB Cassandra keyspace',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--keyspace-name', '-k'],
                  description: 'Keyspace name',
                  args: [
                    Arg(
                    name: 'keyspace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Table name',
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
                  name: '--analytical-storage-ttl',
                  description: 'Analytical TTL, when analytical storage is enabled',
                  args: [
                    Arg(
                    name: 'analytical-storage-tt'
                  )
                  ]
                ),
                Option(
                  name: '--schema',
                  description: 'Schema, you can enter it as a string or as a file, e.g., --schema @schema-file.json or --schema "{"columns": [{"name": "columnA","type": "uuid"}, {"name": "columnB","type": "Ascii"}],"partitionKeys": [{"name": "columnA"}]}"',
                  args: [
                    Arg(
                    name: 'schem'
                  )
                  ]
                ),
                Option(
                  name: '--ttl',
                  description: 'Default TTL. If the value is missing or set to "-1", items don’t expire. If the value is set to "n", items will expire "n" seconds after last modified time',
                  args: [
                    Arg(
                    name: 'tt'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'throughput',
              description: 'Manage throughput of Cassandra table under an Azure Cosmos DB account',
              subcommands: [

                Subcommand(
                  name: 'migrate',
                  description: 'Migrate the throughput of the Cassandra table between autoscale and manually provisioned',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--keyspace-name', '-k'],
                      description: 'Keyspace name',
                      args: [
                        Arg(
                        name: 'keyspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Table name',
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
                      name: ['--throughput-type', '-t'],
                      description: 'The type of throughput to migrate to',
                      args: [
                        Arg(
                        name: 'throughput-type',
                        suggestions: [

                          FigSuggestion(name: 'autoscale'),
                          FigSuggestion(name: 'manual')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the throughput of the Cassandra table under an Azure Cosmos DB Cassandra keyspace',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--keyspace-name', '-k'],
                      description: 'Keyspace name',
                      args: [
                        Arg(
                        name: 'keyspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Table name',
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
                  description: 'Update the throughput of the Cassandra table under an Azure Cosmos DB Cassandra keyspace',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--keyspace-name', '-k'],
                      description: 'Keyspace name',
                      args: [
                        Arg(
                        name: 'keyspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Table name',
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
                      name: '--max-throughput',
                      description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                      args: [
                        Arg(
                        name: 'max-throughpu'
                      )
                      ]
                    ),
                    Option(
                      name: '--throughput',
                      description: 'The throughput of Cassandra table (RU/s)',
                      args: [
                        Arg(
                        name: 'throughpu'
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
    ),
    Subcommand(
      name: 'check-name-exists',
      description: 'Checks if an Azure Cosmos DB account name exists',
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
          description: 'Name of the Cosmos DB database account',
          args: [
            Arg(
            name: 'nam'
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
      name: 'create',
      description: 'Creates a new Azure Cosmos DB database account',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Cosmos DB database account',
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
          name: ['--analytical-storage-schema-type', '--as-schema'],
          description: 'Schema type for analytical storage',
          args: [
            Arg(
            name: 'analytical-storage-schema-type',
            suggestions: [

              FigSuggestion(name: 'FullFidelity'),
              FigSuggestion(name: 'WellDefined')
            ]
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Assign system or user assigned identities separated by spaces. Use \'[system]\' to refer system assigned identity',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--backup-interval',
          description: 'The frequency(in minutes) with which backups are taken (only for accounts with periodic mode backups)',
          args: [
            Arg(
            name: 'backup-interva'
          )
          ]
        ),
        Option(
          name: '--backup-policy-type',
          description: 'The type of backup policy of the account to create',
          args: [
            Arg(
            name: 'backup-policy-type',
            suggestions: [

              FigSuggestion(name: 'Continuous'),
              FigSuggestion(name: 'Periodic')
            ]
          )
          ]
        ),
        Option(
          name: '--backup-redundancy',
          description: 'The redundancy type of the backup Storage account',
          args: [
            Arg(
            name: 'backup-redundancy',
            suggestions: [

              FigSuggestion(name: 'Geo'),
              FigSuggestion(name: 'Local'),
              FigSuggestion(name: 'Zone')
            ]
          )
          ]
        ),
        Option(
          name: '--backup-retention',
          description: 'The time(in hours) for which each backup is retained (only for accounts with periodic mode backups)',
          args: [
            Arg(
            name: 'backup-retentio'
          )
          ]
        ),
        Option(
          name: '--capabilities',
          description: 'Set custom capabilities on the Cosmos DB database account',
          args: [
            Arg(
            name: 'capabilitie'
          )
          ]
        ),
        Option(
          name: '--continuous-tier',
          description: 'The tier of Continuous backup',
          args: [
            Arg(
            name: 'continuous-tier',
            suggestions: [

              FigSuggestion(name: 'Continuous30Days'),
              FigSuggestion(name: 'Continuous7Days')
            ]
          )
          ]
        ),
        Option(
          name: '--databases-to-restore',
          description: 'Add a database and its collection names to restore',
          args: [
            Arg(
            name: 'databases-to-restor'
          )
          ]
        ),
        Option(
          name: '--default-consistency-level',
          description: 'Default consistency level of the Cosmos DB database account',
          args: [
            Arg(
            name: 'default-consistency-level',
            suggestions: [

              FigSuggestion(name: 'BoundedStaleness'),
              FigSuggestion(name: 'ConsistentPrefix'),
              FigSuggestion(name: 'Eventual'),
              FigSuggestion(name: 'Session'),
              FigSuggestion(name: 'Strong')
            ]
          )
          ]
        ),
        Option(
          name: '--default-identity',
          description: 'The primary identity to access key vault in CMK related features. e.g. \'FirstPartyIdentity\', \'SystemAssignedIdentity\' and more. User-assigned identities are specified in format \'UserAssignedIdentity=\'',
          args: [
            Arg(
            name: 'default-identit'
          )
          ]
        ),
        Option(
          name: '--disable-key-based-metadata-write-access',
          description: 'Disable write operations on metadata resources (databases, containers, throughput) via account keys',
          args: [
            Arg(
            name: 'disable-key-based-metadata-write-access',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-analytical-storage',
          description: 'Flag to enable log storage on the account',
          args: [
            Arg(
            name: 'enable-analytical-storage',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-automatic-failover',
          description: 'Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account',
          args: [
            Arg(
            name: 'enable-automatic-failover',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-free-tier',
          description: 'If enabled the account is free-tier',
          args: [
            Arg(
            name: 'enable-free-tier',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-multiple-write-locations',
          description: 'Enable Multiple Write Locations',
          args: [
            Arg(
            name: 'enable-multiple-write-locations',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-partition-merge',
          description: 'Flag to enable partition merge on the account',
          args: [
            Arg(
            name: 'enable-partition-merge',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-virtual-network',
          description: 'Enables virtual network on the Cosmos DB database account',
          args: [
            Arg(
            name: 'enable-virtual-network',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--gremlin-databases-to-restore',
          description: 'Add a gremlin database and its graph names to restore',
          args: [
            Arg(
            name: 'gremlin-databases-to-restor'
          )
          ]
        ),
        Option(
          name: '--ip-range-filter',
          description: 'Firewall support. Specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma-separated and must not contain any spaces',
          args: [
            Arg(
            name: 'ip-range-filte'
          )
          ]
        ),
        Option(
          name: ['--is-restore-request', '-r'],
          description: 'Restore from an existing/deleted account',
          args: [
            Arg(
            name: 'is-restore-request',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--key-uri',
          description: 'The URI of the key vault',
          args: [
            Arg(
            name: 'key-ur'
          )
          ]
        ),
        Option(
          name: '--kind',
          description: 'The type of Cosmos DB database account to create',
          args: [
            Arg(
            name: 'kind',
            suggestions: [

              FigSuggestion(name: 'GlobalDocumentDB'),
              FigSuggestion(name: 'MongoDB'),
              FigSuggestion(name: 'Parse')
            ]
          )
          ]
        ),
        Option(
          name: '--locations',
          description: 'Add a location to the Cosmos DB database account',
          args: [
            Arg(
            name: 'location'
          )
          ]
        ),
        Option(
          name: '--max-interval',
          description: 'When used with Bounded Staleness consistency, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400',
          args: [
            Arg(
            name: 'max-interva'
          )
          ]
        ),
        Option(
          name: '--max-staleness-prefix',
          description: 'When used with Bounded Staleness consistency, this value represents the number of stale requests tolerated. Accepted range for this value is 10 - 2,147,483,647',
          args: [
            Arg(
            name: 'max-staleness-prefi'
          )
          ]
        ),
        Option(
          name: '--network-acl-bypass',
          description: 'Flag to enable or disable Network Acl Bypass',
          args: [
            Arg(
            name: 'network-acl-bypass',
            suggestions: [

              FigSuggestion(name: 'AzureServices'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: ['--network-acl-bypass-resource-ids', '-i'],
          description: 'List of Resource Ids to allow Network Acl Bypass',
          args: [
            Arg(
            name: 'network-acl-bypass-resource-id'
          )
          ]
        ),
        Option(
          name: ['--public-network-access', '-p'],
          description: 'Sets public network access in server to either Enabled, Disabled, or SecuredByPerimeter',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'DISABLED'),
              FigSuggestion(name: 'ENABLED'),
              FigSuggestion(name: 'SECUREDBYPERIMETER')
            ]
          )
          ]
        ),
        Option(
          name: '--restore-source',
          description: 'The restorable-database-account Id of the source account from which the account has to be restored. Required if --is-restore-request is set to true',
          args: [
            Arg(
            name: 'restore-sourc'
          )
          ]
        ),
        Option(
          name: '--restore-timestamp',
          description: 'The timestamp to which the account has to be restored to. Required if --is-restore-request is set to true',
          args: [
            Arg(
            name: 'restore-timestam'
          )
          ]
        ),
        Option(
          name: '--server-version',
          description: 'Valid only for MongoDB accounts',
          args: [
            Arg(
            name: 'server-version',
            suggestions: [

              FigSuggestion(name: '3.2'),
              FigSuggestion(name: '3.6'),
              FigSuggestion(name: '4.0'),
              FigSuggestion(name: '4.2')
            ]
          )
          ]
        ),
        Option(
          name: '--tables-to-restore',
          description: 'Add table names to restore',
          args: [
            Arg(
            name: 'tables-to-restor'
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
          name: '--virtual-network-rules',
          description: 'ACL\'s for virtual network',
          args: [
            Arg(
            name: 'virtual-network-rule'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes an Azure Cosmos DB database account',
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
          description: 'Name of the Cosmos DB database account',
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
      name: 'failover-priority-change',
      description: 'Changes the failover priority for the Azure Cosmos DB database account',
      options: [

        Option(
          name: '--failover-policies',
          description: 'Space-separated failover policies in \'regionName=failoverPriority\' format. Number of policies must match the number of regions the account is currently replicated. All regionName values must match those of the regions the account is currently replicated. All failoverPriority values must be unique. There must be one failoverPriority value zero (0) specified. All remaining failoverPriority values can be any positive integer and they don\'t have to be contiguos, neither written in any specific order. E.g eastus=0 westus=1',
          args: [
            Arg(
            name: 'failover-policie'
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
          description: 'Name of the Cosmos DB database account',
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
      description: 'List Azure Cosmos DB database accounts',
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
      name: 'list-connection-strings',
      description: 'List the connection strings for a Azure Cosmos DB database account',
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
          description: 'Name of the Cosmos DB database account',
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
      name: 'list-keys',
      description: 'List the access keys for a Azure Cosmos DB database account',
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
          description: 'Name of the Cosmos DB database account',
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
      name: 'list-read-only-keys',
      description: 'List the read-only access keys for a Azure Cosmos DB database account',
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
          description: 'Name of the Cosmos DB database account',
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
      name: 'regenerate-key',
      description: 'Regenerate an access key for a Azure Cosmos DB database account',
      options: [

        Option(
          name: '--key-kind',
          description: 'The access key to regenerate',
          args: [
            Arg(
            name: 'key-kind',
            suggestions: [

              FigSuggestion(name: 'primary'),
              FigSuggestion(name: 'primaryReadonly'),
              FigSuggestion(name: 'secondary'),
              FigSuggestion(name: 'secondaryReadonly')
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
          description: 'Name of the Cosmos DB database account',
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
      name: 'restore',
      description: 'Create a new Azure Cosmos DB database account by restoring from an existing database account',
      options: [

        Option(
          name: ['--account-name', '-a'],
          description: 'Name of the source Cosmos DB database account for the restore',
          args: [
            Arg(
            name: 'account-nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'The location of the source account from which restore is triggered. This will also be the write region of the restored account',
          args: [
            Arg(
            name: 'locatio'
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
          name: ['--restore-timestamp', '-t'],
          description: 'The timestamp to which the account has to be restored to',
          args: [
            Arg(
            name: 'restore-timestam'
          )
          ]
        ),
        Option(
          name: ['--target-database-account-name', '-n'],
          description: 'Name of the new target Cosmos DB database account after the restore',
          args: [
            Arg(
            name: 'target-database-account-nam'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Assign system or user assigned identities separated by spaces. Use \'[system]\' to refer system assigned identity',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--databases-to-restore',
          description: 'Add a database and its collection names to restore',
          args: [
            Arg(
            name: 'databases-to-restor'
          )
          ]
        ),
        Option(
          name: '--default-identity',
          description: 'The primary identity to access key vault in CMK related features. e.g. \'FirstPartyIdentity\', \'SystemAssignedIdentity\' and more',
          args: [
            Arg(
            name: 'default-identit'
          )
          ]
        ),
        Option(
          name: '--gremlin-databases-to-restore',
          description: 'Add a gremlin database and its graph names to restore',
          args: [
            Arg(
            name: 'gremlin-databases-to-restor'
          )
          ]
        ),
        Option(
          name: ['--public-network-access', '-p'],
          description: 'Sets public network access in server to either Enabled or Disabled',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'DISABLED'),
              FigSuggestion(name: 'ENABLED')
            ]
          )
          ]
        ),
        Option(
          name: '--tables-to-restore',
          description: 'Add table names to restore',
          args: [
            Arg(
            name: 'tables-to-restor'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of an Azure Cosmos DB database account',
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
          description: 'Name of the Cosmos DB database account',
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
      description: 'Update an Azure Cosmos DB database account',
      options: [

        Option(
          name: ['--analytical-storage-schema-type', '--as-schema'],
          description: 'Schema type for analytical storage',
          args: [
            Arg(
            name: 'analytical-storage-schema-type',
            suggestions: [

              FigSuggestion(name: 'FullFidelity'),
              FigSuggestion(name: 'WellDefined')
            ]
          )
          ]
        ),
        Option(
          name: '--backup-interval',
          description: 'The frequency(in minutes) with which backups are taken (only for accounts with periodic mode backups)',
          args: [
            Arg(
            name: 'backup-interva'
          )
          ]
        ),
        Option(
          name: '--backup-policy-type',
          description: 'The type of backup policy of the account to create',
          args: [
            Arg(
            name: 'backup-policy-type',
            suggestions: [

              FigSuggestion(name: 'Continuous'),
              FigSuggestion(name: 'Periodic')
            ]
          )
          ]
        ),
        Option(
          name: '--backup-redundancy',
          description: 'The redundancy type of the backup Storage account',
          args: [
            Arg(
            name: 'backup-redundancy',
            suggestions: [

              FigSuggestion(name: 'Geo'),
              FigSuggestion(name: 'Local'),
              FigSuggestion(name: 'Zone')
            ]
          )
          ]
        ),
        Option(
          name: '--backup-retention',
          description: 'The time(in hours) for which each backup is retained (only for accounts with periodic mode backups)',
          args: [
            Arg(
            name: 'backup-retentio'
          )
          ]
        ),
        Option(
          name: '--capabilities',
          description: 'Set custom capabilities on the Cosmos DB database account',
          args: [
            Arg(
            name: 'capabilitie'
          )
          ]
        ),
        Option(
          name: '--continuous-tier',
          description: 'The tier of Continuous backup',
          args: [
            Arg(
            name: 'continuous-tier',
            suggestions: [

              FigSuggestion(name: 'Continuous30Days'),
              FigSuggestion(name: 'Continuous7Days')
            ]
          )
          ]
        ),
        Option(
          name: '--default-consistency-level',
          description: 'Default consistency level of the Cosmos DB database account',
          args: [
            Arg(
            name: 'default-consistency-level',
            suggestions: [

              FigSuggestion(name: 'BoundedStaleness'),
              FigSuggestion(name: 'ConsistentPrefix'),
              FigSuggestion(name: 'Eventual'),
              FigSuggestion(name: 'Session'),
              FigSuggestion(name: 'Strong')
            ]
          )
          ]
        ),
        Option(
          name: '--default-identity',
          description: 'The primary identity to access key vault in CMK related features. e.g. \'FirstPartyIdentity\', \'SystemAssignedIdentity\' and more. User-assigned identities are specified in format \'UserAssignedIdentity=\'',
          args: [
            Arg(
            name: 'default-identit'
          )
          ]
        ),
        Option(
          name: '--disable-key-based-metadata-write-access',
          description: 'Disable write operations on metadata resources (databases, containers, throughput) via account keys',
          args: [
            Arg(
            name: 'disable-key-based-metadata-write-access',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-analytical-storage',
          description: 'Flag to enable log storage on the account',
          args: [
            Arg(
            name: 'enable-analytical-storage',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-automatic-failover',
          description: 'Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account',
          args: [
            Arg(
            name: 'enable-automatic-failover',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-multiple-write-locations',
          description: 'Enable Multiple Write Locations',
          args: [
            Arg(
            name: 'enable-multiple-write-locations',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-partition-merge',
          description: 'Flag to enable partition merge on the account',
          args: [
            Arg(
            name: 'enable-partition-merge',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-virtual-network',
          description: 'Enables virtual network on the Cosmos DB database account',
          args: [
            Arg(
            name: 'enable-virtual-network',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
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
          name: '--ip-range-filter',
          description: 'Firewall support. Specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma-separated and must not contain any spaces',
          args: [
            Arg(
            name: 'ip-range-filte'
          )
          ]
        ),
        Option(
          name: '--key-uri',
          description: 'The URI of the key vault',
          args: [
            Arg(
            name: 'key-ur'
          )
          ]
        ),
        Option(
          name: '--locations',
          description: 'Add a location to the Cosmos DB database account',
          args: [
            Arg(
            name: 'location'
          )
          ]
        ),
        Option(
          name: '--max-interval',
          description: 'When used with Bounded Staleness consistency, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400',
          args: [
            Arg(
            name: 'max-interva'
          )
          ]
        ),
        Option(
          name: '--max-staleness-prefix',
          description: 'When used with Bounded Staleness consistency, this value represents the number of stale requests tolerated. Accepted range for this value is 10 - 2,147,483,647',
          args: [
            Arg(
            name: 'max-staleness-prefi'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Cosmos DB database account',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--network-acl-bypass',
          description: 'Flag to enable or disable Network Acl Bypass',
          args: [
            Arg(
            name: 'network-acl-bypass',
            suggestions: [

              FigSuggestion(name: 'AzureServices'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: ['--network-acl-bypass-resource-ids', '-i'],
          description: 'List of Resource Ids to allow Network Acl Bypass',
          args: [
            Arg(
            name: 'network-acl-bypass-resource-id'
          )
          ]
        ),
        Option(
          name: ['--public-network-access', '-p'],
          description: 'Sets public network access in server to either Enabled, Disabled, or SecuredByPerimeter',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'DISABLED'),
              FigSuggestion(name: 'ENABLED'),
              FigSuggestion(name: 'SECUREDBYPERIMETER')
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
          name: '--server-version',
          description: 'Valid only for MongoDB accounts',
          args: [
            Arg(
            name: 'server-version',
            suggestions: [

              FigSuggestion(name: '3.2'),
              FigSuggestion(name: '3.6'),
              FigSuggestion(name: '4.0'),
              FigSuggestion(name: '4.2')
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
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--virtual-network-rules',
          description: 'ACL\'s for virtual network',
          args: [
            Arg(
            name: 'virtual-network-rule'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'collection',
      description: 'Manage Azure Cosmos DB collections',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates an Azure Cosmos DB collection',
          options: [

            Option(
              name: ['--collection-name', '-c'],
              description: 'Collection Name',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--cep',
              description: 'Client Encryption Policy, you can enter it as a string or as a file, e.g., --cep @policy-file.json or --cep "{"includedPaths": [{"path": "/path1","clientEncryptionKeyId": "key1","encryptionAlgorithm": "AEAD_AES_256_CBC_HMAC_SHA256","encryptionType": "Deterministic"}],"policyFormatVersion": 2}"',
              args: [
                Arg(
                name: 'ce'
              )
              ]
            ),
            Option(
              name: '--default-ttl',
              description: 'Default TTL. Provide 0 to disable',
              args: [
                Arg(
                name: 'default-tt'
              )
              ]
            ),
            Option(
              name: '--indexing-policy',
              description: 'Indexing Policy, you can enter it as a string or as a file, e.g., --indexing-policy @policy-file.json). "indexingMode": "consistent", "automatic": true, "includedPaths": [ { "path": "/*" } ], "excludedPaths": [ { "path": "/\\"_etag\\"/?" } ] }',
              args: [
                Arg(
                name: 'indexing-polic'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--partition-key-path',
              description: 'Partition Key Path, e.g., \'/properties/name\'',
              args: [
                Arg(
                name: 'partition-key-pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--throughput',
              description: 'Offer Throughput (RU/s)',
              args: [
                Arg(
                name: 'throughpu'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an Azure Cosmos DB collection',
          options: [

            Option(
              name: ['--collection-name', '-c'],
              description: 'Collection Name',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
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
          name: 'exists',
          description: 'Returns a boolean indicating whether the collection exists',
          options: [

            Option(
              name: ['--collection-name', '-c'],
              description: 'Collection Name',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all Azure Cosmos DB collections',
          options: [

            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows an Azure Cosmos DB collection and its offer',
          options: [

            Option(
              name: ['--collection-name', '-c'],
              description: 'Collection Name',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates an Azure Cosmos DB collection',
          options: [

            Option(
              name: ['--collection-name', '-c'],
              description: 'Collection Name',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--default-ttl',
              description: 'Default TTL. Provide 0 to disable',
              args: [
                Arg(
                name: 'default-tt'
              )
              ]
            ),
            Option(
              name: '--indexing-policy',
              description: 'Indexing Policy, you can enter it as a string or as a file, e.g., --indexing-policy @policy-file.json)',
              args: [
                Arg(
                name: 'indexing-polic'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--throughput',
              description: 'Offer Throughput (RU/s)',
              args: [
                Arg(
                name: 'throughpu'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'copy',
      description: 'Manage container copy job',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a container copy job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Azure Cosmos DB account name where the job is created. Use --dest-account value from create job command',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the container copy job',
              args: [
                Arg(
                name: 'job-nam'
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
          name: 'create',
          description: 'Creates a container copy job',
          options: [

            Option(
              name: '--dest-account',
              description: 'Name of the Azure Cosmos DB destination database account',
              args: [
                Arg(
                name: 'dest-accoun'
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
              name: '--src-account',
              description: 'Name of the Azure Cosmos DB source database account',
              args: [
                Arg(
                name: 'src-accoun'
              )
              ]
            ),
            Option(
              name: '--dest-cassandra',
              description: 'Destination table',
              args: [
                Arg(
                name: 'dest-cassandr'
              )
              ]
            ),
            Option(
              name: '--dest-mongo',
              description: 'Destination collection',
              args: [
                Arg(
                name: 'dest-mong'
              )
              ]
            ),
            Option(
              name: '--dest-nosql',
              description: 'Destination container',
              args: [
                Arg(
                name: 'dest-nosq'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the Data Transfer Job. A random job name will be generated if not passed',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: '--src-cassandra',
              description: 'Source table',
              args: [
                Arg(
                name: 'src-cassandr'
              )
              ]
            ),
            Option(
              name: '--src-mongo',
              description: 'Source collection',
              args: [
                Arg(
                name: 'src-mong'
              )
              ]
            ),
            Option(
              name: '--src-nosql',
              description: 'Source container',
              args: [
                Arg(
                name: 'src-nosq'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get a container copy job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Azure Cosmos DB account name where the job is created. Use --dest-account value from create job command',
              args: [
                Arg(
                name: 'account-nam'
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
          name: 'pause',
          description: 'Pause a container copy job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Azure Cosmos DB account name where the job is created. Use --dest-account value from create job command',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the container copy job',
              args: [
                Arg(
                name: 'job-nam'
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
          name: 'resume',
          description: 'Resume a container copy job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Azure Cosmos DB account name where the job is created. Use --dest-account value from create job command',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the container copy job',
              args: [
                Arg(
                name: 'job-nam'
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
          description: 'Get a container copy job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Azure Cosmos DB account name where the job is created. Use --dest-account value from create job command',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the container copy job',
              args: [
                Arg(
                name: 'job-nam'
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
      name: 'database',
      description: 'Manage Azure Cosmos DB databases',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates an Azure Cosmos DB database',
          options: [

            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--throughput',
              description: 'Offer Throughput (RU/s)',
              args: [
                Arg(
                name: 'throughpu'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an Azure Cosmos DB database',
          options: [

            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
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
          name: 'exists',
          description: 'Returns a boolean indicating whether the database exists',
          options: [

            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all Azure Cosmos DB databases',
          options: [

            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows an Azure Cosmos DB database',
          options: [

            Option(
              name: ['--db-name', '-d'],
              description: 'Database Name',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Cosmos DB account key. Must be used in conjunction with cosmosdb account name or url-connection',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Cosmos DB account name. Must be used in conjunction with either name of the resource group or cosmosdb account key',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group. Must be used in conjunction with cosmosdb account name',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--url-connection',
              description: 'Cosmos DB account url connection. Must be used in conjunction with cosmosdb account key',
              args: [
                Arg(
                name: 'url-connectio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dts',
      description: 'Manage data transfer job with cosmosdb',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancels a Data Transfer Job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the Data Transfer Job',
              args: [
                Arg(
                name: 'job-nam'
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
          name: 'copy',
          description: 'Creates a Data Transfer Copy Job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--dest-cassandra-table',
              description: 'Destination cassandra table',
              args: [
                Arg(
                name: 'dest-cassandra-tabl'
              )
              ]
            ),
            Option(
              name: '--dest-mongo',
              description: 'Destination mongo collection',
              args: [
                Arg(
                name: 'dest-mong'
              )
              ]
            ),
            Option(
              name: '--dest-sql-container',
              description: 'Destination sql container',
              args: [
                Arg(
                name: 'dest-sql-containe'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the Data Transfer Job. A random job name will be generated if not passed',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: '--source-cassandra-table',
              description: 'Source cassandra table',
              args: [
                Arg(
                name: 'source-cassandra-tabl'
              )
              ]
            ),
            Option(
              name: '--source-mongo',
              description: 'Source mongo collection',
              args: [
                Arg(
                name: 'source-mong'
              )
              ]
            ),
            Option(
              name: '--source-sql-container',
              description: 'Source sql container',
              args: [
                Arg(
                name: 'source-sql-containe'
              )
              ]
            ),
            Option(
              name: '--worker-count',
              description: 'Worker count',
              args: [
                Arg(
                name: 'worker-coun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get a list of Data Transfer Jobs',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
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
          name: 'pause',
          description: 'Pause a Data Transfer Job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the Data Transfer Job',
              args: [
                Arg(
                name: 'job-nam'
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
          name: 'resume',
          description: 'Resumes a Data Transfer Job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the Data Transfer Job',
              args: [
                Arg(
                name: 'job-nam'
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
          description: 'Get a Data Transfer Job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--job-name', '-n'],
              description: 'Name of the Data Transfer Job',
              args: [
                Arg(
                name: 'job-nam'
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
      name: 'gremlin',
      description: 'Manage Gremlin resources of Azure Cosmos DB account',
      subcommands: [

        Subcommand(
          name: 'retrieve-latest-backup-time',
          description: 'Retrieves latest restorable timestamp for the given gremlin graph in given region',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--database-name', '-d'],
              description: 'Name of the CosmosDB Gremlin database name',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--graph-name', '-n'],
              description: 'Name of the CosmosDB Gremlin graph name',
              args: [
                Arg(
                name: 'graph-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the account',
              args: [
                Arg(
                name: 'locatio'
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
          name: 'database',
          description: 'Manage Azure Cosmos DB Gremlin databases',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Gremlin database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput Gremlin database (RU/s). Default value is 400',
                  args: [
                    Arg(
                    name: 'throughpu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the Gremlin database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'exists',
              description: 'Checks if an Azure Cosmos DB Gremlin database exists',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
              description: 'List the Gremlin databases under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
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
              name: 'restore',
              description: 'Restore a deleted gremlin database within the same account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CosmosDB Gremlin database name',
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
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp to which the database needs to be restored to',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a Gremlin database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
              name: 'throughput',
              description: 'Manage throughput of Gremlin database under an Azure Cosmos DB account',
              subcommands: [

                Subcommand(
                  name: 'migrate',
                  description: 'Migrate the throughput of the Gremlin database between autoscale and manually provisioned',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                      name: ['--throughput-type', '-t'],
                      description: 'The type of throughput to migrate to',
                      args: [
                        Arg(
                        name: 'throughput-type',
                        suggestions: [

                          FigSuggestion(name: 'autoscale'),
                          FigSuggestion(name: 'manual')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the throughput of the Gremlin database under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                  description: 'Update the throughput of the Gremlin database under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                      name: '--max-throughput',
                      description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                      args: [
                        Arg(
                        name: 'max-throughpu'
                      )
                      ]
                    ),
                    Option(
                      name: '--throughput',
                      description: 'The throughput of Gremlin database (RU/s)',
                      args: [
                        Arg(
                        name: 'throughpu'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'graph',
          description: 'Manage Azure Cosmos DB Gremlin graphs',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Gremlin graph under an Azure Cosmos DB Gremlin database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Graph name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--partition-key-path', '-p'],
                  description: 'Partition Key Path, e.g., \'/address/zipcode\'',
                  args: [
                    Arg(
                    name: 'partition-key-pat'
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
                  name: '--analytical-storage-ttl',
                  description: 'Analytical TTL, when analytical storage is enabled',
                  args: [
                    Arg(
                    name: 'analytical-storage-tt'
                  )
                  ]
                ),
                Option(
                  name: ['--conflict-resolution-policy', '-c'],
                  description: 'Conflict Resolution Policy, you can enter it as a string or as a file, e.g., --conflict-resolution-policy @policy-file.json or --conflict-resolution-policy "{"mode": "lastWriterWins", "conflictResolutionPath": "/path"}"',
                  args: [
                    Arg(
                    name: 'conflict-resolution-polic'
                  )
                  ]
                ),
                Option(
                  name: '--idx',
                  description: 'Indexing Policy, you can enter it as a string or as a file, e.g., --idx @policy-file.json or --idx "{"indexingMode": "consistent", "automatic": true, "includedPaths": [{"path": "/*"}], "excludedPaths": [{ "path": "/headquarters/employees/?"}, { "path": "/\\"_etag\\"/?"}]}". "indexingMode": "consistent", "automatic": true, "includedPaths": [ { "path": "/*" } ], "excludedPaths": [ { "path": "/\\"_etag\\"/?" } ] }',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput of Gremlin graph (RU/s). Default value is 400. Omit this parameter if the database has shared throughput unless the graph should have dedicated throughput',
                  args: [
                    Arg(
                    name: 'throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--ttl',
                  description: 'Default TTL. If the value is missing or set to "-1", items don’t expire. If the value is set to "n", items will expire "n" seconds after last modified time',
                  args: [
                    Arg(
                    name: 'tt'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the Gremlin graph under an Azure Cosmos DB Gremlin database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Graph name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'exists',
              description: 'Checks if an Azure Cosmos DB Gremlin graph exists',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Graph name',
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
              description: 'List the Gremlin graphs under an Azure Cosmos DB Gremlin database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
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
              name: 'restore',
              description: 'Restore a deleted gremlin graph within the same account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Name of the CosmosDB Gremlin database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CosmosDB Gremlin graph name',
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
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp to which the graph needs to be restored to',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a Gremlin graph under an Azure Cosmos DB Gremlin database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Graph name',
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
              description: 'Update an Gremlin graph under an Azure Cosmos DB Gremlin database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Graph name',
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
                  name: '--analytical-storage-ttl',
                  description: 'Analytical TTL, when analytical storage is enabled',
                  args: [
                    Arg(
                    name: 'analytical-storage-tt'
                  )
                  ]
                ),
                Option(
                  name: '--idx',
                  description: 'Indexing Policy, you can enter it as a string or as a file, e.g., --idx @policy-file.json or --idx "{"indexingMode": "consistent", "automatic": true, "includedPaths": [{"path": "/*"}], "excludedPaths": [{ "path": "/headquarters/employees/?"}, { "path": "/\\"_etag\\"/?"}]}"',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--ttl',
                  description: 'Default TTL. If the value is missing or set to "-1", items don’t expire. If the value is set to "n", items will expire "n" seconds after last modified time',
                  args: [
                    Arg(
                    name: 'tt'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'throughput',
              description: 'Manage throughput of Gremlin graph under an Azure Cosmos DB account',
              subcommands: [

                Subcommand(
                  name: 'migrate',
                  description: 'Migrate the throughput of the Gremlin Graph between autoscale and manually provisioned',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Graph name',
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
                      name: ['--throughput-type', '-t'],
                      description: 'The type of throughput to migrate to',
                      args: [
                        Arg(
                        name: 'throughput-type',
                        suggestions: [

                          FigSuggestion(name: 'autoscale'),
                          FigSuggestion(name: 'manual')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the throughput of the Gremlin graph under an Azure Cosmos DB Gremlin database',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Graph name',
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
                  description: 'Update the throughput of the Gremlin graph under an Azure Cosmos DB Gremlin database',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Graph name',
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
                      name: '--max-throughput',
                      description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                      args: [
                        Arg(
                        name: 'max-throughpu'
                      )
                      ]
                    ),
                    Option(
                      name: '--throughput',
                      description: 'The throughput Gremlin graph (RU/s)',
                      args: [
                        Arg(
                        name: 'throughpu'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-database',
          description: 'Manage different versions of gremlin databases that are restorable in a Azure Cosmos DB account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the versions of all the gremlin databases that were created / modified / deleted in the given restorable account',
              options: [

                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-graph',
          description: 'Manage different versions of gremlin graphs that are restorable in a database of a Azure Cosmos DB account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the versions of all the gremlin graphs that were created / modified / deleted in the given database and restorable account',
              options: [

                Option(
                  name: ['--database-rid', '-d'],
                  description: 'Rid of the gremlin database',
                  args: [
                    Arg(
                    name: 'database-ri'
                  )
                  ]
                ),
                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--end-time', '-e'],
                  description: 'End time of restorable Gremlin graph event feed',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--start-time', '-s'],
                  description: 'Start time of restorable Gremlin graph event feed',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-resource',
          description: 'Manage the databases and its graphs that can be restored in the given account at the given timestamp and region',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the databases and its graphs that can be restored in the given account at the given timestamp and region',
              options: [

                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Azure Location of the account',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--restore-location', '-r'],
                  description: 'The region of the restore',
                  args: [
                    Arg(
                    name: 'restore-locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp of the restore',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'identity',
      description: 'Manage Azure Cosmos DB managed service identities',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign SystemAssigned identity for a Azure Cosmos DB database account',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to assign. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
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
              description: 'Name of the Cosmos DB database account',
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
          description: 'Remove SystemAssigned identity for a Azure Cosmos DB database account',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to remove. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
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
              description: 'Name of the Cosmos DB database account',
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
          description: 'Show the identities for a Azure Cosmos DB database account',
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
              description: 'Name of the Cosmos DB database account',
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
      name: 'keys',
      description: 'Manage Azure Cosmos DB keys',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the access keys or connection strings for a Azure Cosmos DB database account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Cosmosdb account name',
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
              name: '--type',
              description: 'The type of account key',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'connection-strings'),
                  FigSuggestion(name: 'keys'),
                  FigSuggestion(name: 'read-only-keys')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'regenerate',
          description: 'Regenerate an access key for a Azure Cosmos DB database account',
          options: [

            Option(
              name: '--key-kind',
              description: 'The access key to regenerate',
              args: [
                Arg(
                name: 'key-kind',
                suggestions: [

                  FigSuggestion(name: 'primary'),
                  FigSuggestion(name: 'primaryReadonly'),
                  FigSuggestion(name: 'secondary'),
                  FigSuggestion(name: 'secondaryReadonly')
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
              description: 'Name of the Cosmos DB database account',
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
      name: 'locations',
      description: 'Manage Azure Cosmos DB location properties',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Retrieves the list of cosmosdb locations and their properties'
        ),
        Subcommand(
          name: 'show',
          description: 'Show the Azure Cosmos DB location properties in the given location',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Name of the location',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'mongocluster',
      description: 'Mongo cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Mongo cluster',
          options: [

            Option(
              name: ['--administrator-login', '-a'],
              description: 'The initial administrator user to be configured when a cluster is created',
              args: [
                Arg(
                name: 'administrator-logi'
              )
              ]
            ),
            Option(
              name: ['--administrator-login-password', '-p'],
              description: 'The initial administrator password to be configured when a cluster is created',
              args: [
                Arg(
                name: 'administrator-login-passwor'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Cosmos DB Mongo Cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Azure Location of the Cluster',
              args: [
                Arg(
                name: 'locatio'
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
              name: '--server-version',
              description: 'The server version of the mongo cluster',
              args: [
                Arg(
                name: 'server-versio'
              )
              ]
            ),
            Option(
              name: '--shard-node-count',
              description: 'The node count for mongo cluster',
              args: [
                Arg(
                name: 'shard-node-coun'
              )
              ]
            ),
            Option(
              name: ['--shard-node-disk-size-gb', '-d'],
              description: 'The node disk size for mongo cluster',
              args: [
                Arg(
                name: 'shard-node-disk-size-g'
              )
              ]
            ),
            Option(
              name: '--shard-node-ha',
              description: 'If enabled the cluster has HA',
              args: [
                Arg(
                name: 'shard-node-ha',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--shard-node-tier',
              description: 'The node tier for mongo cluster',
              args: [
                Arg(
                name: 'shard-node-tie'
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
          description: 'Delete a Mongo Cluster Resource',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Cosmos DB Mongo Cluster',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List a Mongo Cluster Resource',
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
          description: 'Get a Mongo Cluster Resource',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Cosmos DB Mongo Cluster',
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
          name: 'update',
          description: 'Update a Mongo cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Cosmos DB Mongo Cluster',
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
              name: ['--administrator-login', '-a'],
              description: 'The initial administrator user to be configured when a cluster is created',
              args: [
                Arg(
                name: 'administrator-logi'
              )
              ]
            ),
            Option(
              name: ['--administrator-login-password', '-p'],
              description: 'The initial administrator password to be configured when a cluster is created',
              args: [
                Arg(
                name: 'administrator-login-passwor'
              )
              ]
            ),
            Option(
              name: '--server-version',
              description: 'The server version of the mongo cluster',
              args: [
                Arg(
                name: 'server-versio'
              )
              ]
            ),
            Option(
              name: ['--shard-node-disk-size-gb', '-d'],
              description: 'The node disk size for mongo cluster',
              args: [
                Arg(
                name: 'shard-node-disk-size-g'
              )
              ]
            ),
            Option(
              name: '--shard-node-ha',
              description: 'If enabled the cluster has HA',
              args: [
                Arg(
                name: 'shard-node-ha',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--shard-node-tier',
              description: 'The node tier for mongo cluster',
              args: [
                Arg(
                name: 'shard-node-tie'
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
          name: 'firewall',
          description: 'Mongo cluster firewall',
          subcommands: [

            Subcommand(
              name: 'rule',
              description: 'Mongo cluster firewall rule',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a Mongo cluster firewall rule',
                  options: [

                    Option(
                      name: ['--cluster-name', '-c'],
                      description: 'Name of the Cosmos DB Mongo Cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--end-ip-address',
                      description: 'End IP address of the firewall rule',
                      args: [
                        Arg(
                        name: 'end-ip-addres'
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
                      description: 'Name of the firewall rule',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--start-ip-address',
                      description: 'Start IP address of the firewall rule',
                      args: [
                        Arg(
                        name: 'start-ip-addres'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Mongo cluster firewall rule',
                  options: [

                    Option(
                      name: ['--cluster-name', '-c'],
                      description: 'Name of the Cosmos DB Mongo Cluster',
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
                      name: '--rule-name',
                      description: 'Name of the firewall rule',
                      args: [
                        Arg(
                        name: 'rule-nam'
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
                  description: 'Lists firewall rule on a Mongo cluster',
                  options: [

                    Option(
                      name: ['--cluster-name', '-c'],
                      description: 'Name of the Cosmos DB Mongo Cluster',
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
                  name: 'show',
                  description: 'Get a Mongo cluster firewall rule',
                  options: [

                    Option(
                      name: ['--cluster-name', '-c'],
                      description: 'Name of the Cosmos DB Mongo Cluster',
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
                      name: '--rule-name',
                      description: 'Name of the firewall rule',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Create a Mongo cluster firewall rule',
                  options: [

                    Option(
                      name: ['--cluster-name', '-c'],
                      description: 'Name of the Cosmos DB Mongo Cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--end-ip-address',
                      description: 'End IP address of the firewall rule',
                      args: [
                        Arg(
                        name: 'end-ip-addres'
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
                      description: 'Name of the firewall rule',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--start-ip-address',
                      description: 'Start IP address of the firewall rule',
                      args: [
                        Arg(
                        name: 'start-ip-addres'
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
    ),
    Subcommand(
      name: 'mongodb',
      description: 'Manage MongoDB resources of Azure Cosmos DB account',
      subcommands: [

        Subcommand(
          name: 'retrieve-latest-backup-time',
          description: 'Retrieves latest restorable timestamp for the given mongodb collection in given region',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--collection-name', '-c'],
              description: 'Name of the CosmosDB MongoDB collection name',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
              name: ['--database-name', '-d'],
              description: 'Name of the CosmosDB MongoDB database name',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the account',
              args: [
                Arg(
                name: 'locatio'
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
          name: 'collection',
          description: 'Manage Azure Cosmos DB MongoDB collections',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an MongoDB collection under an Azure Cosmos DB MongoDB database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Collection name',
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
                  name: '--analytical-storage-ttl',
                  description: 'Analytical TTL, when analytical storage is enabled',
                  args: [
                    Arg(
                    name: 'analytical-storage-tt'
                  )
                  ]
                ),
                Option(
                  name: '--idx',
                  description: 'Indexes, you can enter it as a string or as a file, e.g., --idx @indexes-file.json or --idx "[{"key": {"keys": ["_ts"]},"options": {"expireAfterSeconds": 1000}}, {"key": {"keys": ["user_id", "user_address"]}, "options": {"unique": "true"}}]"',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--shard',
                  description: 'Sharding key path',
                  args: [
                    Arg(
                    name: 'shar'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput of MongoDB collection (RU/s). Default value is 400. Omit this parameter if the database has shared throughput unless the collection should have dedicated throughput',
                  args: [
                    Arg(
                    name: 'throughpu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the MongoDB collection under an Azure Cosmos DB MongoDB database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Collection name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'exists',
              description: 'Checks if an Azure Cosmos DB MongoDB collection exists',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Collection name',
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
              description: 'List the MongoDB collections under an Azure Cosmos DB MongoDB database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
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
              name: 'merge',
              description: 'Merges the partitions of a mongodb collection',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the CosmosDB database account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Name of the mongoDB database',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the mongoDB collection',
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
              name: 'redistribute-partition-throughput',
              description: 'Redistributes the partition throughput of a mongodb collection',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the CosmosDB database account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Name of the CosmosDB database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CosmosDB collection',
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
                  name: '--evenly-distribute',
                  description: 'Switch to distribute throughput equally among all physical partitions'
                ),
                Option(
                  name: '--source-partition-info',
                  description: 'Space separated source physical partition ids eg: 1 2',
                  args: [
                    Arg(
                    name: 'source-partition-inf'
                  )
                  ]
                ),
                Option(
                  name: '--target-partition-info',
                  description: 'Information about desired target physical partition throughput eg: \'0=1200 1=1200\'',
                  args: [
                    Arg(
                    name: 'target-partition-inf'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore',
              description: 'Restore a deleted mongodb collection within the same account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Collection name',
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
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp to which the collection needs to be restored to',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'retrieve-partition-throughput',
              description: 'Retrieve the partition throughput of a mongodb collection',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the CosmosDB database account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Name of the CosmosDB database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CosmosDB container',
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
                  name: '--all-partitions',
                  description: 'Switch to retrieve throughput for all physical partitions'
                ),
                Option(
                  name: ['--physical-partition-ids', '-p'],
                  description: 'Space separated list of physical partition ids',
                  args: [
                    Arg(
                    name: 'physical-partition-id'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a MongoDB collection under an Azure Cosmos DB MongoDB database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Collection name',
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
              description: 'Update an MongoDB collection under an Azure Cosmos DB MongoDB database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Collection name',
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
                  name: '--analytical-storage-ttl',
                  description: 'Analytical TTL, when analytical storage is enabled',
                  args: [
                    Arg(
                    name: 'analytical-storage-tt'
                  )
                  ]
                ),
                Option(
                  name: '--idx',
                  description: 'Indexes, you can enter it as a string or as a file, e.g., --idx @indexes-file.json or --idx "[{"key": {"keys": ["_ts"]},"options": {"expireAfterSeconds": 1000}}, {"key": {"keys": ["user_id", "user_address"]}, "options": {"unique": "true"}}]"',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'throughput',
              description: 'Manage throughput of MongoDB collection under an Azure Cosmos DB account',
              subcommands: [

                Subcommand(
                  name: 'migrate',
                  description: 'Migrate the throughput of the MongoDB collection between autoscale and manually provisioned',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Collection name',
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
                      name: ['--throughput-type', '-t'],
                      description: 'The type of throughput to migrate to',
                      args: [
                        Arg(
                        name: 'throughput-type',
                        suggestions: [

                          FigSuggestion(name: 'autoscale'),
                          FigSuggestion(name: 'manual')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the throughput of the MongoDB collection under an Azure Cosmos DB MongoDB database',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Collection name',
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
                  description: 'Update the throughput of the MongoDB collection under an Azure Cosmos DB MongoDB database',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Collection name',
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
                      name: '--max-throughput',
                      description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                      args: [
                        Arg(
                        name: 'max-throughpu'
                      )
                      ]
                    ),
                    Option(
                      name: '--throughput',
                      description: 'The throughput of MongoDB collection (RU/s)',
                      args: [
                        Arg(
                        name: 'throughpu'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'database',
          description: 'Manage Azure Cosmos DB MongoDB databases',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an MongoDB database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput of MongoDB database (RU/s). Default value is 400',
                  args: [
                    Arg(
                    name: 'throughpu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the MongoDB database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'exists',
              description: 'Checks if an Azure Cosmos DB MongoDB database exists',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
              description: 'List the MongoDB databases under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
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
              name: 'merge',
              description: 'Merges the partitions of a mongodb database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the CosmosDB database account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the mongoDB database',
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
              name: 'restore',
              description: 'Restore a deleted mongodb database within the same account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp to which the database needs to be restored to',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a MongoDB database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
              name: 'throughput',
              description: 'Manage throughput of MongoDB database under an Azure Cosmos DB account',
              subcommands: [

                Subcommand(
                  name: 'migrate',
                  description: 'Migrate the throughput of the MongoDB database between autoscale and manually provisioned',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                      name: ['--throughput-type', '-t'],
                      description: 'The type of throughput to migrate to',
                      args: [
                        Arg(
                        name: 'throughput-type',
                        suggestions: [

                          FigSuggestion(name: 'autoscale'),
                          FigSuggestion(name: 'manual')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the throughput of the MongoDB database under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                  description: 'Update the throughput of the MongoDB database under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                      name: '--max-throughput',
                      description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                      args: [
                        Arg(
                        name: 'max-throughpu'
                      )
                      ]
                    ),
                    Option(
                      name: '--throughput',
                      description: 'The throughput of MongoDB database (RU/s)',
                      args: [
                        Arg(
                        name: 'throughpu'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-collection',
          description: 'Manage different versions of mongodb collections that are restorable in a database of a Azure Cosmos DB account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the versions of all the mongodb collections that were created / modified / deleted in the given database and restorable account',
              options: [

                Option(
                  name: ['--database-rid', '-d'],
                  description: 'Rid of the database',
                  args: [
                    Arg(
                    name: 'database-ri'
                  )
                  ]
                ),
                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--end-time', '-e'],
                  description: 'End time of restorable MongoDB collections event feed',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--start-time', '-s'],
                  description: 'Start time of restorable MongoDB collections event feed',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-database',
          description: 'Manage different versions of mongodb databases that are restorable in a Azure Cosmos DB account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the versions of all the mongodb databases that were created / modified / deleted in the given restorable account',
              options: [

                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-resource',
          description: 'Manage the databases and its collections that can be restored in the given account at the given timesamp and region',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the databases and its collections that can be restored in the given account at the given timesamp and region',
              options: [

                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Azure Location of the account',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--restore-location', '-r'],
                  description: 'The region of the restore',
                  args: [
                    Arg(
                    name: 'restore-locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp of the restore',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'role',
          description: 'Manage Azure Cosmos DB Mongo role resources',
          subcommands: [

            Subcommand(
              name: 'definition',
              description: 'Manage Azure Cosmos DB Mongo role definitions',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a Mongo DB role definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--body', '-b'],
                      description: 'Role Definition body with Id (Optional for create), Type (Default is CustomRole), DatabaseName, Privileges, Roles. You can enter it as a string or as a file, e.g., --body @mongo-role_definition-body-file.json or --body "{"Id": "be79875a-2cc4-40d5-8958-566017875b39","RoleName": "MyRWRole","Type": "CustomRole""DatabaseName": "MyDb","Privileges": [ {"Resource": {"Db": "MyDB","Collection": "MyCol"},"Actions": ["insert","find"]}],"Roles": [ {"Role": "myInheritedRole","Db": "MyTestDb"}]}"',
                      args: [
                        Arg(
                        name: 'bod'
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
                  description: 'Delete a CosmosDb MongoDb role definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Mongo Role Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                  name: 'exists',
                  description: 'Check if an Azure Cosmos DB MongoDb role definition exists',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Mongo Role Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                  description: 'List all MongoDb role definitions under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                  description: 'Show the properties of a MongoDb role definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Mongo Role Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                  description: 'Update a MongoDb role definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--body', '-b'],
                      description: 'Role Definition body with Id (Optional for create), Type (Default is CustomRole), DatabaseName, Privileges, Roles. You can enter it as a string or as a file, e.g., --body @mongo-role_definition-body-file.json or --body "{"Id": "be79875a-2cc4-40d5-8958-566017875b39","RoleName": "MyRWRole","Type": "CustomRole""DatabaseName": "MyDb","Privileges": [ {"Resource": {"Db": "MyDB","Collection": "MyCol"},"Actions": ["insert","find"]}],"Roles": [ {"Role": "myInheritedRole","Db": "MyTestDb"}]}"',
                      args: [
                        Arg(
                        name: 'bod'
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
        ),
        Subcommand(
          name: 'user',
          description: 'Manage Azure Cosmos DB Mongo user resources',
          subcommands: [

            Subcommand(
              name: 'definition',
              description: 'Manage Azure Cosmos DB Mongo user definitions',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a Mongo DB user definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--body', '-b'],
                      description: 'User Definition body with Id (Optional for create), UserName, Password, DatabaseName, CustomData, Mechanisms, Roles. You can enter it as a string or as a file, e.g., --body @mongo-user_definition-body-file.json or --body "{"Id": "be79875a-2cc4-40d5-8958-566017875b39","UserName": "MyUserName","Password": "MyPass","CustomData": "MyCustomData","Mechanisms": "SCRAM-SHA-256""DatabaseName": "MyDb","Roles": [ {"Role": "myReadRole","Db": "MyDb"}]}"',
                      args: [
                        Arg(
                        name: 'bod'
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
                  description: 'Delete a CosmosDb MongoDb user definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Mongo User Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                  name: 'exists',
                  description: 'Check if an Azure Cosmos DB MongoDb user definition exists',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Mongo User Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                  description: 'List all MongoDb user definitions under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                  description: 'Show the properties of a MongoDb user definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Mongo User Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                  description: 'Update a MongoDb user definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--body', '-b'],
                      description: 'User Definition body with Id (Optional for create), UserName, Password, DatabaseName, CustomData, Mechanisms, Roles. You can enter it as a string or as a file, e.g., --body @mongo-user_definition-body-file.json or --body "{"Id": "be79875a-2cc4-40d5-8958-566017875b39","UserName": "MyUserName","Password": "MyPass","CustomData": "MyCustomData","Mechanisms": "SCRAM-SHA-256""DatabaseName": "MyDb","Roles": [ {"Role": "myReadRole","Db": "MyDb"}]}"',
                      args: [
                        Arg(
                        name: 'bod'
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
        )
      ]
    ),
    Subcommand(
      name: 'network-rule',
      description: 'Manage Azure Cosmos DB network rules',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Adds a virtual network rule to an existing Cosmos DB database account',
          options: [

            Option(
              name: '--subnet',
              description: 'Name or ID of the subnet',
              args: [
                Arg(
                name: 'subne'
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
              name: [
                '--ignore-missing-vnet-service-endpoint',
                '--ignore-missing-endpoint',
              ],
              description: 'Create firewall rule before the virtual network has vnet service endpoint enabled'
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Cosmos DB database account',
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
              name: ['--virtual-network', '--vnet-name'],
              description: 'The name of the VNET, which must be provided in conjunction with the name of the subnet',
              args: [
                Arg(
                name: 'virtual-networ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the virtual network accounts associated with a Cosmos DB account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Cosmos DB database account',
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
          name: 'remove',
          description: 'Remove a virtual network rule from an existing Cosmos DB database account',
          options: [

            Option(
              name: '--subnet',
              description: 'Name or ID of the subnet',
              args: [
                Arg(
                name: 'subne'
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
              description: 'Name of the Cosmos DB database account',
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
              name: ['--virtual-network', '--vnet-name'],
              description: 'The name of the VNET, which must be provided in conjunction with the name of the subnet',
              args: [
                Arg(
                name: 'virtual-networ'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'postgres',
      description: 'Manage Azure Cosmos DB for PostgreSQL resources',
      subcommands: [

        Subcommand(
          name: 'check-name-availability',
          description: 'Checks availability of a cluster name. Cluster names should be globally unique; at least 3 characters and at most 40 characters long; they must only contain lowercase letters, numbers, and hyphens; and must not start or end with a hyphen',
          options: [

            Option(
              name: '--name',
              description: 'Cluster name to verify',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Resource type used for verification',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'Microsoft.DBforPostgreSQL/serverGroupsv2')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cluster',
          description: 'Manage Azure Cosmos DB for PostgreSQL clusters',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new cluster with nodes',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'The name of the cluster',
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
                  name: ['--administrator-login-password', '--login-password'],
                  description: 'The password of the administrator login. Required for creation. If value is blank it\'s asked from the tty',
                  args: [
                    Arg(
                    name: 'administrator-login-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--citus-version',
                  description: 'The Citus extension version on all cluster servers',
                  args: [
                    Arg(
                    name: 'citus-versio'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--coordinator-enable-public-ip-access',
                    '--coord-public-ip-access',
                  ],
                  description: 'If public access is enabled on coordinator',
                  args: [
                    Arg(
                    name: 'coordinator-enable-public-ip-access',
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
                    '--coordinator-server-edition',
                    '--coord-server-edition',
                  ],
                  description: 'The edition of a coordinator server (default: GeneralPurpose). Required for creation',
                  args: [
                    Arg(
                    name: 'coordinator-server-editio'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--coordinator-storage-quota-in-mb',
                    '--coordinator-storage',
                  ],
                  description: 'The storage of a server in MB. Required for creation. See https://learn.microsoft.com/rest/api/postgresqlhsc/#values for more information',
                  args: [
                    Arg(
                    name: 'coordinator-storage-quota-in-m'
                  )
                  ]
                ),
                Option(
                  name: '--coordinator-v-cores',
                  description: 'The vCores count of a server (max: 96). Required for creation. See https://learn.microsoft.com/rest/api/postgresqlhsc/#values for more information',
                  args: [
                    Arg(
                    name: 'coordinator-v-core'
                  )
                  ]
                ),
                Option(
                  name: '--enable-ha',
                  description: 'If high availability (HA) is enabled or not for the cluster',
                  args: [
                    Arg(
                    name: 'enable-ha',
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
                    '--enable-shards-on-coordinator',
                    '--enable-shards-on-coord',
                  ],
                  description: 'If shards on coordinator is enabled or not for the cluster',
                  args: [
                    Arg(
                    name: 'enable-shards-on-coordinator',
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
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--maintenance-window',
                  description: 'Maintenance window of a cluster. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'maintenance-windo'
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
                  name: '--node-count',
                  description: 'Worker node count of the cluster. When node count is 0, it represents a single node configuration with the ability to create distributed tables on that node. 2 or more worker nodes represent multi-node configuration. Node count value cannot be 1. Required for creation',
                  args: [
                    Arg(
                    name: 'node-coun'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--node-enable-public-ip-access',
                    '--node-public-ip-access',
                  ],
                  description: 'If public access is enabled on worker nodes',
                  args: [
                    Arg(
                    name: 'node-enable-public-ip-access',
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
                  name: '--node-server-edition',
                  description: 'The edition of a node server (default: MemoryOptimized)',
                  args: [
                    Arg(
                    name: 'node-server-editio'
                  )
                  ]
                ),
                Option(
                  name: ['--node-storage-quota-in-mb', '--node-storage'],
                  description: 'The storage in MB on each worker node. See https://learn.microsoft.com/rest/api/postgresqlhsc/#values for more information',
                  args: [
                    Arg(
                    name: 'node-storage-quota-in-m'
                  )
                  ]
                ),
                Option(
                  name: '--node-v-cores',
                  description: 'The compute in vCores on each worker node (max: 104). See https://learn.microsoft.com/rest/api/postgresqlhsc/#values for more information',
                  args: [
                    Arg(
                    name: 'node-v-core'
                  )
                  ]
                ),
                Option(
                  name: '--point-in-time-utc',
                  description: 'Date and time in UTC (ISO8601 format) for cluster restore',
                  args: [
                    Arg(
                    name: 'point-in-time-ut'
                  )
                  ]
                ),
                Option(
                  name: '--postgresql-version',
                  description: 'The major PostgreSQL version on all cluster servers',
                  args: [
                    Arg(
                    name: 'postgresql-versio'
                  )
                  ]
                ),
                Option(
                  name: '--preferred-primary-zone',
                  description: 'Preferred primary availability zone (AZ) for all cluster servers',
                  args: [
                    Arg(
                    name: 'preferred-primary-zon'
                  )
                  ]
                ),
                Option(
                  name: '--source-location',
                  description: 'The Azure region of source cluster for read replica clusters',
                  args: [
                    Arg(
                    name: 'source-locatio'
                  )
                  ]
                ),
                Option(
                  name: '--source-resource-id',
                  description: 'The resource id of source cluster for read replica clusters',
                  args: [
                    Arg(
                    name: 'source-resource-i'
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
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a cluster together with nodes in it',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'The name of the cluster',
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
              description: 'List all clusters in a subscription or a resource group',
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
              name: 'promote',
              description: 'Promotes read replica cluster to an independent read-write cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
              name: 'restart',
              description: 'Restarts all nodes in the cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
              description: 'Get information about a cluster such as compute and storage configuration and cluster lifecycle metadata such as cluster creation date and time',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'The name of the cluster',
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
              name: 'start',
              description: 'Starts stopped compute on all cluster nodes',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
              name: 'stop',
              description: 'Stops compute on all cluster nodes',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
              name: 'update',
              description: 'Update an existing cluster. The request body can contain one or several properties from the cluster definition',
              options: [

                Option(
                  name: ['--administrator-login-password', '--login-password'],
                  description: 'The password of the administrator login. Required for creation. If value is blank it\'s asked from the tty',
                  args: [
                    Arg(
                    name: 'administrator-login-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--citus-version',
                  description: 'The Citus extension version on all cluster servers',
                  args: [
                    Arg(
                    name: 'citus-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--coordinator-enable-public-ip-access',
                    '--coord-public-ip-access',
                  ],
                  description: 'If public access is enabled on coordinator',
                  args: [
                    Arg(
                    name: 'coordinator-enable-public-ip-access',
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
                    '--coordinator-server-edition',
                    '--coord-server-edition',
                  ],
                  description: 'The edition of a coordinator server (default: GeneralPurpose). Required for creation',
                  args: [
                    Arg(
                    name: 'coordinator-server-editio'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--coordinator-storage-quota-in-mb',
                    '--coordinator-storage',
                  ],
                  description: 'The storage of a server in MB. Required for creation. See https://learn.microsoft.com/rest/api/postgresqlhsc/#values for more information',
                  args: [
                    Arg(
                    name: 'coordinator-storage-quota-in-m'
                  )
                  ]
                ),
                Option(
                  name: '--coordinator-v-cores',
                  description: 'The vCores count of a server (max: 96). Required for creation. See https://learn.microsoft.com/rest/api/postgresqlhsc/#values for more information',
                  args: [
                    Arg(
                    name: 'coordinator-v-core'
                  )
                  ]
                ),
                Option(
                  name: '--enable-ha',
                  description: 'If high availability (HA) is enabled or not for the cluster',
                  args: [
                    Arg(
                    name: 'enable-ha',
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
                    '--enable-shards-on-coordinator',
                    '--enable-shards-on-coord',
                  ],
                  description: 'If shards on coordinator is enabled or not for the cluster',
                  args: [
                    Arg(
                    name: 'enable-shards-on-coordinator',
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
                  name: '--maintenance-window',
                  description: 'Maintenance window of a cluster. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'maintenance-windo'
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
                  name: '--node-count',
                  description: 'Worker node count of the cluster. When node count is 0, it represents a single node configuration with the ability to create distributed tables on that node. 2 or more worker nodes represent multi-node configuration. Node count value cannot be 1',
                  args: [
                    Arg(
                    name: 'node-coun'
                  )
                  ]
                ),
                Option(
                  name: '--node-server-edition',
                  description: 'The edition of a node server (default: MemoryOptimized)',
                  args: [
                    Arg(
                    name: 'node-server-editio'
                  )
                  ]
                ),
                Option(
                  name: ['--node-storage-quota-in-mb', '--node-storage'],
                  description: 'The storage in MB on each worker node. See https://learn.microsoft.com/rest/api/postgresqlhsc/#values for more information',
                  args: [
                    Arg(
                    name: 'node-storage-quota-in-m'
                  )
                  ]
                ),
                Option(
                  name: '--node-v-cores',
                  description: 'The compute in vCores on each worker node (max: 104). See https://learn.microsoft.com/rest/api/postgresqlhsc/#values for more information',
                  args: [
                    Arg(
                    name: 'node-v-core'
                  )
                  ]
                ),
                Option(
                  name: '--postgresql-version',
                  description: 'The major PostgreSQL version on all cluster servers',
                  args: [
                    Arg(
                    name: 'postgresql-versio'
                  )
                  ]
                ),
                Option(
                  name: '--preferred-primary-zone',
                  description: 'Preferred primary availability zone (AZ) for all cluster servers',
                  args: [
                    Arg(
                    name: 'preferred-primary-zon'
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
                  description: 'Application-specific metadata in the form of key-value pairs. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              description: 'Place the CLI in a waiting state until a condition is met',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'The name of the cluster',
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
              name: 'server',
              description: 'Manage Azure Cosmos DB for PostgreSQL cluster servers',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List nodes of a cluster',
                  options: [

                    Option(
                      name: '--cluster-name',
                      description: 'The name of the cluster',
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
                  name: 'show',
                  description: 'Get information about a node in cluster',
                  options: [

                    Option(
                      name: '--cluster-name',
                      description: 'The name of the cluster',
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
                      name: ['--server-name', '--name', '-n'],
                      description: 'The name of the server',
                      args: [
                        Arg(
                        name: 'server-nam'
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
        ),
        Subcommand(
          name: 'configuration',
          description: 'Manage Azure Cosmos DB for PostgreSQL configurations',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the configurations of a cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
              name: 'show',
              description: 'Get information of a configuration for coordinator and nodes',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--configuration-name', '--name', '-n'],
                  description: 'The name of the cluster configuration',
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
              name: 'coordinator',
              description: 'Manage Azure Cosmos DB for PostgreSQL coordinator configurations',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Get information of a configuration for coordinator',
                  options: [

                    Option(
                      name: '--cluster-name',
                      description: 'The name of the cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--configuration-name', '--name', '-n'],
                      description: 'The name of the cluster configuration',
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
                  description: 'Updates configuration of coordinator in a cluster',
                  options: [

                    Option(
                      name: '--cluster-name',
                      description: 'The name of the cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--configuration-name', '--name', '-n'],
                      description: 'The name of the cluster configuration',
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
                      name: '--value',
                      description: 'Value of the configuration',
                      args: [
                        Arg(
                        name: 'valu'
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
                      name: '--cluster-name',
                      description: 'The name of the cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--configuration-name', '--name', '-n'],
                      description: 'The name of the cluster configuration',
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
              name: 'node',
              description: 'Manage Azure Cosmos DB for PostgreSQL node configurations',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Get information of a configuration for worker nodes',
                  options: [

                    Option(
                      name: '--cluster-name',
                      description: 'The name of the cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--configuration-name', '--name', '-n'],
                      description: 'The name of the cluster configuration',
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
                  description: 'Updates configuration of worker nodes in a cluster',
                  options: [

                    Option(
                      name: '--cluster-name',
                      description: 'The name of the cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--configuration-name', '--name', '-n'],
                      description: 'The name of the cluster configuration',
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
                      name: '--value',
                      description: 'Value of the configuration',
                      args: [
                        Arg(
                        name: 'valu'
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
                      name: '--cluster-name',
                      description: 'The name of the cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--configuration-name', '--name', '-n'],
                      description: 'The name of the cluster configuration',
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
              name: 'server',
              description: 'Manage Azure Cosmos DB for PostgreSQL server configurations',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List all the configurations of a server in cluster',
                  options: [

                    Option(
                      name: '--cluster-name',
                      description: 'The name of the cluster',
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
                      name: '--server-name',
                      description: 'The name of the server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'firewall-rule',
          description: 'Manage Azure Cosmos DB for PostgreSQL firewall rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new cluster firewall rule or updates an existing cluster firewall rule',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--end-ip-address',
                  description: 'The end IP address of the cluster firewall rule. Must be IPv4 format',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--firewall-rule-name', '--name', '-n'],
                  description: 'The name of the cluster firewall rule',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
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
                  name: '--start-ip-address',
                  description: 'The start IP address of the cluster firewall rule. Must be IPv4 format',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
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
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a cluster firewall rule',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--firewall-rule-name', '--name', '-n'],
                  description: 'The name of the cluster firewall rule',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
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
              description: 'List all the firewall rules on cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
              name: 'show',
              description: 'Get information about a cluster firewall rule',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--firewall-rule-name', '--name', '-n'],
                  description: 'The name of the cluster firewall rule',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
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
              description: 'Update an existing cluster firewall rule',
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
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--end-ip-address',
                  description: 'The end IP address of the cluster firewall rule. Must be IPv4 format',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--firewall-rule-name', '--name', '-n'],
                  description: 'The name of the cluster firewall rule',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
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
                  name: '--start-ip-address',
                  description: 'The start IP address of the cluster firewall rule. Must be IPv4 format',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
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
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
                  name: ['--firewall-rule-name', '--name', '-n'],
                  description: 'The name of the cluster firewall rule',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
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
          name: 'role',
          description: 'Manage Azure Cosmos DB for PostgreSQL roles',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new role or updates an existing role',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--role-name', '--name', '-n'],
                  description: 'The name of the cluster role',
                  args: [
                    Arg(
                    name: 'role-nam'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The password of the cluster role. If value is blank it\'s asked from the tty',
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
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a cluster role',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
                  name: ['--role-name', '--name', '-n'],
                  description: 'The name of the cluster role',
                  args: [
                    Arg(
                    name: 'role-nam'
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
              description: 'List all the roles in a given cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
              name: 'show',
              description: 'Get information about a cluster role',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
                  name: ['--role-name', '--name', '-n'],
                  description: 'The name of the cluster role',
                  args: [
                    Arg(
                    name: 'role-nam'
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
              description: 'Update an existing role',
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
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--role-name', '--name', '-n'],
                  description: 'The name of the cluster role',
                  args: [
                    Arg(
                    name: 'role-nam'
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
                  name: '--password',
                  description: 'The password of the cluster role. If value is blank it\'s asked from the tty',
                  args: [
                    Arg(
                    name: 'passwor'
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
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
                  name: ['--role-name', '--name', '-n'],
                  description: 'The name of the cluster role',
                  args: [
                    Arg(
                    name: 'role-nam'
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
    ),
    Subcommand(
      name: 'private-endpoint-connection',
      description: 'Manage Azure Cosmos DB private endpoint connections',
      subcommands: [

        Subcommand(
          name: 'approve',
          description: 'Approve the specified private endpoint connection associated with Azure Cosmos DB',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account. Required if --connection-id is not specified',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Comments for the approve operation',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with Azure Cosmos DB. If specified --account-name --resource-group/-g and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
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
              description: 'The name of the private endpoint connection associated with Azure Cosmos DB. Required if --connection-id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name of specified Cosmos DB account. Required if --connection-id is not specified',
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
          description: 'Delete the specified private endpoint connection associated with Azure Cosmos DB',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account. Required if --connection-id is not specified',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with Azure Cosmos DB. If specified --account-name --resource-group/-g and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
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
              description: 'The name of the private endpoint connection associated with Azure Cosmos DB. Required if --connection-id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name of specified Cosmos DB account. Required if --connection-id is not specified',
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
          name: 'reject',
          description: 'Reject the specified private endpoint connection associated with Azure Cosmos DB',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account. Required if --connection-id is not specified',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Comments for the reject operation',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with Azure Cosmos DB. If specified --account-name --resource-group/-g and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
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
              description: 'The name of the private endpoint connection associated with Azure Cosmos DB. Required if --connection-id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name of specified Cosmos DB account. Required if --connection-id is not specified',
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
          description: 'Show details of a private endpoint connection associated with Azure Cosmos DB',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account. Required if --connection-id is not specified',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with Azure Cosmos DB. If specified --account-name --resource-group/-g and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
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
              description: 'The name of the private endpoint connection associated with Azure Cosmos DB. Required if --connection-id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name of specified Cosmos DB account. Required if --connection-id is not specified',
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
      name: 'private-link-resource',
      description: 'Manage Azure Cosmos DB private link resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the private link resources supported for Azure Cosmos DB',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Cosmosdb account name',
              args: [
                Arg(
                name: 'account-nam'
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
      name: 'restorable-database-account',
      description: 'Manage restorable Azure Cosmos DB accounts',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all the database accounts that can be restored',
          options: [

            Option(
              name: ['--account-name', '-n'],
              description: 'Name of the Account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of a database account that can be restored',
          options: [

            Option(
              name: ['--instance-id', '-i'],
              description: 'InstanceId of the Account',
              args: [
                Arg(
                name: 'instance-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'service',
      description: 'Commands to perform operations on Service',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a cosmosdb service resource',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Service Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group of the database account',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: ['--count', '-c'],
              description: 'Instance Count',
              args: [
                Arg(
                name: 'coun'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--size',
              description: 'Instance Size. Possible values are: Cosmos.D4s, Cosmos.D8s, Cosmos.D16s etc',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the given cosmosdb service resource',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Service Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group of the database account',
              args: [
                Arg(
                name: 'resource-group-nam'
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
          description: 'List all cosmosdb service resource under an account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group of the database account',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get cosmosdb service resource under an account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Service Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group of the database account',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a cosmosdb service resource',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the Cosmos DB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--count', '-c'],
              description: 'Instance Count',
              args: [
                Arg(
                name: 'coun'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Service Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group-name', '-g'],
              description: 'Name of the resource group of the database account',
              args: [
                Arg(
                name: 'resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--size',
              description: 'Instance Size. Possible values are: Cosmos.D4s, Cosmos.D8s, Cosmos.D16s etc',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sql',
      description: 'Manage SQL resources of Azure Cosmos DB account',
      subcommands: [

        Subcommand(
          name: 'retrieve-latest-backup-time',
          description: 'Retrieves latest restorable timestamp for the given sql container in given region',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the CosmosDB Sql container name',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: ['--database-name', '-d'],
              description: 'Name of the CosmosDB Sql database name',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the account',
              args: [
                Arg(
                name: 'locatio'
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
          name: 'container',
          description: 'Manage Azure Cosmos DB SQL containers',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an SQL container under an Azure Cosmos DB SQL database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--partition-key-path', '-p'],
                  description: 'Partition Key Path, e.g., \'/address/zipcode\'',
                  args: [
                    Arg(
                    name: 'partition-key-pat'
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
                  name: ['--analytical-storage-ttl', '-t'],
                  description: 'Analytical TTL, when analytical storage is enabled',
                  args: [
                    Arg(
                    name: 'analytical-storage-tt'
                  )
                  ]
                ),
                Option(
                  name: '--cep',
                  description: 'Client Encryption Policy, you can enter it as a string or as a file, e.g., --cep @policy-file.json or --cep "{"includedPaths": [{"path": "/path1","clientEncryptionKeyId": "key1","encryptionAlgorithm": "AEAD_AES_256_CBC_HMAC_SHA256","encryptionType": "Deterministic"}],"policyFormatVersion": 2}"',
                  args: [
                    Arg(
                    name: 'ce'
                  )
                  ]
                ),
                Option(
                  name: ['--conflict-resolution-policy', '-c'],
                  description: 'Conflict Resolution Policy, you can enter it as a string or as a file, e.g., --conflict-resolution-policy @policy-file.json or --conflict-resolution-policy "{"mode": "lastWriterWins", "conflictResolutionPath": "/path"}"',
                  args: [
                    Arg(
                    name: 'conflict-resolution-polic'
                  )
                  ]
                ),
                Option(
                  name: '--idx',
                  description: 'Indexing Policy, you can enter it as a string or as a file, e.g., --idx @policy-file.json or --idx "{"indexingMode": "consistent", "automatic": true, "includedPaths": [{"path": "/*"}], "excludedPaths": [{ "path": "/headquarters/employees/?"}, { "path": "/\\"_etag\\"/?"}]}". "indexingMode": "consistent", "automatic": true, "includedPaths": [ { "path": "/*" } ], "excludedPaths": [ { "path": "/\\"_etag\\"/?" } ] }',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--partition-key-version',
                  description: 'The version of partition key',
                  args: [
                    Arg(
                    name: 'partition-key-versio'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput of SQL container (RU/s). Default value is 400. Omit this parameter if the database has shared throughput unless the container should have dedicated throughput',
                  args: [
                    Arg(
                    name: 'throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--ttl',
                  description: 'Default TTL. If the value is missing or set to "-1", items don’t expire. If the value is set to "n", items will expire "n" seconds after last modified time',
                  args: [
                    Arg(
                    name: 'tt'
                  )
                  ]
                ),
                Option(
                  name: ['--unique-key-policy', '-u'],
                  description: 'Unique Key Policy, you can enter it as a string or as a file, e.g., --unique-key-policy @policy-file.json or --unique-key-policy "{"uniqueKeys": [{"paths": ["/path/to/key1"]}, {"paths": ["/path/to/key2"]}]}"',
                  args: [
                    Arg(
                    name: 'unique-key-polic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the SQL container under an Azure Cosmos DB SQL database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Container name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'exists',
              description: 'Checks if an Azure Cosmos DB SQL container exists',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Container name',
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
              description: 'List the SQL containers under an Azure Cosmos DB SQL database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
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
              name: 'merge',
              description: 'Merges the partitions of a sql container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the CosmosDB database account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Name of the CosmosDB database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CosmosDB collection',
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
              name: 'redistribute-partition-throughput',
              description: 'Redistributes the partition throughput of a sql container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the CosmosDB database account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Name of the CosmosDB database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CosmosDB collection',
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
                  name: '--evenly-distribute',
                  description: 'Switch to distribute throughput equally among all physical partitions'
                ),
                Option(
                  name: '--source-partition-info',
                  description: 'Space separated source physical partition ids eg: 1 2',
                  args: [
                    Arg(
                    name: 'source-partition-inf'
                  )
                  ]
                ),
                Option(
                  name: '--target-partition-info',
                  description: 'Information about desired target physical partition throughput eg: 0=1200 1=1200',
                  args: [
                    Arg(
                    name: 'target-partition-inf'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore',
              description: 'Restore a deleted sql container within the same account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Container name',
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
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp to which the container needs to be restored to',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'retrieve-partition-throughput',
              description: 'Retrieve  the partition throughput of a sql container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the CosmosDB database account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Name of the CosmosDB database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CosmosDB container',
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
                  name: '--all-partitions',
                  description: 'Switch to retrieve throughput for all physical partitions'
                ),
                Option(
                  name: ['--physical-partition-ids', '-p'],
                  description: 'Space separated list of physical partition ids',
                  args: [
                    Arg(
                    name: 'physical-partition-id'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a SQL container under an Azure Cosmos DB SQL database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Container name',
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
              description: 'Update an SQL container under an Azure Cosmos DB SQL database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Container name',
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
                  name: ['--analytical-storage-ttl', '-t'],
                  description: 'Analytical TTL, when analytical storage is enabled',
                  args: [
                    Arg(
                    name: 'analytical-storage-tt'
                  )
                  ]
                ),
                Option(
                  name: '--idx',
                  description: 'Indexing Policy, you can enter it as a string or as a file, e.g., --idx @policy-file.json or --idx "{"indexingMode": "consistent", "automatic": true, "includedPaths": [{"path": "/*"}], "excludedPaths": [{ "path": "/headquarters/employees/?"}, { "path": "/\\"_etag\\"/?"}]}"',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--ttl',
                  description: 'Default TTL. If the value is missing or set to "-1", items don’t expire. If the value is set to "n", items will expire "n" seconds after last modified time',
                  args: [
                    Arg(
                    name: 'tt'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'throughput',
              description: 'Manage throughput of SQL container under an Azure Cosmos DB account',
              subcommands: [

                Subcommand(
                  name: 'migrate',
                  description: 'Migrate the throughput of the SQL container between autoscale and manually provisioned',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Container name',
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
                      name: ['--throughput-type', '-t'],
                      description: 'The type of throughput to migrate to',
                      args: [
                        Arg(
                        name: 'throughput-type',
                        suggestions: [

                          FigSuggestion(name: 'autoscale'),
                          FigSuggestion(name: 'manual')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the throughput of the SQL container under an Azure Cosmos DB SQL database',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Container name',
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
                  description: 'Update the throughput of the SQL container under an Azure Cosmos DB SQL database',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--database-name', '-d'],
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Container name',
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
                      name: '--max-throughput',
                      description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                      args: [
                        Arg(
                        name: 'max-throughpu'
                      )
                      ]
                    ),
                    Option(
                      name: '--throughput',
                      description: 'The throughput of SQL container (RU/s)',
                      args: [
                        Arg(
                        name: 'throughpu'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'database',
          description: 'Manage Azure Cosmos DB SQL databases',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an SQL database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput of SQL database (RU/s). Default value is 400',
                  args: [
                    Arg(
                    name: 'throughpu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the SQL database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'exists',
              description: 'Checks if an Azure Cosmos DB SQL database exists',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
              description: 'List the SQL databases under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
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
              name: 'merge',
              description: 'Merge the partitions of a sql database',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the CosmosDB database account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CosmosDB database name',
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
              name: 'restore',
              description: 'Restore a deleted sql database within the same account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp to which the database needs to be restored to',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a SQL database under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Database name',
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
              name: 'throughput',
              description: 'Manage throughput of SQL database under an Azure Cosmos DB account',
              subcommands: [

                Subcommand(
                  name: 'migrate',
                  description: 'Migrate the throughput of the SQL database between autoscale and manually provisioned',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                      name: ['--throughput-type', '-t'],
                      description: 'The type of throughput to migrate to',
                      args: [
                        Arg(
                        name: 'throughput-type',
                        suggestions: [

                          FigSuggestion(name: 'autoscale'),
                          FigSuggestion(name: 'manual')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the throughput of the SQL database under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                  description: 'Update the throughput of the SQL database under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Database name',
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
                      name: '--max-throughput',
                      description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                      args: [
                        Arg(
                        name: 'max-throughpu'
                      )
                      ]
                    ),
                    Option(
                      name: '--throughput',
                      description: 'The throughput of SQL database (RU/s)',
                      args: [
                        Arg(
                        name: 'throughpu'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-container',
          description: 'Manage different versions of sql containers that are restorable in a database of a Azure Cosmos DB account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the versions of all the sql containers that were created / modified / deleted in the given database and restorable account',
              options: [

                Option(
                  name: ['--database-rid', '-d'],
                  description: 'Rid of the database',
                  args: [
                    Arg(
                    name: 'database-ri'
                  )
                  ]
                ),
                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--end-time', '-e'],
                  description: 'End time of restorable Sql container event feed',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--start-time', '-s'],
                  description: 'Start time of restorable Sql container event feed',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-database',
          description: 'Manage different versions of sql databases that are restorable in a Azure Cosmos DB account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the versions of all the sql databases that were created / modified / deleted in the given restorable account',
              options: [

                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-resource',
          description: 'Manage the databases and its containers that can be restored in the given account at the given timesamp and region',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the databases and its containers that can be restored in the given account at the given timesamp and region',
              options: [

                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Azure Location of the account',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--restore-location', '-r'],
                  description: 'The region of the restore',
                  args: [
                    Arg(
                    name: 'restore-locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp of the restore',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'role',
          description: 'Manage Azure Cosmos DB SQL role resources',
          subcommands: [

            Subcommand(
              name: 'assignment',
              description: 'Manage Azure Cosmos DB SQL role assignments',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a SQL role assignment under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--principal-id', '-p'],
                      description: 'AAD Object ID of the principal to which this Role Assignment is being granted',
                      args: [
                        Arg(
                        name: 'principal-i'
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
                      name: ['--scope', '-s'],
                      description: 'Data plane resource path at which this Role Assignment is being granted',
                      args: [
                        Arg(
                        name: 'scop'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--role-assignment-id', '-i'],
                      description: 'Optional for Create. Unique ID for the Role Assignment. If not provided, a new GUID will be used',
                      args: [
                        Arg(
                        name: 'role-assignment-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--role-definition-id', '-d'],
                      description: 'Unique ID of the Role Definition that this Role Assignment refers to',
                      args: [
                        Arg(
                        name: 'role-definition-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--role-definition-name', '-n'],
                      description: 'Unique Name of the Role Definition that this Role Assignment refers to. Eg. \'Contoso Reader Role\'',
                      args: [
                        Arg(
                        name: 'role-definition-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a SQL role assignment under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                      name: ['--role-assignment-id', '-i'],
                      description: 'Optional for Create. Unique ID for the Role Assignment. If not provided, a new GUID will be used',
                      args: [
                        Arg(
                        name: 'role-assignment-i'
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
                  name: 'exists',
                  description: 'Check if an Azure Cosmos DB role assignment exists',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                      name: ['--role-assignment-id', '-i'],
                      description: 'Optional for Create. Unique ID for the Role Assignment. If not provided, a new GUID will be used',
                      args: [
                        Arg(
                        name: 'role-assignment-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List all SQL role assignments under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                  description: 'Show the properties of a SQL role assignment under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                      name: ['--role-assignment-id', '-i'],
                      description: 'Optional for Create. Unique ID for the Role Assignment. If not provided, a new GUID will be used',
                      args: [
                        Arg(
                        name: 'role-assignment-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a SQL role assignment under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                      name: ['--role-assignment-id', '-i'],
                      description: 'Optional for Create. Unique ID for the Role Assignment. If not provided, a new GUID will be used',
                      args: [
                        Arg(
                        name: 'role-assignment-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--principal-id', '-p'],
                      description: 'AAD Object ID of the principal to which this Role Assignment is being granted',
                      args: [
                        Arg(
                        name: 'principal-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--role-definition-id', '-d'],
                      description: 'Unique ID of the Role Definition that this Role Assignment refers to',
                      args: [
                        Arg(
                        name: 'role-definition-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--role-definition-name', '-n'],
                      description: 'Unique Name of the Role Definition that this Role Assignment refers to. Eg. \'Contoso Reader Role\'',
                      args: [
                        Arg(
                        name: 'role-definition-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--scope', '-s'],
                      description: 'Data plane resource path at which this Role Assignment is being granted',
                      args: [
                        Arg(
                        name: 'scop'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'wait',
                  description: 'Poll on a SQL role assignment until a specific condition is met',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                      name: ['--role-assignment-id', '-i'],
                      description: 'Optional for Create. Unique ID for the Role Assignment. If not provided, a new GUID will be used',
                      args: [
                        Arg(
                        name: 'role-assignment-i'
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
              name: 'definition',
              description: 'Manage Azure Cosmos DB SQL role definitions',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a SQL role definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--body', '-b'],
                      description: 'Role Definition body with Id (Optional for create), DataActions or Permissions, Type (Default is CustomRole), and AssignableScopes. You can enter it as a string or as a file, e.g., --body @rdbody-file.json or --body "{ "Id": "be79875a-2cc4-40d5-8958-566017875b39", "RoleName": "My Read Write Role", "Type": "CustomRole", "AssignableScopes": [ "/" ], "DataActions": [ "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create", "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read" ]}"',
                      args: [
                        Arg(
                        name: 'bod'
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
                  name: 'delete',
                  description: 'Delete a SQL role definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Role Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                    ),
                    Option(
                      name: ['--yes', '-y'],
                      description: 'Do not prompt for confirmation'
                    )
                  ]
                ),
                Subcommand(
                  name: 'exists',
                  description: 'Check if an Azure Cosmos DB role definition exists',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Role Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                  description: 'List all SQL role definitions under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                  description: 'Show the properties of a SQL role definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Role Definition',
                      args: [
                        Arg(
                        name: 'i'
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
                  description: 'Update a SQL role definition under an Azure Cosmos DB account',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--body', '-b'],
                      description: 'Role Definition body with Id (Optional for create), DataActions or Permissions, Type (Default is CustomRole), and AssignableScopes. You can enter it as a string or as a file, e.g., --body @rdbody-file.json or --body "{ "Id": "be79875a-2cc4-40d5-8958-566017875b39", "RoleName": "My Read Write Role", "Type": "CustomRole", "AssignableScopes": [ "/" ], "DataActions": [ "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create", "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read" ]}"',
                      args: [
                        Arg(
                        name: 'bod'
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
                  name: 'wait',
                  description: 'Poll on a SQL role definition until a specific condition is met',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'Cosmosdb account name',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--id', '-i'],
                      description: 'Unique ID for the Role Definition',
                      args: [
                        Arg(
                        name: 'i'
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
            )
          ]
        ),
        Subcommand(
          name: 'stored-procedure',
          description: 'Manage Azure Cosmos DB SQL stored procedures',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an SQL stored procedure under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--body', '-b'],
                  description: 'StoredProcedure body, you can enter it as a string or as a file, e.g., --body @sprocbody-file.json',
                  args: [
                    Arg(
                    name: 'bod'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'StoredProcedure name',
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
              name: 'delete',
              description: 'Delete the SQL stored procedure under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'StoredProcedure name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the SQL stored procedures under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
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
              description: 'Show the details of a SQL stored procedure under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'StoredProcedure name',
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
              description: 'Creates or Updates an Azure Cosmos DB SQL stored procedure',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--body', '-b'],
                  description: 'StoredProcedure body, you can enter it as a string or as a file, e.g., --body @sprocbody-file.json',
                  args: [
                    Arg(
                    name: 'bod'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'StoredProcedure name',
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
          name: 'trigger',
          description: 'Manage Azure Cosmos DB SQL triggers',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an SQL trigger under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--body', '-b'],
                  description: 'Trigger body, you can enter it as a string or as a file, e.g., --body @triggerbody-file.json',
                  args: [
                    Arg(
                    name: 'bod'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Trigger name',
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
                  name: '--operation',
                  description: 'The operation of the trigger',
                  args: [
                    Arg(
                    name: 'operation',
                    suggestions: [

                      FigSuggestion(name: 'All'),
                      FigSuggestion(name: 'Create'),
                      FigSuggestion(name: 'Delete'),
                      FigSuggestion(name: 'Replace'),
                      FigSuggestion(name: 'Update')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--type', '-t'],
                  description: 'Trigger type',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'Post'),
                      FigSuggestion(name: 'Pre')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the SQL trigger under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Trigger name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the SQL triggers under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
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
              description: 'Show the details of a SQL trigger under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Trigger name',
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
              description: 'Updates an Azure Cosmos DB SQL trigger',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Trigger name',
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
                  name: ['--body', '-b'],
                  description: 'Trigger body, you can enter it as a string or as a file, e.g., --body @triggerbody-file.json',
                  args: [
                    Arg(
                    name: 'bod'
                  )
                  ]
                ),
                Option(
                  name: '--operation',
                  description: 'The operation of the trigger',
                  args: [
                    Arg(
                    name: 'operation',
                    suggestions: [

                      FigSuggestion(name: 'All'),
                      FigSuggestion(name: 'Create'),
                      FigSuggestion(name: 'Delete'),
                      FigSuggestion(name: 'Replace'),
                      FigSuggestion(name: 'Update')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--type', '-t'],
                  description: 'Trigger type',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'Post'),
                      FigSuggestion(name: 'Pre')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'user-defined-function',
          description: 'Manage Azure Cosmos DB SQL user defined functions',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an SQL user defined function under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--body', '-b'],
                  description: 'UserDefinedFunction body, you can enter it as a string or as a file, e.g., --body @udfbody-file.json',
                  args: [
                    Arg(
                    name: 'bod'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'UserDefinedFunction name',
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
              name: 'delete',
              description: 'Delete the SQL user defined function under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'UserDefinedFunction name',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the SQL user defined functions under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
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
              description: 'Show the details of a SQL user defined function under an Azure Cosmos DB SQL container',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'UserDefinedFunction name',
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
              description: 'Creates or Updates an Azure Cosmos DB SQL user defined function',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--body', '-b'],
                  description: 'UserDefinedFunction body, you can enter it as a string or as a file, e.g., --body @udfbody-file.json',
                  args: [
                    Arg(
                    name: 'bod'
                  )
                  ]
                ),
                Option(
                  name: ['--container-name', '-c'],
                  description: 'Container name',
                  args: [
                    Arg(
                    name: 'container-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'Database name',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'UserDefinedFunction name',
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
    ),
    Subcommand(
      name: 'table',
      description: 'Manage Table resources of Azure Cosmos DB account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an Table under an Azure Cosmos DB account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Cosmosdb account name',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Table name',
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
              name: '--max-throughput',
              description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
              args: [
                Arg(
                name: 'max-throughpu'
              )
              ]
            ),
            Option(
              name: '--throughput',
              description: 'The throughput of Table (RU/s). Default value is 400',
              args: [
                Arg(
                name: 'throughpu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Table under an Azure Cosmos DB account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Cosmosdb account name',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Table name',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'exists',
          description: 'Checks if an Azure Cosmos DB table exists',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Cosmosdb account name',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Table name',
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
          description: 'List the Tables under an Azure Cosmos DB account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Cosmosdb account name',
              args: [
                Arg(
                name: 'account-nam'
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
          name: 'restore',
          description: 'Restore a deleted table within the same account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Cosmosdb account name',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--restore-timestamp', '-t'],
              description: 'The timestamp to which the Table needs to be restored to',
              args: [
                Arg(
                name: 'restore-timestam'
              )
              ]
            ),
            Option(
              name: ['--table-name', '-n'],
              description: 'Name of the CosmosDB Table name',
              args: [
                Arg(
                name: 'table-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'retrieve-latest-backup-time',
          description: 'Retrieves latest restorable timestamp for the given table in given region',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the CosmosDB database account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the account',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--table-name', '-n'],
              description: 'Name of the CosmosDB Table name',
              args: [
                Arg(
                name: 'table-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of a Table under an Azure Cosmos DB account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Cosmosdb account name',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Table name',
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
          name: 'restorable-resource',
          description: 'Manage the tables that can be restored in the given account at the given timestamp and region',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the tables that can be restored in the given account at the given timestamp and region',
              options: [

                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Azure Location of the account',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--restore-location', '-r'],
                  description: 'The region of the restore',
                  args: [
                    Arg(
                    name: 'restore-locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--restore-timestamp', '-t'],
                  description: 'The timestamp of the restore',
                  args: [
                    Arg(
                    name: 'restore-timestam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restorable-table',
          description: 'Manage different versions of tables that are restorable in Azure Cosmos DB account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the versions of all the tables that were created / modified / deleted in the given restorable account',
              options: [

                Option(
                  name: ['--instance-id', '-i'],
                  description: 'InstanceId of the Account',
                  args: [
                    Arg(
                    name: 'instance-i'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--end-time', '-e'],
                  description: 'End time of restorable tables event feed',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--start-time', '-s'],
                  description: 'Start time of restorable tables event feed',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'throughput',
          description: 'Manage throughput of Table under an Azure Cosmos DB account',
          subcommands: [

            Subcommand(
              name: 'migrate',
              description: 'Migrate the throughput of the Table between autoscale and manually provisioned',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Table name',
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
                  name: ['--throughput-type', '-t'],
                  description: 'The type of throughput to migrate to',
                  args: [
                    Arg(
                    name: 'throughput-type',
                    suggestions: [

                      FigSuggestion(name: 'autoscale'),
                      FigSuggestion(name: 'manual')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the throughput of the Table under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Table name',
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
              description: 'Update the throughput of the Table under an Azure Cosmos DB account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Cosmosdb account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Table name',
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
                  name: '--max-throughput',
                  description: 'The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s)',
                  args: [
                    Arg(
                    name: 'max-throughpu'
                  )
                  ]
                ),
                Option(
                  name: '--throughput',
                  description: 'The throughput of Table (RU/s)',
                  args: [
                    Arg(
                    name: 'throughpu'
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
