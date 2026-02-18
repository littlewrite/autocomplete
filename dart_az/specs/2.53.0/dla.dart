// Auto-generated from TypeScript source: dla.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dla` CLI
final FigSpec dlaSpec = FigSpec(
  name: 'dla',
  description: 'Manage Data Lake Analytics accounts, jobs, and catalogs',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage Data Lake Analytics accounts',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Data Lake Analytics account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--default-data-lake-store',
              description: 'The default Data Lake Store account to associate with the created account',
              args: [
                Arg(
                name: 'default-data-lake-stor'
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
              name: '--max-degree-of-parallelism',
              description: 'The maximum degree of parallelism for this account',
              args: [
                Arg(
                name: 'max-degree-of-parallelis'
              )
              ]
            ),
            Option(
              name: '--max-job-count',
              description: 'The maximum number of concurrent jobs for this account',
              args: [
                Arg(
                name: 'max-job-coun'
              )
              ]
            ),
            Option(
              name: '--query-store-retention',
              description: 'The number of days to retain job metadata',
              args: [
                Arg(
                name: 'query-store-retentio'
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

                  FigSuggestion(name: 'Commitment_100000AUHours'),
                  FigSuggestion(name: 'Commitment_10000AUHours'),
                  FigSuggestion(name: 'Commitment_1000AUHours'),
                  FigSuggestion(name: 'Commitment_100AUHours'),
                  FigSuggestion(name: 'Commitment_500000AUHours'),
                  FigSuggestion(name: 'Commitment_50000AUHours'),
                  FigSuggestion(name: 'Commitment_5000AUHours'),
                  FigSuggestion(name: 'Commitment_500AUHours'),
                  FigSuggestion(name: 'Consumption')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Data Lake Analytics account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
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
              description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
          description: 'List available Data Lake Analytics accounts',
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
          description: 'Get the details of a Data Lake Analytics account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
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
              description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
          description: 'Update a Data Lake Analytics account',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--allow-azure-ips',
              description: 'Allow or block IPs originating from Azure through the firewall',
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
              name: '--firewall-state',
              description: 'Enable or disable existing firewall rules',
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
              name: '--max-degree-of-parallelism',
              description: 'The maximum degree of parallelism for this account',
              args: [
                Arg(
                name: 'max-degree-of-parallelis'
              )
              ]
            ),
            Option(
              name: '--max-job-count',
              description: 'The maximum number of concurrent jobs for this account',
              args: [
                Arg(
                name: 'max-job-coun'
              )
              ]
            ),
            Option(
              name: '--query-store-retention',
              description: 'The number of days to retain job metadata',
              args: [
                Arg(
                name: 'query-store-retentio'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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

                  FigSuggestion(name: 'Commitment_100000AUHours'),
                  FigSuggestion(name: 'Commitment_10000AUHours'),
                  FigSuggestion(name: 'Commitment_1000AUHours'),
                  FigSuggestion(name: 'Commitment_100AUHours'),
                  FigSuggestion(name: 'Commitment_500000AUHours'),
                  FigSuggestion(name: 'Commitment_50000AUHours'),
                  FigSuggestion(name: 'Commitment_5000AUHours'),
                  FigSuggestion(name: 'Commitment_500AUHours'),
                  FigSuggestion(name: 'Consumption')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'blob-storage',
          description: 'Manage links between Data Lake Analytics accounts and Azure Storage',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Links an Azure Storage account to the specified Data Lake Analytics account',
              options: [

                Option(
                  name: '--access-key',
                  description: 'The access key associated with this Azure Storage account that will be used to connect to it',
                  args: [
                    Arg(
                    name: 'access-ke'
                  )
                  ]
                ),
                Option(
                  name: '--storage-account-name',
                  description: 'Name of an existing storage account to link to',
                  args: [
                    Arg(
                    name: 'storage-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
                  name: '--suffix',
                  description: 'The optional suffix for the storage account',
                  args: [
                    Arg(
                    name: 'suffi'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Updates the specified Data Lake Analytics account to remove an Azure Storage account',
              options: [

                Option(
                  name: '--storage-account-name',
                  description: 'Name of an existing storage account to link to',
                  args: [
                    Arg(
                    name: 'storage-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Gets the first page of Azure Storage accounts, if any, linked to the specified Data Lake Analytics account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'The OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Gets the specified Azure Storage account linked to the given Data Lake Analytics account',
              options: [

                Option(
                  name: '--storage-account-name',
                  description: 'Name of an existing storage account to link to',
                  args: [
                    Arg(
                    name: 'storage-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Updates an Azure Storage account linked to the specified Data Lake Analytics account',
              options: [

                Option(
                  name: '--access-key',
                  description: 'The access key associated with this Azure Storage account that will be used to connect to it',
                  args: [
                    Arg(
                    name: 'access-ke'
                  )
                  ]
                ),
                Option(
                  name: '--storage-account-name',
                  description: 'Name of an existing storage account to link to',
                  args: [
                    Arg(
                    name: 'storage-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
                  name: '--suffix',
                  description: 'The optional suffix for the storage account',
                  args: [
                    Arg(
                    name: 'suffi'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'compute-policy',
          description: 'Manage Data Lake Analytics account compute policies',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a compute policy in the Data Lake Analytics account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--compute-policy-name',
                  description: 'The name of the compute policy to create',
                  args: [
                    Arg(
                    name: 'compute-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--object-id',
                  description: 'The Azure Active Directory object ID of the user, group, or service principal to apply the policy to',
                  args: [
                    Arg(
                    name: 'object-i'
                  )
                  ]
                ),
                Option(
                  name: '--object-type',
                  description: 'The Azure Active Directory object type associated with the supplied object ID',
                  args: [
                    Arg(
                    name: 'object-typ'
                  )
                  ]
                ),
                Option(
                  name: '--max-dop-per-job',
                  description: 'The maximum degree of parallelism allowed per job for this policy. At least one of --min-priority-per-job and --max-dop-per-job must be specified',
                  args: [
                    Arg(
                    name: 'max-dop-per-jo'
                  )
                  ]
                ),
                Option(
                  name: '--min-priority-per-job',
                  description: 'The minimum priority allowed per job for this policy. At least one of --min-priority-per-job and --max-dop-per-job must be specified',
                  args: [
                    Arg(
                    name: 'min-priority-per-jo'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Delete a compute policy in a Data Lake Analytics account',
              options: [

                Option(
                  name: '--compute-policy-name',
                  description: 'The name of the compute policy to delete',
                  args: [
                    Arg(
                    name: 'compute-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'List compute policies in the a Lake Analytics account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Retrieve a compute policy in a Data Lake Analytics account',
              options: [

                Option(
                  name: '--compute-policy-name',
                  description: 'The name of the compute policy to retrieve',
                  args: [
                    Arg(
                    name: 'compute-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Update a compute policy in the Data Lake Analytics account',
              options: [

                Option(
                  name: '--compute-policy-name',
                  description: 'The name of the compute policy to update',
                  args: [
                    Arg(
                    name: 'compute-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  name: '--max-dop-per-job',
                  description: 'The maximum degree of parallelism allowed per job for this policy. At least one of --min-priority-per-job and --max-dop-per-job must be specified',
                  args: [
                    Arg(
                    name: 'max-dop-per-jo'
                  )
                  ]
                ),
                Option(
                  name: '--min-priority-per-job',
                  description: 'The minimum priority allowed per job for this policy. At least one of --min-priority-per-job and --max-dop-per-job must be specified',
                  args: [
                    Arg(
                    name: 'min-priority-per-jo'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
          name: 'data-lake-store',
          description: 'Manage links between Data Lake Analytics and Data Lake Store accounts',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Updates the specified Data Lake Analytics account to include the additional Data Lake Store account',
              options: [

                Option(
                  name: '--data-lake-store-account-name',
                  description: 'The name of the Data Lake Store account to add',
                  args: [
                    Arg(
                    name: 'data-lake-store-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
                  name: '--suffix',
                  description: 'The optional suffix for the Data Lake Store account',
                  args: [
                    Arg(
                    name: 'suffi'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Updates the Data Lake Analytics account specified to remove the specified Data Lake Store account',
              options: [

                Option(
                  name: '--data-lake-store-account-name',
                  description: 'The name of the Data Lake Store account to remove',
                  args: [
                    Arg(
                    name: 'data-lake-store-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Gets the first page of Data Lake Store accounts linked to the specified Data Lake Analytics account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Gets the specified Data Lake Store account details in the specified Data Lake Analytics account',
              options: [

                Option(
                  name: '--data-lake-store-account-name',
                  description: 'The name of the Data Lake Store account to retrieve',
                  args: [
                    Arg(
                    name: 'data-lake-store-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
          name: 'firewall',
          description: 'Manage Data Lake Analytics account firewall rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a firewall rule in a Data Lake Analytics account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--end-ip-address',
                  description: 'The end of the valid IP range for the firewall rule',
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
                  description: 'The start of the valid IP range for the firewall rule',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Delete a firewall rule in a Data Lake Analytics account',
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
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'List firewall rules in a Data Lake Analytics account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Retrieve a firewall rule in a Data Lake Analytics account',
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
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
              description: 'Update a firewall rule in a Data Lake Analytics account',
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
                  description: 'Name of the Data Lake Analytics account',
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
                  description: 'If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account',
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
        )
      ]
    ),
    Subcommand(
      name: 'catalog',
      description: 'Manage Data Lake Analytics catalogs',
      subcommands: [

        Subcommand(
          name: 'assembly',
          description: 'Manage Data Lake Analytics catalog assemblies',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieves the list of assemblies from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the assembly',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieves the specified assembly from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--assembly-name',
                  description: 'The name of the assembly',
                  args: [
                    Arg(
                    name: 'assembly-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the assembly',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'credential',
          description: 'Manage Data Lake Analytics catalog credentials',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new catalog credential for use with an external data source',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--credential-name',
                  description: 'The name of the credential',
                  args: [
                    Arg(
                    name: 'credential-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in which to create the credential',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--uri',
                  description: 'URI of the external data source',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                ),
                Option(
                  name: '--user-name',
                  description: 'The user name that will be used when authenticating with this credential',
                  args: [
                    Arg(
                    name: 'user-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'Password for the credential user. Will prompt if not given',
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
              description: 'Delete a catalog credential',
              options: [

                Option(
                  name: '--credential-name',
                  description: 'The name of the credential to delete',
                  args: [
                    Arg(
                    name: 'credential-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the credential',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--cascade',
                  description: 'Indicates if the delete should be a cascading delete (which deletes all resources dependent on the credential as well as the credential) or not. If false will fail if there are any resources relying on the credential'
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
                  name: '--password',
                  description: 'The current password for the credential and user with access to the data source. This is required if the requester is not the account owner',
                  args: [
                    Arg(
                    name: 'passwor'
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
              description: 'List catalog credentials',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the schema',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieve a catalog credential',
              options: [

                Option(
                  name: '--credential-name',
                  description: 'The name of the credential',
                  args: [
                    Arg(
                    name: 'credential-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the schema',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
              name: 'update',
              description: 'Update a catalog credential for use with an external data source',
              options: [

                Option(
                  name: '--credential-name',
                  description: 'The name of the credential to update',
                  args: [
                    Arg(
                    name: 'credential-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in which the credential exists',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--uri',
                  description: 'URI of the external data source',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                ),
                Option(
                  name: '--user-name',
                  description: 'The user name associated with the credential that will have its password updated',
                  args: [
                    Arg(
                    name: 'user-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  name: '--new-password',
                  description: 'New password for the credential user. Will prompt if not given',
                  args: [
                    Arg(
                    name: 'new-passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'Current password for the credential user. Will prompt if not given',
                  args: [
                    Arg(
                    name: 'passwor'
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
          name: 'database',
          description: 'Manage Data Lake Analytics catalog databases',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieves the list of databases from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieves the specified database from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'external-data-source',
          description: 'Manage Data Lake Analytics catalog external data sources',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieves the list of external data sources from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the external data sources',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieves the specified external data source from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the external data source',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--external-data-source-name',
                  description: 'The name of the external data source',
                  args: [
                    Arg(
                    name: 'external-data-source-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'package',
          description: 'Manage Data Lake Analytics catalog packages',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieves the list of packages from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the packages',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the packages',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieves the specified package from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the package',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--package-name',
                  description: 'The name of the package',
                  args: [
                    Arg(
                    name: 'package-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the package',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'procedure',
          description: 'Manage Data Lake Analytics catalog stored procedures',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieves the list of procedures from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the procedures',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the procedures',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieves the specified procedure from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the procedure',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--procedure-name',
                  description: 'The name of the procedure',
                  args: [
                    Arg(
                    name: 'procedure-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the procedure',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'schema',
          description: 'Manage Data Lake Analytics catalog schemas',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieves the list of schemas from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the schema',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieves the specified schema from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the schema',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'table',
          description: 'Manage Data Lake Analytics catalog tables',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List tables in a database or schema',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  name: '--schema-name',
                  description: 'The schema assocated with the tables to list',
                  args: [
                    Arg(
                    name: 'schema-nam'
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
              description: 'Retrieves the specified table from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the table',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the table',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: '--table-name',
                  description: 'The name of the table',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'table-partition',
          description: 'Manage Data Lake Analytics catalog table partitions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieves the list of table partitions from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the partitions',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the partitions',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: '--table-name',
                  description: 'The name of the table containing the partitions',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieves the specified table partition from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the partition',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--partition-name',
                  description: 'The name of the table partition',
                  args: [
                    Arg(
                    name: 'partition-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the partition',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: '--table-name',
                  description: 'The name of the table containing the partition',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'table-stats',
          description: 'Manage Data Lake Analytics catalog table statistics',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List table statistics in a database, table, or schema',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  name: '--schema-name',
                  description: 'The schema associated with the tables to list',
                  args: [
                    Arg(
                    name: 'schema-nam'
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
                  name: '--table-name',
                  description: 'The table to list statistics for. --schema-name must also be specified',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Retrieves the specified table statistics from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the statistics',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the statistics',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: '--statistics-name',
                  description: 'The name of the table statistics',
                  args: [
                    Arg(
                    name: 'statistics-nam'
                  )
                  ]
                ),
                Option(
                  name: '--table-name',
                  description: 'The name of the table containing the statistics',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'table-type',
          description: 'Manage Data Lake Analytics catalog table types',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieves the list of table types from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the table types',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the table types',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?\$count=true',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'OData filter. Optional',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: '--orderby',
                  description: 'OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you\'d like the values sorted, e.g. Categories?\$orderby=CategoryName desc. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--select',
                  description: 'OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?\$select=CategoryName,Description. Optional',
                  args: [
                    Arg(
                    name: 'selec'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'The number of items to skip over before returning elements',
                  args: [
                    Arg(
                    name: 'ski'
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
                  name: '--top',
                  description: 'Maximum number of items to return',
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
              description: 'Retrieves the specified table type from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the table type',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the table type',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: '--table-type-name',
                  description: 'The name of the table type to retrieve',
                  args: [
                    Arg(
                    name: 'table-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'tvf',
          description: 'Manage Data Lake Analytics catalog table valued functions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List table valued functions in a database or schema',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  name: '--schema-name',
                  description: 'The name of the schema assocated with table valued functions to list',
                  args: [
                    Arg(
                    name: 'schema-nam'
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
              description: 'Retrieves the specified table valued function from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the table valued function',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the table valued function',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: '--table-valued-function-name',
                  description: 'The name of the tableValuedFunction',
                  args: [
                    Arg(
                    name: 'table-valued-function-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
        ),
        Subcommand(
          name: 'view',
          description: 'Manage Data Lake Analytics catalog views',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List views in a database or schema',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
                  name: '--schema-name',
                  description: 'The name of the schema associated with the views to list',
                  args: [
                    Arg(
                    name: 'schema-nam'
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
              description: 'Retrieves the specified view from the Data Lake Analytics catalog',
              options: [

                Option(
                  name: '--database-name',
                  description: 'The name of the database containing the view',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema containing the view',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: '--view-name',
                  description: 'The name of the view',
                  args: [
                    Arg(
                    name: 'view-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
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
    ),
    Subcommand(
      name: 'job',
      description: 'Manage Data Lake Analytics jobs',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a Data Lake Analytics job',
          options: [

            Option(
              name: '--job-identity',
              description: 'JobInfo ID to cancel',
              args: [
                Arg(
                name: 'job-identit'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
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
          name: 'list',
          description: 'List Data Lake Analytics jobs',
          options: [

            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
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
              name: '--name',
              description: 'A filter which returns jobs only by the specified friendly name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--pipeline-id',
              description: 'A filter which returns jobs only containing the specified pipeline_id',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: '--recurrence-id',
              description: 'A filter which returns jobs only containing the specified recurrence_id',
              args: [
                Arg(
                name: 'recurrence-i'
              )
              ]
            ),
            Option(
              name: '--result',
              description: 'A filter which returns jobs with only the specified result(s)',
              args: [
                Arg(
                name: 'result',
                suggestions: [

                  FigSuggestion(name: 'Cancelled'),
                  FigSuggestion(name: 'Failed'),
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'Succeeded')
                ]
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'A filter which returns jobs with only the specified state(s)',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'Accepted'),
                  FigSuggestion(name: 'Compiling'),
                  FigSuggestion(name: 'Ended'),
                  FigSuggestion(name: 'New'),
                  FigSuggestion(name: 'Paused'),
                  FigSuggestion(name: 'Queued'),
                  FigSuggestion(name: 'Running'),
                  FigSuggestion(name: 'Scheduling'),
                  FigSuggestion(name: 'Starting'),
                  FigSuggestion(name: 'WaitingForCapacity')
                ]
              )
              ]
            ),
            Option(
              name: '--submitted-after',
              description: 'A filter which returns jobs only submitted after the specified time, in ISO-8601 format',
              args: [
                Arg(
                name: 'submitted-afte'
              )
              ]
            ),
            Option(
              name: '--submitted-before',
              description: 'A filter which returns jobs only submitted before the specified time, in ISO-8601 format',
              args: [
                Arg(
                name: 'submitted-befor'
              )
              ]
            ),
            Option(
              name: '--submitter',
              description: 'A filter which returns jobs only by the specified submitter',
              args: [
                Arg(
                name: 'submitte'
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
              name: '--top',
              description: 'Maximum number of items to return',
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
          description: 'Get information for a Data Lake Analytics job',
          options: [

            Option(
              name: '--job-identity',
              description: 'JobInfo ID',
              args: [
                Arg(
                name: 'job-identit'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
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
          name: 'submit',
          description: 'Submit a job to a Data Lake Analytics account',
          options: [

            Option(
              name: '--job-name',
              description: 'Name for the submitted job',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: '--script',
              description: 'Script to submit. This may be \'@{file}\' to load from a file',
              args: [
                Arg(
                name: 'scrip'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
              args: [
                Arg(
                name: 'accoun'
              )
              ]
            ),
            Option(
              name: '--compile-mode',
              description: 'Indicates the type of compilation to be done on this job. Valid values are: \'Semantic\' (Only performs semantic checks and necessary sanity checks), \'Full\' (full compilation) and \'SingleBox\' (Full compilation performed locally)',
              args: [
                Arg(
                name: 'compile-mode',
                suggestions: [

                  FigSuggestion(name: 'Full'),
                  FigSuggestion(name: 'Semantic'),
                  FigSuggestion(name: 'SingleBox')
                ]
              )
              ]
            ),
            Option(
              name: '--compile-only',
              description: 'Indicates that the submission should only build the job and not execute if set to true'
            ),
            Option(
              name: '--degree-of-parallelism',
              description: 'The degree of parallelism for the job',
              args: [
                Arg(
                name: 'degree-of-parallelis'
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
              name: '--pipeline-id',
              description: 'Job relationship pipeline GUID',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: '--pipeline-name',
              description: 'Friendly name of the job relationship pipeline',
              args: [
                Arg(
                name: 'pipeline-nam'
              )
              ]
            ),
            Option(
              name: '--pipeline-uri',
              description: 'Unique pipeline URI which links to the originating service for this pipeline',
              args: [
                Arg(
                name: 'pipeline-ur'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority of the job',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: '--recurrence-id',
              description: 'Recurrence GUID, unique per activity/script, regardless of iteration. Links different occurrences of the same job together',
              args: [
                Arg(
                name: 'recurrence-i'
              )
              ]
            ),
            Option(
              name: '--recurrence-name',
              description: 'Friendly recurrence nae for the correlation between jobs',
              args: [
                Arg(
                name: 'recurrence-nam'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'GUID of the iteration of this pipeline',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--runtime-version',
              description: 'The runtime version to use',
              args: [
                Arg(
                name: 'runtime-versio'
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
          name: 'wait',
          description: 'Wait for a Data Lake Analytics job to finish',
          options: [

            Option(
              name: '--job-id',
              description: 'Job ID to poll for completion',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: ['--account', '-n'],
              description: 'Name of the Data Lake Analytics account',
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
              name: '--max-wait-time-sec',
              description: 'The maximum amount of time to wait before erroring out. Default value is to never timeout. Any value <= 0 means never timeout',
              args: [
                Arg(
                name: 'max-wait-time-se'
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
              name: '--wait-interval-sec',
              description: 'The polling interval between checks for the job status, in seconds',
              args: [
                Arg(
                name: 'wait-interval-se'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pipeline',
          description: 'Manage Data Lake Analytics job pipelines',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List job pipelines in a Data Lake Analytics account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--end-date-time',
                  description: 'The end date for when to get the list of pipelines. The startDateTime and endDateTime can be no more than 30 days apart',
                  args: [
                    Arg(
                    name: 'end-date-tim'
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
                  name: '--start-date-time',
                  description: 'The start date for when to get the list of pipelines. The startDateTime and endDateTime can be no more than 30 days apart',
                  args: [
                    Arg(
                    name: 'start-date-tim'
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
              description: 'Retrieve a job pipeline in a Data Lake Analytics account',
              options: [

                Option(
                  name: '--pipeline-identity',
                  description: 'Pipeline ID',
                  args: [
                    Arg(
                    name: 'pipeline-identit'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--end-date-time',
                  description: 'The end date for when to get the pipeline and aggregate its data. The startDateTime and endDateTime can be no more than 30 days apart',
                  args: [
                    Arg(
                    name: 'end-date-tim'
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
                  name: '--start-date-time',
                  description: 'The start date for when to get the pipeline and aggregate its data. The startDateTime and endDateTime can be no more than 30 days apart',
                  args: [
                    Arg(
                    name: 'start-date-tim'
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
          name: 'recurrence',
          description: 'Manage Data Lake Analytics job recurrences',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List job recurrences in a Data Lake Analytics account',
              options: [

                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--end-date-time',
                  description: 'The end date for when to get the list of recurrences. The startDateTime and endDateTime can be no more than 30 days apart',
                  args: [
                    Arg(
                    name: 'end-date-tim'
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
                  name: '--start-date-time',
                  description: 'The start date for when to get the list of recurrences. The startDateTime and endDateTime can be no more than 30 days apart',
                  args: [
                    Arg(
                    name: 'start-date-tim'
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
              description: 'Retrieve a job recurrence in a Data Lake Analytics account',
              options: [

                Option(
                  name: '--recurrence-identity',
                  description: 'Recurrence ID',
                  args: [
                    Arg(
                    name: 'recurrence-identit'
                  )
                  ]
                ),
                Option(
                  name: ['--account', '-n'],
                  description: 'Name of the Data Lake Analytics account',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--end-date-time',
                  description: 'The end date for when to get recurrence and aggregate its data. The startDateTime and endDateTime can be no more than 30 days apart',
                  args: [
                    Arg(
                    name: 'end-date-tim'
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
                  name: '--start-date-time',
                  description: 'The start date for when to get the recurrence and aggregate its data. The startDateTime and endDateTime can be no more than 30 days apart',
                  args: [
                    Arg(
                    name: 'start-date-tim'
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
