// Auto-generated from TypeScript source: signalr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `signalr` CLI
final FigSpec signalrSpec = FigSpec(
  name: 'signalr',
  description: 'Manage Azure SignalR Service',
  subcommands: [

    Subcommand(
      name: 'cors',
      description: 'Manage CORS for Azure SignalR Service',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add allowed origins to a SignalR Service',
          options: [

            Option(
              name: ['--allowed-origins', '-a'],
              description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*"',
              args: [
                Arg(
                name: 'allowed-origin'
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
              description: 'Name of signalr service',
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
          description: 'List allowed origins of a SignalR Service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of signalr service',
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
          description: 'Remove allowed origins from a SignalR Service',
          options: [

            Option(
              name: ['--allowed-origins', '-a'],
              description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*"',
              args: [
                Arg(
                name: 'allowed-origin'
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
              description: 'Name of signalr service',
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
          description: 'Update allowed origins to a SignalR Service',
          options: [

            Option(
              name: ['--allowed-origins', '-a'],
              description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*"',
              args: [
                Arg(
                name: 'allowed-origin'
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
              description: 'Name of signalr service',
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
      name: 'create',
      description: 'Creates a SignalR Service',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of signalr service',
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
          description: 'The sku name of the signalr service. Allowed values: Premium_P1, Standard_S1, Free_F1',
          args: [
            Arg(
            name: 'sk'
          )
          ]
        ),
        Option(
          name: ['--allowed-origins', '-a'],
          description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*"',
          args: [
            Arg(
            name: 'allowed-origin'
          )
          ]
        ),
        Option(
          name: '--default-action',
          description: 'Default action to apply when no rule matches',
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
          name: '--enable-message-logs',
          description: 'The switch for messaging logs which signalr service will generate or not'
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
          name: '--service-mode',
          description: 'The service mode which signalr service will be working on',
          args: [
            Arg(
            name: 'service-mode',
            suggestions: [

              FigSuggestion(name: 'Classic'),
              FigSuggestion(name: 'Default'),
              FigSuggestion(name: 'Serverless')
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
          name: '--unit-count',
          description: 'The number of signalr service unit count',
          args: [
            Arg(
            name: 'unit-coun'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes a SignalR Service',
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
          description: 'Name of signalr service',
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
      description: 'Lists all the SignalR Service under the current subscription',
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
      name: 'restart',
      description: 'Restart an existing SignalR Service',
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
          description: 'Name of signalr service',
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
      description: 'Get the details of a SignalR Service',
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
          description: 'Name of signalr service',
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
      description: 'Update an existing SignalR Service',
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
          name: ['--allowed-origins', '-a'],
          description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*"',
          args: [
            Arg(
            name: 'allowed-origin'
          )
          ]
        ),
        Option(
          name: '--default-action',
          description: 'Default action to apply when no rule matches',
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
          name: '--enable-message-logs',
          description: 'The switch for messaging logs which signalr service will generate or not',
          args: [
            Arg(
            name: 'enable-message-logs',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
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
          description: 'Name of signalr service',
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
          name: '--service-mode',
          description: 'The service mode which signalr service will be working on',
          args: [
            Arg(
            name: 'service-mode',
            suggestions: [

              FigSuggestion(name: 'Classic'),
              FigSuggestion(name: 'Default'),
              FigSuggestion(name: 'Serverless')
            ]
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
          description: 'The sku name of the signalr service. E.g. Standard_S1',
          args: [
            Arg(
            name: 'sk'
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
          name: '--unit-count',
          description: 'The number of signalr service unit count',
          args: [
            Arg(
            name: 'unit-coun'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'custom-certificate',
      description: 'Manage custom certificate settings',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a custom certificate of SignalR Service',
          options: [

            Option(
              name: '--keyvault-base-uri',
              description: 'Key vault base URI. For example, https://contoso.vault.azure.net',
              args: [
                Arg(
                name: 'keyvault-base-ur'
              )
              ]
            ),
            Option(
              name: '--keyvault-secret-name',
              description: 'Key vault secret name where certificate is stored',
              args: [
                Arg(
                name: 'keyvault-secret-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the custom certificate',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
              )
              ]
            ),
            Option(
              name: '--keyvault-secret-version',
              description: 'Key vault secret version where certificate is stored. If empty, will use latest version',
              args: [
                Arg(
                name: 'keyvault-secret-versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a custom certificate of SignalR Service',
          options: [

            Option(
              name: '--name',
              description: 'Name of the custom certificate',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List custom certificate of SignalR Service',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the detail of a custom certificate of SignalR Service',
          options: [

            Option(
              name: '--name',
              description: 'Name of the custom certificate',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a custom certificate of SignalR Service',
          options: [

            Option(
              name: '--name',
              description: 'Name of the custom certificate',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
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
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--keyvault-base-uri',
              description: 'Key vault base URI. For example, https://contoso.vault.azure.net',
              args: [
                Arg(
                name: 'keyvault-base-ur'
              )
              ]
            ),
            Option(
              name: '--keyvault-secret-name',
              description: 'Key vault secret name where certificate is stored',
              args: [
                Arg(
                name: 'keyvault-secret-nam'
              )
              ]
            ),
            Option(
              name: '--keyvault-secret-version',
              description: 'Key vault secret version where certificate is stored. If empty, will use latest version',
              args: [
                Arg(
                name: 'keyvault-secret-versio'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'custom-domain',
      description: 'Manage custom domain settings',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a custom domain of SignalR Service',
          options: [

            Option(
              name: '--certificate-resource-id',
              description: 'ResourceId of a previously created custom certificate',
              args: [
                Arg(
                name: 'certificate-resource-i'
              )
              ]
            ),
            Option(
              name: '--domain-name',
              description: 'Custom domain name. For example, contoso.com',
              args: [
                Arg(
                name: 'domain-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the custom domain',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a custom domain of SignalR Service',
          options: [

            Option(
              name: '--name',
              description: 'Name of the custom domain',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List custom domains of SignalR Service',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the detail of a custom domain of SignalR Service',
          options: [

            Option(
              name: '--name',
              description: 'Name of the custom domain',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a custom domain of SignalR Service',
          options: [

            Option(
              name: '--name',
              description: 'Name of the custom domain',
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
              name: '--signalr-name',
              description: 'Name of the SignalR',
              args: [
                Arg(
                name: 'signalr-nam'
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
              name: '--certificate-resource-id',
              description: 'ResourceId of a previously created custom certificate',
              args: [
                Arg(
                name: 'certificate-resource-i'
              )
              ]
            ),
            Option(
              name: '--domain-name',
              description: 'Custom domain name. For example, contoso.com',
              args: [
                Arg(
                name: 'domain-nam'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'identity',
      description: 'Manage managed identity settings',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign managed identity for SignalR Service',
          options: [

            Option(
              name: '--identity',
              description: 'Assigns managed identities to the service. Use \'[system]\' to refer to the system-assigned identity or a resource ID to refer to a user-assigned identity. You can only assign either on of them',
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
              name: ['--name', '-n'],
              description: 'Name of signalr service',
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
          description: 'Remove managed identity for SignalR Service',
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
              description: 'Name of signalr service',
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
          description: 'Show managed identity for SignalR Service',
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
              description: 'Name of signalr service',
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
      name: 'key',
      description: 'Manage keys for Azure SignalR Service',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the access keys for a SignalR Service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of signalr service',
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
          name: 'renew',
          description: 'Regenerate the access key for a SignalR Service',
          options: [

            Option(
              name: '--key-type',
              description: 'The name of access key to regenerate',
              args: [
                Arg(
                name: 'key-type',
                suggestions: [

                  FigSuggestion(name: 'primary'),
                  FigSuggestion(name: 'secondary')
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
              description: 'Name of signalr service',
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
      name: 'network-rule',
      description: 'Manage network rules',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get the Network access control of SignalR Service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of signalr service',
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
          description: 'Update the Network access control of SignalR Service',
          options: [

            Option(
              name: '--allow',
              description: 'The allowed virtual network rule. Space-separeted list of scope to assign. Allowed values: ClientConnection, ServerConnection, RESTAPI',
              args: [
                Arg(
                name: 'allo'
              )
              ]
            ),
            Option(
              name: '--connection-name',
              description: 'Space-separeted list of private endpoint connection name',
              args: [
                Arg(
                name: 'connection-nam'
              )
              ]
            ),
            Option(
              name: '--deny',
              description: 'The denied virtual network rule. Space-separeted list of scope to assign. Allowed values: ClientConnection, ServerConnection, RESTAPI',
              args: [
                Arg(
                name: 'den'
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
              description: 'Name of signalr service',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--public-network',
              description: 'Set rules for public network',
              args: [
                Arg(
                name: 'public-network',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
        )
      ]
    ),
    Subcommand(
      name: 'upstream',
      description: 'Manage upstream settings',
      subcommands: [

        Subcommand(
          name: 'clear',
          description: 'Clear upstream settings of an existing SignalR Service',
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
              description: 'Name of signalr service',
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
          description: 'List upstream settings of an existing SignalR Service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of signalr service',
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
          description: 'Update order sensitive upstream settings for an existing SignalR Service',
          options: [

            Option(
              name: '--template',
              description: 'Template item for upstream settings. Use key=value pattern to set properties. Supported keys are "url-template", "hub-pattern", "event-pattern", "category-pattern"',
              args: [
                Arg(
                name: 'templat'
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
              description: 'Name of signalr service',
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
    )
  ]
);
