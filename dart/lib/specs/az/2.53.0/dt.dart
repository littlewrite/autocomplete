// Auto-generated from TypeScript source: dt.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dt` CLI
final FigSpec dtSpec = FigSpec(
  name: 'dt',
  description: 'Manage Azure Digital Twins solutions & infrastructure',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create or update a Digital Twins instance',
      options: [

        Option(
          name: ['--dt-name', '--dtn', '-n'],
          description: 'Digital Twins instance name',
          args: [
            Arg(
            name: 'dt-nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Argument \'assign_identity\' has been deprecated and will be removed in a future release. Use \'--mi-system-assigned\' instead. Assign a system generated identity to the Digital Twins instance',
          args: [
            Arg(
            name: 'assign-identity',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Digital Twins instance location. If no location is provided the resource group location is used.You can configure the default location using az configure --defaults location=<name>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--mi-system-assigned',
          description: 'Assign a system generated identity to this Digital Twins instance',
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
          description: 'Space-separated user identity resource ids to add to the Digital Twins instance',
          args: [
            Arg(
            name: 'mi-user-assigne'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--public-network-access', '--pna'],
          description: 'Determines if the Digital Twins instance can be accessed from a public network',
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
          name: '--role',
          description: 'Role name or Id the system assigned identity will have',
          args: [
            Arg(
            name: 'rol'
          )
          ]
        ),
        Option(
          name: '--scopes',
          description: 'Space-separated scopes the system assigned identity can access. Cannot be used with --no-wait',
          args: [
            Arg(
            name: 'scope'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Digital Twins instance tags. Property bag in key-value pairs with the following format: a=b c=d',
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
      description: 'Delete an existing Digital Twins instance',
      options: [

        Option(
          name: ['--dt-name', '--dtn', '-n'],
          description: 'Digital Twins instance name',
          args: [
            Arg(
            name: 'dt-nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
      description: 'List the collection of Digital Twins instances by subscription or resource group',
      options: [

        Option(
          name: ['--resource-group', '-g'],
          description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'reset',
      description: 'Reset an existing Digital Twins instance by deleting associated assets. Currently only supports deleting models and twins',
      options: [

        Option(
          name: ['--dt-name', '--dtn', '-n'],
          description: 'Digital Twins instance name',
          args: [
            Arg(
            name: 'dt-nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
      name: 'show',
      description: 'Show an existing Digital Twins instance',
      options: [

        Option(
          name: ['--dt-name', '--dtn', '-n'],
          description: 'Digital Twins instance name',
          args: [
            Arg(
            name: 'dt-nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
      description: 'Wait until an operation on an Digital Twins instance is complete',
      options: [

        Option(
          name: ['--dt-name', '--dtn', '-n'],
          description: 'Digital Twins instance name',
          args: [
            Arg(
            name: 'dt-nam'
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
          name: ['--resource-group', '-g'],
          description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
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
        )
      ]
    ),
    Subcommand(
      name: 'data-history',
      description: 'Manage and configure data history',
      subcommands: [

        Subcommand(
          name: 'connection',
          description: 'Manage and configure data history connections',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a data history connection configured on a Digital Twins instance',
              options: [

                Option(
                  name: ['--conn-name', '--cn'],
                  description: 'Name of data history connection',
                  args: [
                    Arg(
                    name: 'conn-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--clean', '-c'],
                  description: 'Specifies whether or not to attempt to clean up artifacts that were created in order to establish a connection to the time series database. This is a best-effort attempt that will fail if appropriate permissions are not in place. Setting this to \'true\' does not delete any recorded data'
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'List all data history connections configured on a Digital Twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Show details of a data history connection configured on a Digital Twins instance',
              options: [

                Option(
                  name: ['--conn-name', '--cn'],
                  description: 'Name of data history connection',
                  args: [
                    Arg(
                    name: 'conn-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Wait until an operation on a data history connection is complete',
              options: [

                Option(
                  name: ['--conn-name', '--cn'],
                  description: 'Name of data history connection',
                  args: [
                    Arg(
                    name: 'conn-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
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
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
              name: 'create',
              description: 'Creates a data history connection between a Digital Twins instance and supported resources',
              subcommands: [

                Subcommand(
                  name: 'adx',
                  description: 'Creates a data history connection between a Digital Twins instance and an Azure Data Explorer database. Requires pre-created Azure Data Explorer and Event Hub resources',
                  options: [

                    Option(
                      name: ['--adx-cluster-name', '--adxc'],
                      description: 'Name of Azure Data Explorer cluster to integrate with',
                      args: [
                        Arg(
                        name: 'adx-cluster-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--adx-database-name', '--adxd'],
                      description: 'Name of Azure Data Explorer database to integrate with',
                      args: [
                        Arg(
                        name: 'adx-database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--conn-name', '--cn'],
                      description: 'Name of data history connection',
                      args: [
                        Arg(
                        name: 'conn-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--dt-name', '--dtn', '-n'],
                      description: 'Digital Twins instance name',
                      args: [
                        Arg(
                        name: 'dt-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--eventhub', '--eh'],
                      description: 'Name of EventHub to integrate with',
                      args: [
                        Arg(
                        name: 'eventhu'
                      )
                      ]
                    ),
                    Option(
                      name: ['--eventhub-namespace', '--ehn'],
                      description: 'EventHub Namespace identifier',
                      args: [
                        Arg(
                        name: 'eventhub-namespac'
                      )
                      ]
                    ),
                    Option(
                      name: ['--adx-property-events-table', '--adxpet'],
                      description: 'The name of the Azure Data Explorer table used for storing updates to properties of twins and relationships',
                      args: [
                        Arg(
                        name: 'adx-property-events-tabl'
                      )
                      ]
                    ),
                    Option(
                      name: ['--adx-record-removals', '--adxrr'],
                      description: 'Specifies whether or not to record twin / relationship property and item removals, including removals of indexed or keyed values (such as map entries, array elements, etc.). Setting this property to \'true\' will generate an additional column in the property events table in ADX'
                    ),
                    Option(
                      name: ['--adx-relationship-events-table', '--adxret'],
                      description: 'The name of the Azure Data Explorer table used for recording relationship lifecycle events. The table will not be created if this property is left unspecified',
                      args: [
                        Arg(
                        name: 'adx-relationship-events-tabl'
                      )
                      ]
                    ),
                    Option(
                      name: ['--adx-resource-group', '--adxg'],
                      description: 'Name of Azure Data Explorer resource group. If not provided, will use the Digital Twin\'s resource group',
                      args: [
                        Arg(
                        name: 'adx-resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: ['--adx-subscription', '--adxs'],
                      description: 'Name or id of subscription where the Azure Data Explorer exists. If not provided, will use the subscription that contains the Digital Twin Instance',
                      args: [
                        Arg(
                        name: 'adx-subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--adx-table-name', '--adxt'],
                      description: 'Option \'--adx-table-name\' has been deprecated and will be removed in a future release. Use \'--adx-property-events-table\' instead. The name of the Azure Data Explorer table used for storing updates to properties of twins and relationships',
                      args: [
                        Arg(
                        name: 'adx-table-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--adx-twin-events-table', '--adxtet'],
                      description: 'The name of the Azure Data Explorer table used for recording twin lifecycle events. The table will not be created if this property is left unspecified',
                      args: [
                        Arg(
                        name: 'adx-twin-events-tabl'
                      )
                      ]
                    ),
                    Option(
                      name: ['--eventhub-consumer-group', '--ehc'],
                      description: 'The EventHub consumer group to use when ADX reads from EventHub',
                      args: [
                        Arg(
                        name: 'eventhub-consumer-grou'
                      )
                      ]
                    ),
                    Option(
                      name: ['--eventhub-resource-group', '--ehg'],
                      description: 'Name of EventHub resource group. If not provided, will use the Digital Twin\'s resource group',
                      args: [
                        Arg(
                        name: 'eventhub-resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: ['--eventhub-subscription', '--ehs'],
                      description: 'Name or id of subscription where the EventHub exists. If not provided, will use the subscription that contains the Digital Twin Instance',
                      args: [
                        Arg(
                        name: 'eventhub-subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--mi-user-assigned', '--user'],
                      description: 'Use an user-assigned managed identity for data history connection authentication. Accepts the identity resource id. If not provided, will use system identity instead',
                      args: [
                        Arg(
                        name: 'mi-user-assigne'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: ['--yes', '-y'],
                      description: 'Do not prompt for confirmation when assigning required roles'
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
      name: 'endpoint',
      description: 'Manage and configure Digital Twins instance endpoints',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Remove an endpoint from a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--endpoint-name', '--en'],
              description: 'Endpoint name',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List all egress endpoints configured on a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show details of an endpoint configured on a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--endpoint-name', '--en'],
              description: 'Endpoint name',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Wait until an endpoint operation is done',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--endpoint-name', '--en'],
              description: 'Endpoint name',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Add egress endpoints to a Digital Twins instance',
          subcommands: [

            Subcommand(
              name: 'eventgrid',
              description: 'Adds an EventGrid Topic endpoint to a Digital Twins instance. Requires pre-created resource',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--eventgrid-topic', '--egt'],
                  description: 'Name of EventGrid Topic to integrate with',
                  args: [
                    Arg(
                    name: 'eventgrid-topi'
                  )
                  ]
                ),
                Option(
                  name: ['--endpoint-name', '--en'],
                  description: 'Endpoint name',
                  args: [
                    Arg(
                    name: 'endpoint-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--deadletter-sas-uri', '--dsu'],
                  description: 'Dead-letter storage container URL with SAS token for Key based authentication',
                  args: [
                    Arg(
                    name: 'deadletter-sas-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--deadletter-uri', '--du'],
                  description: 'Dead-letter storage container URL for Identity based authentication',
                  args: [
                    Arg(
                    name: 'deadletter-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--eventgrid-resource-group', '--egg'],
                  description: 'Name of EventGrid Topic resource group. If not provided, the Digital Twin instance resource group will be used',
                  args: [
                    Arg(
                    name: 'eventgrid-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--eventgrid-subscription', '--egs'],
                  description: 'Name or id of subscription where the endpoint resource exists. If no subscription is provided the default subscription is used',
                  args: [
                    Arg(
                    name: 'eventgrid-subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'eventhub',
              description: 'Adds an EventHub endpoint to a Digital Twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--eventhub', '--eh'],
                  description: 'Name of EventHub to integrate with',
                  args: [
                    Arg(
                    name: 'eventhu'
                  )
                  ]
                ),
                Option(
                  name: ['--eventhub-namespace', '--ehn'],
                  description: 'EventHub Namespace identifier',
                  args: [
                    Arg(
                    name: 'eventhub-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--endpoint-name', '--en'],
                  description: 'Endpoint name',
                  args: [
                    Arg(
                    name: 'endpoint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auth-type',
                  description: 'Argument \'auth_type\' has been deprecated and will be removed in a future release. Use \'identity\' instead. Endpoint authentication type',
                  args: [
                    Arg(
                    name: 'auth-type',
                    suggestions: [

                      FigSuggestion(name: 'IdentityBased'),
                      FigSuggestion(name: 'KeyBased')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--deadletter-sas-uri', '--dsu'],
                  description: 'Dead-letter storage container URL with SAS token for Key based authentication',
                  args: [
                    Arg(
                    name: 'deadletter-sas-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--deadletter-uri', '--du'],
                  description: 'Dead-letter storage container URL for Identity based authentication',
                  args: [
                    Arg(
                    name: 'deadletter-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--eventhub-resource-group', '--ehg'],
                  description: 'Name of EventHub resource group. If not provided, the Digital Twin instance resource group will be used',
                  args: [
                    Arg(
                    name: 'eventhub-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--eventhub-policy', '--ehp'],
                  description: 'EventHub policy to use for endpoint configuration. Required when --auth-type is KeyBased',
                  args: [
                    Arg(
                    name: 'eventhub-polic'
                  )
                  ]
                ),
                Option(
                  name: ['--eventhub-subscription', '--ehs'],
                  description: 'Name or id of subscription where the endpoint resource exists. If no subscription is provided the default subscription is used',
                  args: [
                    Arg(
                    name: 'eventhub-subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--mi-system-assigned', '--system'],
                  description: 'Use the system-assigned managed identity for endpoint authentication',
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
                  name: ['--mi-user-assigned', '--user'],
                  description: 'Use an user-assigned managed identity for endpoint authentication. Accepts the identity resource id',
                  args: [
                    Arg(
                    name: 'mi-user-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'servicebus',
              description: 'Adds a ServiceBus Topic endpoint to a Digital Twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--endpoint-name', '--en'],
                  description: 'Endpoint name',
                  args: [
                    Arg(
                    name: 'endpoint-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--servicebus-namespace', '--sbn'],
                  description: 'ServiceBus Namespace identifier',
                  args: [
                    Arg(
                    name: 'servicebus-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--servicebus-topic', '--sbt'],
                  description: 'Name of ServiceBus Topic to integrate with',
                  args: [
                    Arg(
                    name: 'servicebus-topi'
                  )
                  ]
                ),
                Option(
                  name: '--auth-type',
                  description: 'Argument \'auth_type\' has been deprecated and will be removed in a future release. Use \'identity\' instead. Endpoint authentication type',
                  args: [
                    Arg(
                    name: 'auth-type',
                    suggestions: [

                      FigSuggestion(name: 'IdentityBased'),
                      FigSuggestion(name: 'KeyBased')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--deadletter-sas-uri', '--dsu'],
                  description: 'Dead-letter storage container URL with SAS token for Key based authentication',
                  args: [
                    Arg(
                    name: 'deadletter-sas-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--deadletter-uri', '--du'],
                  description: 'Dead-letter storage container URL for Identity based authentication',
                  args: [
                    Arg(
                    name: 'deadletter-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--mi-system-assigned', '--system'],
                  description: 'Use the system-assigned managed identity for endpoint authentication',
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
                  name: ['--mi-user-assigned', '--user'],
                  description: 'Use an user-assigned managed identity for endpoint authentication. Accepts the identity resource id',
                  args: [
                    Arg(
                    name: 'mi-user-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--servicebus-resource-group', '--sbg'],
                  description: 'Name of ServiceBus resource group. If not provided, the Digital Twin instance resource group will be used',
                  args: [
                    Arg(
                    name: 'servicebus-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--servicebus-policy', '--sbp'],
                  description: 'ServiceBus Topic policy to use for endpoint configuration. Required when --auth-type is KeyBased',
                  args: [
                    Arg(
                    name: 'servicebus-polic'
                  )
                  ]
                ),
                Option(
                  name: ['--servicebus-subscription', '--sbs'],
                  description: 'Name or id of subscription where the endpoint resource exists. If no subscription is provided the default subscription is used',
                  args: [
                    Arg(
                    name: 'servicebus-subscriptio'
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
      description: 'Manage identites of a Digital Twins instance',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign managed identities to a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--mi-system-assigned', '--system'],
              description: 'Assign a system-assigned managed identity to this Digital Twin instance',
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
              name: ['--mi-user-assigned', '--user'],
              description: 'Assign user-assigned managed identities to this Digital Twin instance. Accepts space-separated list of identity resource ids',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Role to assign to the digital twin\'s system-assigned managed identity',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scopes',
              description: 'Space separated list of scopes to assign the role (--role) for the system-assigned managed identity',
              args: [
                Arg(
                name: 'scope'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove managed identities from a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--mi-system-assigned', '--system'],
              description: 'Remove the system-assigned managed identity to this Digital Twin instance',
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
              name: ['--mi-user-assigned', '--user'],
              description: 'Remove user-assigned managed identities to this Digital Twin instance. Accepts space-separated list of identity resource ids',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show the identity properties of a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
      name: 'job',
      description: 'Manage and configure jobs for a digital twin instance',
      subcommands: [

        Subcommand(
          name: 'deletion',
          description: 'Manage and configure jobs for deleting model, twin and relationships data in a digital twin instance.\n\n\t\tA deletion job cannot be cancelled or deleted',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create and execute a deletion job on a digital twin instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--job-id', '-j'],
                  description: 'Id of job. A system generated id is assigned when this parameter is ommitted during job creation',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'List all deletion jobs executed on a digital twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Show details of a deletion job executed on a digital twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--job-id', '-j'],
                  description: 'Id of job. A system generated id is assigned when this parameter is ommitted during job creation',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          name: 'import',
          description: 'Manage and configure jobs for importing model, twin and relationships data to a digital twin instance',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancel a data import job executed on a digital twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--job-id', '-j'],
                  description: 'Id of job. A system generated id is assigned when this parameter is ommitted during job creation',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: 'create',
              description: 'Create and execute a data import job on a digital twin instance',
              options: [

                Option(
                  name: ['--data-file', '--df'],
                  description: 'Name of data file input to the bulk import job. The file must be in \'ndjson\' format. Sample input data file: https://github.com/Azure/azure-iot-cli-extension/tree/dev/docs/samples/adt-bulk-import-data-sample.ndjson',
                  args: [
                    Arg(
                    name: 'data-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--input-blob-container', '--ibc'],
                  description: 'Name of Azure Storage blob container which contains the bulk import data file',
                  args: [
                    Arg(
                    name: 'input-blob-containe'
                  )
                  ]
                ),
                Option(
                  name: ['--input-storage-account', '--isa'],
                  description: 'Name of Azure Storage account containing blob container which stores the bulk import data file',
                  args: [
                    Arg(
                    name: 'input-storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: ['--job-id', '-j'],
                  description: 'Id of job. A system generated id is assigned when this parameter is ommitted during job creation',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: ['--output-blob-container', '--obc'],
                  description: 'Name of Azure Storage blob container where the bulk import job\'s output file will be created. If not provided, will use the input blob container',
                  args: [
                    Arg(
                    name: 'output-blob-containe'
                  )
                  ]
                ),
                Option(
                  name: ['--output-file', '--of'],
                  description: 'Name of the bulk import job\'s output file. This file will contain logs as well as error information. The file gets created automatically once the job finishes. The file gets overwritten if it already exists. If not provided the output file is created with the name: <job_id>_output.txt',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--output-storage-account', '--osa'],
                  description: 'Name of Azure Storage account containing blob container where bulk import job\'s output file will be created. If not provided, will use the input storage account',
                  args: [
                    Arg(
                    name: 'output-storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Delete a data import job executed on a digital twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--job-id', '-j'],
                  description: 'Id of job. A system generated id is assigned when this parameter is ommitted during job creation',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'List all data import jobs executed on a digital twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Show details of a data import job executed on a digital twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--job-id', '-j'],
                  description: 'Id of job. A system generated id is assigned when this parameter is ommitted during job creation',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
      name: 'model',
      description: 'Manage DTDL models and definitions on a Digital Twins instance',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Uploads one or more models',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--failure-policy', '--fp'],
              description: 'Indicates the failure policy when an error occurs while processing a models batch. In the \'Rollback\' mode all models created in previous batches are deleted one at a time. When selected as \'None\' the models created in previous batches are not deleted from DT instance',
              args: [
                Arg(
                name: 'failure-policy',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'Rollback')
                ]
              )
              ]
            ),
            Option(
              name: ['--from-directory', '--fd'],
              description: 'The directory JSON model files will be parsed from. Please Note: Models are created atomically when directory contains 250 or lesser models, hence in case of an error none of the models get created.Input model set is chunked & created in batches when directory has more than 250 models(API limit). In case of an error processing a batch, the behavior is determined by the --failure-policy parameter',
              args: [
                Arg(
                name: 'from-director'
              )
              ]
            ),
            Option(
              name: ['--max-models-per-batch', '--mmpb'],
              description: 'The maximum model size per batch when creating more than 250 models.Reduce this number to prevent a DTDLParser error',
              args: [
                Arg(
                name: 'max-models-per-batc'
              )
              ]
            ),
            Option(
              name: '--models',
              description: 'Inline model JSON or file path to model JSON. Please Note: Models are created atomically when model JSON contains 250 or lesser models, hence in case of an error none of the models get created.Input model set is chunked & created in batches when model JSON has more than 250 models(API limit). In case of an error processing a batch, the behavior is determined by the --failure-policy parameter',
              args: [
                Arg(
                name: 'model'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Delete a model. A model can only be deleted if no other models reference it',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--model-id', '--dtmi', '-m'],
              description: 'Digital Twins model Id. Example: dtmi:com:example:Room;2',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete-all',
          description: 'Delete all models within a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List model metadata, definitions and dependencies',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--definition', '--def'],
              description: 'The operation will retrieve the model definition'
            ),
            Option(
              name: '--dependencies-for',
              description: 'The set of models which will have their dependencies retrieved. If omitted, all models are retrieved. Format is a whitespace separated list',
              args: [
                Arg(
                name: 'dependencies-fo'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Retrieve a target model or model definition',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--model-id', '--dtmi', '-m'],
              description: 'Digital Twins model Id. Example: dtmi:com:example:Room;2',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: ['--definition', '--def'],
              description: 'The operation will retrieve the model definition'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Updates the metadata for a model. Currently a model can only be decommisioned',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--model-id', '--dtmi', '-m'],
              description: 'Digital Twins model Id. Example: dtmi:com:example:Room;2',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: '--decommission',
              description: 'Indicates intent to decommission a target model',
              args: [
                Arg(
                name: 'decommission',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
      name: 'network',
      description: 'Manage Digital Twins network configuration including private links and endpoint connections',
      subcommands: [

        Subcommand(
          name: 'private-endpoint',
          description: 'Manage Digital Twins instance private-endpoints.\n\n\t\tUse \'az network private-endpoint create\' to create a private-endpoint and link to a Digital Twins resource',
          subcommands: [

            Subcommand(
              name: 'connection',
              description: 'Manage Digital Twins instance private-endpoint connections',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete a private-endpoint connection associated with the Digital Twins instance',
                  options: [

                    Option(
                      name: ['--conn-name', '--cn'],
                      description: 'Private endpoint connection name',
                      args: [
                        Arg(
                        name: 'conn-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--dt-name', '--dtn', '-n'],
                      description: 'Digital Twins instance name',
                      args: [
                        Arg(
                        name: 'dt-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
                  description: 'List private-endpoint connections associated with the Digital Twins instance',
                  options: [

                    Option(
                      name: ['--dt-name', '--dtn', '-n'],
                      description: 'Digital Twins instance name',
                      args: [
                        Arg(
                        name: 'dt-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
                  description: 'Set the state of a private-endpoint connection associated with the Digital Twins instance',
                  options: [

                    Option(
                      name: ['--conn-name', '--cn'],
                      description: 'Private endpoint connection name',
                      args: [
                        Arg(
                        name: 'conn-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--dt-name', '--dtn', '-n'],
                      description: 'Digital Twins instance name',
                      args: [
                        Arg(
                        name: 'dt-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--status',
                      description: 'The status of a private endpoint connection',
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
                      name: ['--actions-required', '--ar'],
                      description: 'A message indicating if changes on the service provider require any updates on the consumer',
                      args: [
                        Arg(
                        name: 'actions-require'
                      )
                      ]
                    ),
                    Option(
                      name: ['--description', '--desc'],
                      description: 'Description for the private endpoint connection',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--group-ids',
                      description: 'Space separated list of group ids that the private endpoint should connect to',
                      args: [
                        Arg(
                        name: 'group-id'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
                  description: 'Show a private-endpoint connection associated with the Digital Twins instance',
                  options: [

                    Option(
                      name: ['--conn-name', '--cn'],
                      description: 'Private endpoint connection name',
                      args: [
                        Arg(
                        name: 'conn-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--dt-name', '--dtn', '-n'],
                      description: 'Digital Twins instance name',
                      args: [
                        Arg(
                        name: 'dt-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
                  description: 'Wait until an operation on a private-endpoint connection is complete',
                  options: [

                    Option(
                      name: ['--conn-name', '--cn'],
                      description: 'Private endpoint connection name',
                      args: [
                        Arg(
                        name: 'conn-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--dt-name', '--dtn', '-n'],
                      description: 'Digital Twins instance name',
                      args: [
                        Arg(
                        name: 'dt-nam'
                      )
                      ]
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
                      description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
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
          name: 'private-link',
          description: 'Manage Digital Twins instance private-link operations',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List private-links associated with the Digital Twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Show a private-link associated with the instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--link-name', '--ln'],
                  description: 'Private link name',
                  args: [
                    Arg(
                    name: 'link-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
      name: 'role-assignment',
      description: 'Manage RBAC role assignments for a Digital Twins instance.\n\n\t\tNote that in order to perform role assignments, the logged in principal needs permissions\nsuch as Owner or User Access Administrator at the assigned scope.\nThis command group is provided for convenience. For more complex role assignment scenarios\nuse the \'az role assignment\' command group',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Assign a user, group or service principal to a role against a Digital Twins instance',
          options: [

            Option(
              name: '--assignee',
              description: 'Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name',
              args: [
                Arg(
                name: 'assigne'
              )
              ]
            ),
            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Role name or Id',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Remove a user, group or service principal role assignment from a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: '--assignee',
              description: 'Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name',
              args: [
                Arg(
                name: 'assigne'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Role name or Id',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the existing role assignments of a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: '--include-inherited',
              description: 'Include assignments applied on parent scopes'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Role name or Id',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'route',
      description: 'Manage and configure event routes.\n\n\t\tNote that an endpoint must first be configured before adding an event route',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Add an event route to a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--endpoint-name', '--en'],
              description: 'Endpoint name',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--route-name', '--rn'],
              description: 'Event route name',
              args: [
                Arg(
                name: 'route-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Event route filter',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Remove an event route from a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--route-name', '--rn'],
              description: 'Event route name',
              args: [
                Arg(
                name: 'route-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List the configured event routes of a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show details of an event route configured on a Digital Twins instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--route-name', '--rn'],
              description: 'Event route name',
              args: [
                Arg(
                name: 'route-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
      name: 'twin',
      description: 'Manage and configure the digital twins of a Digital Twins instance',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a digital twin on an instance',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--model-id', '--dtmi', '-m'],
              description: 'Digital Twins model Id. Example: dtmi:com:example:Room;2',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: ['--twin-id', '-t'],
              description: 'The digital twin Id',
              args: [
                Arg(
                name: 'twin-i'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'Indicates the create operation should fail if an existing twin with the same id exists'
            ),
            Option(
              name: ['--properties', '-p'],
              description: 'Initial property values for instantiating a digital twin or related components. Provide file path or inline JSON. Properties are required for twins that contain components, at the minimum you must provide an empty \$metadata object for each component',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Remove a digital twin. All relationships referencing this twin must already be deleted',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--twin-id', '-t'],
              description: 'The digital twin Id',
              args: [
                Arg(
                name: 'twin-i'
              )
              ]
            ),
            Option(
              name: ['--etag', '-e'],
              description: 'Entity tag value. The command will succeed if the etag matches the current etag for the resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete-all',
          description: 'Deletes all digital twins within a Digital Twins instance, including all relationships for those twins',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          name: 'query',
          description: 'Query the digital twins of an instance. Allows traversing relationships and filtering by property values',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--query-command', '-q'],
              description: 'User query to be executed',
              args: [
                Arg(
                name: 'query-comman'
              )
              ]
            ),
            Option(
              name: ['--show-cost', '--cost'],
              description: 'Calculates and shows the query charge'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show the details of a digital twin',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--twin-id', '-t'],
              description: 'The digital twin Id',
              args: [
                Arg(
                name: 'twin-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Update an instance digital twin via JSON patch specification',
          options: [

            Option(
              name: ['--dt-name', '--dtn', '-n'],
              description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
              args: [
                Arg(
                name: 'dt-nam'
              )
              ]
            ),
            Option(
              name: ['--json-patch', '--patch'],
              description: 'An update specification described by JSON-patch. Updates to property values and \$model elements may happen in the same request. Operations are limited to add, replace and remove. Provide file path or inline JSON',
              args: [
                Arg(
                name: 'json-patc'
              )
              ]
            ),
            Option(
              name: ['--twin-id', '-t'],
              description: 'The digital twin Id',
              args: [
                Arg(
                name: 'twin-i'
              )
              ]
            ),
            Option(
              name: ['--etag', '-e'],
              description: 'Entity tag value. The command will succeed if the etag matches the current etag for the resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'component',
          description: 'Show and update the digital twin components of a Digital Twins instance',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show details of a digital twin component',
              options: [

                Option(
                  name: '--component',
                  description: 'The path to the DTDL component',
                  args: [
                    Arg(
                    name: 'componen'
                  )
                  ]
                ),
                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '-t'],
                  description: 'The digital twin Id',
                  args: [
                    Arg(
                    name: 'twin-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Update a digital twin component via JSON patch specification',
              options: [

                Option(
                  name: '--component',
                  description: 'The path to the DTDL component',
                  args: [
                    Arg(
                    name: 'componen'
                  )
                  ]
                ),
                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--json-patch', '--patch'],
                  description: 'An update specification described by JSON-patch. Updates to property values and \$model elements may happen in the same request. Operations are limited to add, replace and remove. Provide file path or inline JSON',
                  args: [
                    Arg(
                    name: 'json-patc'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '-t'],
                  description: 'The digital twin Id',
                  args: [
                    Arg(
                    name: 'twin-i'
                  )
                  ]
                ),
                Option(
                  name: ['--etag', '-e'],
                  description: 'Entity tag value. The command will succeed if the etag matches the current etag for the resource',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          name: 'relationship',
          description: 'Manage and configure the digital twin relationships of a Digital Twins instance',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a relationship between source and target digital twins',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--relationship', '--kind'],
                  description: 'Relationship name or kind. For example: \'contains\'',
                  args: [
                    Arg(
                    name: 'relationshi'
                  )
                  ]
                ),
                Option(
                  name: ['--relationship-id', '-r'],
                  description: 'Relationship Id',
                  args: [
                    Arg(
                    name: 'relationship-i'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '--source', '-t'],
                  description: 'The source twin Id for a relationship',
                  args: [
                    Arg(
                    name: 'twin-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-twin-id', '--target'],
                  description: 'The target twin Id for a relationship',
                  args: [
                    Arg(
                    name: 'target-twin-i'
                  )
                  ]
                ),
                Option(
                  name: '--if-none-match',
                  description: 'Indicates the create operation should fail if an existing twin with the same id exists'
                ),
                Option(
                  name: ['--properties', '-p'],
                  description: 'Initial property values for instantiating a digital twin relationship. Provide file path or inline JSON',
                  args: [
                    Arg(
                    name: 'propertie'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Delete a digital twin relationship on a Digital Twins instance',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--relationship-id', '-r'],
                  description: 'Relationship Id',
                  args: [
                    Arg(
                    name: 'relationship-i'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '--source', '-t'],
                  description: 'The source twin Id for a relationship',
                  args: [
                    Arg(
                    name: 'twin-i'
                  )
                  ]
                ),
                Option(
                  name: ['--etag', '-e'],
                  description: 'Entity tag value. The command will succeed if the etag matches the current etag for the resource',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete-all',
              description: 'Deletes all digital twin relationships within a Digital Twins instance, including incoming relationships',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '--source', '-t'],
                  description: 'The source twin Id for a relationship',
                  args: [
                    Arg(
                    name: 'twin-i'
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
              description: 'List the relationships of a digital twin',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '--source', '-t'],
                  description: 'The source twin Id for a relationship',
                  args: [
                    Arg(
                    name: 'twin-i'
                  )
                  ]
                ),
                Option(
                  name: '--incoming',
                  description: 'Retrieves all incoming relationships for a digital twin'
                ),
                Option(
                  name: ['--relationship', '--kind'],
                  description: 'Filter result by the kind of relationship',
                  args: [
                    Arg(
                    name: 'relationshi'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Show details of a digital twin relationship',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--relationship-id', '-r'],
                  description: 'Relationship Id',
                  args: [
                    Arg(
                    name: 'relationship-i'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '--source', '-t'],
                  description: 'The source twin Id for a relationship',
                  args: [
                    Arg(
                    name: 'twin-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Updates the properties of a relationship between two digital twins via JSON patch specification',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--json-patch', '--patch'],
                  description: 'An update specification described by JSON-patch. Updates to property values and \$model elements may happen in the same request. Operations are limited to add, replace and remove. Provide file path or inline JSON',
                  args: [
                    Arg(
                    name: 'json-patc'
                  )
                  ]
                ),
                Option(
                  name: ['--relationship-id', '-r'],
                  description: 'Relationship Id',
                  args: [
                    Arg(
                    name: 'relationship-i'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '--source', '-t'],
                  description: 'The source twin Id for a relationship',
                  args: [
                    Arg(
                    name: 'twin-i'
                  )
                  ]
                ),
                Option(
                  name: ['--etag', '-e'],
                  description: 'Entity tag value. The command will succeed if the etag matches the current etag for the resource',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
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
          name: 'telemetry',
          description: 'Test and validate the event routes and endpoints of a Digital Twins instance',
          subcommands: [

            Subcommand(
              name: 'send',
              description: 'Sends telemetry on behalf of a digital twin. If component path is provided the emitted telemetry is on behalf of the component',
              options: [

                Option(
                  name: ['--dt-name', '--dtn', '-n'],
                  description: 'Digital Twins instance name or hostname. If an instance name is provided, the user subscription is first queried for the target instance to retrieve the hostname. If a hostname is provided, the subscription query is skipped and the provided value is used for subsequent interaction',
                  args: [
                    Arg(
                    name: 'dt-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--twin-id', '-t'],
                  description: 'The digital twin Id',
                  args: [
                    Arg(
                    name: 'twin-i'
                  )
                  ]
                ),
                Option(
                  name: '--component',
                  description: 'The path to the DTDL component. If set, telemetry will be emitted on behalf of the component',
                  args: [
                    Arg(
                    name: 'componen'
                  )
                  ]
                ),
                Option(
                  name: '--dt-id',
                  description: 'A unique message identifier (in the scope of the digital twin id) that is commonly used for de-duplicating messages. If no value is provided a GUID is automatically generated',
                  args: [
                    Arg(
                    name: 'dt-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Digital Twins instance resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--telemetry',
                  description: 'Inline telemetry JSON or file path to telemetry JSON. Default payload is an empty object: {}',
                  args: [
                    Arg(
                    name: 'telemetr'
                  )
                  ]
                ),
                Option(
                  name: ['--telemetry-source-time', '--tst'],
                  description: 'An RFC 3339 timestamp that identifies the time the telemetry was measured',
                  args: [
                    Arg(
                    name: 'telemetry-source-tim'
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
