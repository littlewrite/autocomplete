// Auto-generated from TypeScript source: servicebus.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `servicebus` CLI
final FigSpec servicebusSpec = FigSpec(
  name: 'servicebus',
  description: 'Servicebus',
  subcommands: [

    Subcommand(
      name: 'georecovery-alias',
      description: 'Manage Azure Service Bus Geo-Disaster Recovery Configuration Alias',
      subcommands: [

        Subcommand(
          name: 'break-pair',
          description: 'This operation disables the Disaster Recovery and stops replicating changes from primary to secondary namespaces',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'create',
          description: 'Create a new Alias(Disaster Recovery configuration)',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--alternate-name',
              description: 'Primary/Secondary eventhub namespace name, which is part of GEO DR pairing',
              args: [
                Arg(
                name: 'alternate-nam'
              )
              ]
            ),
            Option(
              name: '--partner-namespace',
              description: 'ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing',
              args: [
                Arg(
                name: 'partner-namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Alias(Disaster Recovery configuration)',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'exists',
          description: 'Check the give namespace name availability',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Name to check the namespace name availability and The namespace name can contain only letters, numbers, and hyphens. The namespace must start with a letter, and it must end with a letter or number',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'fail-over',
          description: 'Invokes GEO DR failover and reconfigure the alias to point to the secondary namespace',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
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
              name: '--is-safe-failover',
              description: 'Safe failover is to indicate the service should wait for pending replication to finish before switching to the secondary',
              args: [
                Arg(
                name: 'is-safe-failover',
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'List all Alias(Disaster Recovery configurations)',
          options: [

            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
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
          name: 'set',
          description: 'Sets Service Bus Geo-Disaster Recovery Configuration Alias for the give Namespace',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'Name of the Geo-Disaster Recovery Configuration Alias',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--partner-namespace',
              description: 'Name (if within the same resource group) or ARM Id of Primary/Secondary Service Bus namespace name, which is part of GEO DR pairing',
              args: [
                Arg(
                name: 'partner-namespac'
              )
              ]
            ),
            Option(
              name: '--alternate-name',
              description: 'Alternate Name (Post failover) for Primary Namespace, when Namespace name and Alias name are same',
              args: [
                Arg(
                name: 'alternate-nam'
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
              name: '--namespace-name',
              description: 'Name of Namespace',
              args: [
                Arg(
                name: 'namespace-nam'
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
          description: 'Get Alias(Disaster Recovery configuration) for primary or secondary namespace',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a new Alias(Disaster Recovery configuration)',
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
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--alternate-name',
              description: 'Primary/Secondary eventhub namespace name, which is part of GEO DR pairing',
              args: [
                Arg(
                name: 'alternate-nam'
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--partner-namespace',
              description: 'ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing',
              args: [
                Arg(
                name: 'partner-namespac'
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
          name: 'authorization-rule',
          description: 'Manage Azure Service Bus Authorization Rule for Namespace with Geo-Disaster Recovery Configuration Alias',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the authorization rules for a namespace',
              options: [

                Option(
                  name: ['--alias', '-a'],
                  description: 'The Disaster Recovery configuration name',
                  args: [
                    Arg(
                    name: 'alia'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
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
              description: 'Get an authorization rule for a namespace by rule name',
              options: [

                Option(
                  name: ['--alias', '-a'],
                  description: 'The Disaster Recovery configuration name',
                  args: [
                    Arg(
                    name: 'alia'
                  )
                  ]
                ),
                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'keys',
              description: 'Manage Azure Authorization Rule keys for Service Bus Namespace',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'Gets the primary and secondary connection strings for the namespace',
                  options: [

                    Option(
                      name: ['--alias', '-a'],
                      description: 'The Disaster Recovery configuration name',
                      args: [
                        Arg(
                        name: 'alia'
                      )
                      ]
                    ),
                    Option(
                      name: ['--authorization-rule-name', '--name', '-n'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
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
      name: 'migration',
      description: 'Manage Azure Service Bus Migration of Standard to Premium',
      subcommands: [

        Subcommand(
          name: 'abort',
          description: 'This operation reverts Migration',
          options: [

            Option(
              name: '--config-name',
              description: 'The configuration name. Should always be "\$default"',
              args: [
                Arg(
                name: 'config-name',
                suggestions: [

                  FigSuggestion(name: '\$default')
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'complete',
          description: 'This operation Completes Migration of entities by pointing the connection strings to Premium namespace and any entities created after the operation will be under Premium Namespace. CompleteMigration operation will fail when entity migration is in-progress',
          options: [

            Option(
              name: '--config-name',
              description: 'The configuration name. Should always be "\$default"',
              args: [
                Arg(
                name: 'config-name',
                suggestions: [

                  FigSuggestion(name: '\$default')
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'Delete a MigrationConfiguration',
          options: [

            Option(
              name: '--config-name',
              description: 'The configuration name. Should always be "\$default"',
              args: [
                Arg(
                name: 'config-name',
                suggestions: [

                  FigSuggestion(name: '\$default')
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'List all migrationConfigurations',
          options: [

            Option(
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
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
          description: 'Get Migration Config',
          options: [

            Option(
              name: '--config-name',
              description: 'The configuration name. Should always be "\$default"',
              args: [
                Arg(
                name: 'config-name',
                suggestions: [

                  FigSuggestion(name: '\$default')
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'Create Migration configuration and starts migration of entities from Standard to Premium namespace',
          options: [

            Option(
              name: '--config-name',
              description: 'The configuration name. Should always be "\$default"',
              args: [
                Arg(
                name: 'config-name',
                suggestions: [

                  FigSuggestion(name: '\$default')
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
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
              name: '--post-migration-name',
              description: 'Name to access Standard Namespace after migration',
              args: [
                Arg(
                name: 'post-migration-nam'
              )
              ]
            ),
            Option(
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
              name: '--target-namespace',
              description: 'Existing premium Namespace ARM Id name which has no entities, will be used for migration',
              args: [
                Arg(
                name: 'target-namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update Migration configuration and starts migration of entities from Standard to Premium namespace',
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
              name: ['--config-name', '--name', '-n'],
              description: 'The configuration name. Should always be "\$default"',
              args: [
                Arg(
                name: 'config-name',
                suggestions: [

                  FigSuggestion(name: '\$default')
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
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
              name: '--post-migration-name',
              description: 'Name to access Standard Namespace after migration',
              args: [
                Arg(
                name: 'post-migration-nam'
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
            ),
            Option(
              name: '--target-namespace',
              description: 'Existing premium Namespace ARM Id name which has no entities, will be used for migration',
              args: [
                Arg(
                name: 'target-namespac'
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
              name: '--config-name',
              description: 'The configuration name. Should always be "\$default"',
              args: [
                Arg(
                name: 'config-name',
                suggestions: [

                  FigSuggestion(name: '\$default')
                ]
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
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
      name: 'namespace',
      description: 'Servicebus namespace',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Service Bus Namespace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Namespace',
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
              name: '--alternate-name',
              description: 'Alternate name specified when alias and namespace names are same',
              args: [
                Arg(
                name: 'alternate-nam'
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'Number of message units. This property is only applicable to namespaces of Premium SKU',
              args: [
                Arg(
                name: 'capacity',
                suggestions: [

                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '16'),
                  FigSuggestion(name: '2'),
                  FigSuggestion(name: '4'),
                  FigSuggestion(name: '8')
                ]
              )
              ]
            ),
            Option(
              name: '--disable-local-auth',
              description: 'A boolean value that indicates whether SAS authentication is enabled/disabled for the Service Bus',
              args: [
                Arg(
                name: 'disable-local-auth',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--encryption-config',
              description: 'List of KeyVaultProperties objects',
              args: [
                Arg(
                name: 'encryption-confi'
              )
              ]
            ),
            Option(
              name: '--infra-encryption',
              description: 'A boolean value that indicates whether Infrastructure Encryption (Double Encryption)',
              args: [
                Arg(
                name: 'infra-encryption',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
              name: '--mi-system-assigned',
              description: 'Enable System Assigned Identity',
              args: [
                Arg(
                name: 'mi-system-assigned',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'List of User Assigned Identity ids',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--minimum-tls-version', '--min-tls'],
              description: 'The minimum TLS version for the cluster to support, e.g. 1.2',
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
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--premium-messaging-partitions', '--premium-partitions'],
              description: 'The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4',
              args: [
                Arg(
                name: 'premium-messaging-partition'
              )
              ]
            ),
            Option(
              name: ['--public-network-access', '--public-network'],
              description: 'This determines if traffic is allowed over public network. By default it is enabled. If value is SecuredByPerimeter then Inbound and Outbound communication is controlled by the network security perimeter and profile\' access rules',
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
              name: '--sku',
              description: 'Namespace SKU',
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--zone-redundant',
              description: 'Enabling this property creates a ServiceBus Zone Redundant Namespace in regions supported availability zones',
              args: [
                Arg(
                name: 'zone-redundant',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing namespace. This operation also removes all associated resources under the namespace',
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
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
              description: 'The resourceGroup name',
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
          name: 'exists',
          description: 'Check the give namespace name availability',
          options: [

            Option(
              name: '--name',
              description: 'The Name to check the namespace name availability and The namespace name can contain only letters, numbers, and hyphens. The namespace must start with a letter, and it must end with a letter or number',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all the available namespaces within the subscription by resource group & also irrespective of the resource groups',
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
          description: 'Get a description for the specified namespace',
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resourceGroup name',
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
          description: 'Update a service namespace. Once created, this namespace\'s resource manifest is immutable. This operation is idempotent',
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
              name: '--alternate-name',
              description: 'Alternate name for namespace',
              args: [
                Arg(
                name: 'alternate-nam'
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'Messaging units for your service bus premium namespace. Valid capacities are {1, 2, 4, 8, 16} multiples of your properties.premiumMessagingPartitions setting. For example, If properties.premiumMessagingPartitions is 1 then possible capacity values are 1, 2, 4, 8, and 16. If properties.premiumMessagingPartitions is 4 then possible capacity values are 4, 8, 16, 32 and 64',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: ['--private-endpoint-connections', '--connections'],
              description: 'List of private endpoint connections. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'private-endpoint-connection'
              )
              ]
            ),
            Option(
              name: '--disable-local-auth',
              description: 'This property disables SAS authentication for the Service Bus namespace',
              args: [
                Arg(
                name: 'disable-local-auth',
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
              name: '--encryption',
              description: 'Properties of BYOK Encryption description Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'encryptio'
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
              name: '--identity',
              description: 'Properties of BYOK Identity description Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'identit'
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
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
              name: ['--premium-messaging-partitions', '--premium-partitions'],
              description: 'The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4',
              args: [
                Arg(
                name: 'premium-messaging-partition'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'This determines if traffic is allowed over public network. By default it is enabled',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'SecuredByPerimeter')
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
              description: 'The resourceGroup name',
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
              description: 'Name of this SKU',
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
              name: '--tags',
              description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--tier',
              description: 'The billing tier of this particular SKU',
              args: [
                Arg(
                name: 'tier',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard')
                ]
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resourceGroup name',
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
          name: 'authorization-rule',
          description: 'Servicebus namespace authorization-rule',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an authorization rule for a namespace',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a namespace authorization rule',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List the authorization rules for a namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
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
              description: 'Get an authorization rule for a namespace by rule name',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an authorization rule for a namespace',
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
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
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
              name: 'keys',
              description: 'Servicebus namespace authorization-rule keys',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'Gets the primary and secondary connection strings for the namespace',
                  options: [

                    Option(
                      name: ['--authorization-rule-name', '--name', '-n'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
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
                  name: 'renew',
                  description: 'Regenerates the primary or secondary connection strings for the namespace',
                  options: [

                    Option(
                      name: '--key',
                      description: 'The access key to regenerate',
                      args: [
                        Arg(
                        name: 'key',
                        suggestions: [

                          FigSuggestion(name: 'PrimaryKey'),
                          FigSuggestion(name: 'SecondaryKey')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--authorization-rule-name', '--name', '-n'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
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
                      name: '--key-value',
                      description: 'Optional, if the key value provided, is reset for KeyType value or autogenerate Key value set for keyType',
                      args: [
                        Arg(
                        name: 'key-valu'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
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
          name: 'encryption',
          description: 'Manage servicebus namespace encryption properties',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add Encryption properties to a namespace',
              options: [

                Option(
                  name: '--encryption-config',
                  description: 'List of KeyVaultProperties objects',
                  args: [
                    Arg(
                    name: 'encryption-confi'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'Name of the Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--infra-encryption',
                  description: 'A boolean value that indicates whether Infrastructure Encryption (Double Encryption)',
                  args: [
                    Arg(
                    name: 'infra-encryption',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove one or more Encryption properties from a namespace',
              options: [

                Option(
                  name: '--encryption-config',
                  description: 'List of KeyVaultProperties objects',
                  args: [
                    Arg(
                    name: 'encryption-confi'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'Name of the Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
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
          name: 'identity',
          description: 'Manage servicebus namespace identity',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Assign System or User or System, User assigned identities to a namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'Name of the Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'System Assigned Identity',
                  args: [
                    Arg(
                    name: 'system-assigned',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'User Assigned Identity',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Removes System or User or System, User assigned identities from a namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'Name of the Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'System Assigned Identity',
                  args: [
                    Arg(
                    name: 'system-assigned',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'User Assigned Identity',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'network-rule-set',
          description: 'Servicebus namespace network-rule-set',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create NetworkRuleSet for a Namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--default-action',
                  description: 'Default Action for Network Rule Set',
                  args: [
                    Arg(
                    name: 'default-action',
                    suggestions: [

                      FigSuggestion(name: 'Allow'),
                      FigSuggestion(name: 'Deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--enable-trusted-service-access', '-t'],
                  description: 'Value that indicates whether Trusted Service Access is Enabled or not',
                  args: [
                    Arg(
                    name: 'enable-trusted-service-access',
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
                  name: '--ip-rules',
                  description: 'List of IpRules Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'ip-rule'
                  )
                  ]
                ),
                Option(
                  name: '--public-network-access',
                  description: 'This determines if traffic is allowed over public network. By default it is enabled',
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
                  name: '--virtual-network-rules',
                  description: 'List VirtualNetwork Rules Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'virtual-network-rule'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List list of NetworkRuleSet for a Namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
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
              description: 'Get NetworkRuleSet for a Namespace',
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update NetworkRuleSet for a Namespace',
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
                  name: '--default-action',
                  description: 'Default Action for Network Rule Set',
                  args: [
                    Arg(
                    name: 'default-action',
                    suggestions: [

                      FigSuggestion(name: 'Allow'),
                      FigSuggestion(name: 'Deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--enable-trusted-service-access', '-t'],
                  description: 'Value that indicates whether Trusted Service Access is Enabled or not',
                  args: [
                    Arg(
                    name: 'enable-trusted-service-access',
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
                  name: '--ip-rules',
                  description: 'List of IpRules Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'ip-rule'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--public-network-access',
                  description: 'This determines if traffic is allowed over public network. By default it is enabled',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--virtual-network-rules',
                  description: 'List VirtualNetwork Rules Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'virtual-network-rule'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'ip-rule',
              description: 'Manage Azure ServiceBus ip-rules in networkruleSet for namespace',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a IP-Rule for network rule of namespace',
                  options: [

                    Option(
                      name: ['--namespace-name', '--name', '-n'],
                      description: 'Name of the Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--ip-rule',
                      description: 'List VirtualNetwork Rules',
                      args: [
                        Arg(
                        name: 'ip-rul'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove Ip-Rule from network rule of namespace',
                  options: [

                    Option(
                      name: ['--namespace-name', '--name', '-n'],
                      description: 'Name of the Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--ip-rule',
                      description: 'List VirtualNetwork Rules',
                      args: [
                        Arg(
                        name: 'ip-rul'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'virtual-network-rule',
              description: 'Manage Azure ServiceBus subnet-rule in networkruleSet for namespace',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a Virtual-Network-Rule for network rule of namespace',
                  options: [

                    Option(
                      name: '--namespace-name',
                      description: 'Name of the Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subnet',
                      description: 'List VirtualNetwork Rules',
                      args: [
                        Arg(
                        name: 'subne'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove network rule for a namespace',
                  options: [

                    Option(
                      name: '--namespace-name',
                      description: 'Name of the Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subnet',
                      description: 'List VirtualNetwork Rules',
                      args: [
                        Arg(
                        name: 'subne'
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
          name: 'private-endpoint-connection',
          description: 'Manage servicebus namespace private endpoint connection',
          subcommands: [

            Subcommand(
              name: 'approve',
              description: 'Approve a private endpoint connection request for servicebus namespace',
              options: [

                Option(
                  name: '--description',
                  description: 'Comments for approve operation',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the Service Bus Namespace. You can get it using az servicebus namespace show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Service Bus Namespace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Service Bus namesapce name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified Service bus namespace',
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
              description: 'Create PrivateEndpointConnections of service namespace',
              options: [

                Option(
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The PrivateEndpointConnection name',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'Description of the connection state',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--provisioning-state',
                  description: 'Provisioning state of the Private Endpoint Connection',
                  args: [
                    Arg(
                    name: 'provisioning-state',
                    suggestions: [

                      FigSuggestion(name: 'Canceled'),
                      FigSuggestion(name: 'Creating'),
                      FigSuggestion(name: 'Deleting'),
                      FigSuggestion(name: 'Failed'),
                      FigSuggestion(name: 'Succeeded'),
                      FigSuggestion(name: 'Updating')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--status',
                  description: 'Status of the connection',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Approved'),
                      FigSuggestion(name: 'Disconnected'),
                      FigSuggestion(name: 'Pending'),
                      FigSuggestion(name: 'Rejected')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a private endpoint connection request for servicebus namespace',
              options: [

                Option(
                  name: '--description',
                  description: 'Comments for delete operation',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the Service Bus Namespace. You can get it using az servicebus namespace show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Service Bus Namespace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Service Bus namesapce name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified Service bus namespace',
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
              description: 'List the available PrivateEndpointConnections within a namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
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
              name: 'reject',
              description: 'Reject a private endpoint connection request for servicebus namespace',
              options: [

                Option(
                  name: '--description',
                  description: 'Comments for reject operation',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the Service Bus Namespace. You can get it using az servicebus namespace show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Service Bus Namespace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Service Bus namesapce name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified Service bus namespace',
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
              description: 'Get a description for the specified Private Endpoint Connection',
              options: [

                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the Service Bus Namespace. You can get it using az servicebus namespace show',
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
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The PrivateEndpointConnection name',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update PrivateEndpointConnections of service namespace',
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
                  name: '--description',
                  description: 'Description of the connection state',
                  args: [
                    Arg(
                    name: 'descriptio'
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
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The PrivateEndpointConnection name',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--provisioning-state',
                  description: 'Provisioning state of the Private Endpoint Connection',
                  args: [
                    Arg(
                    name: 'provisioning-state',
                    suggestions: [

                      FigSuggestion(name: 'Canceled'),
                      FigSuggestion(name: 'Creating'),
                      FigSuggestion(name: 'Deleting'),
                      FigSuggestion(name: 'Failed'),
                      FigSuggestion(name: 'Succeeded'),
                      FigSuggestion(name: 'Updating')
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
                  name: '--status',
                  description: 'Status of the connection',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Approved'),
                      FigSuggestion(name: 'Disconnected'),
                      FigSuggestion(name: 'Pending'),
                      FigSuggestion(name: 'Rejected')
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
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The PrivateEndpointConnection name',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
          name: 'private-link-resource',
          description: 'Manage servicebus namespace private link resources',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'List lists of resources that supports Privatelinks',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
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
      name: 'queue',
      description: 'Servicebus queue',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Service Bus queue. This operation is idempotent',
          options: [

            Option(
              name: ['--queue-name', '--name', '-n'],
              description: 'The queue name',
              args: [
                Arg(
                name: 'queue-nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--auto-delete-on-idle',
              description: 'ISO 8061 timeSpan idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes',
              args: [
                Arg(
                name: 'auto-delete-on-idl'
              )
              ]
            ),
            Option(
              name: '--default-message-time-to-live',
              description: 'ISO 8601 default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself',
              args: [
                Arg(
                name: 'default-message-time-to-liv'
              )
              ]
            ),
            Option(
              name: ['--enable-duplicate-detection', '--duplicate-detection'],
              description: 'A value indicating if this queue requires duplicate detection',
              args: [
                Arg(
                name: 'enable-duplicate-detection',
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
              name: ['--duplicate-detection-history-time-window', '-d'],
              description: 'ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes',
              args: [
                Arg(
                name: 'duplicate-detection-history-time-windo'
              )
              ]
            ),
            Option(
              name: '--enable-batched-operations',
              description: 'Value that indicates whether server-side batched operations are enabled',
              args: [
                Arg(
                name: 'enable-batched-operations',
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
                '--enable-dead-lettering-on-message-expiration',
                '--message-expiration',
              ],
              description: 'A value that indicates whether this queue has dead letter support when a message expires',
              args: [
                Arg(
                name: 'enable-dead-lettering-on-message-expiration',
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
              name: '--enable-express',
              description: 'A value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage',
              args: [
                Arg(
                name: 'enable-express',
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
              name: '--enable-partitioning',
              description: 'A value that indicates whether the queue is to be partitioned across multiple message brokers',
              args: [
                Arg(
                name: 'enable-partitioning',
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
              name: '--enable-session',
              description: 'A value that indicates whether the queue supports the concept of sessions',
              args: [
                Arg(
                name: 'enable-session',
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
              name: '--forward-dead-lettered-messages-to',
              description: 'Queue/Topic name to forward the Dead Letter message',
              args: [
                Arg(
                name: 'forward-dead-lettered-messages-t'
              )
              ]
            ),
            Option(
              name: '--forward-to',
              description: 'Queue/Topic name to forward the messages',
              args: [
                Arg(
                name: 'forward-t'
              )
              ]
            ),
            Option(
              name: '--lock-duration',
              description: 'ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute',
              args: [
                Arg(
                name: 'lock-duratio'
              )
              ]
            ),
            Option(
              name: '--max-delivery-count',
              description: 'The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10',
              args: [
                Arg(
                name: 'max-delivery-coun'
              )
              ]
            ),
            Option(
              name: ['--max-message-size-in-kilobytes', '--max-message-size'],
              description: 'Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024',
              args: [
                Arg(
                name: 'max-message-size-in-kilobyte'
              )
              ]
            ),
            Option(
              name: ['--max-size-in-megabytes', '--max-size'],
              description: 'Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024',
              args: [
                Arg(
                name: 'max-size-in-megabyte'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Enumerates the possible values for the status of a messaging entity',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Creating'),
                  FigSuggestion(name: 'Deleting'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'ReceiveDisabled'),
                  FigSuggestion(name: 'Renaming'),
                  FigSuggestion(name: 'Restoring'),
                  FigSuggestion(name: 'SendDisabled'),
                  FigSuggestion(name: 'Unknown')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a queue from the specified namespace in a resource group',
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
              name: ['--queue-name', '--name', '-n'],
              description: 'The queue name',
              args: [
                Arg(
                name: 'queue-nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'List the queues within a namespace',
          options: [

            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--skip',
              description: 'Skip is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'May be used to limit the number of results to the most recent N usageDetails',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a description for the specified queue',
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
              name: ['--queue-name', '--name', '-n'],
              description: 'The queue name',
              args: [
                Arg(
                name: 'queue-nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a Service Bus queue. This operation is idempotent',
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
              name: '--auto-delete-on-idle',
              description: 'ISO 8061 timeSpan idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes',
              args: [
                Arg(
                name: 'auto-delete-on-idl'
              )
              ]
            ),
            Option(
              name: '--default-message-time-to-live',
              description: 'ISO 8601 default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself',
              args: [
                Arg(
                name: 'default-message-time-to-liv'
              )
              ]
            ),
            Option(
              name: ['--duplicate-detection-history-time-window', '-d'],
              description: 'ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes',
              args: [
                Arg(
                name: 'duplicate-detection-history-time-windo'
              )
              ]
            ),
            Option(
              name: '--enable-batched-operations',
              description: 'Value that indicates whether server-side batched operations are enabled',
              args: [
                Arg(
                name: 'enable-batched-operations',
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
                '--enable-dead-lettering-on-message-expiration',
                '--message-expiration',
              ],
              description: 'A value that indicates whether this queue has dead letter support when a message expires',
              args: [
                Arg(
                name: 'enable-dead-lettering-on-message-expiration',
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
              name: '--enable-express',
              description: 'A value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage',
              args: [
                Arg(
                name: 'enable-express',
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
              name: '--forward-dead-lettered-messages-to',
              description: 'Queue/Topic name to forward the Dead Letter message',
              args: [
                Arg(
                name: 'forward-dead-lettered-messages-t'
              )
              ]
            ),
            Option(
              name: '--forward-to',
              description: 'Queue/Topic name to forward the messages',
              args: [
                Arg(
                name: 'forward-t'
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
              name: '--lock-duration',
              description: 'ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute',
              args: [
                Arg(
                name: 'lock-duratio'
              )
              ]
            ),
            Option(
              name: '--max-delivery-count',
              description: 'The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10',
              args: [
                Arg(
                name: 'max-delivery-coun'
              )
              ]
            ),
            Option(
              name: ['--max-message-size-in-kilobytes', '--max-message-size'],
              description: 'Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024',
              args: [
                Arg(
                name: 'max-message-size-in-kilobyte'
              )
              ]
            ),
            Option(
              name: ['--max-size-in-megabytes', '--max-size'],
              description: 'Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024',
              args: [
                Arg(
                name: 'max-size-in-megabyte'
              )
              ]
            ),
            Option(
              name: ['--queue-name', '--name', '-n'],
              description: 'The queue name',
              args: [
                Arg(
                name: 'queue-nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
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
              name: '--status',
              description: 'Enumerates the possible values for the status of a messaging entity',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Creating'),
                  FigSuggestion(name: 'Deleting'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'ReceiveDisabled'),
                  FigSuggestion(name: 'Renaming'),
                  FigSuggestion(name: 'Restoring'),
                  FigSuggestion(name: 'SendDisabled'),
                  FigSuggestion(name: 'Unknown')
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
          name: 'authorization-rule',
          description: 'Servicebus queue authorization-rule',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an authorization rule for a queue',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--queue-name',
                  description: 'The queue name',
                  args: [
                    Arg(
                    name: 'queue-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a queue authorization rule',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--queue-name',
                  description: 'The queue name',
                  args: [
                    Arg(
                    name: 'queue-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List all authorization rules for a queue',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--queue-name',
                  description: 'The queue name',
                  args: [
                    Arg(
                    name: 'queue-nam'
                  )
                  ]
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
              description: 'Get an authorization rule for a queue by rule name',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--queue-name',
                  description: 'The queue name',
                  args: [
                    Arg(
                    name: 'queue-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an authorization rule for a queue',
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
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--queue-name',
                  description: 'The queue name',
                  args: [
                    Arg(
                    name: 'queue-nam'
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
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
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
              name: 'keys',
              description: 'Servicebus queue authorization-rule keys',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'Primary and secondary connection strings to the queue',
                  options: [

                    Option(
                      name: ['--authorization-rule-name', '--name', '-n'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--queue-name',
                      description: 'The queue name',
                      args: [
                        Arg(
                        name: 'queue-nam'
                      )
                      ]
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
                  name: 'renew',
                  description: 'Regenerates the primary or secondary connection strings to the queue',
                  options: [

                    Option(
                      name: '--key',
                      description: 'The access key to regenerate',
                      args: [
                        Arg(
                        name: 'key',
                        suggestions: [

                          FigSuggestion(name: 'PrimaryKey'),
                          FigSuggestion(name: 'SecondaryKey')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--authorization-rule-name', '--name', '-n'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
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
                      name: '--key-value',
                      description: 'Optional, if the key value provided, is reset for KeyType value or autogenerate Key value set for keyType',
                      args: [
                        Arg(
                        name: 'key-valu'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--queue-name',
                      description: 'The queue name',
                      args: [
                        Arg(
                        name: 'queue-nam'
                      )
                      ]
                    ),
                    Option(
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
        )
      ]
    ),
    Subcommand(
      name: 'topic',
      description: 'Servicebus topic',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a topic in the specified namespace',
          options: [

            Option(
              name: ['--topic-name', '--name', '-n'],
              description: 'The topic name',
              args: [
                Arg(
                name: 'topic-nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--auto-delete-on-idle',
              description: 'ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes',
              args: [
                Arg(
                name: 'auto-delete-on-idl'
              )
              ]
            ),
            Option(
              name: '--default-message-time-to-live',
              description: 'ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself',
              args: [
                Arg(
                name: 'default-message-time-to-liv'
              )
              ]
            ),
            Option(
              name: ['--enable-duplicate-detection', '--duplicate-detection'],
              description: 'A value indicating if this queue requires duplicate detection',
              args: [
                Arg(
                name: 'enable-duplicate-detection',
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
              name: ['--duplicate-detection-history-time-window', '-d'],
              description: 'ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes',
              args: [
                Arg(
                name: 'duplicate-detection-history-time-windo'
              )
              ]
            ),
            Option(
              name: '--enable-batched-operations',
              description: 'Value that indicates whether server-side batched operations are enabled',
              args: [
                Arg(
                name: 'enable-batched-operations',
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
              name: '--enable-express',
              description: 'Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage',
              args: [
                Arg(
                name: 'enable-express',
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
              name: '--enable-ordering',
              description: 'Value that indicates whether the topic supports ordering',
              args: [
                Arg(
                name: 'enable-ordering',
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
              name: '--enable-partitioning',
              description: 'Value that indicates whether the topic to be partitioned across multiple message brokers is enabled',
              args: [
                Arg(
                name: 'enable-partitioning',
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
              name: ['--max-message-size-in-kilobytes', '--max-message-size'],
              description: 'Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024',
              args: [
                Arg(
                name: 'max-message-size-in-kilobyte'
              )
              ]
            ),
            Option(
              name: ['--max-size-in-megabytes', '--max-size'],
              description: 'Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024',
              args: [
                Arg(
                name: 'max-size-in-megabyte'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Enumerates the possible values for the status of a messaging entity',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Creating'),
                  FigSuggestion(name: 'Deleting'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'ReceiveDisabled'),
                  FigSuggestion(name: 'Renaming'),
                  FigSuggestion(name: 'Restoring'),
                  FigSuggestion(name: 'SendDisabled'),
                  FigSuggestion(name: 'Unknown')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a topic from the specified namespace and resource group',
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
              name: ['--topic-name', '--name', '-n'],
              description: 'The topic name',
              args: [
                Arg(
                name: 'topic-nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'List all the topics in a namespace',
          options: [

            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--skip',
              description: 'Skip is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'May be used to limit the number of results to the most recent N usageDetails',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a description for the specified topic',
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
              name: ['--topic-name', '--name', '-n'],
              description: 'The topic name',
              args: [
                Arg(
                name: 'topic-nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a topic in the specified namespace',
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
              name: '--auto-delete-on-idle',
              description: 'ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes',
              args: [
                Arg(
                name: 'auto-delete-on-idl'
              )
              ]
            ),
            Option(
              name: '--default-message-time-to-live',
              description: 'ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself',
              args: [
                Arg(
                name: 'default-message-time-to-liv'
              )
              ]
            ),
            Option(
              name: ['--enable-duplicate-detection', '--duplicate-detection'],
              description: 'A value indicating if this queue requires duplicate detection',
              args: [
                Arg(
                name: 'enable-duplicate-detection',
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
              name: ['--duplicate-detection-history-time-window', '-d'],
              description: 'ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes',
              args: [
                Arg(
                name: 'duplicate-detection-history-time-windo'
              )
              ]
            ),
            Option(
              name: '--enable-batched-operations',
              description: 'Value that indicates whether server-side batched operations are enabled',
              args: [
                Arg(
                name: 'enable-batched-operations',
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
              name: '--enable-express',
              description: 'Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage',
              args: [
                Arg(
                name: 'enable-express',
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
              name: '--enable-ordering',
              description: 'Value that indicates whether the topic supports ordering',
              args: [
                Arg(
                name: 'enable-ordering',
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
              name: '--enable-partitioning',
              description: 'Value that indicates whether the topic to be partitioned across multiple message brokers is enabled',
              args: [
                Arg(
                name: 'enable-partitioning',
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
              name: ['--max-message-size-in-kilobytes', '--max-message-size'],
              description: 'Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024',
              args: [
                Arg(
                name: 'max-message-size-in-kilobyte'
              )
              ]
            ),
            Option(
              name: ['--max-size-in-megabytes', '--max-size'],
              description: 'Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024',
              args: [
                Arg(
                name: 'max-size-in-megabyte'
              )
              ]
            ),
            Option(
              name: ['--topic-name', '--name', '-n'],
              description: 'The topic name',
              args: [
                Arg(
                name: 'topic-nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
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
              name: '--status',
              description: 'Enumerates the possible values for the status of a messaging entity',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Creating'),
                  FigSuggestion(name: 'Deleting'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'ReceiveDisabled'),
                  FigSuggestion(name: 'Renaming'),
                  FigSuggestion(name: 'Restoring'),
                  FigSuggestion(name: 'SendDisabled'),
                  FigSuggestion(name: 'Unknown')
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
          name: 'authorization-rule',
          description: 'Servicebus topic authorization-rule',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an authorization rule for the specified topic',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a topic authorization rule',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List authorization rules for a topic',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the specified authorization rule',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an authorization rule for the specified topic',
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
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
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
                ),
                Option(
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'keys',
              description: 'Servicebus topic authorization-rule keys',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'Gets the primary and secondary connection strings for the topic',
                  options: [

                    Option(
                      name: ['--authorization-rule-name', '--name', '-n'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--topic-name',
                      description: 'The topic name',
                      args: [
                        Arg(
                        name: 'topic-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'renew',
                  description: 'Regenerates primary or secondary connection strings for the topic',
                  options: [

                    Option(
                      name: '--key',
                      description: 'The access key to regenerate',
                      args: [
                        Arg(
                        name: 'key',
                        suggestions: [

                          FigSuggestion(name: 'PrimaryKey'),
                          FigSuggestion(name: 'SecondaryKey')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--authorization-rule-name', '--name', '-n'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
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
                      name: '--key-value',
                      description: 'Optional, if the key value provided, is reset for KeyType value or autogenerate Key value set for keyType',
                      args: [
                        Arg(
                        name: 'key-valu'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
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
                      name: '--topic-name',
                      description: 'The topic name',
                      args: [
                        Arg(
                        name: 'topic-nam'
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
          name: 'subscription',
          description: 'Servicebus topic subscription',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a topic subscription',
              options: [

                Option(
                  name: ['--subscription-name', '--name', '-n'],
                  description: 'The subscription name',
                  args: [
                    Arg(
                    name: 'subscription-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auto-delete-on-idle',
                  description: 'ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes',
                  args: [
                    Arg(
                    name: 'auto-delete-on-idl'
                  )
                  ]
                ),
                Option(
                  name: '--client-id',
                  description: 'Indicates the Client ID of the application that created the client-affine subscription',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: ['--dead-letter-on-filter-exceptions', '-f'],
                  description: 'Value that indicates whether a subscription has dead letter support on filter evaluation exceptions',
                  args: [
                    Arg(
                    name: 'dead-letter-on-filter-exceptions',
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
                  name: '--default-message-time-to-live',
                  description: 'ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself',
                  args: [
                    Arg(
                    name: 'default-message-time-to-liv'
                  )
                  ]
                ),
                Option(
                  name: ['--duplicate-detection-history-time-window', '-d'],
                  description: 'ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes',
                  args: [
                    Arg(
                    name: 'duplicate-detection-history-time-windo'
                  )
                  ]
                ),
                Option(
                  name: '--enable-batched-operations',
                  description: 'Value that indicates whether server-side batched operations are enabled',
                  args: [
                    Arg(
                    name: 'enable-batched-operations',
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
                    '--enable-dead-lettering-on-message-expiration',
                    '--message-expiration',
                  ],
                  description: 'A value that indicates whether this queue has dead letter support when a message expires',
                  args: [
                    Arg(
                    name: 'enable-dead-lettering-on-message-expiration',
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
                  name: '--enable-session',
                  description: 'A value that indicates whether the queue supports the concept of sessions',
                  args: [
                    Arg(
                    name: 'enable-session',
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
                  name: '--forward-dead-lettered-messages-to',
                  description: 'Queue/Topic name to forward the Dead Letter message',
                  args: [
                    Arg(
                    name: 'forward-dead-lettered-messages-t'
                  )
                  ]
                ),
                Option(
                  name: '--forward-to',
                  description: 'Queue/Topic name to forward the messages',
                  args: [
                    Arg(
                    name: 'forward-t'
                  )
                  ]
                ),
                Option(
                  name: '--is-client-affine',
                  description: 'Value that indicates whether the subscription has an affinity to the client id',
                  args: [
                    Arg(
                    name: 'is-client-affine',
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
                  name: '--is-durable',
                  description: 'For client-affine subscriptions, this value indicates whether the subscription is durable or not',
                  args: [
                    Arg(
                    name: 'is-durable',
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
                  name: '--is-shared',
                  description: 'For client-affine subscriptions, this value indicates whether the subscription is shared or not',
                  args: [
                    Arg(
                    name: 'is-shared',
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
                  name: '--lock-duration',
                  description: 'ISO 8061 lock duration timespan for the subscription. The default value is 1 minute',
                  args: [
                    Arg(
                    name: 'lock-duratio'
                  )
                  ]
                ),
                Option(
                  name: '--max-delivery-count',
                  description: 'Number of maximum deliveries',
                  args: [
                    Arg(
                    name: 'max-delivery-coun'
                  )
                  ]
                ),
                Option(
                  name: '--status',
                  description: 'Enumerates the possible values for the status of a messaging entity',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Active'),
                      FigSuggestion(name: 'Creating'),
                      FigSuggestion(name: 'Deleting'),
                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'ReceiveDisabled'),
                      FigSuggestion(name: 'Renaming'),
                      FigSuggestion(name: 'Restoring'),
                      FigSuggestion(name: 'SendDisabled'),
                      FigSuggestion(name: 'Unknown')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a subscription from the specified topic',
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
                  name: ['--subscription-name', '--name', '-n'],
                  description: 'The subscription name',
                  args: [
                    Arg(
                    name: 'subscription-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all the subscriptions under a specified topic',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'Skip is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls',
                  args: [
                    Arg(
                    name: 'ski'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'May be used to limit the number of results to the most recent N usageDetails',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a subscription description for the specified topic',
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
                  name: ['--subscription-name', '--name', '-n'],
                  description: 'The subscription name',
                  args: [
                    Arg(
                    name: 'subscription-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a topic subscription',
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
                  name: '--auto-delete-on-idle',
                  description: 'ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes',
                  args: [
                    Arg(
                    name: 'auto-delete-on-idl'
                  )
                  ]
                ),
                Option(
                  name: '--client-id',
                  description: 'Indicates the Client ID of the application that created the client-affine subscription',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: ['--dead-letter-on-filter-exceptions', '-f'],
                  description: 'Value that indicates whether a subscription has dead letter support on filter evaluation exceptions',
                  args: [
                    Arg(
                    name: 'dead-letter-on-filter-exceptions',
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
                  name: '--default-message-time-to-live',
                  description: 'ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself',
                  args: [
                    Arg(
                    name: 'default-message-time-to-liv'
                  )
                  ]
                ),
                Option(
                  name: ['--duplicate-detection-history-time-window', '-d'],
                  description: 'ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes',
                  args: [
                    Arg(
                    name: 'duplicate-detection-history-time-windo'
                  )
                  ]
                ),
                Option(
                  name: '--enable-batched-operations',
                  description: 'Value that indicates whether server-side batched operations are enabled',
                  args: [
                    Arg(
                    name: 'enable-batched-operations',
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
                    '--enable-dead-lettering-on-message-expiration',
                    '--message-expiration',
                  ],
                  description: 'A value that indicates whether this queue has dead letter support when a message expires',
                  args: [
                    Arg(
                    name: 'enable-dead-lettering-on-message-expiration',
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
                  name: '--enable-session',
                  description: 'A value that indicates whether the queue supports the concept of sessions',
                  args: [
                    Arg(
                    name: 'enable-session',
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
                  name: '--forward-dead-lettered-messages-to',
                  description: 'Queue/Topic name to forward the Dead Letter message',
                  args: [
                    Arg(
                    name: 'forward-dead-lettered-messages-t'
                  )
                  ]
                ),
                Option(
                  name: '--forward-to',
                  description: 'Queue/Topic name to forward the messages',
                  args: [
                    Arg(
                    name: 'forward-t'
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
                  name: '--is-client-affine',
                  description: 'Value that indicates whether the subscription has an affinity to the client id',
                  args: [
                    Arg(
                    name: 'is-client-affine',
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
                  name: '--is-durable',
                  description: 'For client-affine subscriptions, this value indicates whether the subscription is durable or not',
                  args: [
                    Arg(
                    name: 'is-durable',
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
                  name: '--is-shared',
                  description: 'For client-affine subscriptions, this value indicates whether the subscription is shared or not',
                  args: [
                    Arg(
                    name: 'is-shared',
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
                  name: '--lock-duration',
                  description: 'ISO 8061 lock duration timespan for the subscription. The default value is 1 minute',
                  args: [
                    Arg(
                    name: 'lock-duratio'
                  )
                  ]
                ),
                Option(
                  name: '--max-delivery-count',
                  description: 'Number of maximum deliveries',
                  args: [
                    Arg(
                    name: 'max-delivery-coun'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription-name', '--name', '-n'],
                  description: 'The subscription name',
                  args: [
                    Arg(
                    name: 'subscription-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--status',
                  description: 'Enumerates the possible values for the status of a messaging entity',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Active'),
                      FigSuggestion(name: 'Creating'),
                      FigSuggestion(name: 'Deleting'),
                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'ReceiveDisabled'),
                      FigSuggestion(name: 'Renaming'),
                      FigSuggestion(name: 'Restoring'),
                      FigSuggestion(name: 'SendDisabled'),
                      FigSuggestion(name: 'Unknown')
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
                  name: '--topic-name',
                  description: 'The topic name',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'rule',
              description: 'Servicebus topic subscription rule',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create the ServiceBus Rule for Subscription',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of Rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'Name of Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription-name',
                      description: 'Name of Subscription',
                      args: [
                        Arg(
                        name: 'subscription-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--topic-name',
                      description: 'Name of Topic',
                      args: [
                        Arg(
                        name: 'topic-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--action-compatibility-level',
                      description: 'This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20',
                      args: [
                        Arg(
                        name: 'action-compatibility-leve'
                      )
                      ]
                    ),
                    Option(
                      name: '--action-sql-expression',
                      description: 'Action SQL expression',
                      args: [
                        Arg(
                        name: 'action-sql-expressio'
                      )
                      ]
                    ),
                    Option(
                      name: '--content-type',
                      description: 'Content type of message',
                      args: [
                        Arg(
                        name: 'content-typ'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--correlation-filter-property',
                        '--correlation-filter',
                      ],
                      description: 'Dictionary object for custom filters',
                      args: [
                        Arg(
                        name: 'correlation-filter-propert'
                      )
                      ]
                    ),
                    Option(
                      name: '--correlation-id',
                      description: 'Identifier of correlation',
                      args: [
                        Arg(
                        name: 'correlation-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--enable-action-preprocessing',
                      description: 'A boolean value that indicates whether the rule action requires preprocessing',
                      args: [
                        Arg(
                        name: 'enable-action-preprocessing',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--enable-correlation-preprocessing',
                      description: 'A boolean value that indicates whether the rule action requires preprocessing',
                      args: [
                        Arg(
                        name: 'enable-correlation-preprocessing',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--enable-sql-preprocessing',
                      description: 'A boolean value that indicates whether the rule action requires preprocessing',
                      args: [
                        Arg(
                        name: 'enable-sql-preprocessing',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--filter-sql-expression',
                      description: 'SQL expression. e.g. myproperty=test',
                      args: [
                        Arg(
                        name: 'filter-sql-expressio'
                      )
                      ]
                    ),
                    Option(
                      name: '--filter-type',
                      description: 'Rule Filter types',
                      args: [
                        Arg(
                        name: 'filter-type',
                        suggestions: [

                          FigSuggestion(name: 'CorrelationFilter'),
                          FigSuggestion(name: 'SqlFilter')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--label',
                      description: 'Application specific label',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: '--message-id',
                      description: 'Identifier of message',
                      args: [
                        Arg(
                        name: 'message-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: '--reply-to',
                      description: 'Address of the queue to reply to',
                      args: [
                        Arg(
                        name: 'reply-t'
                      )
                      ]
                    ),
                    Option(
                      name: '--reply-to-session-id',
                      description: 'Session identifier to reply to',
                      args: [
                        Arg(
                        name: 'reply-to-session-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--session-id',
                      description: 'Session identifier',
                      args: [
                        Arg(
                        name: 'session-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--to',
                      description: 'Address to send to',
                      args: [
                        Arg(
                        name: 't'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete an existing rule',
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
                      name: ['--rule-name', '--name', '-n'],
                      description: 'The rule name',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
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
                      name: '--subscription-name',
                      description: 'The subscription name',
                      args: [
                        Arg(
                        name: 'subscription-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--topic-name',
                      description: 'The topic name',
                      args: [
                        Arg(
                        name: 'topic-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List all the rules within given topic-subscription',
                  options: [

                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription-name',
                      description: 'The subscription name',
                      args: [
                        Arg(
                        name: 'subscription-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--topic-name',
                      description: 'The topic name',
                      args: [
                        Arg(
                        name: 'topic-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--skip',
                      description: 'Skip is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls',
                      args: [
                        Arg(
                        name: 'ski'
                      )
                      ]
                    ),
                    Option(
                      name: '--top',
                      description: 'May be used to limit the number of results to the most recent N usageDetails',
                      args: [
                        Arg(
                        name: 'to'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the description for the specified rule',
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
                      name: ['--rule-name', '--name', '-n'],
                      description: 'The rule name',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
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
                      name: '--subscription-name',
                      description: 'The subscription name',
                      args: [
                        Arg(
                        name: 'subscription-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--topic-name',
                      description: 'The topic name',
                      args: [
                        Arg(
                        name: 'topic-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a new rule and updates an existing rule',
                  options: [

                    Option(
                      name: '--action-compatibility-level',
                      description: 'This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20',
                      args: [
                        Arg(
                        name: 'action-compatibility-leve'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--enable-action-preprocessing',
                        '--action-preprocessing',
                      ],
                      description: 'Value that indicates whether the rule action requires preprocessing',
                      args: [
                        Arg(
                        name: 'enable-action-preprocessing',
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
                      name: '--action-sql-expression',
                      description: 'SQL expression. e.g. MyProperty=\'ABC\'',
                      args: [
                        Arg(
                        name: 'action-sql-expressio'
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
                      name: '--compatibility-level',
                      description: 'This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20',
                      args: [
                        Arg(
                        name: 'compatibility-leve'
                      )
                      ]
                    ),
                    Option(
                      name: '--content-type',
                      description: 'Content type of the message',
                      args: [
                        Arg(
                        name: 'content-typ'
                      )
                      ]
                    ),
                    Option(
                      name: '--correlation-id',
                      description: 'Identifier of the correlation',
                      args: [
                        Arg(
                        name: 'correlation-i'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--enable-correlation-preprocessing',
                        '--requires-preprocessing',
                      ],
                      description: 'Value that indicates whether the rule action requires preprocessing',
                      args: [
                        Arg(
                        name: 'enable-correlation-preprocessing',
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
                      name: ['--enable-sql-preprocessing', '-f'],
                      description: 'Value that indicates whether the rule action requires preprocessing',
                      args: [
                        Arg(
                        name: 'enable-sql-preprocessing',
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
                      name: ['--filter-sql-expression', '--sql-expression'],
                      description: 'The SQL expression. e.g. MyProperty=\'ABC\'',
                      args: [
                        Arg(
                        name: 'filter-sql-expressio'
                      )
                      ]
                    ),
                    Option(
                      name: '--filter-type',
                      description: 'Filter type that is evaluated against a BrokeredMessage',
                      args: [
                        Arg(
                        name: 'filter-type',
                        suggestions: [

                          FigSuggestion(name: 'CorrelationFilter'),
                          FigSuggestion(name: 'SqlFilter')
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
                      name: '--label',
                      description: 'Application specific label',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: '--message-id',
                      description: 'Identifier of the message',
                      args: [
                        Arg(
                        name: 'message-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--rule-name', '--name', '-n'],
                      description: 'The rule name',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--properties',
                      description: 'Dictionary object for custom filters Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'propertie'
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
                      name: '--reply-to',
                      description: 'Address of the queue to reply to',
                      args: [
                        Arg(
                        name: 'reply-t'
                      )
                      ]
                    ),
                    Option(
                      name: '--reply-to-session-id',
                      description: 'Session identifier to reply to',
                      args: [
                        Arg(
                        name: 'reply-to-session-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--session-id',
                      description: 'Session identifier',
                      args: [
                        Arg(
                        name: 'session-i'
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
                    ),
                    Option(
                      name: '--subscription-name',
                      description: 'The subscription name',
                      args: [
                        Arg(
                        name: 'subscription-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--to',
                      description: 'Address to send to',
                      args: [
                        Arg(
                        name: 't'
                      )
                      ]
                    ),
                    Option(
                      name: '--topic-name',
                      description: 'The topic name',
                      args: [
                        Arg(
                        name: 'topic-nam'
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
    )
  ]
);
