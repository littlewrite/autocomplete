// Auto-generated from TypeScript source: dls.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dls` CLI
final FigSpec dlsSpec = FigSpec(
  name: 'dls',
  description: 'Manage Data Lake Store accounts and filesystems',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage Data Lake Store accounts',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a Data Lake Store account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--default-group',
              description: 'Name of the default group to give permissions to for freshly created files and folders in the Data Lake Store account',
              args: [
                Arg(
                name: 'default-grou'
              )
              ]
            ),
            Option(
              name: '--disable-encryption',
              description: 'Indicates that the account will not have any form of encryption applied to it'
            ),
            Option(
              name: '--encryption-type',
              description: 'Indicates what type of encryption to provision the account with. By default, encryption is ServiceManaged. If no encryption is desired, it must be explicitly set with the --disable-encryption flag',
              args: [
                Arg(
                name: 'encryption-type',
                suggestions: [

                  FigSuggestion(name: 'ServiceManaged'),
                  FigSuggestion(name: 'UserManaged')
                ]
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'Key name for the user-assigned encryption type',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--key-vault-id',
              description: 'Key vault for the user-assigned encryption type',
              args: [
                Arg(
                name: 'key-vault-i'
              )
              ]
            ),
            Option(
              name: '--key-version',
              description: 'Key version for the user-assigned encryption type',
              args: [
                Arg(
                name: 'key-versio'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: '--tier',
              description: 'The desired commitment tier for this account to use',
              args: [
                Arg(
                name: 'tier',
                suggestions: [

                  FigSuggestion(name: 'Commitment_100TB'),
                  FigSuggestion(name: 'Commitment_10TB'),
                  FigSuggestion(name: 'Commitment_1PB'),
                  FigSuggestion(name: 'Commitment_1TB'),
                  FigSuggestion(name: 'Commitment_500TB'),
                  FigSuggestion(name: 'Commitment_5PB'),
                  FigSuggestion(name: 'Consumption')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Data Lake Store account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
              description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
          name: 'enable-key-vault',
          description: 'Enable the use of Azure Key Vault for encryption of a Data Lake Store account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
              description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
          description: 'Lists available Data Lake Store accounts',
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
          description: 'Get the details of a Data Lake Store account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
              description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
          description: 'Updates a Data Lake Store account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--allow-azure-ips',
              description: 'Allow/block Azure originating IPs through the firewall',
              args: [
                Arg(
                name: 'allow-azure-ips',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--default-group',
              description: 'Name of the default group to give permissions to for freshly created files and folders in the Data Lake Store account',
              args: [
                Arg(
                name: 'default-grou'
              )
              ]
            ),
            Option(
              name: '--firewall-state',
              description: 'Enable/disable existing firewall rules',
              args: [
                Arg(
                name: 'firewall-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--key-version',
              description: 'Key version for the user-assigned encryption type',
              args: [
                Arg(
                name: 'key-versio'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
              name: '--tier',
              description: 'The desired commitment tier for this account to use',
              args: [
                Arg(
                name: 'tier',
                suggestions: [

                  FigSuggestion(name: 'Commitment_100TB'),
                  FigSuggestion(name: 'Commitment_10TB'),
                  FigSuggestion(name: 'Commitment_1PB'),
                  FigSuggestion(name: 'Commitment_1TB'),
                  FigSuggestion(name: 'Commitment_500TB'),
                  FigSuggestion(name: 'Commitment_5PB'),
                  FigSuggestion(name: 'Consumption')
                ]
              )
              ]
            ),
            Option(
              name: '--trusted-id-provider-state',
              description: 'Enable/disable the existing trusted ID providers',
              args: [
                Arg(
                name: 'trusted-id-provider-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'firewall',
          description: 'Manage Data Lake Store account firewall rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a firewall rule in a Data Lake Store account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--end-ip-address',
                  description: 'The end of the valid ip range for the firewall rule',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: '--firewall-rule-name',
                  description: 'The name of the firewall rule',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--start-ip-address',
                  description: 'The start of the valid ip range for the firewall rule',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a firewall rule in a Data Lake Store account',
              options: [

                Option(
                  name: '--firewall-rule-name',
                  description: 'The name of the firewall rule to delete',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
              description: 'Lists firewall rules in a Data Lake Store account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
              description: 'Get the details of a firewall rule in a Data Lake Store account',
              options: [

                Option(
                  name: '--firewall-rule-name',
                  description: 'The name of the firewall rule to retrieve',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
              description: 'Updates a firewall rule in a Data Lake Store account',
              options: [

                Option(
                  name: '--firewall-rule-name',
                  description: 'The name of the firewall rule to update',
                  args: [
                    Arg(
                    name: 'firewall-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--end-ip-address',
                  description: 'The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--start-ip-address',
                  description: 'The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
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
          description: 'Manage Data Lake Store account virtual network rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a virtual network rule in a Data Lake Store account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The virtual network rule name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'The subnet name or id for the virtual network rule',
                  args: [
                    Arg(
                    name: 'subne'
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
                  name: '--vnet-name',
                  description: 'The name of the virtual network rule',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a virtual network rule in a Data Lake Store account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name of the Data Lake Store account',
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
                  description: 'The virtual network rule name',
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
              description: 'Lists virtual network rules in a Data Lake Store account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name of the Data Lake Store account',
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
              description: 'Get the details of a virtual network rule in a Data Lake Store account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name of the Data Lake Store account',
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
                  description: 'The virtual network rule name',
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
              description: 'Updates a virtual network rule in a Data Lake Store account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Name or ID of the subnet that allows access to DLS. If subnet name is provided, --name must be provided',
                  args: [
                    Arg(
                    name: 'subne'
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
                  description: 'The virtual network rule name',
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
                  name: '--vnet-name',
                  description: 'The virtual network rule name',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'trusted-provider',
          description: 'Manage Data Lake Store account trusted identity providers',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates or updates the specified trusted identity provider',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--id-provider',
                  description: 'The URL of this trusted identity provider',
                  args: [
                    Arg(
                    name: 'id-provide'
                  )
                  ]
                ),
                Option(
                  name: '--trusted-id-provider-name',
                  description: 'The name of the trusted identity provider. This is used for differentiation of providers in the account',
                  args: [
                    Arg(
                    name: 'trusted-id-provider-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the specified trusted identity provider from the specified Data Lake Store account',
              options: [

                Option(
                  name: '--trusted-id-provider-name',
                  description: 'The name of the trusted identity provider to delete',
                  args: [
                    Arg(
                    name: 'trusted-id-provider-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
              description: 'Lists the Data Lake Store trusted identity providers within the specified Data Lake Store account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
              description: 'Gets the specified Data Lake Store trusted identity provider',
              options: [

                Option(
                  name: '--trusted-id-provider-name',
                  description: 'The name of the trusted identity provider to retrieve',
                  args: [
                    Arg(
                    name: 'trusted-id-provider-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
              description: 'Updates the specified trusted identity provider',
              options: [

                Option(
                  name: '--trusted-id-provider-name',
                  description: 'The name of the trusted identity provider. This is used for differentiation of providers in the account',
                  args: [
                    Arg(
                    name: 'trusted-id-provider-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--id-provider',
                  description: 'The URL of this trusted identity provider',
                  args: [
                    Arg(
                    name: 'id-provide'
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Store account',
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
      name: 'fs',
      description: 'Manage a Data Lake Store filesystem',
      subcommands: [

        Subcommand(
          name: 'append',
          description: 'Append content to a file in a Data Lake Store account',
          options: [

            Option(
              name: '--content',
              description: 'Content to be appended to the file',
              args: [
                Arg(
                name: 'conten'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
          description: 'Creates a file or folder in a Data Lake Store account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--content',
              description: 'Content for the file to contain upon creation',
              args: [
                Arg(
                name: 'conten'
              )
              ]
            ),
            Option(
              name: '--folder',
              description: 'Indicates that this new item is a folder and not a file'
            ),
            Option(
              name: '--force',
              description: 'Indicates that, if the file or folder exists, it should be overwritten'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a file or folder in a Data Lake Store account',
          options: [

            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
              name: '--recurse',
              description: 'Indicates this should be a recursive delete of the folder'
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
          name: 'download',
          description: 'Download a file or folder from a Data Lake Store account to the local machine',
          options: [

            Option(
              name: '--destination-path',
              description: 'The local path where the file or folder will be downloaded to',
              args: [
                Arg(
                name: 'destination-pat'
              )
              ]
            ),
            Option(
              name: '--source-path',
              description: 'The full path in the Data Lake Store filesystem to download the file or folder from',
              args: [
                Arg(
                name: 'source-pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--block-size',
              description: 'Size of a block, in bytes',
              args: [
                Arg(
                name: 'block-siz'
              )
              ]
            ),
            Option(
              name: '--buffer-size',
              description: 'Size of the transfer buffer, in bytes',
              args: [
                Arg(
                name: 'buffer-siz'
              )
              ]
            ),
            Option(
              name: '--chunk-size',
              description: 'Size of a chunk, in bytes',
              args: [
                Arg(
                name: 'chunk-siz'
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
              name: '--overwrite',
              description: 'Indicates that, if the destination file or folder exists, it should be overwritten'
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
              name: '--thread-count',
              description: 'Parallelism of the download. Default: The number of cores in the local machine',
              args: [
                Arg(
                name: 'thread-coun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'join',
          description: 'Join files in a Data Lake Store account into one file',
          options: [

            Option(
              name: '--destination-path',
              description: 'The destination path in the Data Lake Store account',
              args: [
                Arg(
                name: 'destination-pat'
              )
              ]
            ),
            Option(
              name: '--source-paths',
              description: 'The space-separated list of files in the Data Lake Store account to join',
              args: [
                Arg(
                name: 'source-path'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Indicates that, if the destination file already exists, it should be overwritten'
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
          description: 'List the files and folders in a Data Lake Store account',
          options: [

            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
          name: 'move',
          description: 'Move a file or folder in a Data Lake Store account',
          options: [

            Option(
              name: '--destination-path',
              description: 'The destination path in the Data Lake Store account',
              args: [
                Arg(
                name: 'destination-pat'
              )
              ]
            ),
            Option(
              name: '--source-path',
              description: 'The file or folder to move',
              args: [
                Arg(
                name: 'source-pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Indicates that, if the destination file or folder already exists, it should be overwritten and replaced with the file or folder being moved'
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
          name: 'preview',
          description: 'Preview the content of a file in a Data Lake Store account',
          options: [

            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Indicates that, if the preview is larger than 1MB, still retrieve it. This can potentially be very slow, depending on how large the file is'
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
              name: '--length',
              description: 'The amount of data to preview in bytes',
              args: [
                Arg(
                name: 'lengt'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'The position in bytes to start the preview from',
              args: [
                Arg(
                name: 'offse'
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
          name: 'remove-expiry',
          description: 'Remove the expiration time for a file',
          options: [

            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
          name: 'set-expiry',
          description: 'Set the expiration time for a file',
          options: [

            Option(
              name: '--expiration-time',
              description: 'The absolute value of the expiration time expressed as milliseconds since the epoch',
              args: [
                Arg(
                name: 'expiration-tim'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
          description: 'Get file or folder information in a Data Lake Store account',
          options: [

            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
          name: 'test',
          description: 'Test for the existence of a file or folder in a Data Lake Store account',
          options: [

            Option(
              name: '--path',
              description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
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
          name: 'upload',
          description: 'Upload a file or folder to a Data Lake Store account',
          options: [

            Option(
              name: '--destination-path',
              description: 'The full path in the Data Lake Store filesystem to upload the file or folder to',
              args: [
                Arg(
                name: 'destination-pat'
              )
              ]
            ),
            Option(
              name: '--source-path',
              description: 'The path to the file or folder to upload',
              args: [
                Arg(
                name: 'source-pat'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Store account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--block-size',
              description: 'Size of a block, in bytes',
              args: [
                Arg(
                name: 'block-siz'
              )
              ]
            ),
            Option(
              name: '--buffer-size',
              description: 'Size of the transfer buffer, in bytes',
              args: [
                Arg(
                name: 'buffer-siz'
              )
              ]
            ),
            Option(
              name: '--chunk-size',
              description: 'Size of a chunk, in bytes',
              args: [
                Arg(
                name: 'chunk-siz'
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
              name: '--overwrite',
              description: 'Indicates that, if the destination file or folder exists, it should be overwritten'
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
              name: '--thread-count',
              description: 'Parallelism of the upload. Default: The number of cores in the local machine',
              args: [
                Arg(
                name: 'thread-coun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'access',
          description: 'Manage Data Lake Store filesystem access and permissions',
          subcommands: [

            Subcommand(
              name: 'remove-all',
              description: 'Remove the access control list for a file or folder',
              options: [

                Option(
                  name: '--path',
                  description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--default-acl',
                  description: 'A switch that, if specified, indicates that the remove ACL operation should remove the default ACL of the folder. Otherwise the regular ACL is removed'
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
              name: 'remove-entry',
              description: 'Remove entries for the access control list of a file or folder',
              options: [

                Option(
                  name: '--acl-spec',
                  description: 'The ACL specification to set on the path in the format \'[default:]user|group|other:[entity id or UPN]:r|-w|-x|-,[default:]user|group|other:[entity id or UPN]:r|-w|-x|-,...\'',
                  args: [
                    Arg(
                    name: 'acl-spe'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
              name: 'set',
              description: 'Replace the existing access control list for a file or folder',
              options: [

                Option(
                  name: '--acl-spec',
                  description: 'The ACL specification to set on the path in the format \'[default:]user|group|other:[entity id or UPN]:r|-w|-x|-,[default:]user|group|other:[entity id or UPN]:r|-w|-x|-,...\'',
                  args: [
                    Arg(
                    name: 'acl-spe'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
              name: 'set-entry',
              description: 'Update the access control list for a file or folder',
              options: [

                Option(
                  name: '--acl-spec',
                  description: 'The ACL specification to set on the path in the format \'[default:]user|group|other:[entity id or UPN]:r|-w|-x|-,[default:]user|group|other:[entity id or UPN]:r|-w|-x|-,...\'',
                  args: [
                    Arg(
                    name: 'acl-spe'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
              name: 'set-owner',
              description: 'Set the owner information for a file or folder in a Data Lake Store account',
              options: [

                Option(
                  name: '--path',
                  description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--group',
                  description: 'The group Azure Active Directory object ID or user principal name to set as the owning group',
                  args: [
                    Arg(
                    name: 'grou'
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
                  name: '--owner',
                  description: 'The user Azure Active Directory object ID or user principal name to set as the owner',
                  args: [
                    Arg(
                    name: 'owne'
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
              name: 'set-permission',
              description: 'Set the permissions for a file or folder in a Data Lake Store account',
              options: [

                Option(
                  name: '--path',
                  description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--permission',
                  description: 'The octal representation of the permissions for user, group and mask',
                  args: [
                    Arg(
                    name: 'permissio'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
              description: 'Display the access control list (ACL)',
              options: [

                Option(
                  name: '--path',
                  description: 'The path in the specified Data Lake Store account where the action should take place. In the format \'/folder/file.txt\', where the first \'/\' after the DNS indicates the root of the file system',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'accoun'
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
