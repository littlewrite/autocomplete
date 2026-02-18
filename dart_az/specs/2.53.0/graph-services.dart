// Auto-generated from TypeScript source: graph-services.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `graph-services` CLI
final FigSpec graphServicesSpec = FigSpec(
  name: 'graph-services',
  description: 'Make operations on Microsoft.GraphServices resource types',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Make operations on Microsoft.GraphServices/Accounts',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create account resource. Enables billing for the provided application',
          options: [

            Option(
              name: '--app-id',
              description: 'Customer owned application ID',
              args: [
                Arg(
                name: 'app-i'
              )
              ]
            ),
            Option(
              name: ['--resource-name', '--name', '-n'],
              description: 'The name of the resource',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of an Azure resource group in your subscription',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
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
              name: '--tags',
              description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
          description: 'Delete an account resource. Disables billing on the associated application',
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
              name: ['--resource-name', '--name', '-n'],
              description: 'The name of the resource',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of an Azure resource group in your subscription',
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
          description: 'List of accounts belonging to a subscription',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of an Azure resource group in your subscription',
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
          description: 'Get an account resource given its name',
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
              name: ['--resource-name', '--name', '-n'],
              description: 'The name of the resource',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of an Azure resource group in your subscription',
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
          description: 'Update an account resource',
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
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--resource-name', '--name', '-n'],
              description: 'The name of the resource',
              args: [
                Arg(
                name: 'resource-nam'
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
              description: 'Name of an Azure resource group in your subscription',
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
              name: '--tags',
              description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              name: ['--resource-name', '--name', '-n'],
              description: 'The name of the resource',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of an Azure resource group in your subscription',
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
);
