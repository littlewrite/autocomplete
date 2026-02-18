// Auto-generated from TypeScript source: edgeorder.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `edgeorder` CLI
final FigSpec edgeorderSpec = FigSpec(
  name: 'edgeorder',
  description: 'Manage Edge Order',
  subcommands: [

    Subcommand(
      name: 'address',
      description: 'Manage address with edgeorder sub group address',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new address with the specified parameters. Existing address can be updated with this API',
          options: [

            Option(
              name: ['--address-name', '--name', '-n'],
              description: 'The name of the address Resource within the specified resource group. address names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'address-nam'
              )
              ]
            ),
            Option(
              name: '--contact-details',
              description: 'Contact details for the address',
              args: [
                Arg(
                name: 'contact-detail'
              )
              ]
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--shipping-address',
              description: 'Shipping details for the address',
              args: [
                Arg(
                name: 'shipping-addres'
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
          description: 'Delete an address',
          options: [

            Option(
              name: ['--address-name', '--name', '-n'],
              description: 'The name of the address Resource within the specified resource group. address names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'address-nam'
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all the addresses available under the given resource group. And List all the addresses available under the subscription',
          options: [

            Option(
              name: '--filter',
              description: '\$filter is supported to filter based on shipping address properties. Filter supports only equals operation',
              args: [
                Arg(
                name: 'filte'
              )
              ]
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
              name: '--skip-token',
              description: '\$skipToken is supported on Get list of addresses, which provides the next page in the list of address',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get information about the specified address',
          options: [

            Option(
              name: ['--address-name', '--name', '-n'],
              description: 'The name of the address Resource within the specified resource group. address names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'address-nam'
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
          description: 'Update the properties of an existing address',
          options: [

            Option(
              name: ['--address-name', '--name', '-n'],
              description: 'The name of the address Resource within the specified resource group. address names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'address-nam'
              )
              ]
            ),
            Option(
              name: '--contact-details',
              description: 'Contact details for the address',
              args: [
                Arg(
                name: 'contact-detail'
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
              name: '--if-match',
              description: 'Defines the If-Match condition. The patch will be performed only if the ETag of the job on the server matches this value',
              args: [
                Arg(
                name: 'if-matc'
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
              name: '--shipping-address',
              description: 'Shipping details for the address',
              args: [
                Arg(
                name: 'shipping-addres'
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the address is met',
          options: [

            Option(
              name: '--address-name',
              description: 'The name of the address Resource within the specified resource group',
              args: [
                Arg(
                name: 'address-nam'
              )
              ]
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
    ),
    Subcommand(
      name: 'list-config',
      description: 'This method provides the list of configurations for the given product family, product line and product under subscription',
      options: [

        Option(
          name: '--configuration-filters',
          description: 'Holds details about product hierarchy information and filterable property. Expected value: json-string/json-file/@json-file',
          args: [
            Arg(
            name: 'configuration-filter'
          )
          ]
        ),
        Option(
          name: '--location-placement-id',
          description: 'Location placement Id of a subscription',
          args: [
            Arg(
            name: 'location-placement-i'
          )
          ]
        ),
        Option(
          name: '--quota-id',
          description: 'Quota ID of a subscription',
          args: [
            Arg(
            name: 'quota-i'
          )
          ]
        ),
        Option(
          name: '--registered-features',
          description: 'List of registered feature flags for subscription',
          args: [
            Arg(
            name: 'registered-feature'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: '\$skipToken is supported on list of configurations, which provides the next page in the list of configurations',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-family',
      description: 'This method provides the list of product families for the given subscription',
      options: [

        Option(
          name: '--filterable-properties',
          description: 'Dictionary of filterable properties on product family. Expect value: KEY1=VALUE1 KEY2=VALUE2',
          args: [
            Arg(
            name: 'filterable-propertie'
          )
          ]
        ),
        Option(
          name: '--expand',
          description: '\$expand is supported on configurations parameter for product, which provides details on the configurations for the product',
          args: [
            Arg(
            name: 'expan'
          )
          ]
        ),
        Option(
          name: '--location-placement-id',
          description: 'Location placement Id of a subscription',
          args: [
            Arg(
            name: 'location-placement-i'
          )
          ]
        ),
        Option(
          name: '--quota-id',
          description: 'Quota ID of a subscription',
          args: [
            Arg(
            name: 'quota-i'
          )
          ]
        ),
        Option(
          name: '--registered-features',
          description: 'List of registered feature flags for subscription',
          args: [
            Arg(
            name: 'registered-feature'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: '\$skipToken is supported on list of product families, which provides the next page in the list of product families',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-metadata',
      description: 'This method provides the list of product families metadata for the given subscription',
      options: [

        Option(
          name: '--skip-token',
          description: '\$skipToken is supported on list of product families metadata, which provides the next page in the list of product families metadata',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'order',
      description: 'Manage order with edgeorder sub group order',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List order at resource group level. And List order at subscription level',
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
              name: '--skip-token',
              description: '\$skipToken is supported on Get list of order, which provides the next page in the list of order',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an order',
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
              name: '--name',
              description: 'The name of the order',
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
      name: 'order-item',
      description: 'Manage order item with edgeorder sub group order-item',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel order item',
          options: [

            Option(
              name: '--reason',
              description: 'Reason for cancellation',
              args: [
                Arg(
                name: 'reaso'
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
              name: ['--order-item-name', '--name', '-n'],
              description: 'The name of the order item',
              args: [
                Arg(
                name: 'order-item-nam'
              )
              ]
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
          description: 'Create an order item. Existing order item cannot be updated with this api and should instead be updated with the Update order item API',
          options: [

            Option(
              name: ['--order-item-name', '--name', '-n'],
              description: 'The name of the order item',
              args: [
                Arg(
                name: 'order-item-nam'
              )
              ]
            ),
            Option(
              name: '--order-item-resource',
              description: 'Order item details from request body. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'order-item-resourc'
              )
              ]
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
          description: 'Delete an order item',
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
              name: ['--order-item-name', '--name', '-n'],
              description: 'The name of the order item',
              args: [
                Arg(
                name: 'order-item-nam'
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List order item at resource group level. And List order item at subscription level',
          options: [

            Option(
              name: '--expand',
              description: '\$expand is supported on device details, forward shipping details and reverse shipping details parameters. Each of these can be provided as a comma separated list. Device Details for order item provides details on the devices of the product, Forward and Reverse Shipping details provide forward and reverse shipping details respectively',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: '\$filter is supported to filter based on order id. Filter supports only equals operation',
              args: [
                Arg(
                name: 'filte'
              )
              ]
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
              name: '--skip-token',
              description: '\$skipToken is supported on Get list of order items, which provides the next page in the list of order items',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'return',
          description: 'Return order item',
          options: [

            Option(
              name: '--return-reason',
              description: 'Return Reason',
              args: [
                Arg(
                name: 'return-reaso'
              )
              ]
            ),
            Option(
              name: '--contact-details',
              description: 'Contact details for the address',
              args: [
                Arg(
                name: 'contact-detail'
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
              name: ['--order-item-name', '--name', '-n'],
              description: 'The name of the order item',
              args: [
                Arg(
                name: 'order-item-nam'
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
              name: '--service-tag',
              description: 'Service tag (located on the bottom-right corner of the device)',
              args: [
                Arg(
                name: 'service-ta'
              )
              ]
            ),
            Option(
              name: '--shipping-address',
              description: 'Shipping details for the address',
              args: [
                Arg(
                name: 'shipping-addres'
              )
              ]
            ),
            Option(
              name: '--shipping-box-required',
              description: 'Shipping Box required',
              args: [
                Arg(
                name: 'shipping-box-required',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
          name: 'show',
          description: 'Get an order item',
          options: [

            Option(
              name: '--expand',
              description: '\$expand is supported on device details, forward shipping details and reverse shipping details parameters. Each of these can be provided as a comma separated list. Device Details for order item provides details on the devices of the product, Forward and Reverse Shipping details provide forward and reverse shipping details respectively',
              args: [
                Arg(
                name: 'expan'
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
              name: ['--order-item-name', '--name', '-n'],
              description: 'The name of the order item',
              args: [
                Arg(
                name: 'order-item-nam'
              )
              ]
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
          description: 'Update the properties of an existing order item',
          options: [

            Option(
              name: '--contact-details',
              description: 'Contact details for the address',
              args: [
                Arg(
                name: 'contact-detail'
              )
              ]
            ),
            Option(
              name: '--encryption-preferences',
              description: 'Preferences related to the Encryption',
              args: [
                Arg(
                name: 'encryption-preference'
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
              name: '--if-match',
              description: 'Defines the If-Match condition. The patch will be performed only if the ETag of the order on the server matches this value',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--mgmt-preferences',
              description: 'Preferences related to the Management resource',
              args: [
                Arg(
                name: 'mgmt-preference'
              )
              ]
            ),
            Option(
              name: ['--order-item-name', '--name', '-n'],
              description: 'The name of the order item',
              args: [
                Arg(
                name: 'order-item-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--notif-email-list',
              description: 'Additional notification email list',
              args: [
                Arg(
                name: 'notif-email-lis'
              )
              ]
            ),
            Option(
              name: '--notif-preferences',
              description: 'Notification preferences',
              args: [
                Arg(
                name: 'notif-preference'
              )
              ]
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
              name: '--shipping-address',
              description: 'Shipping details for the address',
              args: [
                Arg(
                name: 'shipping-addres'
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
              name: '--transport-preferences',
              description: 'Preferences related to the shipment logistics of the order',
              args: [
                Arg(
                name: 'transport-preference'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the order-item is met',
          options: [

            Option(
              name: '--order-item-name',
              description: 'The name of the order item',
              args: [
                Arg(
                name: 'order-item-nam'
              )
              ]
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
              name: '--expand',
              description: '\$expand is supported on device details, forward shipping details and reverse shipping details parameters',
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
    )
  ]
);
