// Auto-generated from TypeScript source: billing-benefits.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `billing-benefits` CLI
final FigSpec billingBenefitsSpec = FigSpec(
  name: 'billing-benefits',
  description: 'Azure billing benefits commands',
  subcommands: [

    Subcommand(
      name: 'reservation-order-aliases',
      description: 'Azure billing benefits reservation order aliases commands',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a reservation order alias',
          options: [

            Option(
              name: '--order-alias-name',
              description: 'Name of the reservation order alias',
              args: [
                Arg(
                name: 'order-alias-nam'
              )
              ]
            ),
            Option(
              name: '--applied-scope-prop',
              description: 'Properties specific to applied scope type. Not required if not applicable. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'applied-scope-pro'
              )
              ]
            ),
            Option(
              name: '--applied-scope-type',
              description: 'Type of the Applied Scope',
              args: [
                Arg(
                name: 'applied-scope-type',
                suggestions: [

                  FigSuggestion(name: 'ManagementGroup'),
                  FigSuggestion(name: 'Shared'),
                  FigSuggestion(name: 'Single')
                ]
              )
              ]
            ),
            Option(
              name: '--billing-plan',
              description: 'Represents the billing plan in ISO 8601 format. Required only for monthly billing plans',
              args: [
                Arg(
                name: 'billing-plan',
                suggestions: [

                  FigSuggestion(name: 'P1M')
                ]
              )
              ]
            ),
            Option(
              name: '--billing-scope-id',
              description: 'Subscription that will be charged for purchasing the benefit',
              args: [
                Arg(
                name: 'billing-scope-i'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--instance-flexibility',
              description: 'Turning this on will apply the reservation discount to other VMs in the same VM size group',
              args: [
                Arg(
                name: 'instance-flexibility',
                suggestions: [

                  FigSuggestion(name: 'Off'),
                  FigSuggestion(name: 'On')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The Azure Region where the reservation benefits are applied to',
              args: [
                Arg(
                name: 'locatio'
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
              name: '--quantity',
              description: 'Total Quantity of the SKUs purchased in the Reservation',
              args: [
                Arg(
                name: 'quantit'
              )
              ]
            ),
            Option(
              name: '--renew',
              description: 'Setting this to true will automatically purchase a new benefit on the expiration date time'
            ),
            Option(
              name: '--reserved-resource-type',
              description: 'The type of the resource that is being reserved',
              args: [
                Arg(
                name: 'reserved-resource-type',
                suggestions: [

                  FigSuggestion(name: 'AVS'),
                  FigSuggestion(name: 'AppService'),
                  FigSuggestion(name: 'AzureDataExplorer'),
                  FigSuggestion(name: 'AzureFiles'),
                  FigSuggestion(name: 'BlockBlob'),
                  FigSuggestion(name: 'CosmosDb'),
                  FigSuggestion(name: 'DataFactory'),
                  FigSuggestion(name: 'Databricks'),
                  FigSuggestion(name: 'DedicatedHost'),
                  FigSuggestion(name: 'ManagedDisk'),
                  FigSuggestion(name: 'MariaDb'),
                  FigSuggestion(name: 'MySql'),
                  FigSuggestion(name: 'NetAppStorage'),
                  FigSuggestion(name: 'PostgreSql'),
                  FigSuggestion(name: 'RedHat'),
                  FigSuggestion(name: 'RedHatOsa'),
                  FigSuggestion(name: 'RedisCache'),
                  FigSuggestion(name: 'SapHana'),
                  FigSuggestion(name: 'SqlAzureHybridBenefit'),
                  FigSuggestion(name: 'SqlDataWarehouse'),
                  FigSuggestion(name: 'SqlDatabases'),
                  FigSuggestion(name: 'SqlEdge'),
                  FigSuggestion(name: 'SuseLinux'),
                  FigSuggestion(name: 'VMwareCloudSimple'),
                  FigSuggestion(name: 'VirtualMachineSoftware'),
                  FigSuggestion(name: 'VirtualMachines')
                ]
              )
              ]
            ),
            Option(
              name: '--review-date-time',
              description: 'This is the date-time when the Azure Hybrid Benefit needs to be reviewed',
              args: [
                Arg(
                name: 'review-date-tim'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Name of the SKU to be applied',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--term',
              description: 'Represent benefit term in ISO 8601 format',
              args: [
                Arg(
                name: 'term',
                suggestions: [

                  FigSuggestion(name: 'P1Y'),
                  FigSuggestion(name: 'P3Y'),
                  FigSuggestion(name: 'P5Y')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a reservation order alias',
          options: [

            Option(
              name: '--order-alias-name',
              description: 'Name of the reservation order alias',
              args: [
                Arg(
                name: 'order-alias-nam'
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
              name: '--order-alias-name',
              description: 'Name of the reservation order alias',
              args: [
                Arg(
                name: 'order-alias-nam'
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
      name: 'savings-plan',
      description: 'Azure billing benefits savings plan commands',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List savings plans',
          options: [

            Option(
              name: '--filter',
              description: 'May be used to filter by reservation properties. The filter supports \'eq\', \'or\', and \'and\'. It does not currently support \'ne\', \'gt\', \'le\', \'ge\', or \'not\'. Reservation properties include sku/name, properties/{appliedScopeType, archived, displayName, displayProvisioningState, effectiveDateTime, expiryDate, provisioningState, quantity, renew, reservedResourceType, term, userFriendlyAppliedScopeType, userFriendlyRenewState}',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'May be used to sort order by reservation properties',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--selected-state',
              description: 'The selected provisioning state',
              args: [
                Arg(
                name: 'selected-stat'
              )
              ]
            ),
            Option(
              name: '--skiptoken',
              description: 'The number of savings plans to skip from the list before returning results',
              args: [
                Arg(
                name: 'skiptoke'
              )
              ]
            ),
            Option(
              name: '--take',
              description: 'To number of savings plans to return',
              args: [
                Arg(
                name: 'tak'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'savings-plan-order',
      description: 'Azure billing benefits savings plan order commands',
      subcommands: [

        Subcommand(
          name: 'elevate',
          description: 'Elevate as owner on savings plan order based on billing permissions',
          options: [

            Option(
              name: '--savings-plan-order-id',
              description: 'Order ID of the savings plan',
              args: [
                Arg(
                name: 'savings-plan-order-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all Savings plan orders'
        ),
        Subcommand(
          name: 'show',
          description: 'Get a savings plan order',
          options: [

            Option(
              name: '--savings-plan-order-id',
              description: 'Order ID of the savings plan',
              args: [
                Arg(
                name: 'savings-plan-order-i'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'May be used to expand the detail information of some properties',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'savings-plan',
          description: 'Azure billing benefits savings plan in savings plan order commands',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List savings plans in an order',
              options: [

                Option(
                  name: '--savings-plan-order-id',
                  description: 'Order ID of the savings plan',
                  args: [
                    Arg(
                    name: 'savings-plan-order-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get savings plan',
              options: [

                Option(
                  name: '--savings-plan-id',
                  description: 'ID of the savings plan',
                  args: [
                    Arg(
                    name: 'savings-plan-i'
                  )
                  ]
                ),
                Option(
                  name: '--savings-plan-order-id',
                  description: 'Order ID of the savings plan',
                  args: [
                    Arg(
                    name: 'savings-plan-order-i'
                  )
                  ]
                ),
                Option(
                  name: '--expand',
                  description: 'May be used to expand the detail information of some properties',
                  args: [
                    Arg(
                    name: 'expan'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update savings plan',
              options: [

                Option(
                  name: '--savings-plan-id',
                  description: 'ID of the savings plan',
                  args: [
                    Arg(
                    name: 'savings-plan-i'
                  )
                  ]
                ),
                Option(
                  name: '--savings-plan-order-id',
                  description: 'Order ID of the savings plan',
                  args: [
                    Arg(
                    name: 'savings-plan-order-i'
                  )
                  ]
                ),
                Option(
                  name: '--applied-scope-prop',
                  description: 'Properties specific to applied scope type. Not required if not applicable. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'applied-scope-pro'
                  )
                  ]
                ),
                Option(
                  name: '--applied-scope-type',
                  description: 'Type of the Applied Scope',
                  args: [
                    Arg(
                    name: 'applied-scope-type',
                    suggestions: [

                      FigSuggestion(name: 'ManagementGroup'),
                      FigSuggestion(name: 'Shared'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--renew',
                  description: 'Setting this to true will automatically purchase a new benefit on the expiration date time'
                ),
                Option(
                  name: '--renew-properties',
                  description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'renew-propertie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'validate-update',
              description: 'Validate savings plan patch',
              options: [

                Option(
                  name: '--savings-plan-id',
                  description: 'ID of the savings plan',
                  args: [
                    Arg(
                    name: 'savings-plan-i'
                  )
                  ]
                ),
                Option(
                  name: '--savings-plan-order-id',
                  description: 'Order ID of the savings plan',
                  args: [
                    Arg(
                    name: 'savings-plan-order-i'
                  )
                  ]
                ),
                Option(
                  name: '--benefits',
                  description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'benefit'
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
      name: 'savings-plan-order-aliases',
      description: 'Azure billing benefits savings plan order aliases commands',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a savings plan. Learn more about permissions needed at https://go.microsoft.com/fwlink/?linkid=2215851',
          options: [

            Option(
              name: '--order-alias-name',
              description: 'Name of the savings plan order alias',
              args: [
                Arg(
                name: 'order-alias-nam'
              )
              ]
            ),
            Option(
              name: '--applied-scope-prop',
              description: 'Properties specific to applied scope type. Not required if not applicable. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'applied-scope-pro'
              )
              ]
            ),
            Option(
              name: '--applied-scope-type',
              description: 'Type of the Applied Scope',
              args: [
                Arg(
                name: 'applied-scope-type',
                suggestions: [

                  FigSuggestion(name: 'ManagementGroup'),
                  FigSuggestion(name: 'Shared'),
                  FigSuggestion(name: 'Single')
                ]
              )
              ]
            ),
            Option(
              name: '--billing-plan',
              description: 'Represents the billing plan in ISO 8601 format. Required only for monthly billing plans',
              args: [
                Arg(
                name: 'billing-plan',
                suggestions: [

                  FigSuggestion(name: 'P1M')
                ]
              )
              ]
            ),
            Option(
              name: '--billing-scope-id',
              description: 'Subscription that will be charged for purchasing the benefit',
              args: [
                Arg(
                name: 'billing-scope-i'
              )
              ]
            ),
            Option(
              name: '--commitment',
              description: 'Commitment towards the benefit. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'commitmen'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name',
              args: [
                Arg(
                name: 'display-nam'
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
              name: '--sku',
              description: 'Name of the SKU to be applied',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--term',
              description: 'Represent benefit term in ISO 8601 format',
              args: [
                Arg(
                name: 'term',
                suggestions: [

                  FigSuggestion(name: 'P1Y'),
                  FigSuggestion(name: 'P3Y'),
                  FigSuggestion(name: 'P5Y')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a savings plan order alias',
          options: [

            Option(
              name: '--order-alias-name',
              description: 'Name of the savings plan order alias',
              args: [
                Arg(
                name: 'order-alias-nam'
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
              name: '--order-alias-name',
              description: 'Name of the savings plan order alias',
              args: [
                Arg(
                name: 'order-alias-nam'
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
      name: 'validate-purchase',
      description: 'Validate savings plan purchase',
      options: [

        Option(
          name: '--benefits',
          description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'benefit'
          )
          ]
        )
      ]
    )
  ]
);
