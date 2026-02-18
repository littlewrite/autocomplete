// Auto-generated from TypeScript source: new-relic.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `new-relic` CLI
final FigSpec newRelicSpec = FigSpec(
  name: 'new-relic',
  description: 'Manage Azure NewRelic resources',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage NewRelic Account resource',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all the existing accounts',
          options: [

            Option(
              name: '--location',
              description: 'Location for NewRelic',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--user-email',
              description: 'User Email',
              args: [
                Arg(
                name: 'user-emai'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'monitor',
      description: 'Manage NewRelic Monitor resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a NewRelicMonitorResource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
              name: ['--account-creation-source', '--account-source'],
              description: 'Source of account creation',
              args: [
                Arg(
                name: 'account-creation-source',
                suggestions: [

                  FigSuggestion(name: 'LIFTR'),
                  FigSuggestion(name: 'NEWRELIC')
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
              name: ['--location', '-l'],
              description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--new-relic-account',
              description: 'MarketplaceSubscriptionStatus of the resource Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'new-relic-accoun'
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
              name: '--org-creation-source',
              description: 'Source of org creation',
              args: [
                Arg(
                name: 'org-creation-source',
                suggestions: [

                  FigSuggestion(name: 'LIFTR'),
                  FigSuggestion(name: 'NEWRELIC')
                ]
              )
              ]
            ),
            Option(
              name: '--plan-data',
              description: 'Plan details Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'plan-dat'
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
            ),
            Option(
              name: '--user-info',
              description: 'User Info Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'user-inf'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a NewRelicMonitorResource',
          options: [

            Option(
              name: '--user-email',
              description: 'User Email',
              args: [
                Arg(
                name: 'user-emai'
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'get-metric-rule',
          description: 'Get metric rules',
          options: [

            Option(
              name: '--user-email',
              description: 'User Email',
              args: [
                Arg(
                name: 'user-emai'
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'get-metric-statu',
          description: 'Get metric status',
          options: [

            Option(
              name: '--user-email',
              description: 'User Email',
              args: [
                Arg(
                name: 'user-emai'
              )
              ]
            ),
            Option(
              name: '--azure-resource-ids',
              description: 'Azure resource IDs Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'azure-resource-id'
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
          description: 'List NewRelicMonitorResource resources',
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
          name: 'list-app-service',
          description: 'List the app service resources currently being monitored by the NewRelic resource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
              name: '--user-email',
              description: 'User Email',
              args: [
                Arg(
                name: 'user-emai'
              )
              ]
            ),
            Option(
              name: '--azure-resource-ids',
              description: 'Azure resource IDs Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'azure-resource-id'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-host',
          description: 'List the compute vm resources currently being monitored by the NewRelic resource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
              name: '--user-email',
              description: 'User Email',
              args: [
                Arg(
                name: 'user-emai'
              )
              ]
            ),
            Option(
              name: '--vm-ids',
              description: 'VM resource IDs Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'vm-id'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'monitored-resource',
          description: 'List the resources currently being monitored by the NewRelic monitor resource',
          options: [

            Option(
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
          description: 'Get a NewRelicMonitorResource',
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'switch-billing',
          description: 'Switches the billing for NewRelic monitor resource',
          options: [

            Option(
              name: '--user-email',
              description: 'User Email',
              args: [
                Arg(
                name: 'user-emai'
              )
              ]
            ),
            Option(
              name: '--azure-resource-id',
              description: 'Azure resource Id',
              args: [
                Arg(
                name: 'azure-resource-i'
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
              name: '--monitor-name',
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
              )
              ]
            ),
            Option(
              name: '--organization-id',
              description: 'Organization id',
              args: [
                Arg(
                name: 'organization-i'
              )
              ]
            ),
            Option(
              name: '--plan-data',
              description: 'Plan details Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
          name: 'vm-host-payload',
          description: 'Returns the payload that needs to be passed in the request body for installing NewRelic agent on a VM',
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
              name: '--monitor-name',
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
              name: ['--monitor-name', '--name', '-n'],
              description: 'Name of the Monitors resource',
              args: [
                Arg(
                name: 'monitor-nam'
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
          name: 'tag-rule',
          description: 'Manage tag rule of a NewRelic Monitor resource',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a TagRule',
              options: [

                Option(
                  name: '--monitor-name',
                  description: 'Name of the Monitors resource',
                  args: [
                    Arg(
                    name: 'monitor-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--rule-set-name', '--name', '-n'],
                  description: 'Name of the TagRule',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
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
                  name: '--log-rules',
                  description: 'Set of rules for sending logs for the Monitor resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'log-rule'
                  )
                  ]
                ),
                Option(
                  name: '--metric-rules',
                  description: 'Set of rules for sending metrics for the Monitor resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'metric-rule'
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
              description: 'Delete a TagRule',
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
                  name: '--monitor-name',
                  description: 'Name of the Monitors resource',
                  args: [
                    Arg(
                    name: 'monitor-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--rule-set-name', '--name', '-n'],
                  description: 'Name of the TagRule',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
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
              description: 'List TagRule resources by NewRelicMonitorResource',
              options: [

                Option(
                  name: '--monitor-name',
                  description: 'Name of the Monitors resource',
                  args: [
                    Arg(
                    name: 'monitor-nam'
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
              description: 'Get a TagRule',
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
                  name: '--monitor-name',
                  description: 'Name of the Monitors resource',
                  args: [
                    Arg(
                    name: 'monitor-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--rule-set-name', '--name', '-n'],
                  description: 'Name of the TagRule',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
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
              description: 'Update a TagRule',
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
                  name: '--log-rules',
                  description: 'Set of rules for sending logs for the Monitor resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'log-rule'
                  )
                  ]
                ),
                Option(
                  name: '--metric-rules',
                  description: 'Set of rules for sending metrics for the Monitor resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'metric-rule'
                  )
                  ]
                ),
                Option(
                  name: '--monitor-name',
                  description: 'Name of the Monitors resource',
                  args: [
                    Arg(
                    name: 'monitor-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--rule-set-name', '--name', '-n'],
                  description: 'Name of the TagRule',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
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
                  name: '--monitor-name',
                  description: 'Name of the Monitors resource',
                  args: [
                    Arg(
                    name: 'monitor-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--rule-set-name', '--name', '-n'],
                  description: 'Name of the TagRule',
                  args: [
                    Arg(
                    name: 'rule-set-nam'
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
    ),
    Subcommand(
      name: 'organization',
      description: 'Manage NewRelic Organization resource',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all the existing organizations',
          options: [

            Option(
              name: '--location',
              description: 'Location for NewRelic',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--user-email',
              description: 'User Email',
              args: [
                Arg(
                name: 'user-emai'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'plan',
      description: 'Manage NewRelic Plan resource',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List plans data',
          options: [

            Option(
              name: '--account-id',
              description: 'Account Id',
              args: [
                Arg(
                name: 'account-i'
              )
              ]
            ),
            Option(
              name: '--organization-id',
              description: 'Organization Id',
              args: [
                Arg(
                name: 'organization-i'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
