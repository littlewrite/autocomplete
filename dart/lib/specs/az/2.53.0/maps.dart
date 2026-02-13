// Auto-generated from TypeScript source: maps.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `maps` CLI
final FigSpec mapsSpec = FigSpec(
  name: 'maps',
  description: 'Manage Azure Maps',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage Azure Maps accounts',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Maps Account. A Maps Account holds the keys which allow access to the Maps REST APIs',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--sku', '-s'],
              description: 'The name of the SKU, in standard format (such as S0)',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'G2'),
                  FigSuggestion(name: 'S0'),
                  FigSuggestion(name: 'S1')
                ]
              )
              ]
            ),
            Option(
              name: '--accept-tos',
              description: 'You must agree to the License and Privacy Statement to create an account',
              args: [
                Arg(
                name: 'accept-to'
              )
              ]
            ),
            Option(
              name: '--disable-local-auth',
              description: 'Allows toggle functionality on Azure Policy to disable Azure Maps local authentication support. This will disable Shared Keys authentication from any usage',
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
              name: '--kind',
              description: 'Get or Set Kind property',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'Gen1'),
                  FigSuggestion(name: 'Gen2')
                ]
              )
              ]
            ),
            Option(
              name: '--linked-resources',
              description: 'Sets the resources to be used for Managed Identities based operations for the Map account resource',
              args: [
                Arg(
                name: 'linked-resource'
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
              name: '--type',
              description: 'The identity type',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'UserAssigned'),
                  FigSuggestion(name: 'UserAssigned')
                ]
              )
              ]
            ),
            Option(
              name: '--user-identities',
              description: 'The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}\'. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'user-identitie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Maps Account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
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
              description: 'Resource group name',
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
          description: 'Show all maps accounts in a subscription or in a resource group',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
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
          description: 'Show the details of a maps account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
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
              description: 'Resource group name',
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
          description: 'Updates a Maps Account. Only a subset of the parameters may be updated after creation, such as Sku, Tags, Properties',
          options: [

            Option(
              name: ['--sku', '-s'],
              description: 'The name of the SKU, in standard format (such as S0)',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'G2'),
                  FigSuggestion(name: 'S0'),
                  FigSuggestion(name: 'S1')
                ]
              )
              ]
            ),
            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--disable-local-auth',
              description: 'Allows toggle functionality on Azure Policy to disable Azure Maps local authentication support. This will disable Shared Keys authentication from any usage',
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--kind',
              description: 'Get or Set Kind property',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'Gen1'),
                  FigSuggestion(name: 'Gen2')
                ]
              )
              ]
            ),
            Option(
              name: '--linked-resources',
              description: 'Sets the resources to be used for Managed Identities based operations for the Map account resource',
              args: [
                Arg(
                name: 'linked-resource'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
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
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'The identity type',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'UserAssigned'),
                  FigSuggestion(name: 'UserAssigned')
                ]
              )
              ]
            ),
            Option(
              name: '--user-identities',
              description: 'The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}\'. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'user-identitie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'keys',
          description: 'Manage Azure Maps account keys',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get the keys to use with the Maps APIs. A key is used to authenticate and authorize access to the Maps REST APIs. Only one key is needed at a time; two are given to provide seamless key regeneration',
              options: [

                Option(
                  name: ['--account-name', '--name', '-n'],
                  description: 'The name of the maps account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group name',
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
              description: 'Regenerate either the primary or secondary key for use with the Maps APIs. The old key will stop working immediately',
              options: [

                Option(
                  name: ['--account-name', '--name', '-n'],
                  description: 'The name of the maps account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--key',
                  description: 'Whether the operation refers to the primary or secondary key',
                  args: [
                    Arg(
                    name: 'key',
                    suggestions: [

                      FigSuggestion(name: 'primary'),
                      FigSuggestion(name: 'secondary')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group name',
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
      name: 'creator',
      description: 'Manage creator with maps',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Maps Creator resource. Creator resource will manage Azure resources required to populate a custom set of mapping data. It requires an account to exist before it can be created',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--creator-name',
              description: 'The name of the Maps Creator instance',
              args: [
                Arg(
                name: 'creator-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-units',
              description: 'The storage units to be allocated. Integer values from 1 to 100, inclusive',
              args: [
                Arg(
                name: 'storage-unit'
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
          description: 'Delete a Maps Creator resource',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--creator-name',
              description: 'The name of the Maps Creator instance',
              args: [
                Arg(
                name: 'creator-nam'
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
              description: 'Resource group name',
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
          description: 'Get all Creator instances for an Azure Maps Account',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
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
          description: 'Get a Maps Creator resource',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--creator-name',
              description: 'The name of the Maps Creator instance',
              args: [
                Arg(
                name: 'creator-nam'
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
              description: 'Resource group name',
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
          description: 'Updates the Maps Creator resource. Only a subset of the parameters may be updated after creation, such as Tags',
          options: [

            Option(
              name: ['--account-name', '--name', '-n'],
              description: 'The name of the maps account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--creator-name',
              description: 'The name of the Maps Creator instance',
              args: [
                Arg(
                name: 'creator-nam'
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
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-units',
              description: 'The storage units to be allocated. Integer values from 1 to 100, inclusive',
              args: [
                Arg(
                name: 'storage-unit'
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
        )
      ]
    ),
    Subcommand(
      name: 'map',
      description: 'Manage map with maps',
      subcommands: [

        Subcommand(
          name: 'list-operation',
          description: 'List operations available for the Maps Resource Provider'
        )
      ]
    )
  ]
);
