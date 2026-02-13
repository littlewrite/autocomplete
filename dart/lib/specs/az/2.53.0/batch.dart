// Auto-generated from TypeScript source: batch.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `batch` CLI
final FigSpec batchSpec = FigSpec(
  name: 'batch',
  description: 'Manage Azure Batch',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage Azure Batch accounts',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Batch account with the specified parameters',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The region in which to create the account',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--encryption-key-identifier',
              description: 'Part of the encryption configuration for the Batch account. Full path to the versioned secret. Example https://mykeyvault.vault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053',
              args: [
                Arg(
                name: 'encryption-key-identifie'
              )
              ]
            ),
            Option(
              name: '--encryption-key-source',
              description: 'Part of the encryption configuration for the Batch account. Type of the key source. Can be either Microsoft.Batch or Microsoft.KeyVault',
              args: [
                Arg(
                name: 'encryption-key-source',
                suggestions: [

                  FigSuggestion(name: 'Microsoft.Batch'),
                  FigSuggestion(name: 'Microsoft.KeyVault')
                ]
              )
              ]
            ),
            Option(
              name: '--keyvault',
              description: 'The KeyVault name or resource ID to be used for an account with a pool allocation mode of \'User Subscription\'',
              args: [
                Arg(
                name: 'keyvaul'
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Set the system managed identity on the batch services account',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Resource ID of the user assigned identity for the batch services account',
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
              name: '--public-network-access',
              description: 'The network access type for accessing Azure Batch account. Values can either be enabled or disabled',
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
              name: '--storage-account',
              description: 'The storage account name or resource ID to be used for auto storage',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in \'key[=value]\' format',
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
          description: 'Deletes the specified Batch account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the Batch accounts associated with a subscription or resource group',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'login',
          description: 'Log in to a Batch account through Azure Active Directory or Shared Key authentication',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--shared-key-auth',
              description: 'Using Shared Key authentication, if not specified, it will use Azure Active Directory authentication'
            ),
            Option(
              name: '--show',
              description: 'Display the credential information for the Batch account'
            )
          ]
        ),
        Subcommand(
          name: 'outbound-endpoints',
          description: 'List an account\'s outbound network dependencies',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
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
          description: 'Update properties for a Batch account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--encryption-key-identifier',
              description: 'Part of the encryption configuration for the Batch account. Full path to the versioned secret. Example https://mykeyvault.vault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053',
              args: [
                Arg(
                name: 'encryption-key-identifie'
              )
              ]
            ),
            Option(
              name: '--encryption-key-source',
              description: 'Part of the encryption configuration for the Batch account. Type of the key source. Can be either Microsoft.Batch or Microsoft.KeyVault',
              args: [
                Arg(
                name: 'encryption-key-sourc'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'The network access type for accessing Azure Batch account. Values can either be enabled or disabled',
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
              name: '--storage-account',
              description: 'The storage account name or resource ID to be used for auto storage',
              args: [
                Arg(
                name: 'storage-accoun'
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
          name: 'show',
          description: 'Get a specified Batch account or the currently set account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the batch account to show. If not specified will display currently set account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group. If not specified will display currently set account',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'autostorage-keys',
          description: 'Manage the access keys for the auto storage account configured for a Batch account',
          subcommands: [

            Subcommand(
              name: 'sync',
              description: 'Synchronizes access keys for the auto-storage account configured for the specified Batch account, only if storage key authentication is being used',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Batch account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
          name: 'identity',
          description: 'Manage identities of a batch account',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Add managed identities to an existing batch account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the batch account to show. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Provide this flag to use system assigned identity for batch accounts. Check out help for more examples',
                  args: [
                    Arg(
                    name: 'system-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'User Assigned Identity ids to be used for batch account. Check out help for more examples',
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
              description: 'Remove managed identities from an existing batch account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the batch account to show. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Provide this flag to use system assigned identity for batch accounts. Check out help for more examples',
                  args: [
                    Arg(
                    name: 'system-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'User Assigned Identity ids to be used for batch account. Check out help for more examples',
                  args: [
                    Arg(
                    name: 'user-assigne'
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
              description: 'Display managed identities of a batch account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the batch account to show. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group. If not specified will display currently set account',
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
          name: 'keys',
          description: 'Manage Batch account keys',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Gets the account keys for the specified Batch account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Batch account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
              description: 'Renew keys for a Batch account',
              options: [

                Option(
                  name: '--key-name',
                  description: 'Name of the batch account key',
                  args: [
                    Arg(
                    name: 'key-name',
                    suggestions: [

                      FigSuggestion(name: 'Primary'),
                      FigSuggestion(name: 'Secondary')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the batch account to show. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group. If not specified will display currently set account',
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
          name: 'network-profile',
          description: 'Manage Batch account Network profiles',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Set the Network profile for Batch account',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--default-action',
                  description: 'Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled. Possible values include: \'Allow\', \'Deny\'',
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
                  name: ['--name', '-n'],
                  description: 'Name of the batch account to show. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--profile',
                  description: 'Network profile to set',
                  args: [
                    Arg(
                    name: 'profile',
                    suggestions: [

                      FigSuggestion(name: 'BatchAccount'),
                      FigSuggestion(name: 'NodeManagement')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get information about the Network profile for Batch account',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the batch account to show. If not specified will display currently set account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'network-rule',
              description: 'Manage Batch account Network rules in Network Profile',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a Network rule from a Network Profile',
                  options: [

                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of the resource group. If not specified will display currently set account',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--ip-address',
                      description: 'IPv4 address or CIDR range',
                      args: [
                        Arg(
                        name: 'ip-addres'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the batch account to show. If not specified will display currently set account',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--profile',
                      description: 'Network profile to set',
                      args: [
                        Arg(
                        name: 'profile',
                        suggestions: [

                          FigSuggestion(name: 'BatchAccount'),
                          FigSuggestion(name: 'NodeManagement')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Network rule from a Network Profile',
                  options: [

                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of the resource group. If not specified will display currently set account',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--ip-address',
                      description: 'IPv4 address or CIDR range',
                      args: [
                        Arg(
                        name: 'ip-addres'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the batch account to show. If not specified will display currently set account',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--profile',
                      description: 'Network profile to set',
                      args: [
                        Arg(
                        name: 'profile',
                        suggestions: [

                          FigSuggestion(name: 'BatchAccount'),
                          FigSuggestion(name: 'NodeManagement')
                        ]
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
                  description: 'List the Network rules from a Network Profile',
                  options: [

                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of the resource group. If not specified will display currently set account',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the batch account to show. If not specified will display currently set account',
                      args: [
                        Arg(
                        name: 'nam'
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
    ),
    Subcommand(
      name: 'application',
      description: 'Manage Batch applications',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Adds an application to the specified Batch account',
          options: [

            Option(
              name: '--application-name',
              description: 'The name of the application. This must be unique within the account. Required',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'The parameters for the request. Is either a model type or a IO type. Default value is None',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an application',
          options: [

            Option(
              name: '--application-name',
              description: 'The name of the application. This must be unique within the account. Required',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
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
          description: 'Lists all of the applications in the specified account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'The maximum number of items to return in the response. Default value is None',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update properties for a Batch application',
          options: [

            Option(
              name: '--application-name',
              description: 'The name of the application',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--allow-updates',
              description: 'Specify to indicate whether packages within the application may be overwritten using the same version string. Specify either \'true\' or \'false\' to update the property',
              args: [
                Arg(
                name: 'allow-update'
              )
              ]
            ),
            Option(
              name: '--default-version',
              description: 'Specify which package to use if a client requests the application but does not specify a version',
              args: [
                Arg(
                name: 'default-versio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Specify the display name for the application',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about the specified application',
          options: [

            Option(
              name: '--application-name',
              description: 'The name of the application. This must be unique within the account. Required',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Batch account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'package',
          description: 'Manage Batch application packages',
          subcommands: [

            Subcommand(
              name: 'activate',
              description: 'Activates a Batch application package',
              options: [

                Option(
                  name: '--application-name',
                  description: 'The name of the application',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'The format of the application package binary file',
                  args: [
                    Arg(
                    name: 'forma'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Batch account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--version-name',
                  description: 'The version name of the application',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a Batch application package record and activate it',
              options: [

                Option(
                  name: '--application-name',
                  description: 'The name of the application',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Batch account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--package-file',
                  description: 'The path of the application package in zip format',
                  args: [
                    Arg(
                    name: 'package-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--version-name',
                  description: 'The version name of the application',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes an application package record and its associated binary file',
              options: [

                Option(
                  name: '--application-name',
                  description: 'The name of the application. This must be unique within the account. Required',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Batch account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--version-name',
                  description: 'The version of the application. Required',
                  args: [
                    Arg(
                    name: 'version-nam'
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
              description: 'Lists all of the application packages in the specified application',
              options: [

                Option(
                  name: '--application-name',
                  description: 'The name of the application. This must be unique within the account. Required',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Batch account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--maxresults',
                  description: 'The maximum number of items to return in the response. Default value is None',
                  args: [
                    Arg(
                    name: 'maxresult'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets information about the specified application package',
              options: [

                Option(
                  name: '--application-name',
                  description: 'The name of the application. This must be unique within the account. Required',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Batch account',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--version-name',
                  description: 'The version of the application. Required',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'summary',
          description: 'View a summary of Batch application packages',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists all of the applications available in the specified account',
              options: [

                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets information about the specified application',
              options: [

                Option(
                  name: '--application-id',
                  description: 'The ID of the Application',
                  args: [
                    Arg(
                    name: 'application-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
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
      name: 'certificate',
      description: 'Manage Batch certificates',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Add a certificate to a Batch account',
          options: [

            Option(
              name: '--certificate-file',
              description: 'The certificate file: cer file or pfx file',
              args: [
                Arg(
                name: 'certificate-fil'
              )
              ]
            ),
            Option(
              name: '--thumbprint',
              description: 'The certificate thumbprint',
              args: [
                Arg(
                name: 'thumbprin'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The password to access the certificate\'s private key',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a certificate from a Batch account',
          options: [

            Option(
              name: '--thumbprint',
              description: 'The certificate thumbprint',
              args: [
                Arg(
                name: 'thumbprin'
              )
              ]
            ),
            Option(
              name: '--abort',
              description: 'Cancel the failed certificate deletion operation'
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
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
          description: 'Lists all of the Certificates that have been added to the specified Account',
          options: [

            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-certificates',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about the specified Certificate',
          options: [

            Option(
              name: '--thumbprint',
              description: 'The certificate thumbprint',
              args: [
                Arg(
                name: 'thumbprin'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'file',
      description: 'Manage Batch input files',
      subcommands: [

        Subcommand(
          name: 'download',
          description: 'Download a specified file or directory of files to the specified storage path',
          options: [

            Option(
              name: '--file-group',
              description: 'Name of a file group from which the files will be downloaded',
              args: [
                Arg(
                name: 'file-grou'
              )
              ]
            ),
            Option(
              name: '--local-path',
              description: 'Path to a local file or directory to be stored the download files',
              args: [
                Arg(
                name: 'local-pat'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'If set, an existing file in the local path will be overwritten'
            ),
            Option(
              name: '--remote-path',
              description: 'The subdirectory under which files exist remotely',
              args: [
                Arg(
                name: 'remote-pat'
              )
              ]
            ),
            Option(
              name: '--resource-group',
              description: 'The resource group of the Batch account',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upload',
          description: 'Upload a specified file or directory of files to the specified storage path',
          options: [

            Option(
              name: '--file-group',
              description: 'Name of a file group under which the files will be stored',
              args: [
                Arg(
                name: 'file-grou'
              )
              ]
            ),
            Option(
              name: '--local-path',
              description: 'Path to a local file or directory to be uploaded - can include wildcard patterns',
              args: [
                Arg(
                name: 'local-pat'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'If set, will not retain local directory structure in storage',
              args: [
                Arg(
                name: 'flatte'
              )
              ]
            ),
            Option(
              name: '--remote-path',
              description: 'Group subdirectory under which files will be uploaded',
              args: [
                Arg(
                name: 'remote-pat'
              )
              ]
            ),
            Option(
              name: '--resource-group',
              description: 'The resource group of the Batch account',
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
      description: 'Manage Batch jobs',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Add a job to a Batch account',
          options: [

            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--allow-task-preemption',
              description: 'Whether Tasks in this job can be preempted by other high priority jobs. If the value is set to True, other high priority jobs submitted to the system will take precedence and will be able requeue tasks from this job. You can update a job\'s allowTaskPreemption after it has been created using the update job API. True if flag present',
              args: [
                Arg(
                name: 'allow-task-preemptio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Required. The ID can contain any combination of alphanumeric characters including hyphens and underscores, and cannot contain more than 64 characters. The ID is case-preserving and case-insensitive (that is, you may not have two IDs within an Account that differ only by case)',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-command-line',
              description: 'Required. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en-us/azure/batch/batch-compute-node-environment-variables)',
              args: [
                Arg(
                name: 'job-manager-task-command-lin'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-environment-settings',
              description: 'Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'job-manager-task-environment-setting'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-id',
              description: 'Required. The ID can contain any combination of alphanumeric characters including hyphens and underscores and cannot contain more than 64 characters',
              args: [
                Arg(
                name: 'job-manager-task-i'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-resource-files',
              description: 'Files listed under this element are located in the Task\'s working directory. There is a maximum size for the list of resource files. When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Space-separated resource references in filename=httpurl format',
              args: [
                Arg(
                name: 'job-manager-task-resource-file'
              )
              ]
            ),
            Option(
              name: '--job-max-task-retry-count',
              description: 'The maximum number of times each Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try each Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries a Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry Tasks. If the maximum retry count is -1, the Batch service retries Tasks without limit. The default value is 0 (no retries)',
              args: [
                Arg(
                name: 'job-max-task-retry-coun'
              )
              ]
            ),
            Option(
              name: '--job-max-wall-clock-time',
              description: 'If the Job does not complete within the time limit, the Batch service terminates it and any Tasks that are still running. In this case, the termination reason will be MaxWallClockTimeExpiry. If this property is not specified, there is no time limit on how long the Job may run. Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'job-max-wall-clock-tim'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the job specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Job Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--max-parallel-tasks',
              description: 'The maximum number of tasks that can be executed in parallel for the job. The value of maxParallelTasks must be -1 or greater than 0 if specified. If not specified, the default value is -1, which means there\'s no limit to the number of tasks that can be run at once. You can update a job\'s maxParallelTasks after it has been created using the update job API. Default value: -1',
              args: [
                Arg(
                name: 'max-parallel-task'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The id of an existing pool. All the tasks of the job will run on the specified pool',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority of the Job. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. The default value is 0',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: '--required-slots',
              description: 'The number of scheduling slots that the Task requires to run. The default is 1. A Task can only be scheduled to run on a compute node if the node has enough free scheduling slots available. For multi-instance Tasks, this property is not supported and must not be specified',
              args: [
                Arg(
                name: 'required-slot'
              )
              ]
            ),
            Option(
              name: '--uses-task-dependencies',
              description: 'Whether Tasks in the Job can define dependencies on each other. The default is false. True if flag present',
              args: [
                Arg(
                name: 'uses-task-dependencie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Job',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job to delete',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
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
          name: 'disable',
          description: 'Disables the specified Job, preventing new Tasks from running',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job to disable',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--disable-tasks',
              description: 'Possible values include: \'requeue\', \'terminate\', \'wait\'',
              args: [
                Arg(
                name: 'disable-task'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enables the specified Job, allowing new Tasks to run',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job to enable',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all of the jobs or job schedule in a Batch account',
          options: [

            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'An OData \$expand clause',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'An OData \$filter clause',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--job-schedule-id',
              description: 'The ID of the job schedule from which you want to get a list of jobs. If omitted, lists all jobs in the account',
              args: [
                Arg(
                name: 'job-schedule-i'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Update the properties of a Batch job. Unspecified properties which can be updated are reset to their defaults',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job whose properties you want to update',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--allow-task-preemption',
              description: 'Whether Tasks in this job can be preempted by other high priority jobs. If the value is set to True, other high priority jobs submitted to the system will take precedence and will be able requeue tasks from this job. You can update a job\'s allowTaskPreemption after it has been created using the update job API. True if flag present',
              args: [
                Arg(
                name: 'allow-task-preemptio'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--job-max-task-retry-count',
              description: 'The maximum number of times each Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try each Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries a Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry Tasks. If the maximum retry count is -1, the Batch service retries Tasks without limit. The default value is 0 (no retries)',
              args: [
                Arg(
                name: 'job-max-task-retry-coun'
              )
              ]
            ),
            Option(
              name: '--job-max-wall-clock-time',
              description: 'If the Job does not complete within the time limit, the Batch service terminates it and any Tasks that are still running. In this case, the termination reason will be MaxWallClockTimeExpiry. If this property is not specified, there is no time limit on how long the Job may run. Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'job-max-wall-clock-tim'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the job update parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Job Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--max-parallel-tasks',
              description: 'The maximum number of tasks that can be executed in parallel for the job. The value of maxParallelTasks must be -1 or greater than 0 if specified. If not specified, the default value is -1, which means there\'s no limit to the number of tasks that can be run at once. You can update a job\'s maxParallelTasks after it has been created using the update job API. Default value: -1',
              args: [
                Arg(
                name: 'max-parallel-task'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'If omitted, it takes the default value of an empty list; in effect, any existing metadata is deleted. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--on-all-tasks-complete',
              description: 'The action the Batch service should take when all Tasks in the Job are in the completed state. If omitted, the completion behavior is set to noaction. If the current value is terminatejob, this is an error because a Job\'s completion behavior may not be changed from terminatejob to noaction. You may not change the value from terminatejob to noaction - that is, once you have engaged automatic Job termination, you cannot turn it off again. If you try to do this, the request fails and Batch returns status code 400 (Bad Request) and an \'invalid property value\' error response. If you do not specify this element in a PUT request, it is equivalent to passing noaction. This is an error if the current value is terminatejob',
              args: [
                Arg(
                name: 'on-all-tasks-complete',
                suggestions: [

                  FigSuggestion(name: 'noaction'),
                  FigSuggestion(name: 'terminatejob')
                ]
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The id of an existing pool. All the tasks of the job will run on the specified pool',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority of the Job. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. If omitted, it is set to the default value 0',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update the properties of a Batch job. Updating a property in a subgroup will reset the unspecified properties of that group',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job whose properties you want to update',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--allow-task-preemption',
              description: 'Whether Tasks in this job can be preempted by other high priority jobs. If the value is set to True, other high priority jobs submitted to the system will take precedence and will be able requeue tasks from this job. You can update a job\'s allowTaskPreemption after it has been created using the update job API. Specify either \'true\' or \'false\' to update the property',
              args: [
                Arg(
                name: 'allow-task-preemptio'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--job-max-task-retry-count',
              description: 'The maximum number of times each Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try each Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries a Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry Tasks. If the maximum retry count is -1, the Batch service retries Tasks without limit. The default value is 0 (no retries)',
              args: [
                Arg(
                name: 'job-max-task-retry-coun'
              )
              ]
            ),
            Option(
              name: '--job-max-wall-clock-time',
              description: 'If the Job does not complete within the time limit, the Batch service terminates it and any Tasks that are still running. In this case, the termination reason will be MaxWallClockTimeExpiry. If this property is not specified, there is no time limit on how long the Job may run. Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'job-max-wall-clock-tim'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the job patch parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Job Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--max-parallel-tasks',
              description: 'The maximum number of tasks that can be executed in parallel for the job. The value of maxParallelTasks must be -1 or greater than 0 if specified. If not specified, the default value is -1, which means there\'s no limit to the number of tasks that can be run at once. You can update a job\'s maxParallelTasks after it has been created using the update job API',
              args: [
                Arg(
                name: 'max-parallel-task'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'If omitted, the existing Job metadata is left unchanged. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--on-all-tasks-complete',
              description: 'The action the Batch service should take when all Tasks in the Job are in the completed state. If omitted, the completion behavior is left unchanged. You may not change the value from terminatejob to noaction - that is, once you have engaged automatic Job termination, you cannot turn it off again. If you try to do this, the request fails with an \'invalid property value\' error response; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request)',
              args: [
                Arg(
                name: 'on-all-tasks-complete',
                suggestions: [

                  FigSuggestion(name: 'noaction'),
                  FigSuggestion(name: 'terminatejob')
                ]
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The id of an existing pool. All the tasks of the job will run on the specified pool',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority of the Job. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. If omitted, the priority of the Job is left unchanged',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about the specified Job',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'An OData \$expand clause',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop a running Batch job',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job to terminate',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--terminate-reason',
              description: 'Termination reason',
              args: [
                Arg(
                name: 'terminate-reaso'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'prep-release-status',
          description: 'View the status of Batch job preparation and release tasks',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists the execution status of the Job Preparation and Job Release Task for the specified Job across the Compute Nodes where the Job has run',
              options: [

                Option(
                  name: '--job-id',
                  description: 'The ID of the Job',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-job-preparation-and-release-status',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'An OData \$select clause',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'task-counts',
          description: 'View the number of tasks and slots in a Batch job and their states',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets the Task counts for the specified Job',
              options: [

                Option(
                  name: '--job-id',
                  description: 'The ID of the Job',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
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
      name: 'job-schedule',
      description: 'Manage Batch job schedules',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Add a Batch job schedule to an account',
          options: [

            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--allow-task-preemption',
              description: 'Whether Tasks in this job can be preempted by other high priority jobs. If the value is set to True, other high priority jobs submitted to the system will take precedence and will be able requeue tasks from this job. You can update a job\'s allowTaskPreemption after it has been created using the update job API. True if flag present',
              args: [
                Arg(
                name: 'allow-task-preemptio'
              )
              ]
            ),
            Option(
              name: '--do-not-run-after',
              description: 'If you do not specify a doNotRunAfter time, and you are creating a recurring Job Schedule, the Job Schedule will remain active until you explicitly terminate it. Expected format is an ISO-8601 timestamp',
              args: [
                Arg(
                name: 'do-not-run-afte'
              )
              ]
            ),
            Option(
              name: '--do-not-run-until',
              description: 'If you do not specify a doNotRunUntil time, the schedule becomes ready to create Jobs immediately. Expected format is an ISO-8601 timestamp',
              args: [
                Arg(
                name: 'do-not-run-unti'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Required. The ID can contain any combination of alphanumeric characters including hyphens and underscores, and cannot contain more than 64 characters. The ID is case-preserving and case-insensitive (that is, you may not have two IDs within an Account that differ only by case)',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-command-line',
              description: 'Required. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en-us/azure/batch/batch-compute-node-environment-variables)',
              args: [
                Arg(
                name: 'job-manager-task-command-lin'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-id',
              description: 'Required. The ID can contain any combination of alphanumeric characters including hyphens and underscores and cannot contain more than 64 characters',
              args: [
                Arg(
                name: 'job-manager-task-i'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-resource-files',
              description: 'Files listed under this element are located in the Task\'s working directory. There is a maximum size for the list of resource files. When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Space-separated resource references in filename=httpurl format',
              args: [
                Arg(
                name: 'job-manager-task-resource-file'
              )
              ]
            ),
            Option(
              name: '--job-max-task-retry-count',
              description: 'The maximum number of times each Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try each Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries a Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry Tasks. If the maximum retry count is -1, the Batch service retries Tasks without limit. The default value is 0 (no retries)',
              args: [
                Arg(
                name: 'job-max-task-retry-coun'
              )
              ]
            ),
            Option(
              name: '--job-max-wall-clock-time',
              description: 'If the Job does not complete within the time limit, the Batch service terminates it and any Tasks that are still running. In this case, the termination reason will be MaxWallClockTimeExpiry. If this property is not specified, there is no time limit on how long the Job may run. Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'job-max-wall-clock-tim'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the cloud job schedule specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Cloud Job Schedule Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--max-parallel-tasks',
              description: 'The maximum number of tasks that can be executed in parallel for the job. The value of maxParallelTasks must be -1 or greater than 0 if specified. If not specified, the default value is -1, which means there\'s no limit to the number of tasks that can be run at once. You can update a job\'s maxParallelTasks after it has been created using the update job API. Default value: -1',
              args: [
                Arg(
                name: 'max-parallel-task'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--on-all-tasks-complete',
              description: 'The action the Batch service should take when all Tasks in a Job created under this schedule are in the completed state. Note that if a Job contains no Tasks, then all Tasks are considered complete. This option is therefore most commonly used with a Job Manager task; if you want to use automatic Job termination without a Job Manager, you should initially set onAllTasksComplete to noaction and update the Job properties to set onAllTasksComplete to terminatejob once you have finished adding Tasks. The default is noaction',
              args: [
                Arg(
                name: 'on-all-tasks-complete',
                suggestions: [

                  FigSuggestion(name: 'noaction'),
                  FigSuggestion(name: 'terminatejob')
                ]
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The id of an existing pool. All the tasks of the job will run on the specified pool',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority of Jobs created under this schedule. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. The default value is 0. This priority is used as the default for all Jobs under the Job Schedule. You can update a Job\'s priority after it has been created using by using the update Job API',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: '--recurrence-interval',
              description: 'Because a Job Schedule can have at most one active Job under it at any given time, if it is time to create a new Job under a Job Schedule, but the previous Job is still running, the Batch service will not create the new Job until the previous Job finishes. If the previous Job does not finish within the startWindow period of the new recurrenceInterval, then no new Job will be scheduled for that interval. For recurring Jobs, you should normally specify a jobManagerTask in the jobSpecification. If you do not use jobManagerTask, you will need an external process to monitor when Jobs are created, add Tasks to the Jobs and terminate the Jobs ready for the next recurrence. The default is that the schedule does not recur: one Job is created, within the startWindow after the doNotRunUntil time, and the schedule is complete as soon as that Job finishes. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'recurrence-interva'
              )
              ]
            ),
            Option(
              name: '--required-slots',
              description: 'The number of scheduling slots that the Task requires to run. The default is 1. A Task can only be scheduled to run on a compute node if the node has enough free scheduling slots available. For multi-instance Tasks, this property is not supported and must not be specified',
              args: [
                Arg(
                name: 'required-slot'
              )
              ]
            ),
            Option(
              name: '--start-window',
              description: 'If a Job is not created within the startWindow interval, then the \'opportunity\' is lost; no Job will be created until the next recurrence of the schedule. If the schedule is recurring, and the startWindow is longer than the recurrence interval, then this is equivalent to an infinite startWindow, because the Job that is \'due\' in one recurrenceInterval is not carried forward into the next recurrence interval. The default is infinite. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'start-windo'
              )
              ]
            ),
            Option(
              name: '--uses-task-dependencies',
              description: 'Whether Tasks in the Job can define dependencies on each other. The default is false. True if flag present',
              args: [
                Arg(
                name: 'uses-task-dependencie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Job Schedule from the specified Account',
          options: [

            Option(
              name: '--job-schedule-id',
              description: 'The ID of the Job Schedule to delete',
              args: [
                Arg(
                name: 'job-schedule-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
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
          name: 'disable',
          description: 'Disables a Job Schedule',
          options: [

            Option(
              name: '--job-schedule-id',
              description: 'The ID of the Job Schedule to disable',
              args: [
                Arg(
                name: 'job-schedule-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enables a Job Schedule',
          options: [

            Option(
              name: '--job-schedule-id',
              description: 'The ID of the Job Schedule to enable',
              args: [
                Arg(
                name: 'job-schedule-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all of the Job Schedules in the specified Account',
          options: [

            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'An OData \$expand clause',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-job-schedules',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Reset the properties of a job schedule.  An updated job specification only applies to new jobs',
          options: [

            Option(
              name: '--job-schedule-id',
              description: 'The ID of the Job Schedule to update',
              args: [
                Arg(
                name: 'job-schedule-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--allow-task-preemption',
              description: 'Whether Tasks in this job can be preempted by other high priority jobs. If the value is set to True, other high priority jobs submitted to the system will take precedence and will be able requeue tasks from this job. You can update a job\'s allowTaskPreemption after it has been created using the update job API. True if flag present',
              args: [
                Arg(
                name: 'allow-task-preemptio'
              )
              ]
            ),
            Option(
              name: '--do-not-run-after',
              description: 'If you do not specify a doNotRunAfter time, and you are creating a recurring Job Schedule, the Job Schedule will remain active until you explicitly terminate it. Expected format is an ISO-8601 timestamp',
              args: [
                Arg(
                name: 'do-not-run-afte'
              )
              ]
            ),
            Option(
              name: '--do-not-run-until',
              description: 'If you do not specify a doNotRunUntil time, the schedule becomes ready to create Jobs immediately. Expected format is an ISO-8601 timestamp',
              args: [
                Arg(
                name: 'do-not-run-unti'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-application-package-references',
              description: 'Application Packages are downloaded and deployed to a shared directory, not the Task working directory. Therefore, if a referenced Application Package is already on the Compute Node, and is up to date, then it is not re-downloaded; the existing copy on the Compute Node is used. If a referenced Application Package cannot be installed, for example because the package has been deleted or because download failed, the Task fails. Space-separated application IDs with optional version in \'id[#version]\' format',
              args: [
                Arg(
                name: 'job-manager-task-application-package-reference'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-command-line',
              description: 'Required. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en-us/azure/batch/batch-compute-node-environment-variables)',
              args: [
                Arg(
                name: 'job-manager-task-command-lin'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-environment-settings',
              description: 'Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'job-manager-task-environment-setting'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-id',
              description: 'Required. The ID can contain any combination of alphanumeric characters including hyphens and underscores and cannot contain more than 64 characters',
              args: [
                Arg(
                name: 'job-manager-task-i'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-resource-files',
              description: 'Files listed under this element are located in the Task\'s working directory. There is a maximum size for the list of resource files. When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Space-separated resource references in filename=httpurl format',
              args: [
                Arg(
                name: 'job-manager-task-resource-file'
              )
              ]
            ),
            Option(
              name: '--job-metadata',
              description: 'The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'job-metadat'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the job schedule update parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Job Schedule Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--max-parallel-tasks',
              description: 'The maximum number of tasks that can be executed in parallel for the job. The value of maxParallelTasks must be -1 or greater than 0 if specified. If not specified, the default value is -1, which means there\'s no limit to the number of tasks that can be run at once. You can update a job\'s maxParallelTasks after it has been created using the update job API. Default value: -1',
              args: [
                Arg(
                name: 'max-parallel-task'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'If you do not specify this element, it takes the default value of an empty list; in effect, any existing metadata is deleted. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--on-all-tasks-complete',
              description: 'The action the Batch service should take when all Tasks in a Job created under this schedule are in the completed state. Note that if a Job contains no Tasks, then all Tasks are considered complete. This option is therefore most commonly used with a Job Manager task; if you want to use automatic Job termination without a Job Manager, you should initially set onAllTasksComplete to noaction and update the Job properties to set onAllTasksComplete to terminatejob once you have finished adding Tasks. The default is noaction',
              args: [
                Arg(
                name: 'on-all-tasks-complete',
                suggestions: [

                  FigSuggestion(name: 'noaction'),
                  FigSuggestion(name: 'terminatejob')
                ]
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The id of an existing pool. All the tasks of the job will run on the specified pool',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority of Jobs created under this schedule. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. The default value is 0. This priority is used as the default for all Jobs under the Job Schedule. You can update a Job\'s priority after it has been created using by using the update Job API',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: '--recurrence-interval',
              description: 'Because a Job Schedule can have at most one active Job under it at any given time, if it is time to create a new Job under a Job Schedule, but the previous Job is still running, the Batch service will not create the new Job until the previous Job finishes. If the previous Job does not finish within the startWindow period of the new recurrenceInterval, then no new Job will be scheduled for that interval. For recurring Jobs, you should normally specify a jobManagerTask in the jobSpecification. If you do not use jobManagerTask, you will need an external process to monitor when Jobs are created, add Tasks to the Jobs and terminate the Jobs ready for the next recurrence. The default is that the schedule does not recur: one Job is created, within the startWindow after the doNotRunUntil time, and the schedule is complete as soon as that Job finishes. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'recurrence-interva'
              )
              ]
            ),
            Option(
              name: '--required-slots',
              description: 'The number of scheduling slots that the Task requires to run. The default is 1. A Task can only be scheduled to run on a compute node if the node has enough free scheduling slots available. For multi-instance Tasks, this property is not supported and must not be specified',
              args: [
                Arg(
                name: 'required-slot'
              )
              ]
            ),
            Option(
              name: '--start-window',
              description: 'If a Job is not created within the startWindow interval, then the \'opportunity\' is lost; no Job will be created until the next recurrence of the schedule. If the schedule is recurring, and the startWindow is longer than the recurrence interval, then this is equivalent to an infinite startWindow, because the Job that is \'due\' in one recurrenceInterval is not carried forward into the next recurrence interval. The default is infinite. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'start-windo'
              )
              ]
            ),
            Option(
              name: '--uses-task-dependencies',
              description: 'Whether Tasks in the Job can define dependencies on each other. The default is false. True if flag present',
              args: [
                Arg(
                name: 'uses-task-dependencie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update the properties of a job schedule',
          options: [

            Option(
              name: '--job-schedule-id',
              description: 'The ID of the Job Schedule to update',
              args: [
                Arg(
                name: 'job-schedule-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--allow-task-preemption',
              description: 'Whether Tasks in this job can be preempted by other high priority jobs. If the value is set to True, other high priority jobs submitted to the system will take precedence and will be able requeue tasks from this job. You can update a job\'s allowTaskPreemption after it has been created using the update job API. Specify either \'true\' or \'false\' to update the property',
              args: [
                Arg(
                name: 'allow-task-preemptio'
              )
              ]
            ),
            Option(
              name: '--do-not-run-after',
              description: 'If you do not specify a doNotRunAfter time, and you are creating a recurring Job Schedule, the Job Schedule will remain active until you explicitly terminate it. Expected format is an ISO-8601 timestamp',
              args: [
                Arg(
                name: 'do-not-run-afte'
              )
              ]
            ),
            Option(
              name: '--do-not-run-until',
              description: 'If you do not specify a doNotRunUntil time, the schedule becomes ready to create Jobs immediately. Expected format is an ISO-8601 timestamp',
              args: [
                Arg(
                name: 'do-not-run-unti'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-application-package-references',
              description: 'Application Packages are downloaded and deployed to a shared directory, not the Task working directory. Therefore, if a referenced Application Package is already on the Compute Node, and is up to date, then it is not re-downloaded; the existing copy on the Compute Node is used. If a referenced Application Package cannot be installed, for example because the package has been deleted or because download failed, the Task fails. Space-separated application IDs with optional version in \'id[#version]\' format',
              args: [
                Arg(
                name: 'job-manager-task-application-package-reference'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-command-line',
              description: 'Required. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en-us/azure/batch/batch-compute-node-environment-variables)',
              args: [
                Arg(
                name: 'job-manager-task-command-lin'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-environment-settings',
              description: 'Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'job-manager-task-environment-setting'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-id',
              description: 'Required. The ID can contain any combination of alphanumeric characters including hyphens and underscores and cannot contain more than 64 characters',
              args: [
                Arg(
                name: 'job-manager-task-i'
              )
              ]
            ),
            Option(
              name: '--job-manager-task-resource-files',
              description: 'Files listed under this element are located in the Task\'s working directory. There is a maximum size for the list of resource files. When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Space-separated resource references in filename=httpurl format',
              args: [
                Arg(
                name: 'job-manager-task-resource-file'
              )
              ]
            ),
            Option(
              name: '--job-metadata',
              description: 'The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'job-metadat'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the job schedule patch parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Job Schedule Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--max-parallel-tasks',
              description: 'The maximum number of tasks that can be executed in parallel for the job. The value of maxParallelTasks must be -1 or greater than 0 if specified. If not specified, the default value is -1, which means there\'s no limit to the number of tasks that can be run at once. You can update a job\'s maxParallelTasks after it has been created using the update job API. Default value: -1',
              args: [
                Arg(
                name: 'max-parallel-task'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'If you do not specify this element, existing metadata is left unchanged. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--on-all-tasks-complete',
              description: 'The action the Batch service should take when all Tasks in a Job created under this schedule are in the completed state. Note that if a Job contains no Tasks, then all Tasks are considered complete. This option is therefore most commonly used with a Job Manager task; if you want to use automatic Job termination without a Job Manager, you should initially set onAllTasksComplete to noaction and update the Job properties to set onAllTasksComplete to terminatejob once you have finished adding Tasks. The default is noaction',
              args: [
                Arg(
                name: 'on-all-tasks-complete',
                suggestions: [

                  FigSuggestion(name: 'noaction'),
                  FigSuggestion(name: 'terminatejob')
                ]
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The id of an existing pool. All the tasks of the job will run on the specified pool',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority of Jobs created under this schedule. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. The default value is 0. This priority is used as the default for all Jobs under the Job Schedule. You can update a Job\'s priority after it has been created using by using the update Job API',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: '--recurrence-interval',
              description: 'Because a Job Schedule can have at most one active Job under it at any given time, if it is time to create a new Job under a Job Schedule, but the previous Job is still running, the Batch service will not create the new Job until the previous Job finishes. If the previous Job does not finish within the startWindow period of the new recurrenceInterval, then no new Job will be scheduled for that interval. For recurring Jobs, you should normally specify a jobManagerTask in the jobSpecification. If you do not use jobManagerTask, you will need an external process to monitor when Jobs are created, add Tasks to the Jobs and terminate the Jobs ready for the next recurrence. The default is that the schedule does not recur: one Job is created, within the startWindow after the doNotRunUntil time, and the schedule is complete as soon as that Job finishes. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'recurrence-interva'
              )
              ]
            ),
            Option(
              name: '--required-slots',
              description: 'The number of scheduling slots that the Task requires to run. The default is 1. A Task can only be scheduled to run on a compute node if the node has enough free scheduling slots available. For multi-instance Tasks, this property is not supported and must not be specified',
              args: [
                Arg(
                name: 'required-slot'
              )
              ]
            ),
            Option(
              name: '--start-window',
              description: 'If a Job is not created within the startWindow interval, then the \'opportunity\' is lost; no Job will be created until the next recurrence of the schedule. If the schedule is recurring, and the startWindow is longer than the recurrence interval, then this is equivalent to an infinite startWindow, because the Job that is \'due\' in one recurrenceInterval is not carried forward into the next recurrence interval. The default is infinite. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'start-windo'
              )
              ]
            ),
            Option(
              name: '--uses-task-dependencies',
              description: 'Whether Tasks in the Job can define dependencies on each other. The default is false. Specify either \'true\' or \'false\' to update the property',
              args: [
                Arg(
                name: 'uses-task-dependencie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about the specified Job Schedule',
          options: [

            Option(
              name: '--job-schedule-id',
              description: 'The ID of the Job Schedule to get',
              args: [
                Arg(
                name: 'job-schedule-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'An OData \$expand clause',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Terminates a Job Schedule',
          options: [

            Option(
              name: '--job-schedule-id',
              description: 'The ID of the Job Schedule to terminates',
              args: [
                Arg(
                name: 'job-schedule-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'location',
      description: 'Manage Batch service options for a subscription at the region level',
      subcommands: [

        Subcommand(
          name: 'list-skus',
          description: 'List virtual machine SKUs available in a location',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The region for which to display the available Batch VM SKUs',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'OData filter expression. Valid properties for filtering are "familyName". Default value is None',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'The maximum number of items to return in the response. Default value is None',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'quotas',
          description: 'Manage Batch service quotas at the region level',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets the Batch service quotas for the specified subscription at the given location',
              options: [

                Option(
                  name: ['--location', '-l'],
                  description: 'The region for which to display the Batch service quotas',
                  args: [
                    Arg(
                    name: 'locatio'
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
      name: 'node',
      description: 'Manage Batch compute nodes',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Removes Compute Nodes from the specified Pool',
          options: [

            Option(
              name: '--pool-id',
              description: 'The ID of the Pool from which you want to remove Compute Nodes',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the node remove parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Node Remove Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--node-deallocation-option',
              description: 'Determines what to do with a Compute Node and its running task(s) after it has been selected for deallocation. The default value is requeue',
              args: [
                Arg(
                name: 'node-deallocation-option',
                suggestions: [

                  FigSuggestion(name: 'requeue'),
                  FigSuggestion(name: 'retaineddata'),
                  FigSuggestion(name: 'taskcompletion'),
                  FigSuggestion(name: 'terminate')
                ]
              )
              ]
            ),
            Option(
              name: '--node-list',
              description: 'Required. A maximum of 100 nodes may be removed per request. Space-separated values',
              args: [
                Arg(
                name: 'node-lis'
              )
              ]
            ),
            Option(
              name: '--resize-timeout',
              description: 'The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'resize-timeou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the Compute Nodes in the specified Pool',
          options: [

            Option(
              name: '--pool-id',
              description: 'The ID of the Pool from which you want to list Compute Nodes',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-nodes-in-a-pool',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reboot',
          description: 'Restarts the specified Compute Node',
          options: [

            Option(
              name: '--node-id',
              description: 'The ID of the Compute Node that you want to restart',
              args: [
                Arg(
                name: 'node-i'
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The ID of the Pool that contains the Compute Node',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--node-reboot-option',
              description: 'The default value is requeue',
              args: [
                Arg(
                name: 'node-reboot-option',
                suggestions: [

                  FigSuggestion(name: 'requeue'),
                  FigSuggestion(name: 'retaineddata'),
                  FigSuggestion(name: 'taskcompletion'),
                  FigSuggestion(name: 'terminate')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reimage',
          description: 'Reinstalls the operating system on the specified Compute Node',
          options: [

            Option(
              name: '--node-id',
              description: 'The ID of the Compute Node that you want to restart',
              args: [
                Arg(
                name: 'node-i'
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The ID of the Pool that contains the Compute Node',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--node-reimage-option',
              description: 'The default value is requeue',
              args: [
                Arg(
                name: 'node-reimage-option',
                suggestions: [

                  FigSuggestion(name: 'requeue'),
                  FigSuggestion(name: 'retaineddata'),
                  FigSuggestion(name: 'taskcompletion'),
                  FigSuggestion(name: 'terminate')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about the specified Compute Node',
          options: [

            Option(
              name: '--node-id',
              description: 'The ID of the Compute Node that you want to get information about',
              args: [
                Arg(
                name: 'node-i'
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The ID of the Pool that contains the Compute Node',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'file',
          description: 'Manage Batch compute node files',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Deletes the specified file from the Compute Node',
              options: [

                Option(
                  name: '--file-path',
                  description: 'The path to the file or directory that you want to delete',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node from which you want to delete the file',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--recursive',
                  description: 'Whether to delete children of a directory. If the filePath parameter represents a directory instead of a file, you can set recursive to true to delete the directory and all of the files and subdirectories in it. If recursive is false then the directory must be empty or deletion will fail',
                  args: [
                    Arg(
                    name: 'recursiv'
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
              name: 'download',
              description: 'Download the content of the a node file',
              options: [

                Option(
                  name: '--destination',
                  description: 'The path to the destination file or directory',
                  args: [
                    Arg(
                    name: 'destinatio'
                  )
                  ]
                ),
                Option(
                  name: '--file-path',
                  description: 'The path to the Compute Node file that you want to get the content of',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node that contains the file',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--end-range',
                  description: 'The byte range to be retrieved. If not set the file will be retrieved to the end',
                  args: [
                    Arg(
                    name: 'end-rang'
                  )
                  ]
                ),
                Option(
                  name: '--if-modified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-modified-sinc'
                  )
                  ]
                ),
                Option(
                  name: '--if-unmodified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-unmodified-sinc'
                  )
                  ]
                ),
                Option(
                  name: '--start-range',
                  description: 'The byte range to be retrieved. If not set the file will be retrieved from the beginning',
                  args: [
                    Arg(
                    name: 'start-rang'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all of the files in Task directories on the specified Compute Node',
              options: [

                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node whose files you want to list',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-compute-node-files',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--recursive',
                  description: 'Whether to list children of a directory',
                  args: [
                    Arg(
                    name: 'recursiv'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the properties of the specified Compute Node file',
              options: [

                Option(
                  name: '--file-path',
                  description: 'The path to the Compute Node file that you want to get the properties of',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node that contains the file',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--if-modified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-modified-sinc'
                  )
                  ]
                ),
                Option(
                  name: '--if-unmodified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-unmodified-sinc'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remote-desktop',
          description: 'Retrieve the remote desktop protocol file for a Batch compute node',
          subcommands: [

            Subcommand(
              name: 'download',
              description: 'Gets the Remote Desktop Protocol file for the specified Compute Node',
              options: [

                Option(
                  name: '--destination',
                  description: 'The path to the destination file or directory',
                  args: [
                    Arg(
                    name: 'destinatio'
                  )
                  ]
                ),
                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node for which you want to get the Remote Desktop Protocol file',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remote-login-settings',
          description: 'Retrieve the remote login settings for a Batch compute node',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets the settings required for remote login to a Compute Node',
              options: [

                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node for which to obtain the remote login settings',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scheduling',
          description: 'Manage task scheduling for a Batch compute node',
          subcommands: [

            Subcommand(
              name: 'disable',
              description: 'Disables Task scheduling on the specified Compute Node',
              options: [

                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node on which you want to disable Task scheduling',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--node-disable-scheduling-option',
                  description: 'The default value is requeue',
                  args: [
                    Arg(
                    name: 'node-disable-scheduling-option',
                    suggestions: [

                      FigSuggestion(name: 'requeue'),
                      FigSuggestion(name: 'taskcompletion'),
                      FigSuggestion(name: 'terminate')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'enable',
              description: 'Enables Task scheduling on the specified Compute Node',
              options: [

                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node on which you want to enable Task scheduling',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'service-logs',
          description: 'Manage the service log files of a Batch compute node',
          subcommands: [

            Subcommand(
              name: 'upload',
              description: 'Upload Azure Batch service log files from the specified Compute Node to Azure Blob Storage',
              options: [

                Option(
                  name: '--node-id',
                  description: 'The ID of the Compute Node from which you want to upload the Azure Batch service log files',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--container-url',
                  description: 'Required. If a user assigned managed identity is not being used, the URL must include a Shared Access Signature (SAS) granting write permissions to the container. The SAS duration must allow enough time for the upload to finish. The start time for SAS is optional and recommended to not be specified',
                  args: [
                    Arg(
                    name: 'container-ur'
                  )
                  ]
                ),
                Option(
                  name: '--end-time',
                  description: 'Any log file containing a log message in the time range will be uploaded. This means that the operation might retrieve more logs than have been requested since the entire log file is always uploaded, but the operation should not retrieve fewer logs than have been requested. If omitted, the default is to upload all logs available after the startTime. Expected format is an ISO-8601 timestamp',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: '--json-file',
                  description: 'A file containing the upload batch service logs configuration specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Upload Batch Service Logs Configuration Arguments\' are ignored',
                  args: [
                    Arg(
                    name: 'json-fil'
                  )
                  ]
                ),
                Option(
                  name: '--resource-id',
                  description: 'The ARM resource id of the user assigned identity',
                  args: [
                    Arg(
                    name: 'resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'Required. Any log file containing a log message in the time range will be uploaded. This means that the operation might retrieve more logs than have been requested since the entire log file is always uploaded, but the operation should not retrieve fewer logs than have been requested. Expected format is an ISO-8601 timestamp',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'user',
          description: 'Manage the user accounts of a Batch compute node',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Add a user account to a Batch compute node',
              options: [

                Option(
                  name: '--node-id',
                  description: 'The ID of the machine on which you want to create a user Account',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--expiry-time',
                  description: 'If omitted, the default is 1 day from the current time. For Linux Compute Nodes, the expiryTime has a precision up to a day. Expected format is an ISO-8601 timestamp',
                  args: [
                    Arg(
                    name: 'expiry-tim'
                  )
                  ]
                ),
                Option(
                  name: '--is-admin',
                  description: 'Whether the Account should be an administrator on the Compute Node. The default value is false. True if flag present',
                  args: [
                    Arg(
                    name: 'is-admi'
                  )
                  ]
                ),
                Option(
                  name: '--json-file',
                  description: 'A file containing the user specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'User Arguments\' are ignored',
                  args: [
                    Arg(
                    name: 'json-fil'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Required',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The password is required for Windows Compute Nodes (those created with \'cloudServiceConfiguration\', or created with \'virtualMachineConfiguration\' using a Windows Image reference). For Linux Compute Nodes, the password can optionally be specified along with the sshPublicKey property',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--ssh-public-key',
                  description: 'The public key should be compatible with OpenSSH encoding and should be base 64 encoded. This property can be specified only for Linux Compute Nodes. If this is specified for a Windows Compute Node, then the Batch service rejects the request; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request)',
                  args: [
                    Arg(
                    name: 'ssh-public-ke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a user Account from the specified Compute Node',
              options: [

                Option(
                  name: '--node-id',
                  description: 'The ID of the machine on which you want to delete a user Account',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--user-name',
                  description: 'The name of the user Account to delete',
                  args: [
                    Arg(
                    name: 'user-nam'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
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
              name: 'reset',
              description: 'Update the properties of a user account on a Batch compute node. Unspecified properties which can be updated are reset to their defaults',
              options: [

                Option(
                  name: '--node-id',
                  description: 'The ID of the machine on which you want to update a user Account',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool that contains the Compute Node',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--user-name',
                  description: 'The name of the user Account to update',
                  args: [
                    Arg(
                    name: 'user-nam'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--expiry-time',
                  description: 'If omitted, the default is 1 day from the current time. For Linux Compute Nodes, the expiryTime has a precision up to a day. Expected format is an ISO-8601 timestamp',
                  args: [
                    Arg(
                    name: 'expiry-tim'
                  )
                  ]
                ),
                Option(
                  name: '--json-file',
                  description: 'A file containing the node update user parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Node Update User Arguments\' are ignored',
                  args: [
                    Arg(
                    name: 'json-fil'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The password is required for Windows Compute Nodes (those created with \'cloudServiceConfiguration\', or created with \'virtualMachineConfiguration\' using a Windows Image reference). For Linux Compute Nodes, the password can optionally be specified along with the sshPublicKey property. If omitted, any existing password is removed',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--ssh-public-key',
                  description: 'The public key should be compatible with OpenSSH encoding and should be base 64 encoded. This property can be specified only for Linux Compute Nodes. If this is specified for a Windows Compute Node, then the Batch service rejects the request; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). If omitted, any existing SSH public key is removed',
                  args: [
                    Arg(
                    name: 'ssh-public-ke'
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
      name: 'pool',
      description: 'Manage Batch pools',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Batch pool in an account. When creating a pool, choose arguments from either Cloud Services Configuration or Virtual Machine Configuration',
          options: [

            Option(
              name: '--accelerated-networking',
              description: 'Whether this pool should enable accelerated networking. Accelerated networking enables single root I/O virtualization (SR-IOV) to a VM, which may lead to improved networking performance. For more details, see: https://learn.microsoft.com/azure/virtual- network/accelerated-networking-overview. Set true to enable',
              args: [
                Arg(
                name: 'accelerated-networking',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--application-licenses',
              description: 'The list of application licenses must be a subset of available Batch service application licenses. If a license is requested which is not supported, Pool creation will fail. Space-separated values',
              args: [
                Arg(
                name: 'application-license'
              )
              ]
            ),
            Option(
              name: '--application-package-references',
              description: 'When creating a pool, the package\'s application ID must be fully qualified (/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationName}). Changes to Package references affect all new Nodes joining the Pool, but do not affect Compute Nodes that are already in the Pool until they are rebooted or reimaged. There is a maximum of 10 Package references on any given Pool. Space-separated application IDs with optional version in \'id[#version]\' format',
              args: [
                Arg(
                name: 'application-package-reference'
              )
              ]
            ),
            Option(
              name: '--auto-scale-formula',
              description: 'A formula for the desired number of compute nodes in the pool. The formula is checked for validity before the pool is created. If the formula is not valid, the Batch service rejects the request with detailed error information. For more information about specifying this formula, see https://azure.microsoft.com/documentation/articles/batch-automatic-scaling/',
              args: [
                Arg(
                name: 'auto-scale-formul'
              )
              ]
            ),
            Option(
              name: '--certificate-references',
              description: 'For Windows Nodes, the Batch service installs the Certificates to the specified Certificate store and location. For Linux Compute Nodes, the Certificates are stored in a directory inside the Task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the Task to query for this location. For Certificates with visibility of \'remoteUser\', a \'certs\' directory is created in the user\'s home directory (e.g., /home/{user-name}/certs) and Certificates are placed in that directory. Warning: This property is deprecated and will be removed after February, 2024. Please use the Azure KeyVault Extension instead. Space-separated certificate thumbprints',
              args: [
                Arg(
                name: 'certificate-reference'
              )
              ]
            ),
            Option(
              name: '--disk-encryption-targets',
              description: 'A space separated list of DiskEncryptionTargets. current possible values include OsDisk and TemporaryDisk',
              args: [
                Arg(
                name: 'disk-encryption-target'
              )
              ]
            ),
            Option(
              name: '--enable-inter-node-communication',
              description: 'Whether the Pool permits direct communication between Compute Nodes. Enabling inter-node communication limits the maximum size of the Pool due to deployment restrictions on the Compute Nodes of the Pool. This may result in the Pool not reaching its desired size. The default value is false. True if flag present',
              args: [
                Arg(
                name: 'enable-inter-node-communicatio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Required. The ID can contain any combination of alphanumeric characters including hyphens and underscores, and cannot contain more than 64 characters. The ID is case-preserving and case-insensitive (that is, you may not have two Pool IDs within an Account that differ only by case)',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--image',
              description: 'OS image reference. This can be either \'publisher:offer:sku[:version]\' format, or a fully qualified ARM image id of the form \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}\'. If \'publisher:offer:sku[:version]\' format, version is optional and if omitted latest will be used. Valid values can be retrieved via \'az batch pool supported-images list\'. For example: \'MicrosoftWindowsServer:WindowsServer:2012-R2-Datacenter:latest\'',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'The file containing pool create properties parameter specification in JSON(formatted to match REST API request body). If this parameter is specified, all \'Pool Create Properties Parameter Arguments\' are ignored. See https://docs.microsoft.com/en-us/rest/api/batchservice/pool/add?tabs=HTTP#request-body',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--node-agent-sku-id',
              description: 'Required. The Batch Compute Node agent is a program that runs on each Compute Node in the Pool, and provides the command-and-control interface between the Compute Node and the Batch service. There are different implementations of the Compute Node agent, known as SKUs, for different operating systems. You must specify a Compute Node agent SKU which matches the selected Image reference. To get the list of supported Compute Node agent SKUs along with their list of verified Image references, see the \'List supported Compute Node agent SKUs\' operation',
              args: [
                Arg(
                name: 'node-agent-sku-i'
              )
              ]
            ),
            Option(
              name: '--os-family',
              description: 'Required. Possible values are: 2 - OS Family 2, equivalent to Windows Server 2008 R2 SP1. 3 - OS Family 3, equivalent to Windows Server 2012. 4 - OS Family 4, equivalent to Windows Server 2012 R2. 5 - OS Family 5, equivalent to Windows Server 2016. 6 - OS Family 6, equivalent to Windows Server 2019. For more information, see Azure Guest OS Releases (https://azure.microsoft.com/documentation/articles/cloud-services-guestos-update-matrix/#releases)',
              args: [
                Arg(
                name: 'os-family',
                suggestions: [

                  FigSuggestion(name: '2'),
                  FigSuggestion(name: '3'),
                  FigSuggestion(name: '4'),
                  FigSuggestion(name: '5'),
                  FigSuggestion(name: '6')
                ]
              )
              ]
            ),
            Option(
              name: '--os-version',
              description: 'The default value is * which specifies the latest operating system version for the specified OS family',
              args: [
                Arg(
                name: 'os-versio'
              )
              ]
            ),
            Option(
              name: '--policy',
              description: 'Node placement Policy type on Batch Pools. Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy',
              args: [
                Arg(
                name: 'policy',
                suggestions: [

                  FigSuggestion(name: 'regional'),
                  FigSuggestion(name: 'zonal')
                ]
              )
              ]
            ),
            Option(
              name: '--resize-timeout',
              description: 'This timeout applies only to manual scaling; it has no effect when enableAutoScale is set to true. The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'resize-timeou'
              )
              ]
            ),
            Option(
              name: '--start-task-command-line',
              description: 'Required. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en-us/azure/batch/batch-compute-node-environment-variables)',
              args: [
                Arg(
                name: 'start-task-command-lin'
              )
              ]
            ),
            Option(
              name: '--start-task-resource-files',
              description: 'Files listed under this element are located in the Task\'s working directory. Space-separated resource references in filename=httpurl format',
              args: [
                Arg(
                name: 'start-task-resource-file'
              )
              ]
            ),
            Option(
              name: '--start-task-wait-for-success',
              description: 'Whether the Batch service should wait for the StartTask to complete successfully (that is, to exit with exit code 0) before scheduling any Tasks on the Compute Node. If true and the StartTask fails on a Node, the Batch service retries the StartTask up to its maximum retry count (maxTaskRetryCount). If the Task has still not completed successfully after all retries, then the Batch service marks the Node unusable, and will not schedule Tasks to it. This condition can be detected via the Compute Node state and failure info details. If false, the Batch service will not wait for the StartTask to complete. In this case, other Tasks can start executing on the Compute Node while the StartTask is still running; and even if the StartTask fails, new Tasks will continue to be scheduled on the Compute Node. The default is true. True if flag present',
              args: [
                Arg(
                name: 'start-task-wait-for-succes'
              )
              ]
            ),
            Option(
              name: '--target-communication',
              description: 'The desired node communication mode for the pool. If this element is present, it replaces the existing targetNodeCommunicationMode configured on the Pool. If omitted, any existing metadata is left unchanged',
              args: [
                Arg(
                name: 'target-communication',
                suggestions: [

                  FigSuggestion(name: 'classic'),
                  FigSuggestion(name: 'default'),
                  FigSuggestion(name: 'simplified')
                ]
              )
              ]
            ),
            Option(
              name: '--target-dedicated-nodes',
              description: 'The desired number of dedicated Compute Nodes in the Pool. This property must not be specified if enableAutoScale is set to true. If enableAutoScale is set to false, then you must set either targetDedicatedNodes, targetLowPriorityNodes, or both',
              args: [
                Arg(
                name: 'target-dedicated-node'
              )
              ]
            ),
            Option(
              name: '--target-low-priority-nodes',
              description: 'The desired number of Spot/Low-priority Compute Nodes in the Pool. This property must not be specified if enableAutoScale is set to true. If enableAutoScale is set to false, then you must set either targetDedicatedNodes, targetLowPriorityNodes, or both',
              args: [
                Arg(
                name: 'target-low-priority-node'
              )
              ]
            ),
            Option(
              name: '--targets',
              description: 'If omitted, no disks on the compute nodes in the pool will be encrypted. On Linux pool, only "TemporaryDisk" is supported; on Windows pool, "OsDisk" and "TemporaryDisk" must be specified. Space seperated target disks to be encrypted. Values can either be OsDisk or TemporaryDisk',
              args: [
                Arg(
                name: 'target'
              )
              ]
            ),
            Option(
              name: '--task-slots-per-node',
              description: 'The number of task slots that can be used to run concurrent tasks on a single compute node in the pool. The default value is 1. The maximum value is the smaller of 4 times the number of cores of the vmSize of the pool or 256',
              args: [
                Arg(
                name: 'task-slots-per-nod'
              )
              ]
            ),
            Option(
              name: '--vm-size',
              description: 'Required. For information about available sizes of virtual machines for Cloud Services Pools (pools created with cloudServiceConfiguration), see Sizes for Cloud Services (https://azure.microsoft.com/documentation/articles/cloud-services-sizes-specs/). Batch supports all Cloud Services VM sizes except ExtraSmall, A1V2 and A2V2. For information about available VM sizes for Pools using Images from the Virtual Machines Marketplace (pools created with virtualMachineConfiguration) see Sizes for Virtual Machines (Linux) (https://azure.microsoft.com/documentation/articles/virtual-machines-linux-sizes/) or Sizes for Virtual Machines (Windows) (https://azure.microsoft.com/documentation/articles/virtual-machines-windows-sizes/). Batch supports all Azure VM sizes except STANDARD_A0 and those with premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series)',
              args: [
                Arg(
                name: 'vm-siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Pool from the specified Account',
          options: [

            Option(
              name: '--pool-id',
              description: 'The ID of the Pool to delete',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
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
          description: 'Lists all of the Pools in the specified Account',
          options: [

            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'An OData \$expand clause',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-pools',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Update the properties of a Batch pool. Unspecified properties which can be updated are reset to their defaults',
          options: [

            Option(
              name: '--pool-id',
              description: 'The ID of the pool to update',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--application-package-references',
              description: 'Required. The list replaces any existing Application Package references on the Pool. Changes to Application Package references affect all new Compute Nodes joining the Pool, but do not affect Compute Nodes that are already in the Pool until they are rebooted or reimaged. There is a maximum of 10 Application Package references on any given Pool. If omitted, or if you specify an empty collection, any existing Application Packages references are removed from the Pool. A maximum of 10 references may be specified on a given Pool',
              args: [
                Arg(
                name: 'application-package-reference'
              )
              ]
            ),
            Option(
              name: '--certificate-references',
              description: 'Required. This list replaces any existing Certificate references configured on the Pool. If you specify an empty collection, any existing Certificate references are removed from the Pool. For Windows Nodes, the Batch service installs the Certificates to the specified Certificate store and location. For Linux Compute Nodes, the Certificates are stored in a directory inside the Task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the Task to query for this location. For Certificates with visibility of \'remoteUser\', a \'certs\' directory is created in the user\'s home directory (e.g., /home/{user-name}/certs) and Certificates are placed in that directory. Warning: This property is deprecated and will be removed after February, 2024. Please use the Azure KeyVault Extension instead',
              args: [
                Arg(
                name: 'certificate-reference'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'The file containing pool update properties parameter specification in JSON(formatted to match REST API request body). If this parameter is specified, all \'Pool Update Properties Parameter Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Required. This list replaces any existing metadata configured on the Pool. If omitted, or if you specify an empty collection, any existing metadata is removed from the Pool',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--start-task-command-line',
              description: 'The command line of the start task. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux',
              args: [
                Arg(
                name: 'start-task-command-lin'
              )
              ]
            ),
            Option(
              name: '--start-task-environment-settings',
              description: 'A list of environment variable settings for the start task. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'start-task-environment-setting'
              )
              ]
            ),
            Option(
              name: '--start-task-max-task-retry-count',
              description: 'The maximum number of times the task may be retried',
              args: [
                Arg(
                name: 'start-task-max-task-retry-coun'
              )
              ]
            ),
            Option(
              name: '--start-task-wait-for-success',
              description: 'Whether the Batch service should wait for the start task to complete successfully (that is, to exit with exit code 0) before scheduling any tasks on the compute node. True if flag present, otherwise defaults to False',
              args: [
                Arg(
                name: 'start-task-wait-for-succes'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resize',
          description: 'Resize or stop resizing a Batch pool',
          options: [

            Option(
              name: '--pool-id',
              description: 'The ID of the pool',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--abort',
              description: 'Stop the pool resize operation'
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'The operation will be performed only if the resource\'s current ETag exactly matches the specified value',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'The operation will be performed only if the resource has been modified since the specified timestamp',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'The operation will not be performed only if the resource\'s current ETag exactly matches the specified value',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'The operation will not be performed only if the resource has been modified since the specified timestamp',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--node-deallocation-option',
              description: 'When nodes may be removed from the pool, if the pool size is decreasing',
              args: [
                Arg(
                name: 'node-deallocation-option',
                suggestions: [

                  FigSuggestion(name: 'requeue'),
                  FigSuggestion(name: 'retaineddata'),
                  FigSuggestion(name: 'taskcompletion'),
                  FigSuggestion(name: 'terminate')
                ]
              )
              ]
            ),
            Option(
              name: '--resize-timeout',
              description: 'The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request)',
              args: [
                Arg(
                name: 'resize-timeou'
              )
              ]
            ),
            Option(
              name: '--target-dedicated-nodes',
              description: 'The desired number of dedicated Compute Nodes in the Pool',
              args: [
                Arg(
                name: 'target-dedicated-node'
              )
              ]
            ),
            Option(
              name: '--target-low-priority-nodes',
              description: 'The desired number of Spot/Low-priority Compute Nodes in the Pool',
              args: [
                Arg(
                name: 'target-low-priority-node'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update the properties of a Batch pool. Updating a property in a subgroup will reset the unspecified properties of that group',
          options: [

            Option(
              name: '--pool-id',
              description: 'The ID of the Pool to update',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--application-package-references',
              description: 'Changes to Package references affect all new Nodes joining the Pool, but do not affect Compute Nodes that are already in the Pool until they are rebooted or reimaged. If this element is present, it replaces any existing Package references. If you specify an empty collection, then all Package references are removed from the Pool. If omitted, any existing Package references are left unchanged. Space-separated application IDs with optional version in \'id[#version]\' format',
              args: [
                Arg(
                name: 'application-package-reference'
              )
              ]
            ),
            Option(
              name: '--certificate-references',
              description: 'If this element is present, it replaces any existing Certificate references configured on the Pool. If omitted, any existing Certificate references are left unchanged. For Windows Nodes, the Batch service installs the Certificates to the specified Certificate store and location. For Linux Compute Nodes, the Certificates are stored in a directory inside the Task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the Task to query for this location. For Certificates with visibility of \'remoteUser\', a \'certs\' directory is created in the user\'s home directory (e.g., /home/{user-name}/certs) and Certificates are placed in that directory. Warning: This property is deprecated and will be removed after February, 2024. Please use the Azure KeyVault Extension instead. Space-separated certificate thumbprints',
              args: [
                Arg(
                name: 'certificate-reference'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the pool patch parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Pool Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'If this element is present, it replaces any existing metadata configured on the Pool. If you specify an empty collection, any metadata is removed from the Pool. If omitted, any existing metadata is left unchanged. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--start-task-command-line',
              description: 'Required. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en-us/azure/batch/batch-compute-node-environment-variables)',
              args: [
                Arg(
                name: 'start-task-command-lin'
              )
              ]
            ),
            Option(
              name: '--start-task-environment-settings',
              description: 'Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'start-task-environment-setting'
              )
              ]
            ),
            Option(
              name: '--start-task-max-task-retry-count',
              description: 'The maximum number of times the Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try the Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the Task. If the maximum retry count is -1, the Batch service retries the Task without limit, however this is not recommended for a start task or any task. The default value is 0 (no retries)',
              args: [
                Arg(
                name: 'start-task-max-task-retry-coun'
              )
              ]
            ),
            Option(
              name: '--start-task-resource-files',
              description: 'Files listed under this element are located in the Task\'s working directory. Space-separated resource references in filename=httpurl format',
              args: [
                Arg(
                name: 'start-task-resource-file'
              )
              ]
            ),
            Option(
              name: '--start-task-wait-for-success',
              description: 'Whether the Batch service should wait for the StartTask to complete successfully (that is, to exit with exit code 0) before scheduling any Tasks on the Compute Node. If true and the StartTask fails on a Node, the Batch service retries the StartTask up to its maximum retry count (maxTaskRetryCount). If the Task has still not completed successfully after all retries, then the Batch service marks the Node unusable, and will not schedule Tasks to it. This condition can be detected via the Compute Node state and failure info details. If false, the Batch service will not wait for the StartTask to complete. In this case, other Tasks can start executing on the Compute Node while the StartTask is still running; and even if the StartTask fails, new Tasks will continue to be scheduled on the Compute Node. The default is true. Specify either \'true\' or \'false\' to update the property',
              args: [
                Arg(
                name: 'start-task-wait-for-succes'
              )
              ]
            ),
            Option(
              name: '--target-communication',
              description: 'The desired node communication mode for the pool. If this element is present, it replaces the existing targetNodeCommunicationMode configured on the Pool. If omitted, any existing metadata is left unchanged',
              args: [
                Arg(
                name: 'target-communication',
                suggestions: [

                  FigSuggestion(name: 'classic'),
                  FigSuggestion(name: 'default'),
                  FigSuggestion(name: 'simplified')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about the specified Pool',
          options: [

            Option(
              name: '--pool-id',
              description: 'The ID of the Pool to get',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'An OData \$expand clause',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'autoscale',
          description: 'Manage automatic scaling of Batch pools',
          subcommands: [

            Subcommand(
              name: 'disable',
              description: 'Disables automatic scaling for a Pool',
              options: [

                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool on which to disable automatic scaling',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'enable',
              description: 'Enables automatic scaling for a Pool',
              options: [

                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool on which to enable automatic scaling',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auto-scale-evaluation-interval',
                  description: 'The default value is 15 minutes. The minimum and maximum value are 5 minutes and 168 hours respectively. If you specify a value less than 5 minutes or greater than 168 hours, the Batch service rejects the request with an invalid property value error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). If you specify a new interval, then the existing autoscale evaluation schedule will be stopped and a new autoscale evaluation schedule will be started, with its starting time being the time when this request was issued',
                  args: [
                    Arg(
                    name: 'auto-scale-evaluation-interva'
                  )
                  ]
                ),
                Option(
                  name: '--auto-scale-formula',
                  description: 'The formula is checked for validity before it is applied to the Pool. If the formula is not valid, the Batch service rejects the request with detailed error information. For more information about specifying this formula, see Automatically scale Compute Nodes in an Azure Batch Pool (https://azure.microsoft.com/en-us/documentation/articles/batch-automatic-scaling)',
                  args: [
                    Arg(
                    name: 'auto-scale-formul'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--if-modified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-modified-sinc'
                  )
                  ]
                ),
                Option(
                  name: '--if-none-match',
                  description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
                  args: [
                    Arg(
                    name: 'if-none-matc'
                  )
                  ]
                ),
                Option(
                  name: '--if-unmodified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-unmodified-sinc'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'evaluate',
              description: 'Gets the result of evaluating an automatic scaling formula on the Pool',
              options: [

                Option(
                  name: '--auto-scale-formula',
                  description: 'The formula is validated and its results calculated, but it is not applied to the Pool. To apply the formula to the Pool, \'Enable automatic scaling on a Pool\'. For more information about specifying this formula, see Automatically scale Compute Nodes in an Azure Batch Pool (https://azure.microsoft.com/en-us/documentation/articles/batch-automatic-scaling)',
                  args: [
                    Arg(
                    name: 'auto-scale-formul'
                  )
                  ]
                ),
                Option(
                  name: '--pool-id',
                  description: 'The ID of the Pool on which to evaluate the automatic scaling formula',
                  args: [
                    Arg(
                    name: 'pool-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'node-counts',
          description: 'Get node counts for Batch pools',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Gets the number of Compute Nodes in each state, grouped by Pool',
              options: [

                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'supported-images',
          description: 'Query information on VM images supported by Azure Batch service',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists all Virtual Machine Images supported by the Azure Batch service',
              options: [

                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-support-images',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'usage-metrics',
          description: 'View usage metrics of Batch pools',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists the usage metrics, aggregated by Pool across individual time intervals, for the specified Account',
              options: [

                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--end-time',
                  description: 'The latest time from which to include metrics. This must be at least two hours before the current time. If not specified this defaults to the end time of the last aggregation interval currently available',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-account-usage-metrics',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'The earliest time from which to include metrics. This must be at least two and a half hours before the current time. If not specified this defaults to the start time of the last aggregation interval currently available',
                  args: [
                    Arg(
                    name: 'start-tim'
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
      name: 'private-endpoint-connection',
      description: 'Manage Batch account private endpoint connections',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all of the private endpoint connections in the specified account',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the Batch account. Required',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'The maximum number of items to return in the response. Default value is None',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get information about the specified private endpoint connection',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the Batch account. Required',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The private endpoint connection name. This must be unique within the account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
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
      name: 'private-link-resource',
      description: 'Manage Batch account private Link Resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all of the private link resources in the specified account',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the Batch account. Required',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'The maximum number of items to return in the response. Default value is None',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get information about the specified private link resource',
          options: [

            Option(
              name: '--account-name',
              description: 'The name of the Batch account. Required',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The private link resource name. This must be unique within the account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the resource group',
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
      name: 'task',
      description: 'Manage Batch tasks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create Batch tasks',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the job containing the task',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--affinity-id',
              description: 'Required. You can pass the affinityId of a Node to indicate that this Task needs to run on that Compute Node. Note that this is just a soft affinity. If the target Compute Node is busy or unavailable at the time the Task is scheduled, then the Task will be scheduled elsewhere',
              args: [
                Arg(
                name: 'affinity-i'
              )
              ]
            ),
            Option(
              name: '--application-package-references',
              description: 'The space-separated list of IDs specifying the application packages to be installed. Space-separated application IDs with optional version in \'id[#version]\' format',
              args: [
                Arg(
                name: 'application-package-reference'
              )
              ]
            ),
            Option(
              name: '--command-line',
              description: 'The command line of the task. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux',
              args: [
                Arg(
                name: 'command-lin'
              )
              ]
            ),
            Option(
              name: '--environment-settings',
              description: 'A list of environment variable settings for the task. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'environment-setting'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'The file containing the task(s) to create in JSON(formatted to match REST API request body). When submitting multiple tasks, accepts either an array of tasks or a TaskAddCollectionParamater. If this parameter is specified, all other parameters are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--max-task-retry-count',
              description: 'The maximum number of times the Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries for the Task executable due to a nonzero exit code. The Batch service will try the Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the Task after the first attempt. If the maximum retry count is -1, the Batch service retries the Task without limit, however this is not recommended for a start task or any task. The default value is 0 (no retries)',
              args: [
                Arg(
                name: 'max-task-retry-coun'
              )
              ]
            ),
            Option(
              name: '--max-wall-clock-time',
              description: 'If this is not specified, there is no time limit on how long the Task may run',
              args: [
                Arg(
                name: 'max-wall-clock-tim'
              )
              ]
            ),
            Option(
              name: '--resource-files',
              description: 'A list of files that the Batch service will download to the compute node before running the command line. Space-separated resource references in filename=httpurl format, with httpurl being any HTTP url with public access or a SAS url with read access',
              args: [
                Arg(
                name: 'resource-file'
              )
              ]
            ),
            Option(
              name: '--retention-time',
              description: 'The default is 7 days, i.e. the Task directory will be retained for 7 days unless the Compute Node is removed or the Job is deleted',
              args: [
                Arg(
                name: 'retention-tim'
              )
              ]
            ),
            Option(
              name: '--task-id',
              description: 'The ID of the task',
              args: [
                Arg(
                name: 'task-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Task from the specified Job',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job from which to delete the Task',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--task-id',
              description: 'The ID of the Task to delete',
              args: [
                Arg(
                name: 'task-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
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
          description: 'Lists all of the Tasks that are associated with the specified Job',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'An OData \$expand clause',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-tasks',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reactivate',
          description: 'Reactivates a Task, allowing it to run again even if its retry count has been exhausted',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job containing the Task',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--task-id',
              description: 'The ID of the Task to reactivate',
              args: [
                Arg(
                name: 'task-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Reset the properties of a Batch task',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job containing the Task',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--task-id',
              description: 'The ID of the Task to update',
              args: [
                Arg(
                name: 'task-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--json-file',
              description: 'A file containing the constraints specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all \'Constraints Arguments\' are ignored',
              args: [
                Arg(
                name: 'json-fil'
              )
              ]
            ),
            Option(
              name: '--max-task-retry-count',
              description: 'The maximum number of times the Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries for the Task executable due to a nonzero exit code. The Batch service will try the Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the Task after the first attempt. If the maximum retry count is -1, the Batch service retries the Task without limit, however this is not recommended for a start task or any task. The default value is 0 (no retries)',
              args: [
                Arg(
                name: 'max-task-retry-coun'
              )
              ]
            ),
            Option(
              name: '--max-wall-clock-time',
              description: 'If this is not specified, there is no time limit on how long the Task may run. Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'max-wall-clock-tim'
              )
              ]
            ),
            Option(
              name: '--retention-time',
              description: 'The default is 7 days, i.e. the Task directory will be retained for 7 days unless the Compute Node is removed or the Job is deleted. Expected format is an ISO-8601 duration',
              args: [
                Arg(
                name: 'retention-tim'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about the specified Task',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job that contains the Task',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--task-id',
              description: 'The ID of the Task to get information about',
              args: [
                Arg(
                name: 'task-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'An OData \$expand clause',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'An OData \$select clause',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Terminates the specified Task',
          options: [

            Option(
              name: '--job-id',
              description: 'The ID of the Job containing the Task',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--task-id',
              description: 'The ID of the Task to terminate',
              args: [
                Arg(
                name: 'task-i'
              )
              ]
            ),
            Option(
              name: '--account-endpoint',
              description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
              args: [
                Arg(
                name: 'account-endpoin'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service exactly matches the value specified by the client',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-modified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
              args: [
                Arg(
                name: 'if-modified-sinc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource\'s current ETag on the service does not match the value specified by the client',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--if-unmodified-since',
              description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
              args: [
                Arg(
                name: 'if-unmodified-sinc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'file',
          description: 'Manage Batch task files',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Deletes the specified Task file from the Compute Node where the Task ran',
              options: [

                Option(
                  name: '--file-path',
                  description: 'The path to the Task file or directory that you want to delete',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: '--job-id',
                  description: 'The ID of the Job that contains the Task',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: '--task-id',
                  description: 'The ID of the Task whose file you want to delete',
                  args: [
                    Arg(
                    name: 'task-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--recursive',
                  description: 'Whether to delete children of a directory. If the filePath parameter represents a directory instead of a file, you can set recursive to true to delete the directory and all of the files and subdirectories in it. If recursive is false then the directory must be empty or deletion will fail',
                  args: [
                    Arg(
                    name: 'recursiv'
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
              name: 'download',
              description: 'Download the content of a Batch task file',
              options: [

                Option(
                  name: '--destination',
                  description: 'The path to the destination file or directory',
                  args: [
                    Arg(
                    name: 'destinatio'
                  )
                  ]
                ),
                Option(
                  name: '--file-path',
                  description: 'The path to the Task file that you want to get the content of',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: '--job-id',
                  description: 'The ID of the Job that contains the Task',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: '--task-id',
                  description: 'The ID of the Task whose file you want to retrieve',
                  args: [
                    Arg(
                    name: 'task-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--end-range',
                  description: 'The byte range to be retrieved. If not set the file will be retrieved to the end',
                  args: [
                    Arg(
                    name: 'end-rang'
                  )
                  ]
                ),
                Option(
                  name: '--if-modified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-modified-sinc'
                  )
                  ]
                ),
                Option(
                  name: '--if-unmodified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-unmodified-sinc'
                  )
                  ]
                ),
                Option(
                  name: '--start-range',
                  description: 'The byte range to be retrieved. If not set the file will be retrieved from the beginning',
                  args: [
                    Arg(
                    name: 'start-rang'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists the files in a Task\'s directory on its Compute Node',
              options: [

                Option(
                  name: '--job-id',
                  description: 'The ID of the Job that contains the Task',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: '--task-id',
                  description: 'The ID of the Task whose files you want to list',
                  args: [
                    Arg(
                    name: 'task-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An OData \$filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-in-batch#list-task-files',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--recursive',
                  description: 'Whether to list children of the Task directory. This parameter can be used in combination with the filter parameter to list specific type of files',
                  args: [
                    Arg(
                    name: 'recursiv'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the properties of the specified Task file',
              options: [

                Option(
                  name: '--file-path',
                  description: 'The path to the Task file that you want to get the properties of',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: '--job-id',
                  description: 'The ID of the Job that contains the Task',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: '--task-id',
                  description: 'The ID of the Task whose file you want to get the properties of',
                  args: [
                    Arg(
                    name: 'task-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--if-modified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-modified-sinc'
                  )
                  ]
                ),
                Option(
                  name: '--if-unmodified-since',
                  description: 'A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time',
                  args: [
                    Arg(
                    name: 'if-unmodified-sinc'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'subtask',
          description: 'Manage subtask information of a Batch task',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists all of the subtasks that are associated with the specified multi-instance Task',
              options: [

                Option(
                  name: '--job-id',
                  description: 'The ID of the Job',
                  args: [
                    Arg(
                    name: 'job-i'
                  )
                  ]
                ),
                Option(
                  name: '--task-id',
                  description: 'The ID of the Task',
                  args: [
                    Arg(
                    name: 'task-i'
                  )
                  ]
                ),
                Option(
                  name: '--account-endpoint',
                  description: 'Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT',
                  args: [
                    Arg(
                    name: 'account-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--account-key',
                  description: 'Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY',
                  args: [
                    Arg(
                    name: 'account-ke'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'An OData \$select clause',
                  args: [
                    Arg(
                    name: 'selec'
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
