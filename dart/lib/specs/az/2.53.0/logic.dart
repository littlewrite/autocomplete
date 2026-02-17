// Auto-generated from TypeScript source: logic.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `logic` CLI
final FigSpec logicSpec = FigSpec(
  name: 'logic',
  description: 'Manage logic',
  subcommands: [

    Subcommand(
      name: 'integration-account',
      description: 'Manage logic integration account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates an integration account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The integration account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--integration-service-environment',
              description: 'The integration service environment. See https://github.com/Azure/azure-cli-extensions/blob/main/src/logic/README.md For more information',
              args: [
                Arg(
                name: 'integration-service-environmen'
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
              name: '--sku',
              description: 'The integration account sku',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'The workflow state',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'Completed'),
                  FigSuggestion(name: 'Deleted'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'Suspended')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'The resource tags',
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
          description: 'Deletes an integration account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The integration account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
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
          name: 'import',
          description: 'Import an integration account from a JSON file',
          options: [

            Option(
              name: '--input-path',
              description: 'Path to a intergration-account JSON file',
              args: [
                Arg(
                name: 'input-pat'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The integration account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
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
              name: '--sku',
              description: 'The integration account sku',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'The resource tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets a list of integration accounts by subscription',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The number of items to be included in the result',
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
          description: 'Gets an integration account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The integration account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
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
          description: 'Updates an integration account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The integration account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--integration-service-environment',
              description: 'The integration service environment. See https://github.com/Azure/azure-cli-extensions/blob/main/src/logic/README.md For more information',
              args: [
                Arg(
                name: 'integration-service-environmen'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The integration account sku',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'The workflow state',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'Completed'),
                  FigSuggestion(name: 'Deleted'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'Suspended')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'The resource tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'map',
          description: 'Manage logic integration account map',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an integration account map. If the map is larger than 4 MB, you need to store the map in an Azure blob and use the blob\'s Shared Access Signature (SAS) URL as the \'contentLink\' property value',
              options: [

                Option(
                  name: '--integration-account',
                  description: 'The integration account name',
                  args: [
                    Arg(
                    name: 'integration-accoun'
                  )
                  ]
                ),
                Option(
                  name: ['--map-name', '--name', '-n'],
                  description: 'The integration account map name',
                  args: [
                    Arg(
                    name: 'map-nam'
                  )
                  ]
                ),
                Option(
                  name: '--map-type',
                  description: 'The map type',
                  args: [
                    Arg(
                    name: 'map-type',
                    suggestions: [

                      FigSuggestion(name: 'Liquid'),
                      FigSuggestion(name: 'NotSpecified'),
                      FigSuggestion(name: 'Xslt'),
                      FigSuggestion(name: 'Xslt20'),
                      FigSuggestion(name: 'Xslt30')
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
                  name: '--content-type',
                  description: 'The content type',
                  args: [
                    Arg(
                    name: 'content-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The resource location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--map-content',
                  description: 'The content',
                  args: [
                    Arg(
                    name: 'map-conten'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'The resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              description: 'Delete an integration account map',
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
                  name: '--integration-account',
                  description: 'The integration account name',
                  args: [
                    Arg(
                    name: 'integration-accoun'
                  )
                  ]
                ),
                Option(
                  name: ['--map-name', '--name', '-n'],
                  description: 'The integration account map name',
                  args: [
                    Arg(
                    name: 'map-nam'
                  )
                  ]
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
              description: 'List a list of integration account maps',
              options: [

                Option(
                  name: '--integration-account',
                  description: 'The integration account name',
                  args: [
                    Arg(
                    name: 'integration-accoun'
                  )
                  ]
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
                  name: '--filter',
                  description: 'The filter to apply on the operation. Options for filters include: MapType',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'The number of items to be included in the result',
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
              description: 'Get an integration account map',
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
                  name: '--integration-account',
                  description: 'The integration account name',
                  args: [
                    Arg(
                    name: 'integration-accoun'
                  )
                  ]
                ),
                Option(
                  name: ['--map-name', '--name', '-n'],
                  description: 'The integration account map name',
                  args: [
                    Arg(
                    name: 'map-nam'
                  )
                  ]
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
              description: 'Update an integration account map. If the map is larger than 4 MB, you need to store the map in an Azure blob and use the blob\'s Shared Access Signature (SAS) URL as the \'contentLink\' property value',
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
                  name: '--content-type',
                  description: 'The content type',
                  args: [
                    Arg(
                    name: 'content-typ'
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
                  name: '--integration-account',
                  description: 'The integration account name',
                  args: [
                    Arg(
                    name: 'integration-accoun'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The resource location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--map-content',
                  description: 'The content',
                  args: [
                    Arg(
                    name: 'map-conten'
                  )
                  ]
                ),
                Option(
                  name: ['--map-name', '--name', '-n'],
                  description: 'The integration account map name',
                  args: [
                    Arg(
                    name: 'map-nam'
                  )
                  ]
                ),
                Option(
                  name: '--map-type',
                  description: 'The map type',
                  args: [
                    Arg(
                    name: 'map-type',
                    suggestions: [

                      FigSuggestion(name: 'Liquid'),
                      FigSuggestion(name: 'NotSpecified'),
                      FigSuggestion(name: 'Xslt'),
                      FigSuggestion(name: 'Xslt20'),
                      FigSuggestion(name: 'Xslt30')
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
                  name: '--tags',
                  description: 'The resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
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
      name: 'workflow',
      description: 'Logic workflow',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a workflow using a JSON file for the defintion',
          options: [

            Option(
              name: '--definition',
              description: 'Path to a workflow defintion JSON file (see https://github.com/Azure/azure-cli-extensions/blob/main/src/logic/README.md for more info on this). This JSON format should match what the logic app design tool exports',
              args: [
                Arg(
                name: 'definitio'
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
              name: ['--name', '-n'],
              description: 'The workflow name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--access-control',
              description: 'The access control configuration controls access to this workflow. See https://github.com/Azure/azure-cli-extensions/blob/main/src/logic/README.md for more information',
              args: [
                Arg(
                name: 'access-contro'
              )
              ]
            ),
            Option(
              name: '--endpoints-configuration',
              description: 'The endpoints configuration',
              args: [
                Arg(
                name: 'endpoints-configuratio'
              )
              ]
            ),
            Option(
              name: '--integration-account',
              description: 'The integration account',
              args: [
                Arg(
                name: 'integration-accoun'
              )
              ]
            ),
            Option(
              name: '--integration-service-environment',
              description: 'The integration service environment',
              args: [
                Arg(
                name: 'integration-service-environmen'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'The state',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'Completed'),
                  FigSuggestion(name: 'Deleted'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'Suspended')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'The resource tags',
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
          description: 'Deletes a workflow',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The workflow name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
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
          description: 'Gets a list of workflows by subscription',
          options: [

            Option(
              name: '--filter',
              description: 'The filter to apply on the operation. Options for filters include: State, Trigger, and ReferencedResourceId',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The number of items to be included in the result',
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
          description: 'Gets a workflow',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The workflow name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
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
          description: 'Updates a workflow',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The workflow name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--definition',
              description: 'Path to a workflow defintion JSON file (see https://github.com/Azure/azure-cli-extensions/blob/main/src/logic/README.md for more info on this). This JSON format should match what the logic app design tool exports',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'The state',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'Completed'),
                  FigSuggestion(name: 'Deleted'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'Suspended')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'The resource tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
