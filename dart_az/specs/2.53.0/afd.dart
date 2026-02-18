// Auto-generated from TypeScript source: afd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `afd` CLI
final FigSpec afdSpec = FigSpec(
  name: 'afd',
  description: 'Manage Azure Front Door Standard/Premium. For classical Azure Front Door, please refer https://docs.microsoft.com/en-us/cli/azure/network/front-door?view=azure-cli-latest',
  subcommands: [

    Subcommand(
      name: 'custom-domain',
      description: 'Manage custom domains within the specified profile',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a custom domain within the specified profile',
          options: [

            Option(
              name: '--certificate-type',
              description: 'Defines the source of the SSL certificate',
              args: [
                Arg(
                name: 'certificate-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFirstPartyManagedCertificate'),
                  FigSuggestion(name: 'CustomerCertificate'),
                  FigSuggestion(name: 'ManagedCertificate')
                ]
              )
              ]
            ),
            Option(
              name: '--custom-domain-name',
              description: 'Name of the custom domain',
              args: [
                Arg(
                name: 'custom-domain-nam'
              )
              ]
            ),
            Option(
              name: '--host-name',
              description: 'The host name of the domain. Must be a domain name',
              args: [
                Arg(
                name: 'host-nam'
              )
              ]
            ),
            Option(
              name: '--minimum-tls-version',
              description: 'TLS protocol version that will be used for Https',
              args: [
                Arg(
                name: 'minimum-tls-version',
                suggestions: [

                  FigSuggestion(name: 'TLS10'),
                  FigSuggestion(name: 'TLS12')
                ]
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--azure-dns-zone',
              description: 'ID of the Azure DNS zone',
              args: [
                Arg(
                name: 'azure-dns-zon'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--secret',
              description: 'Name of the azure front door secret',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a custom domain',
          options: [

            Option(
              name: '--custom-domain-name',
              description: 'Name of the custom domain',
              args: [
                Arg(
                name: 'custom-domain-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'List all the custom domains within the specified profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'regenerate-validation-token',
          description: 'Regenerate the domain validation token to restart the validation process',
          options: [

            Option(
              name: '--custom-domain-name',
              description: 'Name of the custom domain',
              args: [
                Arg(
                name: 'custom-domain-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Show the custom domain details',
          options: [

            Option(
              name: '--custom-domain-name',
              description: 'Name of the custom domain',
              args: [
                Arg(
                name: 'custom-domain-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Update a custom domain within the specified profile',
          options: [

            Option(
              name: '--azure-dns-zone',
              description: 'ID of the Azure DNS zone',
              args: [
                Arg(
                name: 'azure-dns-zon'
              )
              ]
            ),
            Option(
              name: '--certificate-type',
              description: 'Defines the source of the SSL certificate',
              args: [
                Arg(
                name: 'certificate-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFirstPartyManagedCertificate'),
                  FigSuggestion(name: 'CustomerCertificate'),
                  FigSuggestion(name: 'ManagedCertificate')
                ]
              )
              ]
            ),
            Option(
              name: '--custom-domain-name',
              description: 'Name of the custom domain',
              args: [
                Arg(
                name: 'custom-domain-nam'
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
              name: '--minimum-tls-version',
              description: 'TLS protocol version that will be used for Https',
              args: [
                Arg(
                name: 'minimum-tls-version',
                suggestions: [

                  FigSuggestion(name: 'TLS10'),
                  FigSuggestion(name: 'TLS12')
                ]
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--secret',
              description: 'Name of the azure front door secret',
              args: [
                Arg(
                name: 'secre'
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
          description: 'Place the CLI in a waiting state until a condition of the custom domain is met',
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
              name: '--custom-domain-name',
              description: 'Name of the custom domain',
              args: [
                Arg(
                name: 'custom-domain-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
      name: 'endpoint',
      description: 'Manage AFD endpoints within the specified profile.\n\n\t\tAn endpoint is a logical grouping of domains and their associated configurations',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates an endpoint within the specified profile',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--enabled-state',
              description: 'Whether to enable this endpoint',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--name-reuse-scope',
              description: 'Indicates the endpoint name reuse scope. The default value is TenantReuse',
              args: [
                Arg(
                name: 'name-reuse-scope',
                suggestions: [

                  FigSuggestion(name: 'NoReuse'),
                  FigSuggestion(name: 'ResourceGroupReuse'),
                  FigSuggestion(name: 'SubscriptionReuse'),
                  FigSuggestion(name: 'TenantReuse')
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an endpoint within the specified profile',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'List all the endpoints within the specified profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'purge',
          description: 'Removes cached contents from Azure Front Door',
          options: [

            Option(
              name: '--content-paths',
              description: 'The path to the content to be purged. Can describe a file path or a wildcard directory',
              args: [
                Arg(
                name: 'content-path'
              )
              ]
            ),
            Option(
              name: '--domains',
              description: 'List of domains',
              args: [
                Arg(
                name: 'domain'
              )
              ]
            ),
            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Show details of an endpoint within the specified profile',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Update an endpoint within the specified profile',
          options: [

            Option(
              name: '--enabled-state',
              description: 'Whether to enable this endpoint',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
      name: 'log-analytic',
      description: 'Manage afd log analytic results',
      subcommands: [

        Subcommand(
          name: 'location',
          description: 'Manage available location names for AFD log analysis',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get all available location names for AFD log analytics report',
              options: [

                Option(
                  name: '--profile-name',
                  description: 'Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group. which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'metric',
          description: 'Manage metric statistics for AFD profile',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get log report for AFD profile',
              options: [

                Option(
                  name: '--custom-domains',
                  description: 'The domains to be included',
                  args: [
                    Arg(
                    name: 'custom-domain'
                  )
                  ]
                ),
                Option(
                  name: '--date-time-begin',
                  description: 'The start datetime',
                  args: [
                    Arg(
                    name: 'date-time-begi'
                  )
                  ]
                ),
                Option(
                  name: '--date-time-end',
                  description: 'The end datetime',
                  args: [
                    Arg(
                    name: 'date-time-en'
                  )
                  ]
                ),
                Option(
                  name: '--granularity',
                  description: 'The interval granularity',
                  args: [
                    Arg(
                    name: 'granularity',
                    suggestions: [

                      FigSuggestion(name: 'P1D'),
                      FigSuggestion(name: 'PT1H'),
                      FigSuggestion(name: 'PT5M')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--metrics',
                  description: 'Metric types to include',
                  args: [
                    Arg(
                    name: 'metrics',
                    suggestions: [

                      FigSuggestion(name: 'clientRequestBandwidth'),
                      FigSuggestion(name: 'clientRequestCount'),
                      FigSuggestion(name: 'clientRequestTraffic'),
                      FigSuggestion(name: 'originRequestBandwidth'),
                      FigSuggestion(name: 'originRequestTraffic'),
                      FigSuggestion(name: 'totalLatency')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group. which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--protocols',
                  description: 'The protocols to be included',
                  args: [
                    Arg(
                    name: 'protocol'
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
                  name: '--continents',
                  description: 'ISO 3316-1 alpha-2 continent code',
                  args: [
                    Arg(
                    name: 'continent'
                  )
                  ]
                ),
                Option(
                  name: '--country-or-regions',
                  description: 'ISO 3316-1 alpha-2 region code',
                  args: [
                    Arg(
                    name: 'country-or-region'
                  )
                  ]
                ),
                Option(
                  name: '--group-by',
                  description: 'Aggregate demensions',
                  args: [
                    Arg(
                    name: 'group-by',
                    suggestions: [

                      FigSuggestion(name: 'cacheStatus'),
                      FigSuggestion(name: 'country'),
                      FigSuggestion(name: 'customDomain'),
                      FigSuggestion(name: 'httpStatusCode'),
                      FigSuggestion(name: 'protocol')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'ranking',
          description: 'Manage ranking statistics for AFD profile',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get log analytics ranking report for AFD profile',
              options: [

                Option(
                  name: '--date-time-begin',
                  description: 'The start datetime',
                  args: [
                    Arg(
                    name: 'date-time-begi'
                  )
                  ]
                ),
                Option(
                  name: '--date-time-end',
                  description: 'The end datetime',
                  args: [
                    Arg(
                    name: 'date-time-en'
                  )
                  ]
                ),
                Option(
                  name: '--max-ranking',
                  description: 'The maximum number of rows to return based on the ranking',
                  args: [
                    Arg(
                    name: 'max-rankin'
                  )
                  ]
                ),
                Option(
                  name: '--metrics',
                  description: 'Metric types to include',
                  args: [
                    Arg(
                    name: 'metrics',
                    suggestions: [

                      FigSuggestion(name: 'clientRequestCount'),
                      FigSuggestion(name: 'clientRequestTraffic'),
                      FigSuggestion(name: 'errorCount'),
                      FigSuggestion(name: 'hitCount'),
                      FigSuggestion(name: 'missCount'),
                      FigSuggestion(name: 'userErrorCount')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group. which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rankings',
                  description: 'The dimemsions to be included for ranking',
                  args: [
                    Arg(
                    name: 'rankings',
                    suggestions: [

                      FigSuggestion(name: 'browser'),
                      FigSuggestion(name: 'countryOrRegion'),
                      FigSuggestion(name: 'referrer'),
                      FigSuggestion(name: 'url'),
                      FigSuggestion(name: 'userAgent')
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
                  name: '--custom-domains',
                  description: 'The domains to be included',
                  args: [
                    Arg(
                    name: 'custom-domain'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resource',
          description: 'Manage endpoints and custom domains available for AFD log analysis',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get all endpoints and custom domains available for AFD log report',
              options: [

                Option(
                  name: '--profile-name',
                  description: 'Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group. which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'origin',
      description: 'Manage origins within the specified origin group.\n\n\t\tOrigins are the application servers where Front Door will route your client requests. Utilize any publicly accessible application server, including App Service, Traffic Manager, Private Link, and many others',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an AFD origin',
          options: [

            Option(
              name: '--enabled-state',
              description: 'Whether to enable this origin',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--host-name',
              description: 'The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in a origin group',
              args: [
                Arg(
                name: 'host-nam'
              )
              ]
            ),
            Option(
              name: '--origin-group-name',
              description: 'Name of the origin group which is unique within the endpoint',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--origin-name',
              description: 'Name of the origin',
              args: [
                Arg(
                name: 'origin-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--enable-private-link',
              description: 'Indicates whether private link is enanbled on that origin',
              args: [
                Arg(
                name: 'enable-private-link',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enforce-certificate-name-check',
              description: '"Whether to enable certificate name check at origin level',
              args: [
                Arg(
                name: 'enforce-certificate-name-check',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--http-port',
              description: 'The port used for http requests to the origin',
              args: [
                Arg(
                name: 'http-por'
              )
              ]
            ),
            Option(
              name: '--https-port',
              description: 'The port used for https requests to the origin',
              args: [
                Arg(
                name: 'https-por'
              )
              ]
            ),
            Option(
              name: '--origin-host-header',
              description: 'The Host header to send for requests to this origin. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default',
              args: [
                Arg(
                name: 'origin-host-heade'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between 1 and 5',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: '--private-link-location',
              description: 'The location of origin that will be connected to using the private link',
              args: [
                Arg(
                name: 'private-link-locatio'
              )
              ]
            ),
            Option(
              name: '--private-link-request-message',
              description: 'The message that is shown to the approver of the private link request',
              args: [
                Arg(
                name: 'private-link-request-messag'
              )
              ]
            ),
            Option(
              name: '--private-link-resource',
              description: 'The resource ID of the origin that will be connected to using the private link',
              args: [
                Arg(
                name: 'private-link-resourc'
              )
              ]
            ),
            Option(
              name: '--private-link-sub-resource-type',
              description: 'The sub-resource type of the origin that will be connected to using the private link.You can use "az network private-link-resource list" to obtain the supported sub-resource types',
              args: [
                Arg(
                name: 'private-link-sub-resource-typ'
              )
              ]
            ),
            Option(
              name: '--weight',
              description: 'Weight of the origin in given origin group for load balancing. Must be between 1 and 1000',
              args: [
                Arg(
                name: 'weigh'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing origin within an origin group',
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
              name: '--origin-group-name',
              description: 'Name of the origin group which is unique within the endpoint',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--origin-name',
              description: 'Name of the origin',
              args: [
                Arg(
                name: 'origin-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Lists all of the existing origins within an origin group',
          options: [

            Option(
              name: '--origin-group-name',
              description: 'Name of the origin group which is unique within the endpoint',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Gets an existing origin within an origin group',
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
              name: '--origin-group-name',
              description: 'Name of the origin group which is unique within the endpoint',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--origin-name',
              description: 'Name of the origin',
              args: [
                Arg(
                name: 'origin-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Update the settings of the specified AFD origin',
          options: [

            Option(
              name: '--enable-private-link',
              description: 'Indicates whether private link is enanbled on that origin',
              args: [
                Arg(
                name: 'enable-private-link',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enabled-state',
              description: 'Whether to enable this origin',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--enforce-certificate-name-check',
              description: '"Whether to enable certificate name check at origin level',
              args: [
                Arg(
                name: 'enforce-certificate-name-check',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--host-name',
              description: 'The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in a origin group',
              args: [
                Arg(
                name: 'host-nam'
              )
              ]
            ),
            Option(
              name: '--http-port',
              description: 'The port used for http requests to the origin',
              args: [
                Arg(
                name: 'http-por'
              )
              ]
            ),
            Option(
              name: '--https-port',
              description: 'The port used for https requests to the origin',
              args: [
                Arg(
                name: 'https-por'
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
              name: '--origin-group-name',
              description: 'Name of the origin group which is unique within the endpoint',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--origin-host-header',
              description: 'The Host header to send for requests to this origin. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default',
              args: [
                Arg(
                name: 'origin-host-heade'
              )
              ]
            ),
            Option(
              name: '--origin-name',
              description: 'Name of the origin',
              args: [
                Arg(
                name: 'origin-nam'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between 1 and 5',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: '--private-link-location',
              description: 'The location of origin that will be connected to using the private link',
              args: [
                Arg(
                name: 'private-link-locatio'
              )
              ]
            ),
            Option(
              name: '--private-link-request-message',
              description: 'The message that is shown to the approver of the private link request',
              args: [
                Arg(
                name: 'private-link-request-messag'
              )
              ]
            ),
            Option(
              name: '--private-link-resource',
              description: 'The resource ID of the origin that will be connected to using the private link',
              args: [
                Arg(
                name: 'private-link-resourc'
              )
              ]
            ),
            Option(
              name: '--private-link-sub-resource-type',
              description: 'The sub-resource type of the origin that will be connected to using the private link.You can use "az network private-link-resource list" to obtain the supported sub-resource types',
              args: [
                Arg(
                name: 'private-link-sub-resource-typ'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--weight',
              description: 'Weight of the origin in given origin group for load balancing. Must be between 1 and 1000',
              args: [
                Arg(
                name: 'weigh'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'origin-group',
      description: 'Manage origin groups under the specified profile.\n\n\t\tAn origin group is a set of origins to which Front Door load balances your client requests',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new origin group within the specified profile',
          options: [

            Option(
              name: '--additional-latency-in-milliseconds',
              description: 'The additional latency in milliseconds for probes to fall into the lowest latency bucket',
              args: [
                Arg(
                name: 'additional-latency-in-millisecond'
              )
              ]
            ),
            Option(
              name: '--origin-group-name',
              description: 'Name of the origin group',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--probe-path',
              description: 'The path relative to the origin that is used to determine the health of the origin',
              args: [
                Arg(
                name: 'probe-pat'
              )
              ]
            ),
            Option(
              name: '--probe-protocol',
              description: 'Protocol to use for health probe',
              args: [
                Arg(
                name: 'probe-protocol',
                suggestions: [

                  FigSuggestion(name: 'Http'),
                  FigSuggestion(name: 'Https'),
                  FigSuggestion(name: 'NotSet')
                ]
              )
              ]
            ),
            Option(
              name: '--probe-request-type',
              description: 'The type of health probe request that is made',
              args: [
                Arg(
                name: 'probe-request-type',
                suggestions: [

                  FigSuggestion(name: 'GET'),
                  FigSuggestion(name: 'HEAD'),
                  FigSuggestion(name: 'NotSet')
                ]
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--sample-size',
              description: 'The number of samples to consider for load balancing decisions',
              args: [
                Arg(
                name: 'sample-siz'
              )
              ]
            ),
            Option(
              name: '--successful-samples-required',
              description: 'The number of samples within the sample period that must succeed',
              args: [
                Arg(
                name: 'successful-samples-require'
              )
              ]
            ),
            Option(
              name: '--probe-interval-in-seconds',
              description: 'The number of seconds between health probes',
              args: [
                Arg(
                name: 'probe-interval-in-second'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing origin group within the specified profile',
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
              name: '--origin-group-name',
              description: 'Name of the origin group',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Lists all of the existing origin groups within a profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Gets an existing origin group within a profile',
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
              name: '--origin-group-name',
              description: 'Name of the origin group',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Updates an existing origin group within the specified profile',
          options: [

            Option(
              name: '--additional-latency-in-milliseconds',
              description: 'The additional latency in milliseconds for probes to fall into the lowest latency bucket',
              args: [
                Arg(
                name: 'additional-latency-in-millisecond'
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
              name: '--origin-group-name',
              description: 'Name of the origin group',
              args: [
                Arg(
                name: 'origin-group-nam'
              )
              ]
            ),
            Option(
              name: '--probe-interval-in-seconds',
              description: 'The number of seconds between health probes',
              args: [
                Arg(
                name: 'probe-interval-in-second'
              )
              ]
            ),
            Option(
              name: '--probe-path',
              description: 'The path relative to the origin that is used to determine the health of the origin',
              args: [
                Arg(
                name: 'probe-pat'
              )
              ]
            ),
            Option(
              name: '--probe-protocol',
              description: 'Protocol to use for health probe',
              args: [
                Arg(
                name: 'probe-protocol',
                suggestions: [

                  FigSuggestion(name: 'Http'),
                  FigSuggestion(name: 'Https'),
                  FigSuggestion(name: 'NotSet')
                ]
              )
              ]
            ),
            Option(
              name: '--probe-request-type',
              description: 'The type of health probe request that is made',
              args: [
                Arg(
                name: 'probe-request-type',
                suggestions: [

                  FigSuggestion(name: 'GET'),
                  FigSuggestion(name: 'HEAD'),
                  FigSuggestion(name: 'NotSet')
                ]
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--sample-size',
              description: 'The number of samples to consider for load balancing decisions',
              args: [
                Arg(
                name: 'sample-siz'
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
              name: '--successful-samples-required',
              description: 'The number of samples within the sample period that must succeed',
              args: [
                Arg(
                name: 'successful-samples-require'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'profile',
      description: 'Manage AFD profiles',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new AFD profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              description: 'The pricing tier of the AFD profile',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Premium_AzureFrontDoor'),
                  FigSuggestion(name: 'Standard_AzureFrontDoor')
                ]
              )
              ]
            ),
            Option(
              name: '--origin-response-timeout-seconds',
              description: 'Send and receive timeout on forwarding request to the origin. When timeout is reached, the request fails and returns',
              args: [
                Arg(
                name: 'origin-response-timeout-second'
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
          description: 'Delete an AFD profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'List AFD profiles',
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
          description: 'Show details of an AFD profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Update an AFD profile',
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
              name: '--origin-response-timeout-seconds',
              description: 'Send and receive timeout on forwarding request to the origin. When timeout is reached, the request fails and returns',
              args: [
                Arg(
                name: 'origin-response-timeout-second'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'usage',
          description: 'List resource usage within the specific AFD profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
      name: 'route',
      description: 'Manage routes under an AFD endpoint.\n\n\t\tA route maps your domains and matching URL path patterns to a specific origin group',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new route within the specified endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--forwarding-protocol',
              description: 'Protocol this rule will use when forwarding traffic to backends',
              args: [
                Arg(
                name: 'forwarding-protocol',
                suggestions: [

                  FigSuggestion(name: 'HttpOnly'),
                  FigSuggestion(name: 'HttpsOnly'),
                  FigSuggestion(name: 'MatchRequest')
                ]
              )
              ]
            ),
            Option(
              name: '--https-redirect',
              description: 'Whether to automatically redirect HTTP traffic to HTTPS traffic',
              args: [
                Arg(
                name: 'https-redirect',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--origin-group',
              description: 'Name or ID of the origin group to be associated with',
              args: [
                Arg(
                name: 'origin-grou'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--route-name',
              description: 'Name of the route',
              args: [
                Arg(
                name: 'route-nam'
              )
              ]
            ),
            Option(
              name: '--supported-protocols',
              description: 'List of supported protocols for this route',
              args: [
                Arg(
                name: 'supported-protocols',
                suggestions: [

                  FigSuggestion(name: 'Http'),
                  FigSuggestion(name: 'Https')
                ]
              )
              ]
            ),
            Option(
              name: '--content-types-to-compress',
              description: 'List of content types on which compression applies. The value should be a valid MIME type',
              args: [
                Arg(
                name: 'content-types-to-compres'
              )
              ]
            ),
            Option(
              name: '--custom-domains',
              description: 'Custom domains referenced by this endpoint',
              args: [
                Arg(
                name: 'custom-domain'
              )
              ]
            ),
            Option(
              name: '--enable-caching',
              description: 'Indicates whether caching is enanbled on that route'
            ),
            Option(
              name: '--enable-compression',
              description: 'Indicates whether content compression is enabled on AzureFrontDoor. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won\'t be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB'
            ),
            Option(
              name: '--enabled-state',
              description: 'Whether to enable this route',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--link-to-default-domain',
              description: 'Whether this route will be linked to the default endpoint domain',
              args: [
                Arg(
                name: 'link-to-default-domain',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--origin-path',
              description: 'A directory path on the origin that Azure Front Door can use to retrieve content from',
              args: [
                Arg(
                name: 'origin-pat'
              )
              ]
            ),
            Option(
              name: '--patterns-to-match',
              description: 'The route patterns of the rule',
              args: [
                Arg(
                name: 'patterns-to-matc'
              )
              ]
            ),
            Option(
              name: '--query-parameters',
              description: 'Query parameters to include or exclude',
              args: [
                Arg(
                name: 'query-parameter'
              )
              ]
            ),
            Option(
              name: '--query-string-caching-behavior',
              description: 'Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL',
              args: [
                Arg(
                name: 'query-string-caching-behavior',
                suggestions: [

                  FigSuggestion(name: 'IgnoreQueryString'),
                  FigSuggestion(name: 'IgnoreSpecifiedQueryStrings'),
                  FigSuggestion(name: 'IncludeSpecifiedQueryStrings'),
                  FigSuggestion(name: 'UseQueryString')
                ]
              )
              ]
            ),
            Option(
              name: '--rule-sets',
              description: 'Collection of ID or name of rule set referenced by the route',
              args: [
                Arg(
                name: 'rule-set'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing route within the specified endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--route-name',
              description: 'Name of the route',
              args: [
                Arg(
                name: 'route-nam'
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
          description: 'List all the routes within the specified endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Show route details',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--route-name',
              description: 'Name of the route',
              args: [
                Arg(
                name: 'route-nam'
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
          description: 'Update an existing route within the specified endpoint',
          options: [

            Option(
              name: '--content-types-to-compress',
              description: 'List of content types on which compression applies. The value should be a valid MIME type',
              args: [
                Arg(
                name: 'content-types-to-compres'
              )
              ]
            ),
            Option(
              name: '--custom-domains',
              description: 'Custom domains referenced by this endpoint',
              args: [
                Arg(
                name: 'custom-domain'
              )
              ]
            ),
            Option(
              name: '--enable-caching',
              description: 'Indicates whether caching is enanbled on that route',
              args: [
                Arg(
                name: 'enable-caching',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-compression',
              description: 'Indicates whether content compression is enabled on AzureFrontDoor. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won\'t be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB',
              args: [
                Arg(
                name: 'enable-compression',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enabled-state',
              description: 'Whether to enable this route',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--forwarding-protocol',
              description: 'Protocol this rule will use when forwarding traffic to backends',
              args: [
                Arg(
                name: 'forwarding-protocol',
                suggestions: [

                  FigSuggestion(name: 'HttpOnly'),
                  FigSuggestion(name: 'HttpsOnly'),
                  FigSuggestion(name: 'MatchRequest')
                ]
              )
              ]
            ),
            Option(
              name: '--https-redirect',
              description: 'Whether to automatically redirect HTTP traffic to HTTPS traffic',
              args: [
                Arg(
                name: 'https-redirect',
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
              name: '--link-to-default-domain',
              description: 'Whether this route will be linked to the default endpoint domain',
              args: [
                Arg(
                name: 'link-to-default-domain',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--origin-group',
              description: 'Name or ID of the origin group to be associated with',
              args: [
                Arg(
                name: 'origin-grou'
              )
              ]
            ),
            Option(
              name: '--origin-path',
              description: 'A directory path on the origin that Azure Front Door can use to retrieve content from',
              args: [
                Arg(
                name: 'origin-pat'
              )
              ]
            ),
            Option(
              name: '--patterns-to-match',
              description: 'The route patterns of the rule',
              args: [
                Arg(
                name: 'patterns-to-matc'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            ),
            Option(
              name: '--query-parameters',
              description: 'Query parameters to include or exclude',
              args: [
                Arg(
                name: 'query-parameter'
              )
              ]
            ),
            Option(
              name: '--query-string-caching-behavior',
              description: 'Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL',
              args: [
                Arg(
                name: 'query-string-caching-behavior',
                suggestions: [

                  FigSuggestion(name: 'IgnoreQueryString'),
                  FigSuggestion(name: 'IgnoreSpecifiedQueryStrings'),
                  FigSuggestion(name: 'IncludeSpecifiedQueryStrings'),
                  FigSuggestion(name: 'UseQueryString')
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
              name: '--route-name',
              description: 'Name of the route',
              args: [
                Arg(
                name: 'route-nam'
              )
              ]
            ),
            Option(
              name: '--rule-sets',
              description: 'Collection of ID or name of rule set referenced by the route',
              args: [
                Arg(
                name: 'rule-set'
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
              name: '--supported-protocols',
              description: 'List of supported protocols for this route',
              args: [
                Arg(
                name: 'supported-protocols',
                suggestions: [

                  FigSuggestion(name: 'Http'),
                  FigSuggestion(name: 'Https')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rule',
      description: 'Manage delivery rules within the specified rule set',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new delivery rule within the specified rule set',
          options: [

            Option(
              name: '--action-name',
              description: 'The name of the action for the delivery rule: https://docs.microsoft.com/en-us/azure/frontdoor/front-door-rules-engine-actions',
              args: [
                Arg(
                name: 'action-name',
                suggestions: [

                  FigSuggestion(name: 'ModifyRequestHeader'),
                  FigSuggestion(name: 'ModifyResponseHeader'),
                  FigSuggestion(name: 'RouteConfigurationOverride'),
                  FigSuggestion(name: 'UrlRedirect'),
                  FigSuggestion(name: 'UrlRewrite')
                ]
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lower order will be applied before one with a higher order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied',
              args: [
                Arg(
                name: 'orde'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--rule-name',
              description: 'Name of the rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: '--rule-set-name',
              description: 'Name of the rule set',
              args: [
                Arg(
                name: 'rule-set-nam'
              )
              ]
            ),
            Option(
              name: '--cache-behavior',
              description: 'Caching behavior for the requests',
              args: [
                Arg(
                name: 'cache-behavior',
                suggestions: [

                  FigSuggestion(name: 'HonorOrigin'),
                  FigSuggestion(name: 'OverrideAlways'),
                  FigSuggestion(name: 'OverrideIfOriginMissing')
                ]
              )
              ]
            ),
            Option(
              name: '--cache-duration',
              description: 'The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss',
              args: [
                Arg(
                name: 'cache-duratio'
              )
              ]
            ),
            Option(
              name: '--custom-fragment',
              description: 'Fragment to add to the redirect URL',
              args: [
                Arg(
                name: 'custom-fragmen'
              )
              ]
            ),
            Option(
              name: '--custom-hostname',
              description: 'Host to redirect. Leave empty to use the incoming host as the destination host',
              args: [
                Arg(
                name: 'custom-hostnam'
              )
              ]
            ),
            Option(
              name: '--custom-path',
              description: 'The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path',
              args: [
                Arg(
                name: 'custom-pat'
              )
              ]
            ),
            Option(
              name: '--custom-querystring',
              description: 'The set of query strings to be placed in the redirect URL. leave empty to preserve the incoming query string',
              args: [
                Arg(
                name: 'custom-querystrin'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'The destination path to be used in the rewrite',
              args: [
                Arg(
                name: 'destinatio'
              )
              ]
            ),
            Option(
              name: '--enable-caching',
              description: 'Indicates whether to enable caching on the route',
              args: [
                Arg(
                name: 'enable-caching',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-compression',
              description: 'Indicates whether content compression is enabled on AzureFrontDoor. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won\'t be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB',
              args: [
                Arg(
                name: 'enable-compression',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--forwarding-protocol',
              description: 'Protocol this rule will use when forwarding traffic to backends',
              args: [
                Arg(
                name: 'forwarding-protocol',
                suggestions: [

                  FigSuggestion(name: 'HttpOnly'),
                  FigSuggestion(name: 'HttpsOnly'),
                  FigSuggestion(name: 'MatchRequest')
                ]
              )
              ]
            ),
            Option(
              name: '--header-action',
              description: 'Header action for the requests',
              args: [
                Arg(
                name: 'header-action',
                suggestions: [

                  FigSuggestion(name: 'Append'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Overwrite')
                ]
              )
              ]
            ),
            Option(
              name: '--header-name',
              description: 'Name of the header to modify',
              args: [
                Arg(
                name: 'header-nam'
              )
              ]
            ),
            Option(
              name: '--header-value',
              description: 'Value of the header',
              args: [
                Arg(
                name: 'header-valu'
              )
              ]
            ),
            Option(
              name: '--match-processing-behavior',
              description: 'Indicate whether rules engine should continue to run the remaining rules or stop if matched. Defaults to Continue',
              args: [
                Arg(
                name: 'match-processing-behavior',
                suggestions: [

                  FigSuggestion(name: 'Continue'),
                  FigSuggestion(name: 'Stop')
                ]
              )
              ]
            ),
            Option(
              name: '--match-values',
              description: 'Match values of the match condition. e.g, space separated values "GET" "HTTP"',
              args: [
                Arg(
                name: 'match-value'
              )
              ]
            ),
            Option(
              name: '--match-variable',
              description: 'Name of the match condition: https://docs.microsoft.com/en-us/azure/frontdoor/rules-match-conditions',
              args: [
                Arg(
                name: 'match-variable',
                suggestions: [

                  FigSuggestion(name: 'ClientPort'),
                  FigSuggestion(name: 'Cookies'),
                  FigSuggestion(name: 'HostName'),
                  FigSuggestion(name: 'HttpVersion'),
                  FigSuggestion(name: 'IsDevice'),
                  FigSuggestion(name: 'PostArgs'),
                  FigSuggestion(name: 'QueryString'),
                  FigSuggestion(name: 'RemoteAddress'),
                  FigSuggestion(name: 'RequestBody'),
                  FigSuggestion(name: 'RequestHeader'),
                  FigSuggestion(name: 'RequestMethod'),
                  FigSuggestion(name: 'RequestScheme'),
                  FigSuggestion(name: 'RequestUri'),
                  FigSuggestion(name: 'ServerPort'),
                  FigSuggestion(name: 'SocketAddr'),
                  FigSuggestion(name: 'SslProtocol'),
                  FigSuggestion(name: 'UrlFileExtension'),
                  FigSuggestion(name: 'UrlFileName'),
                  FigSuggestion(name: 'UrlPath')
                ]
              )
              ]
            ),
            Option(
              name: '--negate-condition',
              description: 'If true, negates the condition',
              args: [
                Arg(
                name: 'negate-condition',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--operator',
              description: 'Operator of the match condition',
              args: [
                Arg(
                name: 'operato'
              )
              ]
            ),
            Option(
              name: '--origin-group',
              description: 'Name or ID of the OriginGroup that would override the default OriginGroup',
              args: [
                Arg(
                name: 'origin-grou'
              )
              ]
            ),
            Option(
              name: '--preserve-unmatched-path',
              description: 'If True, the remaining path after the source pattern will be appended to the new destination path',
              args: [
                Arg(
                name: 'preserve-unmatched-path',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--query-parameters',
              description: 'Query parameters to include or exclude',
              args: [
                Arg(
                name: 'query-parameter'
              )
              ]
            ),
            Option(
              name: '--query-string-caching-behavior',
              description: 'Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL',
              args: [
                Arg(
                name: 'query-string-caching-behavior',
                suggestions: [

                  FigSuggestion(name: 'IgnoreQueryString'),
                  FigSuggestion(name: 'IgnoreSpecifiedQueryStrings'),
                  FigSuggestion(name: 'IncludeSpecifiedQueryStrings'),
                  FigSuggestion(name: 'UseQueryString')
                ]
              )
              ]
            ),
            Option(
              name: '--redirect-protocol',
              description: 'Protocol to use for the redirect',
              args: [
                Arg(
                name: 'redirect-protocol',
                suggestions: [

                  FigSuggestion(name: 'Http'),
                  FigSuggestion(name: 'Https'),
                  FigSuggestion(name: 'MatchRequest')
                ]
              )
              ]
            ),
            Option(
              name: '--redirect-type',
              description: 'The redirect type the rule will use when redirecting traffic',
              args: [
                Arg(
                name: 'redirect-type',
                suggestions: [

                  FigSuggestion(name: 'Found'),
                  FigSuggestion(name: 'Moved'),
                  FigSuggestion(name: 'PermanentRedirect'),
                  FigSuggestion(name: 'TemporaryRedirect')
                ]
              )
              ]
            ),
            Option(
              name: '--selector',
              description: 'Selector of the match condition',
              args: [
                Arg(
                name: 'selecto'
              )
              ]
            ),
            Option(
              name: '--source-pattern',
              description: 'A request URI pattern that identifies the type of requests that may be rewritten',
              args: [
                Arg(
                name: 'source-patter'
              )
              ]
            ),
            Option(
              name: '--transforms',
              description: 'Transform to apply before matching',
              args: [
                Arg(
                name: 'transforms',
                suggestions: [

                  FigSuggestion(name: 'Lowercase'),
                  FigSuggestion(name: 'RemoveNulls'),
                  FigSuggestion(name: 'Trim'),
                  FigSuggestion(name: 'Uppercase'),
                  FigSuggestion(name: 'UrlDecode'),
                  FigSuggestion(name: 'UrlEncode')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Remove a delivery rule from rule set',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--rule-name',
              description: 'Name of the rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: '--rule-set-name',
              description: 'Name of the rule set',
              args: [
                Arg(
                name: 'rule-set-nam'
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
          description: 'Lists all of the existing delivery rules within a rule set',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--rule-set-name',
              description: 'Name of the rule set',
              args: [
                Arg(
                name: 'rule-set-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show delivery rule details',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--rule-name',
              description: 'Name of the rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: '--rule-set-name',
              description: 'Name of the rule set',
              args: [
                Arg(
                name: 'rule-set-nam'
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
          name: 'action',
          description: 'Manage delivery rule actions for a rule',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an action to a delivery rule',
              options: [

                Option(
                  name: '--action-name',
                  description: 'The name of the action for the delivery rule: https://docs.microsoft.com/en-us/azure/frontdoor/front-door-rules-engine-actions',
                  args: [
                    Arg(
                    name: 'action-name',
                    suggestions: [

                      FigSuggestion(name: 'ModifyRequestHeader'),
                      FigSuggestion(name: 'ModifyResponseHeader'),
                      FigSuggestion(name: 'RouteConfigurationOverride'),
                      FigSuggestion(name: 'UrlRedirect'),
                      FigSuggestion(name: 'UrlRewrite')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cache-behavior',
                  description: 'Caching behavior for the requests',
                  args: [
                    Arg(
                    name: 'cache-behavior',
                    suggestions: [

                      FigSuggestion(name: 'HonorOrigin'),
                      FigSuggestion(name: 'OverrideAlways'),
                      FigSuggestion(name: 'OverrideIfOriginMissing')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cache-duration',
                  description: 'The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss',
                  args: [
                    Arg(
                    name: 'cache-duratio'
                  )
                  ]
                ),
                Option(
                  name: '--custom-fragment',
                  description: 'Fragment to add to the redirect URL',
                  args: [
                    Arg(
                    name: 'custom-fragmen'
                  )
                  ]
                ),
                Option(
                  name: '--custom-hostname',
                  description: 'Host to redirect. Leave empty to use the incoming host as the destination host',
                  args: [
                    Arg(
                    name: 'custom-hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--custom-path',
                  description: 'The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path',
                  args: [
                    Arg(
                    name: 'custom-pat'
                  )
                  ]
                ),
                Option(
                  name: '--custom-querystring',
                  description: 'The set of query strings to be placed in the redirect URL. leave empty to preserve the incoming query string',
                  args: [
                    Arg(
                    name: 'custom-querystrin'
                  )
                  ]
                ),
                Option(
                  name: '--destination',
                  description: 'The destination path to be used in the rewrite',
                  args: [
                    Arg(
                    name: 'destinatio'
                  )
                  ]
                ),
                Option(
                  name: '--enable-caching',
                  description: 'Indicates whether to enable caching on the route',
                  args: [
                    Arg(
                    name: 'enable-caching',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-compression',
                  description: 'Indicates whether content compression is enabled on AzureFrontDoor. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won\'t be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB',
                  args: [
                    Arg(
                    name: 'enable-compression',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--forwarding-protocol',
                  description: 'Protocol this rule will use when forwarding traffic to backends',
                  args: [
                    Arg(
                    name: 'forwarding-protocol',
                    suggestions: [

                      FigSuggestion(name: 'HttpOnly'),
                      FigSuggestion(name: 'HttpsOnly'),
                      FigSuggestion(name: 'MatchRequest')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--header-action',
                  description: 'Header action for the requests',
                  args: [
                    Arg(
                    name: 'header-action',
                    suggestions: [

                      FigSuggestion(name: 'Append'),
                      FigSuggestion(name: 'Delete'),
                      FigSuggestion(name: 'Overwrite')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--header-name',
                  description: 'Name of the header to modify',
                  args: [
                    Arg(
                    name: 'header-nam'
                  )
                  ]
                ),
                Option(
                  name: '--header-value',
                  description: 'Value of the header',
                  args: [
                    Arg(
                    name: 'header-valu'
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
                  name: '--origin-group',
                  description: 'Name or ID of the OriginGroup that would override the default OriginGroup',
                  args: [
                    Arg(
                    name: 'origin-grou'
                  )
                  ]
                ),
                Option(
                  name: '--preserve-unmatched-path',
                  description: 'If True, the remaining path after the source pattern will be appended to the new destination path',
                  args: [
                    Arg(
                    name: 'preserve-unmatched-path',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--query-parameters',
                  description: 'Query parameters to include or exclude',
                  args: [
                    Arg(
                    name: 'query-parameter'
                  )
                  ]
                ),
                Option(
                  name: '--query-string-caching-behavior',
                  description: 'Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL',
                  args: [
                    Arg(
                    name: 'query-string-caching-behavior',
                    suggestions: [

                      FigSuggestion(name: 'IgnoreQueryString'),
                      FigSuggestion(name: 'IgnoreSpecifiedQueryStrings'),
                      FigSuggestion(name: 'IncludeSpecifiedQueryStrings'),
                      FigSuggestion(name: 'UseQueryString')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--redirect-protocol',
                  description: 'Protocol to use for the redirect',
                  args: [
                    Arg(
                    name: 'redirect-protocol',
                    suggestions: [

                      FigSuggestion(name: 'Http'),
                      FigSuggestion(name: 'Https'),
                      FigSuggestion(name: 'MatchRequest')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--redirect-type',
                  description: 'The redirect type the rule will use when redirecting traffic',
                  args: [
                    Arg(
                    name: 'redirect-type',
                    suggestions: [

                      FigSuggestion(name: 'Found'),
                      FigSuggestion(name: 'Moved'),
                      FigSuggestion(name: 'PermanentRedirect'),
                      FigSuggestion(name: 'TemporaryRedirect')
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
                  name: '--rule-name',
                  description: 'Name of the rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rule-set-name',
                  description: 'Name of the rule set',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
                  )
                  ]
                ),
                Option(
                  name: '--source-pattern',
                  description: 'A request URI pattern that identifies the type of requests that may be rewritten',
                  args: [
                    Arg(
                    name: 'source-patter'
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
              description: 'Show actions associated with the rule',
              options: [

                Option(
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
                  name: '--rule-name',
                  description: 'Name of the rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rule-set-name',
                  description: 'Name of the rule set',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove an action from a delivery rule',
              options: [

                Option(
                  name: '--index',
                  description: 'The index of the condition/action',
                  args: [
                    Arg(
                    name: 'inde'
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
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
                  name: '--rule-name',
                  description: 'Name of the rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rule-set-name',
                  description: 'Name of the rule set',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
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
          name: 'condition',
          description: 'Manage delivery rule conditions for a rule',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a condition to a delivery rule',
              options: [

                Option(
                  name: '--match-variable',
                  description: 'Name of the match condition: https://docs.microsoft.com/en-us/azure/frontdoor/rules-match-conditions',
                  args: [
                    Arg(
                    name: 'match-variable',
                    suggestions: [

                      FigSuggestion(name: 'ClientPort'),
                      FigSuggestion(name: 'Cookies'),
                      FigSuggestion(name: 'HostName'),
                      FigSuggestion(name: 'HttpVersion'),
                      FigSuggestion(name: 'IsDevice'),
                      FigSuggestion(name: 'PostArgs'),
                      FigSuggestion(name: 'QueryString'),
                      FigSuggestion(name: 'RemoteAddress'),
                      FigSuggestion(name: 'RequestBody'),
                      FigSuggestion(name: 'RequestHeader'),
                      FigSuggestion(name: 'RequestMethod'),
                      FigSuggestion(name: 'RequestScheme'),
                      FigSuggestion(name: 'RequestUri'),
                      FigSuggestion(name: 'ServerPort'),
                      FigSuggestion(name: 'SocketAddr'),
                      FigSuggestion(name: 'SslProtocol'),
                      FigSuggestion(name: 'UrlFileExtension'),
                      FigSuggestion(name: 'UrlFileName'),
                      FigSuggestion(name: 'UrlPath')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--operator',
                  description: 'Operator of the match condition',
                  args: [
                    Arg(
                    name: 'operato'
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
                  name: '--match-values',
                  description: 'Match values of the match condition. e.g, space separated values "GET" "HTTP"',
                  args: [
                    Arg(
                    name: 'match-value'
                  )
                  ]
                ),
                Option(
                  name: '--negate-condition',
                  description: 'If true, negates the condition',
                  args: [
                    Arg(
                    name: 'negate-condition',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
                  name: '--rule-name',
                  description: 'Name of the rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rule-set-name',
                  description: 'Name of the rule set',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
                  )
                  ]
                ),
                Option(
                  name: '--selector',
                  description: 'Selector of the match condition',
                  args: [
                    Arg(
                    name: 'selecto'
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
                  name: '--transforms',
                  description: 'Transform to apply before matching',
                  args: [
                    Arg(
                    name: 'transforms',
                    suggestions: [

                      FigSuggestion(name: 'Lowercase'),
                      FigSuggestion(name: 'RemoveNulls'),
                      FigSuggestion(name: 'Trim'),
                      FigSuggestion(name: 'Uppercase'),
                      FigSuggestion(name: 'UrlDecode'),
                      FigSuggestion(name: 'UrlEncode')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Show condtions associated with the rule',
              options: [

                Option(
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
                  name: '--rule-name',
                  description: 'Name of the rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rule-set-name',
                  description: 'Name of the rule set',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a condition from a delivery rule',
              options: [

                Option(
                  name: '--index',
                  description: 'The index of the condition/action',
                  args: [
                    Arg(
                    name: 'inde'
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
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
                  name: '--rule-name',
                  description: 'Name of the rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rule-set-name',
                  description: 'Name of the rule set',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
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
      name: 'rule-set',
      description: 'Manage rule set for the specified profile.\n\n\t\tRules Set allows you to customize how HTTP requests are handled at the edge and provides more controls of the behaviors of your web application',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new rule set under the specified profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--rule-set-name',
              description: 'Name of the rule set',
              args: [
                Arg(
                name: 'rule-set-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the rule set',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--rule-set-name',
              description: 'Name of the rule set',
              args: [
                Arg(
                name: 'rule-set-nam'
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
          description: 'Lists existing AzureFrontDoor rule sets within a profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Gets an existing AzureFrontDoor rule set with the specified rule set name under the specified subscription, resource group and profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--rule-set-name',
              description: 'Name of the rule set',
              args: [
                Arg(
                name: 'rule-set-nam'
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
      name: 'secret',
      description: 'Manage secrets within the specified profile.\n\n\t\tSecrets are used to reference your own certificate stored in Azure Key Vault. You must specifiy the secret name when creating custom domain if you want to use your own certificate for TLS encryption',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new secret within the specified profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--secret-name',
              description: 'Name of the secret',
              args: [
                Arg(
                name: 'secret-nam'
              )
              ]
            ),
            Option(
              name: '--secret-source',
              description: 'Resource ID of the Azure Key Vault certificate, expected format is like /subscriptions/sub1/resourceGroups/rg1/providers/Microsoft.KeyVault/vaults/vault1/secrets/cert1',
              args: [
                Arg(
                name: 'secret-sourc'
              )
              ]
            ),
            Option(
              name: '--secret-version',
              description: 'Version of the certificate to be used',
              args: [
                Arg(
                name: 'secret-versio'
              )
              ]
            ),
            Option(
              name: '--use-latest-version',
              description: 'Whether to use the latest version for the certificate',
              args: [
                Arg(
                name: 'use-latest-version',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing Secret within profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--secret-name',
              description: 'Name of the secret',
              args: [
                Arg(
                name: 'secret-nam'
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
          description: 'Lists existing AzureFrontDoor secrets',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Gets an existing Secret within a profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--secret-name',
              description: 'Name of the secret',
              args: [
                Arg(
                name: 'secret-nam'
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
          description: 'Update an existing secret within the specified profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--secret-name',
              description: 'Name of the secret',
              args: [
                Arg(
                name: 'secret-nam'
              )
              ]
            ),
            Option(
              name: '--secret-source',
              description: 'Resource ID of the Azure Key Vault certificate, expected format is like /subscriptions/sub1/resourceGroups/rg1/providers/Microsoft.KeyVault/vaults/vault1/secrets/cert1',
              args: [
                Arg(
                name: 'secret-sourc'
              )
              ]
            ),
            Option(
              name: '--secret-version',
              description: 'Version of the certificate to be used',
              args: [
                Arg(
                name: 'secret-versio'
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
              name: '--use-latest-version',
              description: 'Whether to use the latest version for the certificate',
              args: [
                Arg(
                name: 'use-latest-version',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'security-policy',
      description: 'Manage security policies within the specified profile.\n\n\t\tSecurity policies could be used to apply a web application firewall policy to protect your web applications against OWASP top-10 vulnerabilities and block malicious bots',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new security policy within the specified profile',
          options: [

            Option(
              name: '--domains',
              description: 'The domains to associate with the WAF policy. Could either be the ID of an endpoint (default domain will be used in that case) or ID of a custom domain',
              args: [
                Arg(
                name: 'domain'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--security-policy-name',
              description: 'Name of the security policy',
              args: [
                Arg(
                name: 'security-policy-nam'
              )
              ]
            ),
            Option(
              name: '--waf-policy',
              description: 'The ID of Front Door WAF policy',
              args: [
                Arg(
                name: 'waf-polic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing security policy within profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--security-policy-name',
              description: 'Name of the security policy',
              args: [
                Arg(
                name: 'security-policy-nam'
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
          description: 'Lists security policies associated with the profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Gets an existing security policy within a profile',
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--security-policy-name',
              description: 'Name of the security policy',
              args: [
                Arg(
                name: 'security-policy-nam'
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
          description: 'Update an existing security policy within the specified profile',
          options: [

            Option(
              name: '--domains',
              description: 'The domains to associate with the WAF policy. Could either be the ID of an endpoint (default domain will be used in that case) or ID of a custom domain',
              args: [
                Arg(
                name: 'domain'
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
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--security-policy-name',
              description: 'Name of the security policy',
              args: [
                Arg(
                name: 'security-policy-nam'
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
              name: '--waf-policy',
              description: 'The ID of Front Door WAF policy',
              args: [
                Arg(
                name: 'waf-polic'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'waf-log-analytic',
      description: 'Manage afd WAF related log analytic results',
      subcommands: [

        Subcommand(
          name: 'metric',
          description: 'Manage WAF related metric statistics for AFD profile',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get Waf related log analytics report for AFD profile',
              options: [

                Option(
                  name: '--date-time-begin',
                  description: 'The start datetime',
                  args: [
                    Arg(
                    name: 'date-time-begi'
                  )
                  ]
                ),
                Option(
                  name: '--date-time-end',
                  description: 'The end datetime',
                  args: [
                    Arg(
                    name: 'date-time-en'
                  )
                  ]
                ),
                Option(
                  name: '--granularity',
                  description: 'The interval granularity',
                  args: [
                    Arg(
                    name: 'granularity',
                    suggestions: [

                      FigSuggestion(name: 'P1D'),
                      FigSuggestion(name: 'PT1H'),
                      FigSuggestion(name: 'PT5M')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--metrics',
                  description: 'Metric types to be included',
                  args: [
                    Arg(
                    name: 'metrics',
                    suggestions: [

                      FigSuggestion(name: 'clientRequestCount')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group. which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
                  name: '--actions',
                  description: 'The WAF actions to be included',
                  args: [
                    Arg(
                    name: 'actions',
                    suggestions: [

                      FigSuggestion(name: 'allow'),
                      FigSuggestion(name: 'block'),
                      FigSuggestion(name: 'log'),
                      FigSuggestion(name: 'redirect')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--group-by',
                  description: 'Aggregate demensions',
                  args: [
                    Arg(
                    name: 'group-by',
                    suggestions: [

                      FigSuggestion(name: 'customDomain'),
                      FigSuggestion(name: 'httpStatusCode')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--rule-types',
                  description: 'The WAF rule types to be included',
                  args: [
                    Arg(
                    name: 'rule-types',
                    suggestions: [

                      FigSuggestion(name: 'bot'),
                      FigSuggestion(name: 'custom'),
                      FigSuggestion(name: 'managed')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'ranking',
          description: 'Manage WAF related ranking statistics for AFD profile',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get WAF log analytics charts for AFD profile',
              options: [

                Option(
                  name: '--date-time-begin',
                  description: 'The start datetime',
                  args: [
                    Arg(
                    name: 'date-time-begi'
                  )
                  ]
                ),
                Option(
                  name: '--date-time-end',
                  description: 'The end datetime',
                  args: [
                    Arg(
                    name: 'date-time-en'
                  )
                  ]
                ),
                Option(
                  name: '--max-ranking',
                  description: 'The maximum number of rows to return based on the ranking',
                  args: [
                    Arg(
                    name: 'max-rankin'
                  )
                  ]
                ),
                Option(
                  name: '--metrics',
                  description: 'Metric types to be included',
                  args: [
                    Arg(
                    name: 'metrics',
                    suggestions: [

                      FigSuggestion(name: 'clientRequestCount')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group. which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--rankings',
                  description: 'The dimemsions to be included for ranking',
                  args: [
                    Arg(
                    name: 'rankings',
                    suggestions: [

                      FigSuggestion(name: 'action'),
                      FigSuggestion(name: 'clientIp'),
                      FigSuggestion(name: 'country'),
                      FigSuggestion(name: 'ruleGroup'),
                      FigSuggestion(name: 'ruleId'),
                      FigSuggestion(name: 'ruleType'),
                      FigSuggestion(name: 'url'),
                      FigSuggestion(name: 'userAgent')
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
                  name: '--actions',
                  description: 'The WAF actions to be included',
                  args: [
                    Arg(
                    name: 'actions',
                    suggestions: [

                      FigSuggestion(name: 'allow'),
                      FigSuggestion(name: 'block'),
                      FigSuggestion(name: 'log'),
                      FigSuggestion(name: 'redirect')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--rule-types',
                  description: 'The WAF rule types to be included',
                  args: [
                    Arg(
                    name: 'rule-types',
                    suggestions: [

                      FigSuggestion(name: 'bot'),
                      FigSuggestion(name: 'custom'),
                      FigSuggestion(name: 'managed')
                    ]
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
