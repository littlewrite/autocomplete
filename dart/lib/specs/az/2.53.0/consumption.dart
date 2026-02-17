// Auto-generated from TypeScript source: consumption.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `consumption` CLI
final FigSpec consumptionSpec = FigSpec(
  name: 'consumption',
  description: 'Manage consumption of Azure resources',
  subcommands: [

    Subcommand(
      name: 'budget',
      description: 'Manage budgets for an Azure subscription',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a budget for an Azure subscription',
          options: [

            Option(
              name: '--amount',
              description: 'Amount of a budget',
              args: [
                Arg(
                name: 'amoun'
              )
              ]
            ),
            Option(
              name: '--budget-name',
              description: 'Name of a budget',
              args: [
                Arg(
                name: 'budget-nam'
              )
              ]
            ),
            Option(
              name: '--category',
              description: 'Category of the budget can be cost or usage',
              args: [
                Arg(
                name: 'category',
                suggestions: [

                  FigSuggestion(name: 'cost'),
                  FigSuggestion(name: 'usage')
                ]
              )
              ]
            ),
            Option(
              name: ['--end-date', '-e'],
              description: 'End date (YYYY-MM-DD in UTC) of time period of a budget',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: ['--start-date', '-s'],
              description: 'Start date (YYYY-MM-DD in UTC) of time period of a budget',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: '--time-grain',
              description: 'Time grain of the budget can be monthly, quarterly, or annually',
              args: [
                Arg(
                name: 'time-grain',
                suggestions: [

                  FigSuggestion(name: 'annually'),
                  FigSuggestion(name: 'monthly'),
                  FigSuggestion(name: 'quarterly')
                ]
              )
              ]
            ),
            Option(
              name: '--meter-filter',
              description: 'Space-separated list of meters to filter on. Required if category is usage',
              args: [
                Arg(
                name: 'meter-filte'
              )
              ]
            ),
            Option(
              name: '--resource-filter',
              description: 'Space-separated list of resource instances to filter on',
              args: [
                Arg(
                name: 'resource-filte'
              )
              ]
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
              name: '--resource-group-filter',
              description: 'Space-separated list of resource groups to filter on',
              args: [
                Arg(
                name: 'resource-group-filte'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-with-rg',
          description: 'Create operation to create or update a budget. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag',
          options: [

            Option(
              name: '--amount',
              description: 'The total amount of cost to track with the budget',
              args: [
                Arg(
                name: 'amoun'
              )
              ]
            ),
            Option(
              name: ['--budget-name', '--name', '-n'],
              description: 'Budget Name',
              args: [
                Arg(
                name: 'budget-nam'
              )
              ]
            ),
            Option(
              name: '--category',
              description: 'The category of the budget, whether the budget tracks cost or usage',
              args: [
                Arg(
                name: 'category',
                suggestions: [

                  FigSuggestion(name: 'Cost'),
                  FigSuggestion(name: 'Usage')
                ]
              )
              ]
            ),
            Option(
              name: '--e-tag',
              description: 'ETag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not',
              args: [
                Arg(
                name: 'e-ta'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'May be used to filter budgets by resource group, resource, or meter. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter'
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
              name: '--notifications',
              description: 'Dictionary of notifications associated with the budget. Budget can have up to five notifications. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'notification'
              )
              ]
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
              name: '--time-grain',
              description: 'The time covered by a budget. Tracking of the amount will be reset based on the time grain',
              args: [
                Arg(
                name: 'time-grain',
                suggestions: [

                  FigSuggestion(name: 'Annually'),
                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Quarterly')
                ]
              )
              ]
            ),
            Option(
              name: '--time-period',
              description: 'Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than three months. Past start date should be selected within the timegrain period. There are no restrictions on the end date. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'time-perio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a budget for an Azure subscription',
          options: [

            Option(
              name: '--budget-name',
              description: 'Name of a budget',
              args: [
                Arg(
                name: 'budget-nam'
              )
              ]
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
          name: 'delete-with-rg',
          description: 'Delete operation to delete a budget',
          options: [

            Option(
              name: ['--budget-name', '--name', '-n'],
              description: 'Budget Name',
              args: [
                Arg(
                name: 'budget-nam'
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
          name: 'list',
          description: 'List budgets for an Azure subscription',
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
          name: 'show',
          description: 'Show budget for an Azure subscription',
          options: [

            Option(
              name: '--budget-name',
              description: 'Name of a budget',
              args: [
                Arg(
                name: 'budget-nam'
              )
              ]
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
          name: 'show-with-rg',
          description: 'Get the budget for a resource group under a subscription by budget name',
          options: [

            Option(
              name: ['--budget-name', '--name', '-n'],
              description: 'Budget Name',
              args: [
                Arg(
                name: 'budget-nam'
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
          description: 'Update operation to create or update a budget. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag',
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
              name: '--amount',
              description: 'The total amount of cost to track with the budget',
              args: [
                Arg(
                name: 'amoun'
              )
              ]
            ),
            Option(
              name: ['--budget-name', '--name', '-n'],
              description: 'Budget Name',
              args: [
                Arg(
                name: 'budget-nam'
              )
              ]
            ),
            Option(
              name: '--category',
              description: 'The category of the budget, whether the budget tracks cost or usage',
              args: [
                Arg(
                name: 'category',
                suggestions: [

                  FigSuggestion(name: 'Cost'),
                  FigSuggestion(name: 'Usage')
                ]
              )
              ]
            ),
            Option(
              name: '--e-tag',
              description: 'ETag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not',
              args: [
                Arg(
                name: 'e-ta'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'May be used to filter budgets by resource group, resource, or meter. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter'
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
              name: '--notifications',
              description: 'Dictionary of notifications associated with the budget. Budget can have up to five notifications. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'notification'
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
              name: '--time-grain',
              description: 'The time covered by a budget. Tracking of the amount will be reset based on the time grain',
              args: [
                Arg(
                name: 'time-grain',
                suggestions: [

                  FigSuggestion(name: 'Annually'),
                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Quarterly')
                ]
              )
              ]
            ),
            Option(
              name: '--time-period',
              description: 'Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than three months. Past start date should be selected within the timegrain period. There are no restrictions on the end date. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'time-perio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-with-rg',
          description: 'Update operation to create or update a budget. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag',
          options: [

            Option(
              name: '--amount',
              description: 'The total amount of cost to track with the budget',
              args: [
                Arg(
                name: 'amoun'
              )
              ]
            ),
            Option(
              name: ['--budget-name', '--name', '-n'],
              description: 'Budget Name',
              args: [
                Arg(
                name: 'budget-nam'
              )
              ]
            ),
            Option(
              name: '--category',
              description: 'The category of the budget, whether the budget tracks cost or usage',
              args: [
                Arg(
                name: 'category',
                suggestions: [

                  FigSuggestion(name: 'Cost'),
                  FigSuggestion(name: 'Usage')
                ]
              )
              ]
            ),
            Option(
              name: '--e-tag',
              description: 'ETag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not',
              args: [
                Arg(
                name: 'e-ta'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'May be used to filter budgets by resource group, resource, or meter. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter'
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
              name: '--notifications',
              description: 'Dictionary of notifications associated with the budget. Budget can have up to five notifications. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'notification'
              )
              ]
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
              name: '--time-grain',
              description: 'The time covered by a budget. Tracking of the amount will be reset based on the time grain',
              args: [
                Arg(
                name: 'time-grain',
                suggestions: [

                  FigSuggestion(name: 'Annually'),
                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Quarterly')
                ]
              )
              ]
            ),
            Option(
              name: '--time-period',
              description: 'Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than three months. Past start date should be selected within the timegrain period. There are no restrictions on the end date. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'time-perio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'marketplace',
      description: 'Inspect the marketplace usage data of an Azure subscription within a billing period',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the marketplace for an Azure subscription within a billing period',
          options: [

            Option(
              name: ['--billing-period-name', '-p'],
              description: 'Name of the billing period to get the marketplace',
              args: [
                Arg(
                name: 'billing-period-nam'
              )
              ]
            ),
            Option(
              name: ['--end-date', '-e'],
              description: 'End date (YYYY-MM-DD in UTC). If specified, also requires --start-date',
              args: [
                Arg(
                name: 'end-dat'
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
              name: ['--start-date', '-s'],
              description: 'Start date (YYYY-MM-DD in UTC). If specified, also requires --end-date',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: ['--top', '-t'],
              description: 'Maximum number of items to return. Value range: 1-1000',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pricesheet',
      description: 'Inspect the price sheet of an Azure subscription within a billing period',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Show the price sheet for an Azure subscription within a billing period',
          options: [

            Option(
              name: ['--billing-period-name', '-p'],
              description: 'Name of the billing period to get the price sheet',
              args: [
                Arg(
                name: 'billing-period-nam'
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
              name: '--include-meter-details',
              description: 'Include meter details in the price sheet',
              args: [
                Arg(
                name: 'include-meter-detail'
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
      name: 'reservation',
      description: 'Manage reservations for Azure resources',
      subcommands: [

        Subcommand(
          name: 'detail',
          description: 'List reservation details',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the details of a reservation by order id or reservation id',
              options: [

                Option(
                  name: ['--end-date', '-e'],
                  description: 'End date (YYYY-MM-DD in UTC). Only needed for daily grain and if specified, also requires --start-date',
                  args: [
                    Arg(
                    name: 'end-dat'
                  )
                  ]
                ),
                Option(
                  name: '--reservation-order-id',
                  description: 'Reservation order id',
                  args: [
                    Arg(
                    name: 'reservation-order-i'
                  )
                  ]
                ),
                Option(
                  name: ['--start-date', '-s'],
                  description: 'Start date (YYYY-MM-DD in UTC). Only needed for daily grain and if specified, also requires --end-date',
                  args: [
                    Arg(
                    name: 'start-dat'
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
                  name: '--reservation-id',
                  description: 'Reservation id',
                  args: [
                    Arg(
                    name: 'reservation-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'summary',
          description: 'List reservation summaries',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List reservation summaries for daily or monthly by order Id or reservation id',
              options: [

                Option(
                  name: '--grain',
                  description: 'Reservation summary grain. Possible values are daily or monthly',
                  args: [
                    Arg(
                    name: 'grain',
                    suggestions: [

                      FigSuggestion(name: 'daily'),
                      FigSuggestion(name: 'monthly')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--reservation-order-id',
                  description: 'Reservation order id',
                  args: [
                    Arg(
                    name: 'reservation-order-i'
                  )
                  ]
                ),
                Option(
                  name: ['--end-date', '-e'],
                  description: 'End date (YYYY-MM-DD in UTC). Only needed for daily grain and if specified, also requires --start-date',
                  args: [
                    Arg(
                    name: 'end-dat'
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
                  name: '--reservation-id',
                  description: 'Id of the reservation',
                  args: [
                    Arg(
                    name: 'reservation-i'
                  )
                  ]
                ),
                Option(
                  name: ['--start-date', '-s'],
                  description: 'Start date (YYYY-MM-DD in UTC). Only needed for daily grain and if specified, also requires --end-date',
                  args: [
                    Arg(
                    name: 'start-dat'
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
      name: 'usage',
      description: 'Inspect the usage of Azure resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the details of Azure resource consumption, either as an invoice or within a billing period',
          options: [

            Option(
              name: ['--billing-period-name', '-p'],
              description: 'Name of the billing period to get the usage details that associate with',
              args: [
                Arg(
                name: 'billing-period-nam'
              )
              ]
            ),
            Option(
              name: ['--end-date', '-e'],
              description: 'End date (YYYY-MM-DD in UTC). If specified, also requires --start-date',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: ['--include-additional-properties', '-a'],
              description: 'Include additional properties in the usages',
              args: [
                Arg(
                name: 'include-additional-propertie'
              )
              ]
            ),
            Option(
              name: ['--include-meter-details', '-m'],
              description: 'Include meter details in the usages',
              args: [
                Arg(
                name: 'include-meter-detail'
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
              name: ['--start-date', '-s'],
              description: 'Start date (YYYY-MM-DD in UTC). If specified, also requires --end-date',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: ['--top', '-t'],
              description: 'Maximum number of items to return. Value range: 1-1000',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
