// Auto-generated from TypeScript source: reservations.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `reservations` CLI
final FigSpec reservationsSpec = FigSpec(
  name: 'reservations',
  description: 'Azure Reservations',
  subcommands: [

    Subcommand(
      name: 'calculate-exchange',
      description: 'Calculates price for exchanging Reservations if there are no policy errors',
      options: [

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
          name: '--ris-to-exchange',
          description: 'List of reservations that are being returned in this exchange. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'ris-to-exchang'
          )
          ]
        ),
        Option(
          name: '--ris-to-purchase',
          description: 'List of reservations that are being purchased in this exchange. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'ris-to-purchas'
          )
          ]
        ),
        Option(
          name: '--sp-to-purchase',
          description: 'List of savings plans that are being purchased in this exchange. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'sp-to-purchas'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'exchange',
      description: 'Returns one or more Reservations in exchange for one or more Reservation purchases',
      options: [

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
          name: '--session-id',
          description: 'SessionId that was returned by CalculateExchange API',
          args: [
            Arg(
            name: 'session-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List the reservations that the user has access to in the current tenant',
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
        )
      ]
    ),
    Subcommand(
      name: 'catalog',
      description: 'Reservations catalog',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Get catalog of available reservation',
          options: [

            Option(
              name: '--subscription-id',
              description: 'Subscription id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'May be used to filter by Catalog properties. The filter supports \'eq\', \'or\', and \'and\'',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Filters the skus based on the location specified in this parameter. This can be an azure region or global',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--offer-id',
              description: 'Offer id used to get the third party products',
              args: [
                Arg(
                name: 'offer-i'
              )
              ]
            ),
            Option(
              name: '--plan-id',
              description: 'Plan id used to get the third party products',
              args: [
                Arg(
                name: 'plan-i'
              )
              ]
            ),
            Option(
              name: '--publisher-id',
              description: 'Publisher id used to get the third party products',
              args: [
                Arg(
                name: 'publisher-i'
              )
              ]
            ),
            Option(
              name: '--reserved-resource-type',
              description: 'The type of the resource for which the skus should be provided',
              args: [
                Arg(
                name: 'reserved-resource-typ'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'reservation',
      description: 'Reservations reservation',
      subcommands: [

        Subcommand(
          name: 'archive',
          description: 'Archiving a Reservation which is in cancelled/expired state and move it to Archived state',
          options: [

            Option(
              name: '--reservation-id',
              description: 'Id of the Reservation Item',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Reservations within a single ReservationOrder',
          options: [

            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            ),
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
            )
          ]
        ),
        Subcommand(
          name: 'list-available-scope',
          description: 'List Available Scopes for Reservation',
          options: [

            Option(
              name: '--reservation-id',
              description: 'Id of the Reservation Item',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
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
              name: '--scopes',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'scope'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-history',
          description: 'List of all the revisions for the Reservation',
          options: [

            Option(
              name: '--reservation-id',
              description: 'Id of the Reservation Item',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            ),
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
            )
          ]
        ),
        Subcommand(
          name: 'merge',
          description: 'Merge the specified Reservations into a new Reservation. The two Reservations being merged must have same properties',
          options: [

            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
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
              name: '--sources',
              description: 'Format of the resource id should be /providers/Microsoft.Capacity/reservationOrders/{reservationOrderId}/reservations/{reservationId} Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'source'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get specific Reservation details',
          options: [

            Option(
              name: '--reservation-id',
              description: 'Id of the Reservation Item',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Supported value of this query is renewProperties',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'split',
          description: 'Split a Reservation into two Reservations with specified quantity distribution',
          options: [

            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
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
              name: '--quantities',
              description: 'List of the quantities in the new reservations to create. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'quantitie'
              )
              ]
            ),
            Option(
              name: '--reservation-id',
              description: 'Resource id of the reservation to be split. Format of the resource id should be /providers/Microsoft.Capacity/reservationOrders/{reservationOrderId}/reservations/{reservationId}',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unarchive',
          description: 'Unarchiving a Reservation moves it to the state it was before archiving',
          options: [

            Option(
              name: '--reservation-id',
              description: 'Id of the Reservation Item',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the applied scopes, renewal, name, instance-flexibility of the Reservation',
          options: [

            Option(
              name: '--reservation-id',
              description: 'Id of the Reservation Item',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            ),
            Option(
              name: '--applied-scope-property',
              description: 'Properties specific to applied scope type. Not required if not applicable. Required and need to provide tenantId and managementGroupId if AppliedScopeType is ManagementGroup Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'applied-scope-propert'
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
              name: '--applied-scopes',
              description: 'List of the subscriptions that the benefit will be applied. Do not specify if AppliedScopeType is Shared. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'applied-scope'
              )
              ]
            ),
            Option(
              name: '--instance-flexibility',
              description: 'Turning this on will apply the reservation discount to other VMs in the same VM size group. Only specify for VirtualMachines reserved resource type',
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
              name: '--name',
              description: 'Name of the Reservation',
              args: [
                Arg(
                name: 'nam'
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
              name: '--renew',
              description: 'Setting this to true will automatically purchase a new reservation on the expiration date time'
            ),
            Option(
              name: '--renewal-properties',
              description: 'Renewal purchase properties Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'renewal-propertie'
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
              name: '--reservation-id',
              description: 'Id of the Reservation Item',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
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
              name: '--expand',
              description: 'Supported value of this query is renewProperties',
              args: [
                Arg(
                name: 'expan'
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
      name: 'reservation-order',
      description: 'Reservations reservation-order',
      subcommands: [

        Subcommand(
          name: 'calculate',
          description: 'Calculate price for placing a ReservationOrder',
          options: [

            Option(
              name: '--applied-scope',
              description: 'Subscription that the benefit will be applied. Required if --applied-scope-type is Single. Do not specify if --applied-scope-type is Shared. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'applied-scop'
              )
              ]
            ),
            Option(
              name: '--applied-scope-property',
              description: 'Properties specific to applied scope type. Not required if not applicable. Required and need to provide tenantId and managementGroupId if AppliedScopeType is ManagementGroup Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'applied-scope-propert'
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
              description: 'Represent the billing plans',
              args: [
                Arg(
                name: 'billing-plan',
                suggestions: [

                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Upfront')
                ]
              )
              ]
            ),
            Option(
              name: '--billing-scope',
              description: 'Subscription that will be charged for purchasing Reservation',
              args: [
                Arg(
                name: 'billing-scop'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Friendly name of the Reservation',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--instance-flexibility',
              description: 'Turning this on will apply the reservation discount to other VMs in the same VM size group. Only specify for VirtualMachines reserved resource type',
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
              name: '--location',
              description: 'The Azure Region where the reserved resource lives',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--quantity',
              description: 'Quantity of the SKUs that are part of the Reservation',
              args: [
                Arg(
                name: 'quantit'
              )
              ]
            ),
            Option(
              name: '--renew',
              description: 'Setting this to true will automatically purchase a new reservation on the expiration date time'
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
              description: 'This is the date-time when the Azure hybrid benefit needs to be reviewed',
              args: [
                Arg(
                name: 'review-date-tim'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Sku name for purchasing',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--term',
              description: 'Represent the term of Reservation',
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
          name: 'calculate-refund',
          description: 'Calculate price for returning Reservations if there are no policy errors',
          options: [

            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Fully qualified identifier of the reservation order being returned',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--quantity',
              description: 'Quantity to be returned. Must be greater than zero',
              args: [
                Arg(
                name: 'quantit'
              )
              ]
            ),
            Option(
              name: '--reservation-id',
              description: 'Fully qualified identifier of the Reservation being returned',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The scope of the refund, e.g. Reservation',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'change-directory',
          description: 'Change directory (tenant) of ReservationOrder and all Reservation under it to specified tenant id',
          options: [

            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            ),
            Option(
              name: '--destination-tenant-id',
              description: 'Tenant id GUID that reservation order is to be transferred to',
              args: [
                Arg(
                name: 'destination-tenant-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List of all the ReservationOrders that the user has access to in the current tenant',
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
            )
          ]
        ),
        Subcommand(
          name: 'purchase',
          description: 'Create ReservationOrder and create resource under the specified URI',
          options: [

            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            ),
            Option(
              name: '--applied-scope',
              description: 'Subscription that the benefit will be applied. Required if --applied-scope-type is Single. Do not specify if --applied-scope-type is Shared. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'applied-scop'
              )
              ]
            ),
            Option(
              name: '--applied-scope-property',
              description: 'Properties specific to applied scope type. Not required if not applicable. Required and need to provide tenantId and managementGroupId if AppliedScopeType is ManagementGroup Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'applied-scope-propert'
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
              description: 'Represent the billing plans',
              args: [
                Arg(
                name: 'billing-plan',
                suggestions: [

                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Upfront')
                ]
              )
              ]
            ),
            Option(
              name: '--billing-scope',
              description: 'Subscription that will be charged for purchasing Reservation',
              args: [
                Arg(
                name: 'billing-scop'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Friendly name of the Reservation',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--instance-flexibility',
              description: 'Turning this on will apply the reservation discount to other VMs in the same VM size group. Only specify for VirtualMachines reserved resource type',
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
              name: '--location',
              description: 'The Azure Region where the reserved resource lives',
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
              description: 'Quantity of the SKUs that are part of the Reservation',
              args: [
                Arg(
                name: 'quantit'
              )
              ]
            ),
            Option(
              name: '--renew',
              description: 'Setting this to true will automatically purchase a new reservation on the expiration date time'
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
              description: 'This is the date-time when the Azure hybrid benefit needs to be reviewed',
              args: [
                Arg(
                name: 'review-date-tim'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Sku name for purchasing',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--term',
              description: 'Represent the term of Reservation',
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
          name: 'return',
          description: 'Return a reservation',
          options: [

            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
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
              description: 'Quantity to be returned. Must be greater than zero',
              args: [
                Arg(
                name: 'quantit'
              )
              ]
            ),
            Option(
              name: '--reservation-id',
              description: 'Fully qualified identifier of the Reservation being returned',
              args: [
                Arg(
                name: 'reservation-i'
              )
              ]
            ),
            Option(
              name: '--return-reason',
              description: 'The reason of returning the reservation',
              args: [
                Arg(
                name: 'return-reaso'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The scope of the refund, e.g. Reservation',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--session-id',
              description: 'SessionId that was returned by CalculateRefund API',
              args: [
                Arg(
                name: 'session-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of the ReservationOrder',
          options: [

            Option(
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'May be used to expand the planInformation',
              args: [
                Arg(
                name: 'expan'
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
              name: '--reservation-order-id',
              description: 'Order Id of the reservation',
              args: [
                Arg(
                name: 'reservation-order-i'
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
              name: '--expand',
              description: 'May be used to expand the planInformation',
              args: [
                Arg(
                name: 'expan'
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
      name: 'reservation-order-id',
      description: 'Reservations reservation-order-id',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List applicable Reservations that are applied to this subscription or a resource group under this subscription',
          options: [

            Option(
              name: '--subscription-id',
              description: 'Subscription id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
