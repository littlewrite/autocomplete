// Auto-generated from TypeScript source: ams.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ams` CLI
final FigSpec amsSpec = FigSpec(
  name: 'ams',
  description: 'Manage Azure Media Services resources',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage Azure Media Services accounts',
      subcommands: [

        Subcommand(
          name: 'check-name',
          description: 'Checks whether the Media Service resource name is available',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create an Azure Media Services account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the resource',
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
              name: '--storage-account',
              description: 'The name or resource ID of the primary storage account to attach to the Azure Media Services account. The storage account MUST be in the same Azure subscription as the Media Services account. It is strongly recommended that the storage account be in the same resource group as the Media Services account. Blob only accounts are not allowed as primary',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: '--default-action',
              description: 'The behavior for IP access control in Key Delivery. Allowed values: Allow,Deny',
              args: [
                Arg(
                name: 'default-actio'
              )
              ]
            ),
            Option(
              name: '--disable-public-network',
              description: 'Set this flag to disable public network access for resources under the Media Services account. If not set public network access will be enabled'
            ),
            Option(
              name: '--ip-allow-list',
              description: 'The IP allow list for access control in Key Delivery. If the default action is set to Allow, the IP allow list must be empty',
              args: [
                Arg(
                name: 'ip-allow-lis'
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
              description: 'Set the system managed identity on the media services account'
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Set the user managed identities on the media services account',
              args: [
                Arg(
                name: 'mi-user-assigne'
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
          description: 'Delete an Azure Media Services account',
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
              description: 'The name of the resource',
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
          description: 'List Azure Media Services accounts for the entire subscription',
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
          description: 'Show the details of an Azure Media Services account',
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
              description: 'The name of the resource',
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
          description: 'Update the details of an Azure Media Services account',
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
              description: 'The name of the resource',
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
          name: 'encryption',
          description: 'Manage encryption for an Azure Media Services account',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Set the encryption settings for an Azure Media Services account',
              options: [

                Option(
                  name: '--key-type',
                  description: 'SystemKeyThe encryption key source (provider). Allowed values: , .CustomerKey',
                  args: [
                    Arg(
                    name: 'key-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--current-key-id',
                  description: 'The current key used to encrypt the Media Services account, including the key version',
                  args: [
                    Arg(
                    name: 'current-key-i'
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
                  name: '--key-identifier',
                  description: 'The URL of the Key Vault key used to encrypt the account. The key may either be versioned (for example https://vault/keys/mykey/version1) or reference a key without a version (for example https://vault/keys/mykey)',
                  args: [
                    Arg(
                    name: 'key-identifie'
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
                  name: '--system-assigned',
                  description: 'Set the system managed identity for account encryption',
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
                  description: 'Set the user managed identity for account encryption',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of encryption settings for an Azure Media Services account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
          name: 'identity',
          description: 'Manage managed identity settings for an Azure Media Services account',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Assign a managed identity to an Azure Media Services account',
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
                  description: 'The name of the resource',
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
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Set the system managed identity on the media services account'
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Set the user managed identities on the media services account',
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
              description: 'Remove a managed identity to an Azure Media Services account',
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
                  description: 'The name of the resource',
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
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Set the system managed identity on the media services account'
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Set the user managed identities on the media services account',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of managed identity settings for an Azure Media Services account',
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
                  description: 'The name of the resource',
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
          name: 'mru',
          description: 'Manage media reserved units for an Azure Media Services account. This doesn\'t work with accounts created with 2020-05-01 version of the Media Services API or later. Accounts created this way no longer need to set media reserved units as the system will automaticaly scale up and down based on load',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Set the type and number of media reserved units for an Azure Media Services account. This doesn\'t work with accounts created with 2020-05-01 version of the Media Services API or later. Accounts created this way no longer need to set media reserved units as the system will automaticaly scale up and down based on load',
              options: [

                Option(
                  name: '--count',
                  description: 'The number of the encoding reserved units that you want to be provisioned for this account for concurrent tasks (one unit equals one task)',
                  args: [
                    Arg(
                    name: 'coun'
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
                  description: 'The name of the resource',
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
                ),
                Option(
                  name: '--type',
                  description: 'Speed of reserved processing units. The cost of media encoding depends on the pricing tier you choose. See https://azure.microsoft.com/pricing/details/media-services/ for further details. Allowed values: S1, S2, S3',
                  args: [
                    Arg(
                    name: 'typ'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of media reserved units for an Azure Media Services account. This doesn\'t work with accounts created with 2020-05-01 version of the Media Services API or later. Accounts created this way no longer need to set media reserved units as the system will automaticaly scale up and down based on load',
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
                  description: 'The name of the resource',
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
          name: 'sp',
          description: 'Manage service principal and role based access for an Azure Media Services account',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create or update a service principal and configure its access to an Azure Media Services account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: ['--name', '-n'],
                  description: 'The app name or app URI to associate the RBAC with. If not present, a default name like \'{amsaccountname}-access-sp\' will be generated',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new-sp-name',
                  description: 'The new app name or app URI to update the RBAC with',
                  args: [
                    Arg(
                    name: 'new-sp-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The friendly name of the password. The actual password will be an autogenerated strong password which will be displayed after the command runs',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'The role of the service principal',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--xml',
                  description: 'Enables xml output format'
                ),
                Option(
                  name: '--years',
                  description: 'Number of years for which the secret will be valid. Default: 1 year',
                  args: [
                    Arg(
                    name: 'year'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'reset-credentials',
              description: 'Generate a new client secret for a service principal configured for an Azure Media Services account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
                  name: ['--name', '-n'],
                  description: 'The app name or app URI to associate the RBAC with. If not present, a default name like \'{amsaccountname}-access-sp\' will be generated',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The friendly name of the password. The actual password will be an autogenerated strong password which will be displayed after the command runs',
                  args: [
                    Arg(
                    name: 'passwor'
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
                  name: '--role',
                  description: 'The role of the service principal',
                  args: [
                    Arg(
                    name: 'rol'
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
                  name: '--xml',
                  description: 'Enables xml output format'
                ),
                Option(
                  name: '--years',
                  description: 'Number of years for which the secret will be valid. Default: 1 year',
                  args: [
                    Arg(
                    name: 'year'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage',
          description: 'Manage storage for an Azure Media Services account',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Attach a secondary storage to an Azure Media Services account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
                  name: ['--name', '-n'],
                  description: 'The name or resource ID of the secondary storage account to detach from the Azure Media Services account',
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
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Set the system managed identity on the storage account'
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Set the user managed identity on the storage account',
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
              description: 'Detach a secondary storage from an Azure Media Services account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
                  name: ['--name', '-n'],
                  description: 'The name or resource ID of the secondary storage account to detach from the Azure Media Services account',
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
              name: 'set-authentication',
              description: 'Set the authentication of a storage account attached to an Azure Media Services account',
              options: [

                Option(
                  name: '--storage-auth',
                  description: 'The type of authentication for the storage account associated with the media services account',
                  args: [
                    Arg(
                    name: 'storage-auth',
                    suggestions: [

                      FigSuggestion(name: 'ManagedIdentity'),
                      FigSuggestion(name: 'System')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--storage-account-id',
                  description: 'The storage account Id',
                  args: [
                    Arg(
                    name: 'storage-account-i'
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
                  name: '--system-assigned',
                  description: 'Set the system managed identity on the storage account'
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Set the user managed identity on the storage account',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sync-storage-keys',
              description: 'Synchronize storage account keys for a storage account associated with an Azure Media Services account',
              options: [

                Option(
                  name: '--storage-account-id',
                  description: 'The storage account Id',
                  args: [
                    Arg(
                    name: 'storage-account-i'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
      name: 'account-filter',
      description: 'Manage account filters for an Azure Media Services account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an account filter',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the account filter',
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
              name: '--end-timestamp',
              description: 'Applies to Video on Demand (VoD). For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD. This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is the timescale, so an endTimestamp of 1800000000 would be for 3 minutes. Use startTimestamp and endTimestamp to trim the fragments that will be in the playlist (manifest). For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest',
              args: [
                Arg(
                name: 'end-timestam'
              )
              ]
            ),
            Option(
              name: '--first-quality',
              description: 'The first quality (lowest) bitrate to include in the manifest',
              args: [
                Arg(
                name: 'first-qualit'
              )
              ]
            ),
            Option(
              name: '--force-end-timestamp',
              description: 'Applies to Live Streaming only. Indicates whether the endTimestamp property must be present. If true, endTimestamp must be specified or a bad request code is returned. Allowed values: false, true'
            ),
            Option(
              name: '--live-backoff-duration',
              description: 'Applies to Live Streaming only. This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit for this property is timescale (see below). The maximum live back off duration is 300 seconds (3000000000). For example, a value of 2000000000 means that the latest available content is 20 seconds delayed from the real live edge',
              args: [
                Arg(
                name: 'live-backoff-duratio'
              )
              ]
            ),
            Option(
              name: '--presentation-window-duration',
              description: 'Applies to Live Streaming only. Use presentationWindowDuration to apply a sliding window of fragments to include in a playlist. The unit for this property is timescale (see below). For example, set presentationWindowDuration=1200000000 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds',
              args: [
                Arg(
                name: 'presentation-window-duratio'
              )
              ]
            ),
            Option(
              name: '--start-timestamp',
              description: 'Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is the timescale, so a startTimestamp of 150000000 would be for 15 seconds. Use startTimestamp and endTimestampp to trim the fragments that will be in the playlist (manifest). For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest',
              args: [
                Arg(
                name: 'start-timestam'
              )
              ]
            ),
            Option(
              name: '--timescale',
              description: 'Applies to all timestamps and durations in a Presentation Time Range, specified as the number of increments in one second. Default is 10000000 - ten million increments in one second, where each increment would be 100 nanoseconds long. For example, if you want to set a startTimestamp at 30 seconds, you would use a value of 300000000 when using the default timescale',
              args: [
                Arg(
                name: 'timescal'
              )
              ]
            ),
            Option(
              name: '--tracks',
              description: 'The JSON representing the track selections. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/accountfilters/createorupdate#filtertrackselection',
              args: [
                Arg(
                name: 'track'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an account filter',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the account filter',
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
          description: 'List all the account filters of an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
          description: 'Show the details of an account filter',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the account filter',
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
          description: 'Update the details of an account filter',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--end-timestamp',
              description: 'Applies to Video on Demand (VoD). For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD. This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is the timescale, so an endTimestamp of 1800000000 would be for 3 minutes. Use startTimestamp and endTimestamp to trim the fragments that will be in the playlist (manifest). For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest',
              args: [
                Arg(
                name: 'end-timestam'
              )
              ]
            ),
            Option(
              name: '--first-quality',
              description: 'The first quality (lowest) bitrate to include in the manifest',
              args: [
                Arg(
                name: 'first-qualit'
              )
              ]
            ),
            Option(
              name: '--force-end-timestamp',
              description: 'Applies to Live Streaming only. Indicates whether the endTimestamp property must be present. If true, endTimestamp must be specified or a bad request code is returned. Allowed values: false, true',
              args: [
                Arg(
                name: 'force-end-timestamp',
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
              name: '--live-backoff-duration',
              description: 'Applies to Live Streaming only. This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit for this property is timescale (see below). The maximum live back off duration is 300 seconds (3000000000). For example, a value of 2000000000 means that the latest available content is 20 seconds delayed from the real live edge',
              args: [
                Arg(
                name: 'live-backoff-duratio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the account filter',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--presentation-window-duration',
              description: 'Applies to Live Streaming only. Use presentationWindowDuration to apply a sliding window of fragments to include in a playlist. The unit for this property is timescale (see below). For example, set presentationWindowDuration=1200000000 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds',
              args: [
                Arg(
                name: 'presentation-window-duratio'
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
              name: '--start-timestamp',
              description: 'Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is the timescale, so a startTimestamp of 150000000 would be for 15 seconds. Use startTimestamp and endTimestampp to trim the fragments that will be in the playlist (manifest). For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest',
              args: [
                Arg(
                name: 'start-timestam'
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
              name: '--timescale',
              description: 'Applies to all timestamps and durations in a Presentation Time Range, specified as the number of increments in one second. Default is 10000000 - ten million increments in one second, where each increment would be 100 nanoseconds long. For example, if you want to set a startTimestamp at 30 seconds, you would use a value of 300000000 when using the default timescale',
              args: [
                Arg(
                name: 'timescal'
              )
              ]
            ),
            Option(
              name: '--tracks',
              description: 'The JSON representing the track selections. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/accountfilters/createorupdate#filtertrackselection',
              args: [
                Arg(
                name: 'track'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'asset',
      description: 'Manage assets for an Azure Media Services account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an asset',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the asset',
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
              name: '--alternate-id',
              description: 'The alternate id of the asset',
              args: [
                Arg(
                name: 'alternate-i'
              )
              ]
            ),
            Option(
              name: '--container',
              description: 'The name of the asset blob container',
              args: [
                Arg(
                name: 'containe'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The asset description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'The name of the storage account',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an asset',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the asset',
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
          name: 'get-encryption-key',
          description: 'Get the asset storage encryption keys used to decrypt content created by version 2 of the Media Services API',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the asset',
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
          name: 'get-sas-urls',
          description: 'Lists storage container URLs with shared access signatures (SAS) for uploading and downloading Asset content. The signatures are derived from the storage account keys',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expiry',
              description: 'Specifies the UTC datetime (Y-m-d\'T\'H:M:S\'Z\') at which the SAS becomes invalid. This must be less than 24 hours from the current time',
              args: [
                Arg(
                name: 'expir'
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
              description: 'The name of the asset',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--permissions',
              description: 'The permissions to set on the SAS URL',
              args: [
                Arg(
                name: 'permissions',
                suggestions: [

                  FigSuggestion(name: 'Read'),
                  FigSuggestion(name: 'ReadWrite'),
                  FigSuggestion(name: 'ReadWriteDelete')
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
        ),
        Subcommand(
          name: 'list',
          description: 'List all the assets of an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              description: 'Restricts the set of items returned',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Specifies the key by which the result collection should be ordered',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Specifies a non-negative integer n that limits the number of items returned from a collection. The service returns the number of available items up to but not greater than the specified value n',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-streaming-locators',
          description: 'List streaming locators which are associated with this asset',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the asset',
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
          description: 'Show the details of an asset',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the asset',
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
          description: 'Update the details of an asset',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--alternate-id',
              description: 'The alternate id of the asset',
              args: [
                Arg(
                name: 'alternate-i'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The asset description',
              args: [
                Arg(
                name: 'descriptio'
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
              description: 'The name of the asset',
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
        )
      ]
    ),
    Subcommand(
      name: 'asset-filter',
      description: 'Manage asset filters for an Azure Media Services account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an asset filter',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--asset-name',
              description: 'The name of the asset',
              args: [
                Arg(
                name: 'asset-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the asset filter',
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
              name: '--end-timestamp',
              description: 'Applies to Video on Demand (VoD).For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD.This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is the timescale, so an endTimestamp of 1800000000 would be for 3 minutes.Use startTimestamp and endTimestamp to trim the fragments that will be in the playlist (manifest).For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest',
              args: [
                Arg(
                name: 'end-timestam'
              )
              ]
            ),
            Option(
              name: '--first-quality',
              description: 'The first quality (lowest) bitrate to include in the manifest',
              args: [
                Arg(
                name: 'first-qualit'
              )
              ]
            ),
            Option(
              name: '--force-end-timestamp',
              description: 'Applies to Live Streaming only. Indicates whether the endTimestamp property must be present. If true, endTimestamp must be specified or a bad request code is returned. Allowed values: false, true'
            ),
            Option(
              name: '--live-backoff-duration',
              description: 'Applies to Live Streaming only. This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit for this property is timescale (see below). The maximum live back off duration is 300 seconds (3000000000). For example, a value of 2000000000 means that the latest available content is 20 seconds delayed from the real live edge',
              args: [
                Arg(
                name: 'live-backoff-duratio'
              )
              ]
            ),
            Option(
              name: '--presentation-window-duration',
              description: 'Applies to Live Streaming only.Use presentationWindowDuration to apply a sliding window of fragments to include in a playlist.The unit for this property is timescale (see below).For example, set presentationWindowDuration=1200000000 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds',
              args: [
                Arg(
                name: 'presentation-window-duratio'
              )
              ]
            ),
            Option(
              name: '--start-timestamp',
              description: 'Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is the timescale, so a startTimestamp of 150000000 would be for 15 seconds. Use startTimestamp and endTimestampp to trim the fragments that will be in the playlist (manifest). For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest',
              args: [
                Arg(
                name: 'start-timestam'
              )
              ]
            ),
            Option(
              name: '--timescale',
              description: 'Applies to all timestamps and durations in a Presentation Time Range, specified as the number of increments in one second.Default is 10000000 - ten million increments in one second, where each increment would be 100 nanoseconds long. For example, if you want to set a startTimestamp at 30 seconds, you would use a value of 300000000 when using the default timescale',
              args: [
                Arg(
                name: 'timescal'
              )
              ]
            ),
            Option(
              name: '--tracks',
              description: 'The JSON representing the track selections. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/assetfilters/createorupdate#filtertrackselection',
              args: [
                Arg(
                name: 'track'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an asset filter',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--asset-name',
              description: 'The name of the asset',
              args: [
                Arg(
                name: 'asset-nam'
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
              description: 'The name of the asset filter',
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
          description: 'List all the asset filters of an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--asset-name',
              description: 'The name of the asset',
              args: [
                Arg(
                name: 'asset-nam'
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
          description: 'Show the details of an asset filter',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--asset-name',
              description: 'The name of the asset',
              args: [
                Arg(
                name: 'asset-nam'
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
              description: 'The name of the asset filter',
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
          description: 'Update the details of an asset filter',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--asset-name',
              description: 'The name of the asset',
              args: [
                Arg(
                name: 'asset-nam'
              )
              ]
            ),
            Option(
              name: '--end-timestamp',
              description: 'Applies to Video on Demand (VoD).For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD.This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is the timescale, so an endTimestamp of 1800000000 would be for 3 minutes.Use startTimestamp and endTimestamp to trim the fragments that will be in the playlist (manifest).For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest',
              args: [
                Arg(
                name: 'end-timestam'
              )
              ]
            ),
            Option(
              name: '--first-quality',
              description: 'The first quality (lowest) bitrate to include in the manifest',
              args: [
                Arg(
                name: 'first-qualit'
              )
              ]
            ),
            Option(
              name: '--force-end-timestamp',
              description: 'Applies to Live Streaming only. Indicates whether the endTimestamp property must be present. If true, endTimestamp must be specified or a bad request code is returned. Allowed values: false, true',
              args: [
                Arg(
                name: 'force-end-timestamp',
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
              name: '--live-backoff-duration',
              description: 'Applies to Live Streaming only. This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit for this property is timescale (see below). The maximum live back off duration is 300 seconds (3000000000). For example, a value of 2000000000 means that the latest available content is 20 seconds delayed from the real live edge',
              args: [
                Arg(
                name: 'live-backoff-duratio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the asset filter',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--presentation-window-duration',
              description: 'Applies to Live Streaming only.Use presentationWindowDuration to apply a sliding window of fragments to include in a playlist.The unit for this property is timescale (see below).For example, set presentationWindowDuration=1200000000 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds',
              args: [
                Arg(
                name: 'presentation-window-duratio'
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
              name: '--start-timestamp',
              description: 'Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is the timescale, so a startTimestamp of 150000000 would be for 15 seconds. Use startTimestamp and endTimestampp to trim the fragments that will be in the playlist (manifest). For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest',
              args: [
                Arg(
                name: 'start-timestam'
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
              name: '--timescale',
              description: 'Applies to all timestamps and durations in a Presentation Time Range, specified as the number of increments in one second.Default is 10000000 - ten million increments in one second, where each increment would be 100 nanoseconds long. For example, if you want to set a startTimestamp at 30 seconds, you would use a value of 300000000 when using the default timescale',
              args: [
                Arg(
                name: 'timescal'
              )
              ]
            ),
            Option(
              name: '--tracks',
              description: 'The JSON representing the track selections. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/assetfilters/createorupdate#filtertrackselection',
              args: [
                Arg(
                name: 'track'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'asset-track',
      description: 'Manage asset tracks for an Azure Media Services account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a track for an Azure Media Services asset',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--asset-name',
              description: 'The asset name',
              args: [
                Arg(
                name: 'asset-nam'
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
              name: '--track-name',
              description: 'The name of the track',
              args: [
                Arg(
                name: 'track-nam'
              )
              ]
            ),
            Option(
              name: '--track-type',
              description: 'The type of track. Allowed values: Text',
              args: [
                Arg(
                name: 'track-typ'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the text track on a video player. In HLS, this maps to the NAME attribute of EXT-X-MEDIA',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--file-name',
              description: 'The name of the file. Note: this file should already be uploaded to the storage container',
              args: [
                Arg(
                name: 'file-nam'
              )
              ]
            ),
            Option(
              name: '--language-code',
              description: 'The RFC5646 language code for the text track',
              args: [
                Arg(
                name: 'language-cod'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--player-visibility',
              description: 'When PlayerVisibility is set to "Visible", the text track will be present in the DASH manifest or HLS playlist when requested by a client. When the PlayerVisibility is set to "Hidden", the text will not be available to the client. The default value is "Visible". Possible values include: "Hidden", "Visible"',
              args: [
                Arg(
                name: 'player-visibilit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Track',
          options: [

            Option(
              name: '--asset-name',
              description: 'The asset name',
              args: [
                Arg(
                name: 'asset-nam'
              )
              ]
            ),
            Option(
              name: '--track-name',
              description: 'The name of the track',
              args: [
                Arg(
                name: 'track-nam'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
          description: 'List Tracks in the Asset',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--asset-name',
              description: 'The asset name',
              args: [
                Arg(
                name: 'asset-nam'
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
          description: 'Show the details of a track',
          options: [

            Option(
              name: '--asset-name',
              description: 'The asset name',
              args: [
                Arg(
                name: 'asset-nam'
              )
              ]
            ),
            Option(
              name: '--track-name',
              description: 'The name of the track',
              args: [
                Arg(
                name: 'track-nam'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
          description: 'Update the parameters of a track',
          options: [

            Option(
              name: '--asset-name',
              description: 'The asset name',
              args: [
                Arg(
                name: 'asset-nam'
              )
              ]
            ),
            Option(
              name: '--track-name',
              description: 'The name of the track',
              args: [
                Arg(
                name: 'track-nam'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the text track on a video player. In HLS, this maps to the NAME attribute of EXT-X-MEDIA',
              args: [
                Arg(
                name: 'display-nam'
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
              name: '--language-code',
              description: 'The RFC5646 language code for the text track',
              args: [
                Arg(
                name: 'language-cod'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--player-visibility',
              description: 'When PlayerVisibility is set to "Visible", the text track will be present in the DASH manifest or HLS playlist when requested by a client. When the PlayerVisibility is set to "Hidden", the text will not be available to the client. The default value is "Visible". Possible values include: "Hidden", "Visible"',
              args: [
                Arg(
                name: 'player-visibilit'
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
          name: 'update-data',
          description: 'Update a track if the file in the storage container was recently modified',
          options: [

            Option(
              name: '--asset-name',
              description: 'The asset name',
              args: [
                Arg(
                name: 'asset-nam'
              )
              ]
            ),
            Option(
              name: '--track-name',
              description: 'The name of the track',
              args: [
                Arg(
                name: 'track-nam'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
        )
      ]
    ),
    Subcommand(
      name: 'content-key-policy',
      description: 'Manage content key policies for an Azure Media Services account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new content key policy',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The content key policy name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--policy-option-name',
              description: 'The content key policy option name',
              args: [
                Arg(
                name: 'policy-option-nam'
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
              name: '--alt-rsa-token-keys',
              description: 'Space-separated list of alternate rsa token keys',
              args: [
                Arg(
                name: 'alt-rsa-token-key'
              )
              ]
            ),
            Option(
              name: '--alt-symmetric-token-keys',
              description: 'Space-separated list of alternate symmetric token keys',
              args: [
                Arg(
                name: 'alt-symmetric-token-key'
              )
              ]
            ),
            Option(
              name: '--alt-x509-token-keys',
              description: 'Space-separated list of alternate x509 certificate token keys',
              args: [
                Arg(
                name: 'alt-x509-token-key'
              )
              ]
            ),
            Option(
              name: '--ask',
              description: 'The key that must be used as FairPlay Application Secret Key, which is a 32 character hex string',
              args: [
                Arg(
                name: 'as'
              )
              ]
            ),
            Option(
              name: '--audience',
              description: 'The audience for the token',
              args: [
                Arg(
                name: 'audienc'
              )
              ]
            ),
            Option(
              name: '--clear-key-configuration',
              description: 'Use Clear Key configuration, a.k.a AES encryption. It\'s intended for non-DRM keys'
            ),
            Option(
              name: '--description',
              description: 'The content key policy description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--fair-play-pfx',
              description: 'The filepath to a FairPlay certificate file in PKCS 12 (pfx) format (including private key)',
              args: [
                Arg(
                name: 'fair-play-pf'
              )
              ]
            ),
            Option(
              name: '--fair-play-pfx-password',
              description: 'The password encrypting FairPlay certificate in PKCS 12 (pfx) format',
              args: [
                Arg(
                name: 'fair-play-pfx-passwor'
              )
              ]
            ),
            Option(
              name: '--fp-playback-duration-seconds',
              description: 'Playback duration',
              args: [
                Arg(
                name: 'fp-playback-duration-second'
              )
              ]
            ),
            Option(
              name: '--fp-storage-duration-seconds',
              description: 'Storage duration',
              args: [
                Arg(
                name: 'fp-storage-duration-second'
              )
              ]
            ),
            Option(
              name: '--issuer',
              description: 'The token issuer',
              args: [
                Arg(
                name: 'issue'
              )
              ]
            ),
            Option(
              name: '--open-id-connect-discovery-document',
              description: 'The OpenID connect discovery document',
              args: [
                Arg(
                name: 'open-id-connect-discovery-documen'
              )
              ]
            ),
            Option(
              name: '--open-restriction',
              description: 'Use open restriction. License or key will be delivered on every request. Not recommended for production environments'
            ),
            Option(
              name: '--play-ready-template',
              description: 'JSON PlayReady license template. Use @{file} to load from a file',
              args: [
                Arg(
                name: 'play-ready-templat'
              )
              ]
            ),
            Option(
              name: '--rental-and-lease-key-type',
              description: 'The rental and lease key type. Available values: Undefined, DualExpiry, PersistentUnlimited, PersistentLimited',
              args: [
                Arg(
                name: 'rental-and-lease-key-typ'
              )
              ]
            ),
            Option(
              name: '--rental-duration',
              description: 'The rental duration. Must be greater than or equal to 0',
              args: [
                Arg(
                name: 'rental-duratio'
              )
              ]
            ),
            Option(
              name: '--token-claims',
              description: 'Space-separated required token claims in \'[key=value]\' format',
              args: [
                Arg(
                name: 'token-claim'
              )
              ]
            ),
            Option(
              name: '--token-key',
              description: 'Either a string (for symmetric key) or a filepath to a certificate (x509) or public key (rsa). Must be used in conjunction with --token-key-type',
              args: [
                Arg(
                name: 'token-ke'
              )
              ]
            ),
            Option(
              name: '--token-key-type',
              description: 'The type of the token key to be used for the primary verification key. Allowed values: Symmetric, RSA, X509',
              args: [
                Arg(
                name: 'token-key-typ'
              )
              ]
            ),
            Option(
              name: '--token-type',
              description: 'The type of token. Allowed values: Jwt, Swt',
              args: [
                Arg(
                name: 'token-typ'
              )
              ]
            ),
            Option(
              name: '--widevine-template',
              description: 'JSON Widevine license template. Use @{file} to load from a file',
              args: [
                Arg(
                name: 'widevine-templat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a content key policy',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The content key policy name',
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
          description: 'List all the content key policies within an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              description: 'Restricts the set of items returned',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Specifies the key by which the result collection should be ordered',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Specifies a non-negative integer n that limits the number of items returned from a collection. The service returns the number of available items up to but not greater than the specified value n',
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
          description: 'Show an existing content key policy',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The content key policy name',
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
            ),
            Option(
              name: '--with-secrets',
              description: 'Include secret values of the content key policy'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing content key policy',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--description',
              description: 'The content key policy description',
              args: [
                Arg(
                name: 'descriptio'
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
              description: 'The content key policy name',
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
          name: 'option',
          description: 'Manage options for an existing content key policy',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a new option to an existing content key policy',
              options: [

                Option(
                  name: '--policy-option-name',
                  description: 'The content key policy option name',
                  args: [
                    Arg(
                    name: 'policy-option-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--alt-rsa-token-keys',
                  description: 'Space-separated list of alternate rsa token keys',
                  args: [
                    Arg(
                    name: 'alt-rsa-token-key'
                  )
                  ]
                ),
                Option(
                  name: '--alt-symmetric-token-keys',
                  description: 'Space-separated list of alternate symmetric token keys',
                  args: [
                    Arg(
                    name: 'alt-symmetric-token-key'
                  )
                  ]
                ),
                Option(
                  name: '--alt-x509-token-keys',
                  description: 'Space-separated list of alternate x509 certificate token keys',
                  args: [
                    Arg(
                    name: 'alt-x509-token-key'
                  )
                  ]
                ),
                Option(
                  name: '--ask',
                  description: 'The key that must be used as FairPlay Application Secret Key, which is a 32 character hex string',
                  args: [
                    Arg(
                    name: 'as'
                  )
                  ]
                ),
                Option(
                  name: '--audience',
                  description: 'The audience for the token',
                  args: [
                    Arg(
                    name: 'audienc'
                  )
                  ]
                ),
                Option(
                  name: '--clear-key-configuration',
                  description: 'Use Clear Key configuration, a.k.a AES encryption. It\'s intended for non-DRM keys'
                ),
                Option(
                  name: '--fair-play-pfx',
                  description: 'The filepath to a FairPlay certificate file in PKCS 12 (pfx) format (including private key)',
                  args: [
                    Arg(
                    name: 'fair-play-pf'
                  )
                  ]
                ),
                Option(
                  name: '--fair-play-pfx-password',
                  description: 'The password encrypting FairPlay certificate in PKCS 12 (pfx) format',
                  args: [
                    Arg(
                    name: 'fair-play-pfx-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--fp-playback-duration-seconds',
                  description: 'Playback duration',
                  args: [
                    Arg(
                    name: 'fp-playback-duration-second'
                  )
                  ]
                ),
                Option(
                  name: '--fp-storage-duration-seconds',
                  description: 'Storage duration',
                  args: [
                    Arg(
                    name: 'fp-storage-duration-second'
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
                  name: '--issuer',
                  description: 'The token issuer',
                  args: [
                    Arg(
                    name: 'issue'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The content key policy name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--open-id-connect-discovery-document',
                  description: 'The OpenID connect discovery document',
                  args: [
                    Arg(
                    name: 'open-id-connect-discovery-documen'
                  )
                  ]
                ),
                Option(
                  name: '--open-restriction',
                  description: 'Use open restriction. License or key will be delivered on every request. Not recommended for production environments'
                ),
                Option(
                  name: '--play-ready-template',
                  description: 'JSON PlayReady license template. Use @{file} to load from a file',
                  args: [
                    Arg(
                    name: 'play-ready-templat'
                  )
                  ]
                ),
                Option(
                  name: '--rental-and-lease-key-type',
                  description: 'The rental and lease key type. Available values: Undefined, DualExpiry, PersistentUnlimited, PersistentLimited',
                  args: [
                    Arg(
                    name: 'rental-and-lease-key-typ'
                  )
                  ]
                ),
                Option(
                  name: '--rental-duration',
                  description: 'The rental duration. Must be greater than or equal to 0',
                  args: [
                    Arg(
                    name: 'rental-duratio'
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
                  name: '--token-claims',
                  description: 'Space-separated required token claims in \'[key=value]\' format',
                  args: [
                    Arg(
                    name: 'token-claim'
                  )
                  ]
                ),
                Option(
                  name: '--token-key',
                  description: 'Either a string (for symmetric key) or a filepath to a certificate (x509) or public key (rsa). Must be used in conjunction with --token-key-type',
                  args: [
                    Arg(
                    name: 'token-ke'
                  )
                  ]
                ),
                Option(
                  name: '--token-key-type',
                  description: 'The type of the token key to be used for the primary verification key. Allowed values: Symmetric, RSA, X509',
                  args: [
                    Arg(
                    name: 'token-key-typ'
                  )
                  ]
                ),
                Option(
                  name: '--token-type',
                  description: 'The type of token. Allowed values: Jwt, Swt',
                  args: [
                    Arg(
                    name: 'token-typ'
                  )
                  ]
                ),
                Option(
                  name: '--widevine-template',
                  description: 'JSON Widevine license template. Use @{file} to load from a file',
                  args: [
                    Arg(
                    name: 'widevine-templat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove an option from an existing content key policy',
              options: [

                Option(
                  name: '--policy-option-id',
                  description: 'The content key policy option identifier. This value can be obtained from "policyOptionId" property by running a show operation on a content key policy resource',
                  args: [
                    Arg(
                    name: 'policy-option-i'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
                  name: ['--name', '-n'],
                  description: 'The content key policy name',
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
              description: 'Update an option from an existing content key policy',
              options: [

                Option(
                  name: '--policy-option-id',
                  description: 'The content key policy option identifier. This value can be obtained from "policyOptionId" property by running a show operation on a content key policy resource',
                  args: [
                    Arg(
                    name: 'policy-option-i'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--add-alt-token-key',
                  description: 'Creates an alternate token key with either a string (for symmetric key) or a filepath to a certificate (x509) or public key (rsa). Must be used in conjunction with --add-alt-token-key-type',
                  args: [
                    Arg(
                    name: 'add-alt-token-ke'
                  )
                  ]
                ),
                Option(
                  name: '--add-alt-token-key-type',
                  description: 'The type of the token key to be used for the alternate verification key. Allowed values: Symmetric, RSA, X509',
                  args: [
                    Arg(
                    name: 'add-alt-token-key-typ'
                  )
                  ]
                ),
                Option(
                  name: '--ask',
                  description: 'The key that must be used as FairPlay Application Secret Key, which is a 32 character hex string',
                  args: [
                    Arg(
                    name: 'as'
                  )
                  ]
                ),
                Option(
                  name: '--audience',
                  description: 'The audience for the token',
                  args: [
                    Arg(
                    name: 'audienc'
                  )
                  ]
                ),
                Option(
                  name: '--fair-play-pfx',
                  description: 'The filepath to a FairPlay certificate file in PKCS 12 (pfx) format (including private key)',
                  args: [
                    Arg(
                    name: 'fair-play-pf'
                  )
                  ]
                ),
                Option(
                  name: '--fair-play-pfx-password',
                  description: 'The password encrypting FairPlay certificate in PKCS 12 (pfx) format',
                  args: [
                    Arg(
                    name: 'fair-play-pfx-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--fp-playback-duration-seconds',
                  description: 'Playback duration',
                  args: [
                    Arg(
                    name: 'fp-playback-duration-second'
                  )
                  ]
                ),
                Option(
                  name: '--fp-storage-duration-seconds',
                  description: 'Storage duration',
                  args: [
                    Arg(
                    name: 'fp-storage-duration-second'
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
                  name: '--issuer',
                  description: 'The token issuer',
                  args: [
                    Arg(
                    name: 'issue'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The content key policy name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--open-id-connect-discovery-document',
                  description: 'The OpenID connect discovery document',
                  args: [
                    Arg(
                    name: 'open-id-connect-discovery-documen'
                  )
                  ]
                ),
                Option(
                  name: '--play-ready-template',
                  description: 'JSON PlayReady license template. Use @{file} to load from a file',
                  args: [
                    Arg(
                    name: 'play-ready-templat'
                  )
                  ]
                ),
                Option(
                  name: '--policy-option-name',
                  description: 'The content key policy option name',
                  args: [
                    Arg(
                    name: 'policy-option-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rental-and-lease-key-type',
                  description: 'The rental and lease key type. Available values: Undefined, DualExpiry, PersistentUnlimited, PersistentLimited',
                  args: [
                    Arg(
                    name: 'rental-and-lease-key-typ'
                  )
                  ]
                ),
                Option(
                  name: '--rental-duration',
                  description: 'The rental duration. Must be greater than or equal to 0',
                  args: [
                    Arg(
                    name: 'rental-duratio'
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
                  name: '--token-claims',
                  description: 'Space-separated required token claims in \'[key=value]\' format',
                  args: [
                    Arg(
                    name: 'token-claim'
                  )
                  ]
                ),
                Option(
                  name: '--token-key',
                  description: 'Either a string (for symmetric key) or a filepath to a certificate (x509) or public key (rsa). Must be used in conjunction with --token-key-type',
                  args: [
                    Arg(
                    name: 'token-ke'
                  )
                  ]
                ),
                Option(
                  name: '--token-key-type',
                  description: 'The type of the token key to be used for the primary verification key. Allowed values: Symmetric, RSA, X509',
                  args: [
                    Arg(
                    name: 'token-key-typ'
                  )
                  ]
                ),
                Option(
                  name: '--token-type',
                  description: 'The type of token. Allowed values: Jwt, Swt',
                  args: [
                    Arg(
                    name: 'token-typ'
                  )
                  ]
                ),
                Option(
                  name: '--widevine-template',
                  description: 'JSON Widevine license template. Use @{file} to load from a file',
                  args: [
                    Arg(
                    name: 'widevine-templat'
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
      name: 'job',
      description: 'Manage jobs for a transform',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--delete',
              description: 'Delete the job being cancelled'
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
              description: 'The name of the job',
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
            ),
            Option(
              name: ['--transform-name', '-t'],
              description: 'The name of the transform',
              args: [
                Arg(
                name: 'transform-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the job',
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
            ),
            Option(
              name: ['--transform-name', '-t'],
              description: 'The name of the transform',
              args: [
                Arg(
                name: 'transform-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all the jobs of a transform within an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--transform-name', '-t'],
              description: 'The name of the transform',
              args: [
                Arg(
                name: 'transform-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Restricts the set of items returned',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Specifies the key by which the result collection should be ordered',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of a job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the job',
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
            ),
            Option(
              name: ['--transform-name', '-t'],
              description: 'The name of the transform',
              args: [
                Arg(
                name: 'transform-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start a job',
          options: [

            Option(
              name: '--output-assets',
              description: 'Space-separated assets in \'assetName=label\' format. An asset without label can be sent like this: \'assetName=\'',
              args: [
                Arg(
                name: 'output-asset'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--base-uri',
              description: 'Base uri for http job input. It will be concatenated with provided file names. If no base uri is given, then the provided file list is assumed to be fully qualified uris',
              args: [
                Arg(
                name: 'base-ur'
              )
              ]
            ),
            Option(
              name: '--correlation-data',
              description: 'Space-separated correlation data in \'key[=value]\' format. This customer provided data will be returned in Job and JobOutput state events',
              args: [
                Arg(
                name: 'correlation-dat'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The job description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--files',
              description: 'Space-separated list of files. It can be used to tell the service to only use the files specified from the input asset',
              args: [
                Arg(
                name: 'file'
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
              name: '--input-asset-name',
              description: 'The name of the input asset',
              args: [
                Arg(
                name: 'input-asset-nam'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'A label that is assigned to a Job Input that is used to satisfy a reference used in the Transform. For example, a Transform can be authored to take an image file with the label \'xyz\' and apply it as an overlay onto the input video before it is encoded. When submitting a Job, exactly one of the JobInputs should be the image file, and it should have the label \'xyz\'',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the job',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority with which the job should be processed',
              args: [
                Arg(
                name: 'priority',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Low'),
                  FigSuggestion(name: 'Normal')
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
            ),
            Option(
              name: ['--transform-name', '-t'],
              description: 'The name of the transform',
              args: [
                Arg(
                name: 'transform-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing job',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--description',
              description: 'The job description',
              args: [
                Arg(
                name: 'descriptio'
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
              description: 'The name of the job',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority with which the job should be processed',
              args: [
                Arg(
                name: 'priority',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Low'),
                  FigSuggestion(name: 'Normal')
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
              name: ['--transform-name', '-t'],
              description: 'The name of the transform',
              args: [
                Arg(
                name: 'transform-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'live-event',
      description: 'Manage live events for an Azure Media Service account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a live event',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ips',
              description: 'Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. Use "AllowAll" to allow all IP addresses. Allowing all IPs is not recommended for production environments',
              args: [
                Arg(
                name: 'ip'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the live event',
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
              name: '--streaming-protocol',
              description: 'The streaming protocol for the live event. This value is specified at creation time and cannot be updated',
              args: [
                Arg(
                name: 'streaming-protocol',
                suggestions: [

                  FigSuggestion(name: 'FragmentedMP4'),
                  FigSuggestion(name: 'RTMP')
                ]
              )
              ]
            ),
            Option(
              name: '--access-token',
              description: 'A unique identifier for a stream. This can be specified at creation time but cannot be updated. If omitted, the service will generate a unique value',
              args: [
                Arg(
                name: 'access-toke'
              )
              ]
            ),
            Option(
              name: '--alternative-media-id',
              description: 'An Alternative Media Identifier associated with the StreamingLocator created for the preview. This value is specified at creation time and cannot be updated. The identifier can be used in the CustomLicenseAcquisitionUrlTemplate or the CustomKeyAcquisitionUrlTemplate of the StreamingPolicy specified in the StreamingPolicyName field',
              args: [
                Arg(
                name: 'alternative-media-i'
              )
              ]
            ),
            Option(
              name: '--auto-start',
              description: 'The flag indicates if the resource should be automatically started on creation'
            ),
            Option(
              name: '--client-access-policy',
              description: 'Filepath to the clientaccesspolicy.xml used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file',
              args: [
                Arg(
                name: 'client-access-polic'
              )
              ]
            ),
            Option(
              name: '--cross-domain-policy',
              description: 'Filepath to the crossdomain.xml used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file',
              args: [
                Arg(
                name: 'cross-domain-polic'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The live event description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--encoding-type',
              description: 'The encoding type for live event. This value is specified at creation time and cannot be updated. Allowed values: Premium1080p, None, Standard',
              args: [
                Arg(
                name: 'encoding-typ'
              )
              ]
            ),
            Option(
              name: '--hostname-prefix',
              description: 'When useStaticHostname is set to true, hostname_prefix specifies the first part of the hostname assigned to the live event preview and ingest endpoints. The final hostname would be a combination of this prefix, the media service account name and a short code for the Azure Media Services data center',
              args: [
                Arg(
                name: 'hostname-prefi'
              )
              ]
            ),
            Option(
              name: '--key-frame-interval',
              description: 'Use an ISO 8601 time value between 0.5 to 20 seconds to specify the output fragment length for the video and audiotracks of an encoding live event. For example, use PT2S to indicate 2 seconds. For the video track it also defines the key frame interval, or the length of a GoP (group of pictures). If this value is not set for anencoding live event, the fragment duration defaults to 2 seconds. The value cannot be set for pass-through live events',
              args: [
                Arg(
                name: 'key-frame-interva'
              )
              ]
            ),
            Option(
              name: '--key-frame-interval-duration',
              description: 'ISO 8601 timespan duration of the key frame interval duration in seconds. The value should be an interger in the range of 1 (PT1S or 00:00:01) to 30 (PT30S or 00:00:30) seconds',
              args: [
                Arg(
                name: 'key-frame-interval-duratio'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--preset-name',
              description: 'The encoding preset name. This value is specified at creation time and cannot be updated',
              args: [
                Arg(
                name: 'preset-nam'
              )
              ]
            ),
            Option(
              name: '--preview-ips',
              description: 'Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. Use "AllowAll" to allow all IP addresses. Allowing all IPs is not recommended for production environments',
              args: [
                Arg(
                name: 'preview-ip'
              )
              ]
            ),
            Option(
              name: '--preview-locator',
              description: 'The identifier of the preview locator in Guid format. Specifying this at creation time allows the caller to know the preview locator url before the event is created. If omitted, the service will generate a random identifier. This value cannot be updated once the live event is created',
              args: [
                Arg(
                name: 'preview-locato'
              )
              ]
            ),
            Option(
              name: '--stream-options',
              description: 'The options to use for the LiveEvent. This value is specified at creation time and cannot be updated',
              args: [
                Arg(
                name: 'stream-options',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'LowLatency'),
                  FigSuggestion(name: 'LowLatencyV2')
                ]
              )
              ]
            ),
            Option(
              name: '--streaming-policy-name',
              description: 'The name of streaming policy used for the live event preview. This can be specified at creation time but cannot be updated',
              args: [
                Arg(
                name: 'streaming-policy-nam'
              )
              ]
            ),
            Option(
              name: '--stretch-mode',
              description: 'Specifies how the input video will be resized to fit the desired output resolution(s). Default is None. Allowed values: None, AutoSize, AutoFit',
              args: [
                Arg(
                name: 'stretch-mod'
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
              name: '--transcription-lang',
              description: 'Live transcription language for the live event. Allowed values: ca-ES, da-DK, de-DE, en-AU, en-CA, en-GB, en-IN, en-NZ, en-US, es-ES, es-MX, fi-FI, fr-CA, fr-FR, it-IT, nl-NL, pt-BR, pt-PT, sv-SE See https://go.microsoft.com/fwlink/?linkid=2133742 for more information about the live transcription feature',
              args: [
                Arg(
                name: 'transcription-lan'
              )
              ]
            ),
            Option(
              name: '--use-static-hostname',
              description: 'Specifies whether a static hostname would be assigned to the live event preview and ingest endpoints. This value can only be updated if the live event is in Standby state. If hostname_prefix is not specified, the live event name will be used as the hostname prefix'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a live event',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the live event',
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
          description: 'List all the live events of an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
          name: 'reset',
          description: 'Reset a live event',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'nam'
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
          description: 'Show the details of a live event',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the live event',
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
          name: 'standby',
          description: 'Allocate a live event to be started later',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'nam'
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
          name: 'start',
          description: 'Start a live event',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'nam'
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
          name: 'stop',
          description: 'Stop a live event',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--remove-outputs-on-stop',
              description: 'Remove live outputs on stop'
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
          description: 'Update the details of a live event',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--client-access-policy',
              description: 'Filepath to the clientaccesspolicy.xml used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file',
              args: [
                Arg(
                name: 'client-access-polic'
              )
              ]
            ),
            Option(
              name: '--cross-domain-policy',
              description: 'Filepath to the crossdomain.xml used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file',
              args: [
                Arg(
                name: 'cross-domain-polic'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The live event description',
              args: [
                Arg(
                name: 'descriptio'
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
              name: '--ips',
              description: 'Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. Use "AllowAll" to allow all IP addresses. Allowing all IPs is not recommended for production environments',
              args: [
                Arg(
                name: 'ip'
              )
              ]
            ),
            Option(
              name: '--key-frame-interval-duration',
              description: 'ISO 8601 timespan duration of the key frame interval duration in seconds. The value should be an interger in the range of 1 (PT1S or 00:00:01) to 30 (PT30S or 00:00:30) seconds',
              args: [
                Arg(
                name: 'key-frame-interval-duratio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--preview-ips',
              description: 'Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. Use "AllowAll" to allow all IP addresses. Allowing all IPs is not recommended for production environments',
              args: [
                Arg(
                name: 'preview-ip'
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
          description: 'Place the CLI in a waiting state until a condition of the live event is met',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--name', '-n'],
              description: 'The name of the live event',
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
      name: 'live-output',
      description: 'Manage live outputs for an Azure Media Service account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a live output',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--archive-window-length',
              description: 'ISO 8601 timespan duration of the archive window length. This is the duration that customer want to retain the recorded content. Minimum window is 5 minutes (PT5M or 00:05:00). Maximum window is 25 hours (PT25H or 25:00:00). For example, to retain the output for 10 minutes, use PT10M or 00:10:00',
              args: [
                Arg(
                name: 'archive-window-lengt'
              )
              ]
            ),
            Option(
              name: '--asset-name',
              description: 'The name of the asset',
              args: [
                Arg(
                name: 'asset-nam'
              )
              ]
            ),
            Option(
              name: '--live-event-name',
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'live-event-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the live output',
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
              name: '--description',
              description: 'The live output description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--fragments-per-ts-segment',
              description: 'The number of fragments per HLS segment',
              args: [
                Arg(
                name: 'fragments-per-ts-segmen'
              )
              ]
            ),
            Option(
              name: '--manifest-name',
              description: 'The manifest file name. If not provided, the service will generate one automatically',
              args: [
                Arg(
                name: 'manifest-nam'
              )
              ]
            ),
            Option(
              name: '--output-snap-time',
              description: 'The output snapshot time',
              args: [
                Arg(
                name: 'output-snap-tim'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a live output',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: '--live-event-name',
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'live-event-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the live output',
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
          description: 'List all the live outputs in a live event',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--live-event-name',
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'live-event-nam'
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
          description: 'Show the details of a live output',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: '--live-event-name',
              description: 'The name of the live event',
              args: [
                Arg(
                name: 'live-event-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the live output',
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
      name: 'streaming-endpoint',
      description: 'Manage streaming endpoints for an Azure Media Service account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a streaming endpoint',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
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
              name: '--scale-units',
              description: 'The number of scale units for Premium StreamingEndpoints. For Standard StreamingEndpoints, set this value to 0. Use the Scale operation to adjust this value for Premium StreamingEndpoints',
              args: [
                Arg(
                name: 'scale-unit'
              )
              ]
            ),
            Option(
              name: '--auto-start',
              description: 'The flag indicates if the resource should be automatically started on creation',
              args: [
                Arg(
                name: 'auto-star'
              )
              ]
            ),
            Option(
              name: '--availability-set-name',
              description: 'The name of the AvailabilitySet used with this StreamingEndpoint for high availability streaming. This value can only be set at creation time',
              args: [
                Arg(
                name: 'availability-set-nam'
              )
              ]
            ),
            Option(
              name: '--cdn-profile',
              description: 'The CDN profile name',
              args: [
                Arg(
                name: 'cdn-profil'
              )
              ]
            ),
            Option(
              name: '--cdn-provider',
              description: 'The CDN provider name. Allowed values: StandardVerizon, PremiumVerizon, StandardAkamai',
              args: [
                Arg(
                name: 'cdn-provide'
              )
              ]
            ),
            Option(
              name: '--client-access-policy',
              description: 'The XML representing the clientaccesspolicy data used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file. For further information about the XML structure please refer to documentation on https://docs.microsoft.com/rest/api/media/operations/crosssiteaccesspolicies',
              args: [
                Arg(
                name: 'client-access-polic'
              )
              ]
            ),
            Option(
              name: '--cross-domain-policy',
              description: 'The XML representing the crossdomain data used by Silverlight. Use @{file} to load from a file. For further information about the XML structure please refer to documentation on https://docs.microsoft.com/rest/api/media/operations/crosssiteaccesspolicies',
              args: [
                Arg(
                name: 'cross-domain-polic'
              )
              ]
            ),
            Option(
              name: '--custom-host-names',
              description: 'Space-separated list of custom host names for the streaming endpoint. Use "" to clear existing list',
              args: [
                Arg(
                name: 'custom-host-name'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The streaming endpoint description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--ips',
              description: 'Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. If no IP addresses are specified any IP address will be allowed',
              args: [
                Arg(
                name: 'ip'
              )
              ]
            ),
            Option(
              name: '--max-cache-age',
              description: 'Max cache age',
              args: [
                Arg(
                name: 'max-cache-ag'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          description: 'Delete a streaming endpoint',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
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
          name: 'get-skus',
          description: 'Get the sku details for a streaming endpoint',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
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
          description: 'List all the streaming endpoints within an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
          name: 'scale',
          description: 'Set the scale of a streaming endpoint',
          options: [

            Option(
              name: '--scale-units',
              description: 'The number of scale units for Premium StreamingEndpoints. For Standard StreamingEndpoints, set this value to 0. Use the Scale operation to adjust this value for Premium StreamingEndpoints',
              args: [
                Arg(
                name: 'scale-unit'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
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
          description: 'Show the details of a streaming endpoint',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
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
          name: 'start',
          description: 'Start a streaming endpoint',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
              args: [
                Arg(
                name: 'nam'
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
          name: 'stop',
          description: 'Stop a streaming endpoint',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
              args: [
                Arg(
                name: 'nam'
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
          name: 'update',
          description: 'Update the details of a streaming endpoint',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--cdn-profile',
              description: 'The CDN profile name',
              args: [
                Arg(
                name: 'cdn-profil'
              )
              ]
            ),
            Option(
              name: '--cdn-provider',
              description: 'The CDN provider name. Allowed values: StandardVerizon, PremiumVerizon, StandardAkamai',
              args: [
                Arg(
                name: 'cdn-provide'
              )
              ]
            ),
            Option(
              name: '--client-access-policy',
              description: 'The XML representing the clientaccesspolicy data used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file. For further information about the XML structure please refer to documentation on https://docs.microsoft.com/rest/api/media/operations/crosssiteaccesspolicies',
              args: [
                Arg(
                name: 'client-access-polic'
              )
              ]
            ),
            Option(
              name: '--cross-domain-policy',
              description: 'The XML representing the crossdomain data used by Silverlight. Use @{file} to load from a file. For further information about the XML structure please refer to documentation on https://docs.microsoft.com/rest/api/media/operations/crosssiteaccesspolicies',
              args: [
                Arg(
                name: 'cross-domain-polic'
              )
              ]
            ),
            Option(
              name: '--custom-host-names',
              description: 'Space-separated list of custom host names for the streaming endpoint. Use "" to clear existing list',
              args: [
                Arg(
                name: 'custom-host-name'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The streaming endpoint description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--disable-cdn',
              description: 'Use this flag to disable CDN for the streaming endpoint',
              args: [
                Arg(
                name: 'disable-cd'
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
              name: '--ips',
              description: 'Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. If no IP addresses are specified any IP address will be allowed',
              args: [
                Arg(
                name: 'ip'
              )
              ]
            ),
            Option(
              name: '--max-cache-age',
              description: 'Max cache age',
              args: [
                Arg(
                name: 'max-cache-ag'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          description: 'Place the CLI in a waiting state until a condition of the streaming endpoint is met',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: ['--name', '-n'],
              description: 'The name of the streaming endpoint',
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
          name: 'akamai',
          description: 'Manage AkamaiAccessControl objects to be used on streaming endpoints',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an AkamaiAccessControl to an existing streaming endpoint',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--base64-key',
                  description: 'Base64-encoded authentication key that will be used by the CDN. The authentication key provided by Akamai is an ASCII encoded string, and must be converted to bytes and then base64 encoded',
                  args: [
                    Arg(
                    name: 'base64-ke'
                  )
                  ]
                ),
                Option(
                  name: '--expiration',
                  description: 'The ISO 8601 DateTime value that specifies when the Akamai authentication expires',
                  args: [
                    Arg(
                    name: 'expiratio'
                  )
                  ]
                ),
                Option(
                  name: '--identifier',
                  description: 'The identifier for the authentication key. This is the nonce provided by Akamai',
                  args: [
                    Arg(
                    name: 'identifie'
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
                  description: 'The name of the streaming endpoint',
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
              description: 'Remove an AkamaiAccessControl from an existing streaming endpoint',
              options: [

                Option(
                  name: '--identifier',
                  description: 'The identifier for the authentication key. This is the nonce provided by Akamai',
                  args: [
                    Arg(
                    name: 'identifie'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
                  name: ['--name', '-n'],
                  description: 'The name of the streaming endpoint',
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
    ),
    Subcommand(
      name: 'streaming-locator',
      description: 'Manage streaming locators for an Azure Media Services account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a streaming locator',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--asset-name',
              description: 'The name of the asset used by the streaming locator',
              args: [
                Arg(
                name: 'asset-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the streaming locator',
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
              name: '--streaming-policy-name',
              description: 'The name of the streaming policy used by the streaming locator. You can either create one with az ams streaming policy create or use any of the predefined policies: Predefined_DownloadOnly, Predefined_ClearStreamingOnly, Predefined_DownloadAndClearStreaming, Predefined_ClearKey, Predefined_MultiDrmCencStreaming, Predefined_MultiDrmStreaming',
              args: [
                Arg(
                name: 'streaming-policy-nam'
              )
              ]
            ),
            Option(
              name: '--alternative-media-id',
              description: 'An alternative media identifier associated with the streaming locator',
              args: [
                Arg(
                name: 'alternative-media-i'
              )
              ]
            ),
            Option(
              name: '--content-key-policy-name',
              description: 'The default content key policy name used by the streaming locator',
              args: [
                Arg(
                name: 'content-key-policy-nam'
              )
              ]
            ),
            Option(
              name: '--content-keys',
              description: 'JSON string with the content keys to be used by the streaming locator. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/streaminglocators/create#streaminglocatorcontentkey',
              args: [
                Arg(
                name: 'content-key'
              )
              ]
            ),
            Option(
              name: '--end-time',
              description: 'The ISO 8601 DateTime end time (Y-m-d\'T\'H:M:S\'Z\') of the streaming locator',
              args: [
                Arg(
                name: 'end-tim'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'A space-separated list of asset filter names and/or account filter names',
              args: [
                Arg(
                name: 'filter'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'The ISO 8601 DateTime start time (Y-m-d\'T\'H:M:S\'Z\') of the streaming locator',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--streaming-locator-id',
              description: 'The identifier of the streaming locator',
              args: [
                Arg(
                name: 'streaming-locator-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Streaming Locator',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming locator',
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
          name: 'get-paths',
          description: 'List paths supported by a streaming locator',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming locator',
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
          description: 'List all the streaming locators within an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              description: 'Restricts the set of items returned',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Specifies the key by which the result collection should be ordered',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Specifies a non-negative integer n that limits the number of items returned from a collection. The service returns the number of available items up to but not greater than the specified value n',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-content-keys',
          description: 'List content keys used by a streaming locator',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming locator',
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
          description: 'Show the details of a streaming locator',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming locator',
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
      name: 'streaming-policy',
      description: 'Manage streaming policies for an Azure Media Services account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a streaming policy',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the streaming policy',
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
              name: '--cbcs-clear-tracks',
              description: 'The JSON representing which tracks should not be encrypted. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/streamingpolicies/create#trackselection',
              args: [
                Arg(
                name: 'cbcs-clear-track'
              )
              ]
            ),
            Option(
              name: '--cbcs-default-key-label',
              description: 'Label to specify Default Content Key for an encryption scheme',
              args: [
                Arg(
                name: 'cbcs-default-key-labe'
              )
              ]
            ),
            Option(
              name: '--cbcs-default-key-policy-name',
              description: 'Policy used by Default Content Key',
              args: [
                Arg(
                name: 'cbcs-default-key-policy-nam'
              )
              ]
            ),
            Option(
              name: '--cbcs-fair-play-allow-persistent-license',
              description: 'Allows the license to be persistent or not'
            ),
            Option(
              name: '--cbcs-fair-play-template',
              description: 'The custom license acquisition URL template for a customer service to deliver keys to end users. Not needed when using Azure Media Services for issuing keys',
              args: [
                Arg(
                name: 'cbcs-fair-play-templat'
              )
              ]
            ),
            Option(
              name: '--cbcs-key-to-track-mappings',
              description: 'The JSON representing a list of StreamingPolicyContentKey. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/streamingpolicies/create#streamingpolicycontentkey',
              args: [
                Arg(
                name: 'cbcs-key-to-track-mapping'
              )
              ]
            ),
            Option(
              name: '--cbcs-protocols',
              description: 'Space-separated list of enabled protocols for Common Encryption CBCS. Allowed values: Download, Dash, HLS, SmoothStreaming',
              args: [
                Arg(
                name: 'cbcs-protocol'
              )
              ]
            ),
            Option(
              name: '--cenc-clear-tracks',
              description: 'The JSON representing which tracks should not be encrypted. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/streamingpolicies/create#trackselection',
              args: [
                Arg(
                name: 'cenc-clear-track'
              )
              ]
            ),
            Option(
              name: '--cenc-default-key-label',
              description: 'Label to specify Default Content Key for an encryption scheme',
              args: [
                Arg(
                name: 'cenc-default-key-labe'
              )
              ]
            ),
            Option(
              name: '--cenc-default-key-policy-name',
              description: 'Policy used by Default Content Key',
              args: [
                Arg(
                name: 'cenc-default-key-policy-nam'
              )
              ]
            ),
            Option(
              name: '--cenc-disable-play-ready',
              description: 'If specified, no PlayReady cenc DRM will be configured. If --cenc-disable-play-ready is set, --cenc-disable-widevine cannot also be set',
              args: [
                Arg(
                name: 'cenc-disable-play-ready',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--cenc-disable-widevine',
              description: 'If specified, no Widevine cenc DRM will be configured. If --cenc-disable-widevine is set, --cenc-disable-play-ready cannot also be set',
              args: [
                Arg(
                name: 'cenc-disable-widevine',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--cenc-key-to-track-mappings',
              description: 'The JSON representing a list of StreamingPolicyContentKey. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/streamingpolicies/create#streamingpolicycontentkey',
              args: [
                Arg(
                name: 'cenc-key-to-track-mapping'
              )
              ]
            ),
            Option(
              name: '--cenc-play-ready-attributes',
              description: 'Custom attributes for PlayReady',
              args: [
                Arg(
                name: 'cenc-play-ready-attribute'
              )
              ]
            ),
            Option(
              name: '--cenc-play-ready-template',
              description: 'The custom license acquisition URL template for a customer service to deliver keys to end users. Not needed when using Azure Media Services for issuing keys',
              args: [
                Arg(
                name: 'cenc-play-ready-templat'
              )
              ]
            ),
            Option(
              name: '--cenc-protocols',
              description: 'Space-separated list of enabled protocols for Common Encryption CENC. Allowed values: Download, Dash, HLS, SmoothStreaming',
              args: [
                Arg(
                name: 'cenc-protocol'
              )
              ]
            ),
            Option(
              name: '--cenc-widevine-template',
              description: 'The custom license acquisition URL template for a customer service to deliver keys to end users. Not needed when using Azure Media Services for issuing keys',
              args: [
                Arg(
                name: 'cenc-widevine-templat'
              )
              ]
            ),
            Option(
              name: '--default-content-key-policy-name',
              description: 'Default Content Key used by current streaming policy',
              args: [
                Arg(
                name: 'default-content-key-policy-nam'
              )
              ]
            ),
            Option(
              name: '--envelope-clear-tracks',
              description: 'The JSON representing which tracks should not be encrypted. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/streamingpolicies/create#trackselection',
              args: [
                Arg(
                name: 'envelope-clear-track'
              )
              ]
            ),
            Option(
              name: '--envelope-default-key-label',
              description: 'Label used to specify Content Key when creating a streaming locator',
              args: [
                Arg(
                name: 'envelope-default-key-labe'
              )
              ]
            ),
            Option(
              name: '--envelope-default-key-policy-name',
              description: 'Policy used by Default Key',
              args: [
                Arg(
                name: 'envelope-default-key-policy-nam'
              )
              ]
            ),
            Option(
              name: '--envelope-key-to-track-mappings',
              description: 'The JSON representing a list of StreamingPolicyContentKey. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest/api/media/streamingpolicies/create#streamingpolicycontentkey',
              args: [
                Arg(
                name: 'envelope-key-to-track-mapping'
              )
              ]
            ),
            Option(
              name: '--envelope-protocols',
              description: 'Space-separated list of enabled protocols for Envelope Encryption. Allowed values: Download, Dash, HLS, SmoothStreaming',
              args: [
                Arg(
                name: 'envelope-protocol'
              )
              ]
            ),
            Option(
              name: '--envelope-template',
              description: 'The KeyAcquistionUrlTemplate is used to point to user specified service to delivery content keys',
              args: [
                Arg(
                name: 'envelope-templat'
              )
              ]
            ),
            Option(
              name: '--no-encryption-protocols',
              description: 'Space-separated list of enabled protocols for NoEncryption. Allowed values: Download, Dash, HLS, SmoothStreaming',
              args: [
                Arg(
                name: 'no-encryption-protocol'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Streaming Policy',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming policy',
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
          description: 'List all the streaming policies within an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              description: 'Restricts the set of items returned',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Specifies the key by which the result collection should be ordered',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Specifies a non-negative integer n that limits the number of items returned from a collection. The service returns the number of available items up to but not greater than the specified value n',
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
          description: 'Show the details of a streaming policy',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the streaming policy',
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
      name: 'transform',
      description: 'Manage transforms for an Azure Media Services account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a transform',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the transform',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--preset',
              description: 'Preset that describes the operations that will be used to modify, transcode, or extract insights from the source file to generate the transform output. Allowed values: H264SingleBitrateSD, H264SingleBitrate720p, H264SingleBitrate1080p, AdaptiveStreaming, AACGoodQualityAudio, ContentAwareEncodingExperimental, ContentAwareEncoding, CopyAllBitrateNonInterleaved, H264MultipleBitrate1080p, H264MultipleBitrate720p, H264MultipleBitrateSD, H265ContentAwareEncoding, H265AdaptiveStreaming, H265SingleBitrate720p, H265SingleBitrate1080p, H265SingleBitrate4K, AudioAnalyzer, VideoAnalyzer, FaceDetector. In addition to the allowed values, you can also pass a path to a custom Standard Encoder preset JSON file. See https://docs.microsoft.com/rest/api/media/transforms/createorupdate#standardencoderpreset for further details on the settings to use to build a custom preset',
              args: [
                Arg(
                name: 'prese'
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
              name: '--audio-analysis-mode',
              description: 'Determines the set of audio analysis operations to be performed. If unspecified, the Standard AudioAnalysisMode would be chosen. Allowed values: Standard, Basic',
              args: [
                Arg(
                name: 'audio-analysis-mod'
              )
              ]
            ),
            Option(
              name: '--audio-language',
              description: 'The language for the audio payload in the input using the BCP-47 format of "language tag-region" (e.g: en-US). If not specified, automatic language detection would be employed. This feature currently supports English, Chinese, French, German, Italian, Japanese, Spanish, Russian, and Portuguese. The automatic detection works best with audio recordings with clearly discernable speech. If automatic detection fails to find the language, transcription would fallback to English. Allowed values: en-US, en-GB, es-ES, es-MX, fr-FR, it-IT, ja-JP, pt-BR, zh-CN, de-DE, ar-EG, ru-RU, hi-IN',
              args: [
                Arg(
                name: 'audio-languag'
              )
              ]
            ),
            Option(
              name: '--blur-type',
              description: 'Allowed values: Box, Low, Med, High, Black',
              args: [
                Arg(
                name: 'blur-typ'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of the transform',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--face-detector-mode',
              description: 'This mode provides the ability to choose between the following settings: 1) Analyze - For detection only.This mode generates a metadata JSON file marking appearances of faces throughout the video.Where possible, appearances of the same person are assigned the same ID. 2) Combined - Additionally redacts(blurs) detected faces. 3) Redact - This enables a 2-pass process, allowing for selective redaction of a subset of detected faces.It takes in the metadata file from a prior analyze pass, along with the source video, and a user-selected subset of IDs that require redaction. Allowed values: Analyze, Redact, Combined',
              args: [
                Arg(
                name: 'face-detector-mod'
              )
              ]
            ),
            Option(
              name: '--insights-to-extract',
              description: 'The type of insights to be extracted. If not set then the type will be selected based on the content type. If the content is audio only then only audio insights will be extracted and if it is video only video insights will be extracted',
              args: [
                Arg(
                name: 'insights-to-extract',
                suggestions: [

                  FigSuggestion(name: 'AllInsights'),
                  FigSuggestion(name: 'AudioInsightsOnly'),
                  FigSuggestion(name: 'VideoInsightsOnly')
                ]
              )
              ]
            ),
            Option(
              name: '--on-error',
              description: 'A Transform can define more than one output. This property defines what the service should do when one output fails - either continue to produce other outputs, or, stop the other outputs. The overall Job state will not reflect failures of outputs that are specified with \'ContinueJob\'. The default is \'StopProcessingJob\'',
              args: [
                Arg(
                name: 'on-error',
                suggestions: [

                  FigSuggestion(name: 'ContinueJob'),
                  FigSuggestion(name: 'StopProcessingJob')
                ]
              )
              ]
            ),
            Option(
              name: '--relative-priority',
              description: 'Sets the relative priority of the transform outputs within a transform. This sets the priority that the service uses for processing TransformOutputs. The default priority is Normal',
              args: [
                Arg(
                name: 'relative-priority',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Low'),
                  FigSuggestion(name: 'Normal')
                ]
              )
              ]
            ),
            Option(
              name: '--resolution',
              description: 'Specifies the maximum resolution at which your video is analyzed. The default behavior is "SourceResolution," which will keep the input video at its original resolution when analyzed. Using StandardDefinition will resize input videos to standard definition while preserving the appropriate aspect ratio. It will only resize if the video is of higher resolution. For example, a 1920x1080 input would be scaled to 640x360 before processing. Switching to "StandardDefinition" will reduce the time it takes to process high resolution video. It may also reduce the cost of using this component (see https://azure.microsoft.com/pricing/details/media-services/#analytics for details). However, faces that end up being too small in the resized video may not be detected. Allowed values: StandardDefinition, SourceResolution',
              args: [
                Arg(
                name: 'resolutio'
              )
              ]
            ),
            Option(
              name: '--video-analysis-mode',
              description: 'Determines the set of audio analysis operations to be performed. If unspecified, the Standard AudioAnalysisMode would be chosen. Allowed values: Standard, Basic',
              args: [
                Arg(
                name: 'video-analysis-mod'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a transform',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the transform',
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
          description: 'List all the transforms of an Azure Media Services account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              description: 'Restricts the set of items returned',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Specifies the key by which the result collection should be ordered',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of a transform',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
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
              name: ['--name', '-n'],
              description: 'The name of the transform',
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
          description: 'Update the details of a transform',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the Azure Media Services account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--description',
              description: 'The description of the transform',
              args: [
                Arg(
                name: 'descriptio'
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
              description: 'The name of the transform',
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
          name: 'output',
          description: 'Manage transform outputs for an Azure Media Services account',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an output to an existing transform',
              options: [

                Option(
                  name: '--preset',
                  description: 'Preset that describes the operations that will be used to modify, transcode, or extract insights from the source file to generate the transform output. Allowed values: H264SingleBitrateSD, H264SingleBitrate720p, H264SingleBitrate1080p, AdaptiveStreaming, AACGoodQualityAudio, ContentAwareEncodingExperimental, ContentAwareEncoding, CopyAllBitrateNonInterleaved, H264MultipleBitrate1080p, H264MultipleBitrate720p, H264MultipleBitrateSD, H265ContentAwareEncoding, H265AdaptiveStreaming, H265SingleBitrate720p, H265SingleBitrate1080p, H265SingleBitrate4K, AudioAnalyzer, VideoAnalyzer, FaceDetector. In addition to the allowed values, you can also pass a path to a custom Standard Encoder preset JSON file. See https://docs.microsoft.com/rest/api/media/transforms/createorupdate#standardencoderpreset for further details on the settings to use to build a custom preset',
                  args: [
                    Arg(
                    name: 'prese'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--audio-analysis-mode',
                  description: 'Determines the set of audio analysis operations to be performed. If unspecified, the Standard AudioAnalysisMode would be chosen. Allowed values: Standard, Basic',
                  args: [
                    Arg(
                    name: 'audio-analysis-mod'
                  )
                  ]
                ),
                Option(
                  name: '--audio-language',
                  description: 'The language for the audio payload in the input using the BCP-47 format of "language tag-region" (e.g: en-US). If not specified, automatic language detection would be employed. This feature currently supports English, Chinese, French, German, Italian, Japanese, Spanish, Russian, and Portuguese. The automatic detection works best with audio recordings with clearly discernable speech. If automatic detection fails to find the language, transcription would fallback to English. Allowed values: en-US, en-GB, es-ES, es-MX, fr-FR, it-IT, ja-JP, pt-BR, zh-CN, de-DE, ar-EG, ru-RU, hi-IN',
                  args: [
                    Arg(
                    name: 'audio-languag'
                  )
                  ]
                ),
                Option(
                  name: '--blur-type',
                  description: 'Allowed values: Box, Low, Med, High, Black',
                  args: [
                    Arg(
                    name: 'blur-typ'
                  )
                  ]
                ),
                Option(
                  name: '--face-detector-mode',
                  description: 'This mode provides the ability to choose between the following settings: 1) Analyze - For detection only.This mode generates a metadata JSON file marking appearances of faces throughout the video.Where possible, appearances of the same person are assigned the same ID. 2) Combined - Additionally redacts(blurs) detected faces. 3) Redact - This enables a 2-pass process, allowing for selective redaction of a subset of detected faces.It takes in the metadata file from a prior analyze pass, along with the source video, and a user-selected subset of IDs that require redaction. Allowed values: Analyze, Redact, Combined',
                  args: [
                    Arg(
                    name: 'face-detector-mod'
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
                  name: '--insights-to-extract',
                  description: 'The type of insights to be extracted. If not set then the type will be selected based on the content type. If the content is audio only then only audio insights will be extracted and if it is video only video insights will be extracted',
                  args: [
                    Arg(
                    name: 'insights-to-extract',
                    suggestions: [

                      FigSuggestion(name: 'AllInsights'),
                      FigSuggestion(name: 'AudioInsightsOnly'),
                      FigSuggestion(name: 'VideoInsightsOnly')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the transform',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--on-error',
                  description: 'A Transform can define more than one output. This property defines what the service should do when one output fails - either continue to produce other outputs, or, stop the other outputs. The overall Job state will not reflect failures of outputs that are specified with \'ContinueJob\'. The default is \'StopProcessingJob\'',
                  args: [
                    Arg(
                    name: 'on-error',
                    suggestions: [

                      FigSuggestion(name: 'ContinueJob'),
                      FigSuggestion(name: 'StopProcessingJob')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--relative-priority',
                  description: 'Sets the relative priority of the transform outputs within a transform. This sets the priority that the service uses for processing TransformOutputs. The default priority is Normal',
                  args: [
                    Arg(
                    name: 'relative-priority',
                    suggestions: [

                      FigSuggestion(name: 'High'),
                      FigSuggestion(name: 'Low'),
                      FigSuggestion(name: 'Normal')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--resolution',
                  description: 'Specifies the maximum resolution at which your video is analyzed. The default behavior is "SourceResolution," which will keep the input video at its original resolution when analyzed. Using StandardDefinition will resize input videos to standard definition while preserving the appropriate aspect ratio. It will only resize if the video is of higher resolution. For example, a 1920x1080 input would be scaled to 640x360 before processing. Switching to "StandardDefinition" will reduce the time it takes to process high resolution video. It may also reduce the cost of using this component (see https://azure.microsoft.com/pricing/details/media-services/#analytics for details). However, faces that end up being too small in the resized video may not be detected. Allowed values: StandardDefinition, SourceResolution',
                  args: [
                    Arg(
                    name: 'resolutio'
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
                  name: '--video-analysis-mode',
                  description: 'Determines the set of audio analysis operations to be performed. If unspecified, the Standard AudioAnalysisMode would be chosen. Allowed values: Standard, Basic',
                  args: [
                    Arg(
                    name: 'video-analysis-mod'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove an output from an existing transform',
              options: [

                Option(
                  name: '--output-index',
                  description: 'The element index of the output to remove',
                  args: [
                    Arg(
                    name: 'output-inde'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the Azure Media Services account',
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
                  name: ['--name', '-n'],
                  description: 'The name of the transform',
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
    )
  ]
);
