// Auto-generated from TypeScript source: palo-alto.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `palo-alto` CLI
final FigSpec paloAltoSpec = FigSpec(
  name: 'palo-alto',
  description: 'Manage palo-alto networks resource',
  subcommands: [

    Subcommand(
      name: 'cloudngfw',
      description: 'Manage cloudngfw resource',
      subcommands: [

        Subcommand(
          name: 'firewall',
          description: 'Manage cloudngfw firewall resource',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a FirewallResource',
              options: [

                Option(
                  name: '--dns-settings',
                  description: 'DNS settings for Firewall Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'dns-setting'
                  )
                  ]
                ),
                Option(
                  name: ['--firewall-name', '--name', '-n'],
                  description: 'Firewall resource name',
                  args: [
                    Arg(
                    name: 'firewall-nam'
                  )
                  ]
                ),
                Option(
                  name: '--marketplace-details',
                  description: 'Marketplace details Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'marketplace-detail'
                  )
                  ]
                ),
                Option(
                  name: '--network-profile',
                  description: 'Network settings Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'network-profil'
                  )
                  ]
                ),
                Option(
                  name: '--plan-data',
                  description: 'Billing plan information. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'plan-dat'
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
                  name: '--associated-rulestack',
                  description: 'Associated Rulestack Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'associated-rulestac'
                  )
                  ]
                ),
                Option(
                  name: '--front-end-settings',
                  description: 'Frontend settings for Firewall Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'front-end-setting'
                  )
                  ]
                ),
                Option(
                  name: '--identity',
                  description: 'The managed service identities assigned to this resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'identit'
                  )
                  ]
                ),
                Option(
                  name: '--is-panorama-managed',
                  description: 'Panorama Managed: Default is False. Default will be CloudSec managed',
                  args: [
                    Arg(
                    name: 'is-panorama-managed',
                    suggestions: [

                      FigSuggestion(name: 'FALSE'),
                      FigSuggestion(name: 'TRUE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
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
                  name: '--pan-etag',
                  description: 'PanEtag info',
                  args: [
                    Arg(
                    name: 'pan-eta'
                  )
                  ]
                ),
                Option(
                  name: '--panorama-config',
                  description: 'Panorama Configuration Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'panorama-confi'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              description: 'Delete a FirewallResource',
              options: [

                Option(
                  name: ['--firewall-name', '--name', '-n'],
                  description: 'Firewall resource name',
                  args: [
                    Arg(
                    name: 'firewall-nam'
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
              description: 'List FirewallResource resources by subscription ID',
              options: [

                Option(
                  name: '--max-items',
                  description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                  args: [
                    Arg(
                    name: 'max-item'
                  )
                  ]
                ),
                Option(
                  name: '--next-token',
                  description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                  args: [
                    Arg(
                    name: 'next-toke'
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
              name: 'save-log-profile',
              description: 'Save Log Profile for Firewall',
              options: [

                Option(
                  name: '--application-insights',
                  description: 'Application Insight details Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'application-insight'
                  )
                  ]
                ),
                Option(
                  name: '--common-destination',
                  description: 'Common destination configurations Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'common-destinatio'
                  )
                  ]
                ),
                Option(
                  name: ['--decrypt-log-destination', '--decrypt-destination'],
                  description: 'Decrypt destination configurations Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'decrypt-log-destinatio'
                  )
                  ]
                ),
                Option(
                  name: ['--firewall-name', '--name', '-n'],
                  description: 'Firewall resource name',
                  args: [
                    Arg(
                    name: 'firewall-nam'
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
                  name: '--log-option',
                  description: 'Log option SAME/INDIVIDUAL',
                  args: [
                    Arg(
                    name: 'log-option',
                    suggestions: [

                      FigSuggestion(name: 'INDIVIDUAL_DESTINATION'),
                      FigSuggestion(name: 'SAME_DESTINATION')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--log-type',
                  description: 'One of possible log type',
                  args: [
                    Arg(
                    name: 'log-type',
                    suggestions: [

                      FigSuggestion(name: 'AUDIT'),
                      FigSuggestion(name: 'DECRYPTION'),
                      FigSuggestion(name: 'DLP'),
                      FigSuggestion(name: 'THREAT'),
                      FigSuggestion(name: 'TRAFFIC'),
                      FigSuggestion(name: 'WILDFIRE')
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
                  name: ['--threat-log-destination', '--threat-destination'],
                  description: 'Threat destination configurations Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'threat-log-destinatio'
                  )
                  ]
                ),
                Option(
                  name: ['--traffic-log-destination', '--traffic-destination'],
                  description: 'Traffic destination configurations Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'traffic-log-destinatio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a FirewallResource',
              options: [

                Option(
                  name: ['--firewall-name', '--name', '-n'],
                  description: 'Firewall resource name',
                  args: [
                    Arg(
                    name: 'firewall-nam'
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
              name: 'show-log-profile',
              description: 'Get Log Profile for Firewall',
              options: [

                Option(
                  name: ['--firewall-name', '--name', '-n'],
                  description: 'Firewall resource name',
                  args: [
                    Arg(
                    name: 'firewall-nam'
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
              name: 'show-support-info',
              description: 'Support info for firewall',
              options: [

                Option(
                  name: '--email',
                  description: 'Email address on behalf of which this API called',
                  args: [
                    Arg(
                    name: 'emai'
                  )
                  ]
                ),
                Option(
                  name: ['--firewall-name', '--name', '-n'],
                  description: 'Firewall resource name',
                  args: [
                    Arg(
                    name: 'firewall-nam'
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
              description: 'Update a FirewallResource',
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
                  name: ['--firewall-name', '--name', '-n'],
                  description: 'Firewall resource name',
                  args: [
                    Arg(
                    name: 'firewall-nam'
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
                  name: '--identity',
                  description: 'The managed service identities assigned to this resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
                  name: ['--firewall-name', '--name', '-n'],
                  description: 'Firewall resource name',
                  args: [
                    Arg(
                    name: 'firewall-nam'
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
                  name: '--interval',
                  description: 'Polling interval in seconds',
                  args: [
                    Arg(
                    name: 'interva'
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
              name: 'status',
              description: 'Manage cloudngfw firewall status resource',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List FirewallStatusResource resources by Firewalls',
                  options: [

                    Option(
                      name: ['--firewall-name', '--name', '-n'],
                      description: 'Firewall resource name',
                      args: [
                        Arg(
                        name: 'firewall-nam'
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
                      name: '--max-items',
                      description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                      args: [
                        Arg(
                        name: 'max-item'
                      )
                      ]
                    ),
                    Option(
                      name: '--next-token',
                      description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                      args: [
                        Arg(
                        name: 'next-toke'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'default',
                  description: 'Manage cloudngfw firewall status default resource',
                  subcommands: [

                    Subcommand(
                      name: 'show',
                      description: 'Get a FirewallStatusResource',
                      options: [

                        Option(
                          name: ['--firewall-name', '--name', '-n'],
                          description: 'Firewall resource name',
                          args: [
                            Arg(
                            name: 'firewall-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'local-rulestack',
          description: 'Manage local-rulestack resource',
          subcommands: [

            Subcommand(
              name: 'commit',
              description: 'Commit rulestack configuration',
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
                  name: '--local-rulestack-name',
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
              description: 'Create a LocalRulestackResource',
              options: [

                Option(
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
                  name: ['--associated-subscriptions', '--associated-subs'],
                  description: 'Subscription scope of global rulestack Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'associated-subscription'
                  )
                  ]
                ),
                Option(
                  name: '--default-mode',
                  description: 'Mode for default rules creation',
                  args: [
                    Arg(
                    name: 'default-mode',
                    suggestions: [

                      FigSuggestion(name: 'FIREWALL'),
                      FigSuggestion(name: 'IPS'),
                      FigSuggestion(name: 'NONE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Rulestack description',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--identity',
                  description: 'The managed service identities assigned to this resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'identit'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--min-app-id-version',
                  description: 'Minimum version',
                  args: [
                    Arg(
                    name: 'min-app-id-versio'
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
                  name: '--pan-etag',
                  description: 'PanEtag info',
                  args: [
                    Arg(
                    name: 'pan-eta'
                  )
                  ]
                ),
                Option(
                  name: '--pan-location',
                  description: 'Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks',
                  args: [
                    Arg(
                    name: 'pan-locatio'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Rulestack Type',
                  args: [
                    Arg(
                    name: 'scope',
                    suggestions: [

                      FigSuggestion(name: 'GLOBAL'),
                      FigSuggestion(name: 'LOCAL')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--security-services',
                  description: 'Security Profile Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'security-service'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              description: 'Delete a LocalRulestackResource',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
              description: 'List LocalRulestackResource resources by subscription ID',
              options: [

                Option(
                  name: '--max-items',
                  description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                  args: [
                    Arg(
                    name: 'max-item'
                  )
                  ]
                ),
                Option(
                  name: '--next-token',
                  description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                  args: [
                    Arg(
                    name: 'next-toke'
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
              name: 'list-advanced-security-object',
              description: 'Get the list of advanced security objects',
              options: [

                Option(
                  name: '--type',
                  description: 'LocalRulestack resource type',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'feeds'),
                      FigSuggestion(name: 'urlCustom')
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
                  name: '--skip',
                  description: 'LocalRulestack resource skip',
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
                  description: 'LocalRulestack resource top',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-app-id',
              description: 'List of AppIds for LocalRulestack ApiVersion',
              options: [

                Option(
                  name: '--app-id-version',
                  description: 'LocalRulestack resource app-id-version',
                  args: [
                    Arg(
                    name: 'app-id-versio'
                  )
                  ]
                ),
                Option(
                  name: '--app-prefix',
                  description: 'LocalRulestack resource app-prefix',
                  args: [
                    Arg(
                    name: 'app-prefi'
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
                  name: '--skip',
                  description: 'LocalRulestack resource skip',
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
                  description: 'LocalRulestack resource top',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-country',
              description: 'List of countries for Rulestack',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
                  name: '--skip',
                  description: 'LocalRulestack resource skip',
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
                  description: 'LocalRulestack resource top',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-firewall',
              description: 'List of Firewalls associated with Rulestack',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
              name: 'list-predefined-url-category',
              description: 'List predefined URL categories for rulestack',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
                  name: '--skip',
                  description: 'LocalRulestack resource skip',
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
                  description: 'LocalRulestack resource top',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-security-service',
              description: 'List the security services for rulestack',
              options: [

                Option(
                  name: '--type',
                  description: 'LocalRulestack resource type',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'antiSpyware'),
                      FigSuggestion(name: 'antiVirus'),
                      FigSuggestion(name: 'dnsSubscription'),
                      FigSuggestion(name: 'fileBlocking'),
                      FigSuggestion(name: 'ipsVulnerability'),
                      FigSuggestion(name: 'urlFiltering')
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
                  name: '--skip',
                  description: 'LocalRulestack resource skip',
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
                  description: 'LocalRulestack resource top',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'revert',
              description: 'Revert rulestack configuration',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
              description: 'Get a LocalRulestackResource',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
              name: 'show-change-log',
              description: 'Get changelog',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
              name: 'show-support-info',
              description: 'Support info for rulestack',
              options: [

                Option(
                  name: '--email',
                  description: 'Email address on behalf of which this API called',
                  args: [
                    Arg(
                    name: 'emai'
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
              description: 'Update a LocalRulestackResource',
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
                  name: '--identity',
                  description: 'The managed service identities assigned to this resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
                  name: ['--local-rulestack-name', '--name', '-n'],
                  description: 'LocalRulestack resource name',
                  args: [
                    Arg(
                    name: 'local-rulestack-nam'
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
              name: 'certificate',
              description: 'Manage local-rulestack certificate resource',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a CertificateObjectLocalRulestackResource',
                  options: [

                    Option(
                      name: [
                        '--certificate-self-signed',
                        '--certificate-signed',
                      ],
                      description: 'Use certificate self signed',
                      args: [
                        Arg(
                        name: 'certificate-self-signed',
                        suggestions: [

                          FigSuggestion(name: 'FALSE'),
                          FigSuggestion(name: 'TRUE')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Certificate name',
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
                      name: '--audit-comment',
                      description: 'Comment for this object',
                      args: [
                        Arg(
                        name: 'audit-commen'
                      )
                      ]
                    ),
                    Option(
                      name: '--certificate-signer-id',
                      description: 'Resource Id of certificate signer, to be populated only when certificateSelfSigned is false',
                      args: [
                        Arg(
                        name: 'certificate-signer-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'User description for this object',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--etag',
                      description: 'Read only string representing last create or update',
                      args: [
                        Arg(
                        name: 'eta'
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
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a CertificateObjectLocalRulestackResource',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Certificate name',
                      args: [
                        Arg(
                        name: 'nam'
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
                  description: 'List CertificateObjectLocalRulestackResource resources by LocalRulestacks',
                  options: [

                    Option(
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
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
                      name: '--max-items',
                      description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                      args: [
                        Arg(
                        name: 'max-item'
                      )
                      ]
                    ),
                    Option(
                      name: '--next-token',
                      description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                      args: [
                        Arg(
                        name: 'next-toke'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get a CertificateObjectLocalRulestackResource',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Certificate name',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Certificate name',
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
              name: 'fqdnlist',
              description: 'Manage local-rulestack fqdnlist resource',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a FqdnListLocalRulestackResource',
                  options: [

                    Option(
                      name: '--fqdn-list',
                      description: 'Fqdn list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'fqdn-lis'
                      )
                      ]
                    ),
                    Option(
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Fqdn list name',
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
                      name: '--audit-comment',
                      description: 'Comment for this object',
                      args: [
                        Arg(
                        name: 'audit-commen'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Fqdn object description',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--etag',
                      description: 'Etag info',
                      args: [
                        Arg(
                        name: 'eta'
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
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a FqdnListLocalRulestackResource',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Fqdn list name',
                      args: [
                        Arg(
                        name: 'nam'
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
                  description: 'List FqdnListLocalRulestackResource resources by LocalRulestacks',
                  options: [

                    Option(
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
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
                      name: '--max-items',
                      description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                      args: [
                        Arg(
                        name: 'max-item'
                      )
                      ]
                    ),
                    Option(
                      name: '--next-token',
                      description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                      args: [
                        Arg(
                        name: 'next-toke'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get a FqdnListLocalRulestackResource',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Fqdn list name',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Fqdn list name',
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
              name: 'local-rule',
              description: 'Manage local-rulestack local-rule resource',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a LocalRulesResource',
                  options: [

                    Option(
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--priority',
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'priorit'
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
                      description: 'Rule name',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--action-type',
                      description: 'Rule action',
                      args: [
                        Arg(
                        name: 'action-type',
                        suggestions: [

                          FigSuggestion(name: 'Allow'),
                          FigSuggestion(name: 'DenyResetBoth'),
                          FigSuggestion(name: 'DenyResetServer'),
                          FigSuggestion(name: 'DenySilent')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--applications',
                      description: 'Array of rule applications Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'application'
                      )
                      ]
                    ),
                    Option(
                      name: '--audit-comment',
                      description: 'Rule comment',
                      args: [
                        Arg(
                        name: 'audit-commen'
                      )
                      ]
                    ),
                    Option(
                      name: '--category',
                      description: 'Rule category Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'categor'
                      )
                      ]
                    ),
                    Option(
                      name: '--decryption-rule-type',
                      description: 'Enable or disable decryption',
                      args: [
                        Arg(
                        name: 'decryption-rule-type',
                        suggestions: [

                          FigSuggestion(name: 'None'),
                          FigSuggestion(name: 'SSLInboundInspection'),
                          FigSuggestion(name: 'SSLOutboundInspection')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Rule description',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--destination',
                      description: 'Destination address Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'destinatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--enable-logging',
                      description: 'Enable or disable logging',
                      args: [
                        Arg(
                        name: 'enable-logging',
                        suggestions: [

                          FigSuggestion(name: 'DISABLED'),
                          FigSuggestion(name: 'ENABLED')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--etag',
                      description: 'Etag info',
                      args: [
                        Arg(
                        name: 'eta'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--inbound-inspection-certificate',
                        '--inbound-certificate',
                      ],
                      description: 'Inbound Inspection Certificate',
                      args: [
                        Arg(
                        name: 'inbound-inspection-certificat'
                      )
                      ]
                    ),
                    Option(
                      name: '--negate-destination',
                      description: 'Cidr should not be \'any\'',
                      args: [
                        Arg(
                        name: 'negate-destination',
                        suggestions: [

                          FigSuggestion(name: 'FALSE'),
                          FigSuggestion(name: 'TRUE')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--negate-source',
                      description: 'Cidr should not be \'any\'',
                      args: [
                        Arg(
                        name: 'negate-source',
                        suggestions: [

                          FigSuggestion(name: 'FALSE'),
                          FigSuggestion(name: 'TRUE')
                        ]
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
                      name: '--protocol',
                      description: 'Any, application-default, TCP:number, UDP:number',
                      args: [
                        Arg(
                        name: 'protoco'
                      )
                      ]
                    ),
                    Option(
                      name: '--protocol-port-list',
                      description: 'Prot port list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'protocol-port-lis'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-state',
                      description: 'State of this rule',
                      args: [
                        Arg(
                        name: 'rule-state',
                        suggestions: [

                          FigSuggestion(name: 'DISABLED'),
                          FigSuggestion(name: 'ENABLED')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--source',
                      description: 'Source address Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'sourc'
                      )
                      ]
                    ),
                    Option(
                      name: '--tags',
                      description: 'Tag for rule Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
                  description: 'Delete a LocalRulesResource',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
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
                      name: '--priority',
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'priorit'
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
                  description: 'List LocalRulesResource resources by LocalRulestacks',
                  options: [

                    Option(
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
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
                      name: '--max-items',
                      description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                      args: [
                        Arg(
                        name: 'max-item'
                      )
                      ]
                    ),
                    Option(
                      name: '--next-token',
                      description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                      args: [
                        Arg(
                        name: 'next-toke'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'refresh-counter',
                  description: 'Refresh counters',
                  options: [

                    Option(
                      name: '--firewall-name',
                      description: 'Firewall resource name',
                      args: [
                        Arg(
                        name: 'firewall-nam'
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--priority',
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'priorit'
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
                  name: 'reset-counter',
                  description: 'Reset counters',
                  options: [

                    Option(
                      name: '--firewall-name',
                      description: 'Firewall resource name',
                      args: [
                        Arg(
                        name: 'firewall-nam'
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--priority',
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'priorit'
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
                  description: 'Get a LocalRulesResource',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--priority',
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'priorit'
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
                  name: 'show-counter',
                  description: 'Get counters',
                  options: [

                    Option(
                      name: '--firewall-name',
                      description: 'Firewall resource name',
                      args: [
                        Arg(
                        name: 'firewall-nam'
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--priority',
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'priorit'
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--priority',
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'priorit'
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
              name: 'prefixlist',
              description: 'Manage local-rulestack prefixlist resource',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a PrefixListResource',
                  options: [

                    Option(
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--prefix-list',
                      description: 'Prefix list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'prefix-lis'
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
                      name: '--audit-comment',
                      description: 'Comment for this object',
                      args: [
                        Arg(
                        name: 'audit-commen'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Prefix description',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--etag',
                      description: 'Etag info',
                      args: [
                        Arg(
                        name: 'eta'
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
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a PrefixListResource',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Local Rule priority',
                      args: [
                        Arg(
                        name: 'nam'
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
                  description: 'List PrefixListResource resources by LocalRulestacks',
                  options: [

                    Option(
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
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
                      name: '--max-items',
                      description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                      args: [
                        Arg(
                        name: 'max-item'
                      )
                      ]
                    ),
                    Option(
                      name: '--next-token',
                      description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                      args: [
                        Arg(
                        name: 'next-toke'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get a PrefixListResource',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Local Rule priority',
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
                      name: '--local-rulestack-name',
                      description: 'LocalRulestack resource name',
                      args: [
                        Arg(
                        name: 'local-rulestack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Local Rule priority',
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
            )
          ]
        )
      ]
    )
  ]
);
