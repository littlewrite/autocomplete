// Auto-generated from TypeScript source: sentinel.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sentinel` CLI
final FigSpec sentinelSpec = FigSpec(
  name: 'sentinel',
  description: 'Manage Microsoft Sentinel',
  subcommands: [

    Subcommand(
      name: 'alert-rule',
      description: 'Manage alert rule with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the alert rule',
          options: [

            Option(
              name: ['--rule-name', '--name', '-n'],
              description: 'Name of alert rule',
              args: [
                Arg(
                name: 'rule-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--fusion',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'fusio'
              )
              ]
            ),
            Option(
              name: '--ml-behavior-analytics',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'ml-behavior-analytic'
              )
              ]
            ),
            Option(
              name: '--ms-security-incident',
              description: 'Microsoft security incident creation. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'ms-security-inciden'
              )
              ]
            ),
            Option(
              name: '--nrt',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'nr'
              )
              ]
            ),
            Option(
              name: '--scheduled',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'schedule'
              )
              ]
            ),
            Option(
              name: '--threat-intelligence',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-intelligenc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the alert rule',
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
              name: ['--rule-name', '--name', '-n'],
              description: 'Name of alert rule',
              args: [
                Arg(
                name: 'rule-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all alert rules',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the alert rule',
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
              name: ['--rule-name', '--name', '-n'],
              description: 'Name of alert rule',
              args: [
                Arg(
                name: 'rule-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the alert rule',
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
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: '--fusion',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'fusio'
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
              name: '--ml-behavior-analytics',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'ml-behavior-analytic'
              )
              ]
            ),
            Option(
              name: '--ms-security-incident',
              description: 'Microsoft security incident creation. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'ms-security-inciden'
              )
              ]
            ),
            Option(
              name: ['--rule-name', '--name', '-n'],
              description: 'Name of alert rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: '--nrt',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'nr'
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
              name: '--scheduled',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'schedule'
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
              name: '--threat-intelligence',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-intelligenc'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'action',
          description: 'Manage alert rule action with sentinel',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create the action of alert rule',
              options: [

                Option(
                  name: ['--action-name', '--name', '-n'],
                  description: 'Name of action',
                  args: [
                    Arg(
                    name: 'action-nam'
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
                  description: 'Name of alert rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--etag',
                  description: 'Etag of the azure resource',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: '--logic-app-resource-id',
                  description: 'Logic App Resource Id, /subscriptions/{my-subscription}/resourceGroups/{my-resource-group}/providers/Microsoft.Logic/workflows/{my-workflow-id}',
                  args: [
                    Arg(
                    name: 'logic-app-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--trigger-uri',
                  description: 'Logic App Callback URL for this specific workflow',
                  args: [
                    Arg(
                    name: 'trigger-ur'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the action of alert rule',
              options: [

                Option(
                  name: ['--action-name', '--name', '-n'],
                  description: 'Name of action',
                  args: [
                    Arg(
                    name: 'action-nam'
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
                  name: '--rule-name',
                  description: 'Name of alert rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
              description: 'Get all actions of alert rule',
              options: [

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
                  description: 'Name of alert rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the action of alert rule',
              options: [

                Option(
                  name: ['--action-name', '--name', '-n'],
                  description: 'Name of action',
                  args: [
                    Arg(
                    name: 'action-nam'
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
                  name: '--rule-name',
                  description: 'Name of alert rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the action of alert rule',
              options: [

                Option(
                  name: ['--action-name', '--name', '-n'],
                  description: 'Name of action',
                  args: [
                    Arg(
                    name: 'action-nam'
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
                  name: '--etag',
                  description: 'Etag of the azure resource',
                  args: [
                    Arg(
                    name: 'eta'
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
                  name: '--logic-app-resource-id',
                  description: 'Logic App Resource Id, /subscriptions/{my-subscription}/resourceGroups/{my-resource-group}/providers/Microsoft.Logic/workflows/{my-workflow-id}',
                  args: [
                    Arg(
                    name: 'logic-app-resource-i'
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
                  name: '--rule-name',
                  description: 'Name of alert rule',
                  args: [
                    Arg(
                    name: 'rule-nam'
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
                  name: '--trigger-uri',
                  description: 'Logic App Callback URL for this specific workflow',
                  args: [
                    Arg(
                    name: 'trigger-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'template',
          description: 'Manage alert rule template with sentinel',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get all alert rule templates',
              options: [

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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the alert rule template',
              options: [

                Option(
                  name: ['--alert-rule-template-id', '--name', '-n'],
                  description: 'Alert rule template ID',
                  args: [
                    Arg(
                    name: 'alert-rule-template-i'
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
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
      name: 'analytics-setting',
      description: 'Manage security ml analytics setting with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the Security ML Analytics Settings',
          options: [

            Option(
              name: ['--settings-resource-name', '--name', '-n'],
              description: 'Security ML Analytics Settings resource name',
              args: [
                Arg(
                name: 'settings-resource-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--anomaly',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'anomal'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Security ML Analytics Settings',
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
              name: ['--settings-resource-name', '--name', '-n'],
              description: 'Security ML Analytics Settings resource name',
              args: [
                Arg(
                name: 'settings-resource-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all Security ML Analytics Settings',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the Security ML Analytics Settings',
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
              name: ['--settings-resource-name', '--name', '-n'],
              description: 'Security ML Analytics Settings resource name',
              args: [
                Arg(
                name: 'settings-resource-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the Security ML Analytics Settings',
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
              name: '--anomaly',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'anomal'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: ['--settings-resource-name', '--name', '-n'],
              description: 'Security ML Analytics Settings resource name',
              args: [
                Arg(
                name: 'settings-resource-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'automation-rule',
      description: 'Manage automation rule with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the automation rule',
          options: [

            Option(
              name: ['--automation-rule-name', '--name', '-n'],
              description: 'Name of automation rule',
              args: [
                Arg(
                name: 'automation-rule-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--actions',
              description: 'The actions to execute when the automation rule is triggered. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'action'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the automation rule',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'The order of execution of the automation rule',
              args: [
                Arg(
                name: 'orde'
              )
              ]
            ),
            Option(
              name: '--triggering-logic',
              description: 'Describes automation rule triggering logic. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'triggering-logi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the automation rule',
          options: [

            Option(
              name: ['--automation-rule-name', '--name', '-n'],
              description: 'Name of automation rule',
              args: [
                Arg(
                name: 'automation-rule-nam'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all automation rules',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the automation rule',
          options: [

            Option(
              name: ['--automation-rule-name', '--name', '-n'],
              description: 'Name of automation rule',
              args: [
                Arg(
                name: 'automation-rule-nam'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the automation rule',
          options: [

            Option(
              name: '--actions',
              description: 'The actions to execute when the automation rule is triggered. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'action'
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
              name: ['--automation-rule-name', '--name', '-n'],
              description: 'Name of automation rule',
              args: [
                Arg(
                name: 'automation-rule-nam'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the automation rule',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: '--order',
              description: 'The order of execution of the automation rule',
              args: [
                Arg(
                name: 'orde'
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
              name: '--triggering-logic',
              description: 'Describes automation rule triggering logic. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'triggering-logi'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'bookmark',
      description: 'Manage bookmark with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the bookmark',
          options: [

            Option(
              name: ['--bookmark-id', '--name', '-n'],
              description: 'ID of bookmark',
              args: [
                Arg(
                name: 'bookmark-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'The time the bookmark was created',
              args: [
                Arg(
                name: 'create'
              )
              ]
            ),
            Option(
              name: '--created-by',
              description: 'Describes a user that created the bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'created-b'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the bookmark',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--entity-mappings',
              description: 'Describes the entity mappings of the bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'entity-mapping'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--event-time',
              description: 'The bookmark event time',
              args: [
                Arg(
                name: 'event-tim'
              )
              ]
            ),
            Option(
              name: '--incident-info',
              description: 'Describes an incident that relates to bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'incident-inf'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'List of labels relevant to this bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--notes',
              description: 'The notes of the bookmark',
              args: [
                Arg(
                name: 'note'
              )
              ]
            ),
            Option(
              name: '--query-content',
              description: 'The query of the bookmark',
              args: [
                Arg(
                name: 'query-conten'
              )
              ]
            ),
            Option(
              name: '--query-end-time',
              description: 'The end time for the query',
              args: [
                Arg(
                name: 'query-end-tim'
              )
              ]
            ),
            Option(
              name: '--query-result',
              description: 'The query result of the bookmark',
              args: [
                Arg(
                name: 'query-resul'
              )
              ]
            ),
            Option(
              name: '--query-start-time',
              description: 'The start time for the query',
              args: [
                Arg(
                name: 'query-start-tim'
              )
              ]
            ),
            Option(
              name: '--tactics',
              description: 'A list of relevant mitre attacks Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tactic'
              )
              ]
            ),
            Option(
              name: '--techniques',
              description: 'A list of relevant mitre techniques Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'technique'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'The last time the bookmark was updated',
              args: [
                Arg(
                name: 'update'
              )
              ]
            ),
            Option(
              name: '--updated-by',
              description: 'Describes a user that updated the bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'updated-b'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the bookmark',
          options: [

            Option(
              name: ['--bookmark-id', '--name', '-n'],
              description: 'ID of bookmark',
              args: [
                Arg(
                name: 'bookmark-i'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          name: 'expand',
          description: 'Expand an bookmark',
          options: [

            Option(
              name: ['--bookmark-id', '--name', '-n'],
              description: 'ID of bookmark',
              args: [
                Arg(
                name: 'bookmark-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--end-time',
              description: 'The end date filter, so the only expansion results returned are before this date',
              args: [
                Arg(
                name: 'end-tim'
              )
              ]
            ),
            Option(
              name: '--expansion-id',
              description: 'The Id of the expansion to perform',
              args: [
                Arg(
                name: 'expansion-i'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'The start date filter, so the only expansion results returned are after this date',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get all bookmarks',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a bookmark',
          options: [

            Option(
              name: ['--bookmark-id', '--name', '-n'],
              description: 'ID of bookmark',
              args: [
                Arg(
                name: 'bookmark-i'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the bookmark',
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
              name: ['--bookmark-id', '--name', '-n'],
              description: 'ID of bookmark',
              args: [
                Arg(
                name: 'bookmark-i'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'The time the bookmark was created',
              args: [
                Arg(
                name: 'create'
              )
              ]
            ),
            Option(
              name: '--created-by',
              description: 'Describes a user that created the bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'created-b'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the bookmark',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--entity-mappings',
              description: 'Describes the entity mappings of the bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'entity-mapping'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--event-time',
              description: 'The bookmark event time',
              args: [
                Arg(
                name: 'event-tim'
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
              name: '--incident-info',
              description: 'Describes an incident that relates to bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'incident-inf'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'List of labels relevant to this bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--notes',
              description: 'The notes of the bookmark',
              args: [
                Arg(
                name: 'note'
              )
              ]
            ),
            Option(
              name: '--query-content',
              description: 'The query of the bookmark',
              args: [
                Arg(
                name: 'query-conten'
              )
              ]
            ),
            Option(
              name: '--query-end-time',
              description: 'The end time for the query',
              args: [
                Arg(
                name: 'query-end-tim'
              )
              ]
            ),
            Option(
              name: '--query-result',
              description: 'The query result of the bookmark',
              args: [
                Arg(
                name: 'query-resul'
              )
              ]
            ),
            Option(
              name: '--query-start-time',
              description: 'The start time for the query',
              args: [
                Arg(
                name: 'query-start-tim'
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
              name: '--tactics',
              description: 'A list of relevant mitre attacks Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tactic'
              )
              ]
            ),
            Option(
              name: '--techniques',
              description: 'A list of relevant mitre techniques Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'technique'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'The last time the bookmark was updated',
              args: [
                Arg(
                name: 'update'
              )
              ]
            ),
            Option(
              name: '--updated-by',
              description: 'Describes a user that updated the bookmark Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'updated-b'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'relation',
          description: 'Manage bookmark relation with sentinel',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create the bookmark relation',
              options: [

                Option(
                  name: '--bookmark-id',
                  description: 'Bookmark ID',
                  args: [
                    Arg(
                    name: 'bookmark-i'
                  )
                  ]
                ),
                Option(
                  name: ['--relation-name', '--name', '-n'],
                  description: 'Relation Name',
                  args: [
                    Arg(
                    name: 'relation-nam'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--etag',
                  description: 'Etag of the azure resource',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: '--related-resource-id',
                  description: 'The resource ID of the related resource',
                  args: [
                    Arg(
                    name: 'related-resource-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the bookmark relation',
              options: [

                Option(
                  name: '--bookmark-id',
                  description: 'Bookmark ID',
                  args: [
                    Arg(
                    name: 'bookmark-i'
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
                  name: ['--relation-name', '--name', '-n'],
                  description: 'Relation Name',
                  args: [
                    Arg(
                    name: 'relation-nam'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
              description: 'Get all bookmark relations',
              options: [

                Option(
                  name: '--bookmark-id',
                  description: 'Bookmark ID',
                  args: [
                    Arg(
                    name: 'bookmark-i'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'Filters the results, based on a Boolean condition. Optional',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Sorts the results. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--skip-token',
                  description: 'Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls. Optional',
                  args: [
                    Arg(
                    name: 'skip-toke'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Returns only the first n results. Optional',
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
              description: 'Get a bookmark relation',
              options: [

                Option(
                  name: '--bookmark-id',
                  description: 'Bookmark ID',
                  args: [
                    Arg(
                    name: 'bookmark-i'
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
                  name: ['--relation-name', '--name', '-n'],
                  description: 'Relation Name',
                  args: [
                    Arg(
                    name: 'relation-nam'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the bookmark relation',
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
                  name: '--bookmark-id',
                  description: 'Bookmark ID',
                  args: [
                    Arg(
                    name: 'bookmark-i'
                  )
                  ]
                ),
                Option(
                  name: '--etag',
                  description: 'Etag of the azure resource',
                  args: [
                    Arg(
                    name: 'eta'
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
                  name: ['--relation-name', '--name', '-n'],
                  description: 'Relation Name',
                  args: [
                    Arg(
                    name: 'relation-nam'
                  )
                  ]
                ),
                Option(
                  name: '--related-resource-id',
                  description: 'The resource ID of the related resource',
                  args: [
                    Arg(
                    name: 'related-resource-i'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
      name: 'data-connector',
      description: 'Manage data connector with sentinel',
      subcommands: [

        Subcommand(
          name: 'connect',
          description: 'Connect a data connector',
          options: [

            Option(
              name: '--data-connector-id',
              description: 'Connector ID',
              args: [
                Arg(
                name: 'data-connector-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--api-key',
              description: 'The API key of the audit server',
              args: [
                Arg(
                name: 'api-ke'
              )
              ]
            ),
            Option(
              name: '--authorization-code',
              description: 'The authorization code used in OAuth 2.0 code flow to issue a token',
              args: [
                Arg(
                name: 'authorization-cod'
              )
              ]
            ),
            Option(
              name: '--client-id',
              description: 'The client id of the OAuth 2.0 application',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--client-secret',
              description: 'The client secret of the OAuth 2.0 application',
              args: [
                Arg(
                name: 'client-secre'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'Used in v2 logs connector. Represents the data collection ingestion endpoint in log analytics',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--kind',
              description: 'The authentication kind used to poll the data',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'APIKey'),
                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'OAuth2')
                ]
              )
              ]
            ),
            Option(
              name: '--output-stream',
              description: 'Used in v2 logs connector. The stream we are sending the data to, this is the name of the streamDeclarations defined in the DCR',
              args: [
                Arg(
                name: 'output-strea'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The user password in the audit log server',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--rule-immutable-id',
              description: 'Used in v2 logs connector. The data collection rule immutable id, the rule defines the transformation and data destination',
              args: [
                Arg(
                name: 'rule-immutable-i'
              )
              ]
            ),
            Option(
              name: '--user-name',
              description: 'The user name in the audit log server',
              args: [
                Arg(
                name: 'user-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create the data connector',
          options: [

            Option(
              name: ['--data-connector-id', '--name', '-n'],
              description: 'Connector ID',
              args: [
                Arg(
                name: 'data-connector-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--api-polling',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'api-pollin'
              )
              ]
            ),
            Option(
              name: '--aws-cloud-trail',
              description: 'Amazon web services cloud trail. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'aws-cloud-trai'
              )
              ]
            ),
            Option(
              name: '--aws-s3',
              description: 'Amazon web services s3. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'aws-s'
              )
              ]
            ),
            Option(
              name: '--azure-active-directory',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'azure-active-director'
              )
              ]
            ),
            Option(
              name: '--azure-protection',
              description: 'Azure advanced threat protection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'azure-protectio'
              )
              ]
            ),
            Option(
              name: '--azure-security-center',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'azure-security-cente'
              )
              ]
            ),
            Option(
              name: '--cloud-app-security',
              description: 'Microsoft cloud app security. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'cloud-app-securit'
              )
              ]
            ),
            Option(
              name: '--defender-protection',
              description: 'Microsoft defender advanced threat protection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'defender-protectio'
              )
              ]
            ),
            Option(
              name: '--dynamics365',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'dynamics36'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--generic-ui',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'generic-u'
              )
              ]
            ),
            Option(
              name: '--intelligence-taxii',
              description: 'Threat intelligence taxii. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'intelligence-taxi'
              )
              ]
            ),
            Option(
              name: '--iot',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'io'
              )
              ]
            ),
            Option(
              name: '--microsoft-intelligence',
              description: 'Microsoft threat intelligence. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'microsoft-intelligenc'
              )
              ]
            ),
            Option(
              name: '--microsoft-protection',
              description: 'Microsoft threat protection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'microsoft-protectio'
              )
              ]
            ),
            Option(
              name: '--office-atp',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office-at'
              )
              ]
            ),
            Option(
              name: '--office-irm',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office-ir'
              )
              ]
            ),
            Option(
              name: '--office-power-bi',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office-power-b'
              )
              ]
            ),
            Option(
              name: '--office365',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office36'
              )
              ]
            ),
            Option(
              name: '--office365-project',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office365-projec'
              )
              ]
            ),
            Option(
              name: '--threat-intelligence',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-intelligenc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the data connector',
          options: [

            Option(
              name: ['--data-connector-id', '--name', '-n'],
              description: 'Connector ID',
              args: [
                Arg(
                name: 'data-connector-i'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          name: 'disconnect',
          description: 'Disconnect a data connector',
          options: [

            Option(
              name: '--data-connector-id',
              description: 'Connector ID',
              args: [
                Arg(
                name: 'data-connector-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get all data connectors',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a data connector',
          options: [

            Option(
              name: ['--data-connector-id', '--name', '-n'],
              description: 'Connector ID',
              args: [
                Arg(
                name: 'data-connector-i'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the data connector',
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
              name: '--api-polling',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'api-pollin'
              )
              ]
            ),
            Option(
              name: '--aws-cloud-trail',
              description: 'Amazon web services cloud trail. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'aws-cloud-trai'
              )
              ]
            ),
            Option(
              name: '--aws-s3',
              description: 'Amazon web services s3. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'aws-s'
              )
              ]
            ),
            Option(
              name: '--azure-active-directory',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'azure-active-director'
              )
              ]
            ),
            Option(
              name: '--azure-protection',
              description: 'Azure advanced threat protection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'azure-protectio'
              )
              ]
            ),
            Option(
              name: '--azure-security-center',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'azure-security-cente'
              )
              ]
            ),
            Option(
              name: '--cloud-app-security',
              description: 'Microsoft cloud app security. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'cloud-app-securit'
              )
              ]
            ),
            Option(
              name: ['--data-connector-id', '--name', '-n'],
              description: 'Connector ID',
              args: [
                Arg(
                name: 'data-connector-i'
              )
              ]
            ),
            Option(
              name: '--defender-protection',
              description: 'Microsoft defender advanced threat protection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'defender-protectio'
              )
              ]
            ),
            Option(
              name: '--dynamics365',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'dynamics36'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: '--generic-ui',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'generic-u'
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
              name: '--intelligence-taxii',
              description: 'Threat intelligence taxii. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'intelligence-taxi'
              )
              ]
            ),
            Option(
              name: '--iot',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'io'
              )
              ]
            ),
            Option(
              name: '--microsoft-intelligence',
              description: 'Microsoft threat intelligence. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'microsoft-intelligenc'
              )
              ]
            ),
            Option(
              name: '--microsoft-protection',
              description: 'Microsoft threat protection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'microsoft-protectio'
              )
              ]
            ),
            Option(
              name: '--office-atp',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office-at'
              )
              ]
            ),
            Option(
              name: '--office-irm',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office-ir'
              )
              ]
            ),
            Option(
              name: '--office-power-bi',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office-power-b'
              )
              ]
            ),
            Option(
              name: '--office365',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office36'
              )
              ]
            ),
            Option(
              name: '--office365-project',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'office365-projec'
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
              name: '--threat-intelligence',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-intelligenc'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'enrichment',
      description: 'Manage enrichment with sentinel',
      subcommands: [

        Subcommand(
          name: 'domain-whois',
          description: 'Manage domain whois with sentinel',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Get whois information for a single domain name',
              options: [

                Option(
                  name: '--domain',
                  description: 'Domain name to be enriched',
                  args: [
                    Arg(
                    name: 'domai'
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
          name: 'ip-geodata',
          description: 'Manage ip geodata with sentinel',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Get geodata for a single IP address',
              options: [

                Option(
                  name: '--ip-address',
                  description: 'IP address (v4 or v6) to be enriched',
                  args: [
                    Arg(
                    name: 'ip-addres'
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
      name: 'entity-query',
      description: 'Manage entity query with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the entity query',
          options: [

            Option(
              name: ['--entity-query-id', '--name', '-n'],
              description: 'Entity query ID',
              args: [
                Arg(
                name: 'entity-query-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--activity',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'activit'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the entity query',
          options: [

            Option(
              name: ['--entity-query-id', '--name', '-n'],
              description: 'Entity query ID',
              args: [
                Arg(
                name: 'entity-query-i'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all entity queries',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--kind',
              description: 'The entity query kind we want to fetch',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'Activity'),
                  FigSuggestion(name: 'Expansion')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an entity query',
          options: [

            Option(
              name: ['--entity-query-id', '--name', '-n'],
              description: 'Entity query ID',
              args: [
                Arg(
                name: 'entity-query-i'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the entity query',
          options: [

            Option(
              name: '--activity',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'activit'
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
              name: ['--entity-query-id', '--name', '-n'],
              description: 'Entity query ID',
              args: [
                Arg(
                name: 'entity-query-i'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'template',
          description: 'Manage entity query template with sentinel',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get all entity query templates',
              options: [

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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--kind',
                  description: 'The entity template query kind we want to fetch',
                  args: [
                    Arg(
                    name: 'kind',
                    suggestions: [

                      FigSuggestion(name: 'Activity')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an entity query',
              options: [

                Option(
                  name: ['--entity-query-template-id', '--name', '-n'],
                  description: 'Entity query template ID',
                  args: [
                    Arg(
                    name: 'entity-query-template-i'
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
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
      name: 'incident',
      description: 'Manage incident with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the incident',
          options: [

            Option(
              name: ['--incident-id', '--name', '-n'],
              description: 'Incident ID',
              args: [
                Arg(
                name: 'incident-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--classification',
              description: 'The reason the incident was closed',
              args: [
                Arg(
                name: 'classification',
                suggestions: [

                  FigSuggestion(name: 'BenignPositive'),
                  FigSuggestion(name: 'FalsePositive'),
                  FigSuggestion(name: 'TruePositive'),
                  FigSuggestion(name: 'Undetermined')
                ]
              )
              ]
            ),
            Option(
              name: '--classification-comment',
              description: 'Describes the reason the incident was closed',
              args: [
                Arg(
                name: 'classification-commen'
              )
              ]
            ),
            Option(
              name: '--classification-reason',
              description: 'The classification reason the incident was closed with',
              args: [
                Arg(
                name: 'classification-reason',
                suggestions: [

                  FigSuggestion(name: 'InaccurateData'),
                  FigSuggestion(name: 'IncorrectAlertLogic'),
                  FigSuggestion(name: 'SuspiciousActivity'),
                  FigSuggestion(name: 'SuspiciousButExpected')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of the incident',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--first-activity-time-utc',
              description: 'The time of the first activity in the incident',
              args: [
                Arg(
                name: 'first-activity-time-ut'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'List of labels relevant to this incident Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--last-activity-time-utc',
              description: 'The time of the last activity in the incident',
              args: [
                Arg(
                name: 'last-activity-time-ut'
              )
              ]
            ),
            Option(
              name: '--owner',
              description: 'Describes a user that the incident is assigned to Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'owne'
              )
              ]
            ),
            Option(
              name: '--provider-incident-id',
              description: 'The incident ID assigned by the incident provider',
              args: [
                Arg(
                name: 'provider-incident-i'
              )
              ]
            ),
            Option(
              name: '--provider-name',
              description: 'The name of the source provider that generated the incident',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: '--severity',
              description: 'The severity of the incident',
              args: [
                Arg(
                name: 'severity',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Informational'),
                  FigSuggestion(name: 'Low'),
                  FigSuggestion(name: 'Medium')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The status of the incident',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Closed'),
                  FigSuggestion(name: 'New')
                ]
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'The title of the incident',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-team',
          description: 'Create a Microsoft team to investigate the incident by sharing information and insights between participants',
          options: [

            Option(
              name: '--incident-id',
              description: 'Incident ID',
              args: [
                Arg(
                name: 'incident-i'
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
              name: '--team-name',
              description: 'The name of the team',
              args: [
                Arg(
                name: 'team-nam'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--group-ids',
              description: 'List of group IDs to add their members to the team Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'group-id'
              )
              ]
            ),
            Option(
              name: '--member-ids',
              description: 'List of member IDs to add to the team Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'member-id'
              )
              ]
            ),
            Option(
              name: '--team-description',
              description: 'The description of the team',
              args: [
                Arg(
                name: 'team-descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the incident',
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
              name: ['--incident-id', '--name', '-n'],
              description: 'Incident ID',
              args: [
                Arg(
                name: 'incident-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all incidents',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filters the results, based on a Boolean condition. Optional',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results. Optional',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls. Optional',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Returns only the first n results. Optional',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-alert',
          description: 'Get all incident alerts',
          options: [

            Option(
              name: '--incident-id',
              description: 'Incident ID',
              args: [
                Arg(
                name: 'incident-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-bookmark',
          description: 'Get all incident bookmarks',
          options: [

            Option(
              name: '--incident-id',
              description: 'Incident ID',
              args: [
                Arg(
                name: 'incident-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-entity',
          description: 'Get all incident related entities',
          options: [

            Option(
              name: '--incident-id',
              description: 'Incident ID',
              args: [
                Arg(
                name: 'incident-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'run-playbook',
          description: 'Trigger playbook on a specific incident',
          options: [

            Option(
              name: '--incident-identifier',
              description: 'Identifier of incident',
              args: [
                Arg(
                name: 'incident-identifie'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--logic-apps-resource-id',
              description: 'Resource ID of logic apps',
              args: [
                Arg(
                name: 'logic-apps-resource-i'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'ID of tenant',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an incident',
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
              name: ['--incident-id', '--name', '-n'],
              description: 'Incident ID',
              args: [
                Arg(
                name: 'incident-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the incident',
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
              name: '--classification',
              description: 'The reason the incident was closed',
              args: [
                Arg(
                name: 'classification',
                suggestions: [

                  FigSuggestion(name: 'BenignPositive'),
                  FigSuggestion(name: 'FalsePositive'),
                  FigSuggestion(name: 'TruePositive'),
                  FigSuggestion(name: 'Undetermined')
                ]
              )
              ]
            ),
            Option(
              name: '--classification-comment',
              description: 'Describes the reason the incident was closed',
              args: [
                Arg(
                name: 'classification-commen'
              )
              ]
            ),
            Option(
              name: '--classification-reason',
              description: 'The classification reason the incident was closed with',
              args: [
                Arg(
                name: 'classification-reason',
                suggestions: [

                  FigSuggestion(name: 'InaccurateData'),
                  FigSuggestion(name: 'IncorrectAlertLogic'),
                  FigSuggestion(name: 'SuspiciousActivity'),
                  FigSuggestion(name: 'SuspiciousButExpected')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of the incident',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--first-activity-time-utc',
              description: 'The time of the first activity in the incident',
              args: [
                Arg(
                name: 'first-activity-time-ut'
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
              name: ['--incident-id', '--name', '-n'],
              description: 'Incident ID',
              args: [
                Arg(
                name: 'incident-i'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'List of labels relevant to this incident Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--last-activity-time-utc',
              description: 'The time of the last activity in the incident',
              args: [
                Arg(
                name: 'last-activity-time-ut'
              )
              ]
            ),
            Option(
              name: '--owner',
              description: 'Describes a user that the incident is assigned to Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'owne'
              )
              ]
            ),
            Option(
              name: '--provider-incident-id',
              description: 'The incident ID assigned by the incident provider',
              args: [
                Arg(
                name: 'provider-incident-i'
              )
              ]
            ),
            Option(
              name: '--provider-name',
              description: 'The name of the source provider that generated the incident',
              args: [
                Arg(
                name: 'provider-nam'
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
              name: '--severity',
              description: 'The severity of the incident',
              args: [
                Arg(
                name: 'severity',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Informational'),
                  FigSuggestion(name: 'Low'),
                  FigSuggestion(name: 'Medium')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The status of the incident',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Closed'),
                  FigSuggestion(name: 'New')
                ]
              )
              ]
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
              name: '--title',
              description: 'The title of the incident',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'comment',
          description: 'Manage incident comment with sentinel',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create the incident comment',
              options: [

                Option(
                  name: ['--incident-comment-id', '--name', '-n'],
                  description: 'Incident comment ID',
                  args: [
                    Arg(
                    name: 'incident-comment-i'
                  )
                  ]
                ),
                Option(
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--etag',
                  description: 'Etag of the azure resource',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: '--message',
                  description: 'The comment message',
                  args: [
                    Arg(
                    name: 'messag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the incident comment',
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
                  name: ['--incident-comment-id', '--name', '-n'],
                  description: 'Incident comment ID',
                  args: [
                    Arg(
                    name: 'incident-comment-i'
                  )
                  ]
                ),
                Option(
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
              description: 'Get all incident comments',
              options: [

                Option(
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'Filters the results, based on a Boolean condition. Optional',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Sorts the results. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--skip-token',
                  description: 'Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls. Optional',
                  args: [
                    Arg(
                    name: 'skip-toke'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Returns only the first n results. Optional',
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
              description: 'Get an incident comment',
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
                  name: ['--incident-comment-id', '--name', '-n'],
                  description: 'Incident comment ID',
                  args: [
                    Arg(
                    name: 'incident-comment-i'
                  )
                  ]
                ),
                Option(
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the incident comment',
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
                  name: '--etag',
                  description: 'Etag of the azure resource',
                  args: [
                    Arg(
                    name: 'eta'
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
                  name: ['--incident-comment-id', '--name', '-n'],
                  description: 'Incident comment ID',
                  args: [
                    Arg(
                    name: 'incident-comment-i'
                  )
                  ]
                ),
                Option(
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
                  )
                  ]
                ),
                Option(
                  name: '--message',
                  description: 'The comment message',
                  args: [
                    Arg(
                    name: 'messag'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'relation',
          description: 'Manage incident relation with sentinel',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create the incident relation',
              options: [

                Option(
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
                  )
                  ]
                ),
                Option(
                  name: ['--relation-name', '--name', '-n'],
                  description: 'Relation Name',
                  args: [
                    Arg(
                    name: 'relation-nam'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--etag',
                  description: 'Etag of the azure resource',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: '--related-resource-id',
                  description: 'The resource ID of the related resource',
                  args: [
                    Arg(
                    name: 'related-resource-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the incident relation',
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
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
                  )
                  ]
                ),
                Option(
                  name: ['--relation-name', '--name', '-n'],
                  description: 'Relation Name',
                  args: [
                    Arg(
                    name: 'relation-nam'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
              description: 'Get all incident relations',
              options: [

                Option(
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'Filters the results, based on a Boolean condition. Optional',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Sorts the results. Optional',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--skip-token',
                  description: 'Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls. Optional',
                  args: [
                    Arg(
                    name: 'skip-toke'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Returns only the first n results. Optional',
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
              description: 'Get an incident relation',
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
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
                  )
                  ]
                ),
                Option(
                  name: ['--relation-name', '--name', '-n'],
                  description: 'Relation Name',
                  args: [
                    Arg(
                    name: 'relation-nam'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the incident relation',
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
                  name: '--etag',
                  description: 'Etag of the azure resource',
                  args: [
                    Arg(
                    name: 'eta'
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
                  name: '--incident-id',
                  description: 'Incident ID',
                  args: [
                    Arg(
                    name: 'incident-i'
                  )
                  ]
                ),
                Option(
                  name: ['--relation-name', '--name', '-n'],
                  description: 'Relation Name',
                  args: [
                    Arg(
                    name: 'relation-nam'
                  )
                  ]
                ),
                Option(
                  name: '--related-resource-id',
                  description: 'The resource ID of the related resource',
                  args: [
                    Arg(
                    name: 'related-resource-i'
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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
      name: 'metadata',
      description: 'Manage metadata with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Metadata',
          options: [

            Option(
              name: ['--metadata-name', '--name', '-n'],
              description: 'The Metadata name',
              args: [
                Arg(
                name: 'metadata-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--author',
              description: 'The creator of the content item. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'autho'
              )
              ]
            ),
            Option(
              name: '--categories',
              description: 'Categories for the solution content item Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'categorie'
              )
              ]
            ),
            Option(
              name: '--content-id',
              description: 'Static ID for the content. Used to identify dependencies and content from solutions or community. Hard-coded/static for out of the box content and solutions. Dynamic for user-created. This is the resource name',
              args: [
                Arg(
                name: 'content-i'
              )
              ]
            ),
            Option(
              name: '--content-schema-version',
              description: 'Schema version of the content. Can be used to distinguish between different flow based on the schema version',
              args: [
                Arg(
                name: 'content-schema-versio'
              )
              ]
            ),
            Option(
              name: '--custom-version',
              description: 'The custom version of the content. A optional free text',
              args: [
                Arg(
                name: 'custom-versio'
              )
              ]
            ),
            Option(
              name: '--dependencies',
              description: 'Dependencies for the content item, what other content items it requires to work. Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'dependencie'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--first-publish-date',
              description: 'First publish date solution content item',
              args: [
                Arg(
                name: 'first-publish-dat'
              )
              ]
            ),
            Option(
              name: '--icon',
              description: 'The icon identifier. this id can later be fetched from the solution template',
              args: [
                Arg(
                name: 'ico'
              )
              ]
            ),
            Option(
              name: '--kind',
              description: 'The kind of content the metadata is for',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'AnalyticsRule'),
                  FigSuggestion(name: 'AnalyticsRuleTemplate'),
                  FigSuggestion(name: 'AutomationRule'),
                  FigSuggestion(name: 'AzureFunction'),
                  FigSuggestion(name: 'DataConnector'),
                  FigSuggestion(name: 'DataType'),
                  FigSuggestion(name: 'HuntingQuery'),
                  FigSuggestion(name: 'InvestigationQuery'),
                  FigSuggestion(name: 'LogicAppsCustomConnector'),
                  FigSuggestion(name: 'Parser'),
                  FigSuggestion(name: 'Playbook'),
                  FigSuggestion(name: 'PlaybookTemplate'),
                  FigSuggestion(name: 'Solution'),
                  FigSuggestion(name: 'Watchlist'),
                  FigSuggestion(name: 'WatchlistTemplate'),
                  FigSuggestion(name: 'Workbook'),
                  FigSuggestion(name: 'WorkbookTemplate')
                ]
              )
              ]
            ),
            Option(
              name: '--last-publish-date',
              description: 'Last publish date for the solution content item',
              args: [
                Arg(
                name: 'last-publish-dat'
              )
              ]
            ),
            Option(
              name: '--parent-id',
              description: 'Full parent resource ID of the content item the metadata is for. This is the full resource ID including the scope (subscription and resource group)',
              args: [
                Arg(
                name: 'parent-i'
              )
              ]
            ),
            Option(
              name: '--preview-images',
              description: 'Preview image file names. These will be taken from the solution artifacts Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'preview-image'
              )
              ]
            ),
            Option(
              name: '--preview-images-dark',
              description: 'Preview image file names. These will be taken from the solution artifacts. used for dark theme support Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'preview-images-dar'
              )
              ]
            ),
            Option(
              name: '--providers',
              description: 'Providers for the solution content item Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'provider'
              )
              ]
            ),
            Option(
              name: '--source',
              description: 'Source of the content. This is where/how it was created. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--support',
              description: 'Support information for the metadata - type, name, contact information Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'suppor'
              )
              ]
            ),
            Option(
              name: '--threat-tactics',
              description: 'The tactics the resource covers Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-tactic'
              )
              ]
            ),
            Option(
              name: '--threat-techniques',
              description: 'The techniques the resource covers, these have to be aligned with the tactics being used Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-technique'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of the content. Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM template best practices. Can also be any string, but then we cannot guarantee any version checks',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Metadata',
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
              name: ['--metadata-name', '--name', '-n'],
              description: 'The Metadata name',
              args: [
                Arg(
                name: 'metadata-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'List of all metadata',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filters the results, based on a Boolean condition. Optional',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results. Optional',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip',
              description: 'Used to skip n elements in the OData query (offset). Returns a nextLink to the next page of results if there are any left',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Returns only the first n results. Optional',
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
          description: 'Get a Metadata',
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
              name: ['--metadata-name', '--name', '-n'],
              description: 'The Metadata name',
              args: [
                Arg(
                name: 'metadata-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a Metadata',
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
              name: '--author',
              description: 'The creator of the content item. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'autho'
              )
              ]
            ),
            Option(
              name: '--categories',
              description: 'Categories for the solution content item Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'categorie'
              )
              ]
            ),
            Option(
              name: '--content-id',
              description: 'Static ID for the content. Used to identify dependencies and content from solutions or community. Hard-coded/static for out of the box content and solutions. Dynamic for user-created. This is the resource name',
              args: [
                Arg(
                name: 'content-i'
              )
              ]
            ),
            Option(
              name: '--content-schema-version',
              description: 'Schema version of the content. Can be used to distinguish between different flow based on the schema version',
              args: [
                Arg(
                name: 'content-schema-versio'
              )
              ]
            ),
            Option(
              name: '--custom-version',
              description: 'The custom version of the content. A optional free text',
              args: [
                Arg(
                name: 'custom-versio'
              )
              ]
            ),
            Option(
              name: '--dependencies',
              description: 'Dependencies for the content item, what other content items it requires to work. Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'dependencie'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--first-publish-date',
              description: 'First publish date solution content item',
              args: [
                Arg(
                name: 'first-publish-dat'
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
              name: '--icon',
              description: 'The icon identifier. this id can later be fetched from the solution template',
              args: [
                Arg(
                name: 'ico'
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
              description: 'The kind of content the metadata is for',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'AnalyticsRule'),
                  FigSuggestion(name: 'AnalyticsRuleTemplate'),
                  FigSuggestion(name: 'AutomationRule'),
                  FigSuggestion(name: 'AzureFunction'),
                  FigSuggestion(name: 'DataConnector'),
                  FigSuggestion(name: 'DataType'),
                  FigSuggestion(name: 'HuntingQuery'),
                  FigSuggestion(name: 'InvestigationQuery'),
                  FigSuggestion(name: 'LogicAppsCustomConnector'),
                  FigSuggestion(name: 'Parser'),
                  FigSuggestion(name: 'Playbook'),
                  FigSuggestion(name: 'PlaybookTemplate'),
                  FigSuggestion(name: 'Solution'),
                  FigSuggestion(name: 'Watchlist'),
                  FigSuggestion(name: 'WatchlistTemplate'),
                  FigSuggestion(name: 'Workbook'),
                  FigSuggestion(name: 'WorkbookTemplate')
                ]
              )
              ]
            ),
            Option(
              name: '--last-publish-date',
              description: 'Last publish date for the solution content item',
              args: [
                Arg(
                name: 'last-publish-dat'
              )
              ]
            ),
            Option(
              name: ['--metadata-name', '--name', '-n'],
              description: 'The Metadata name',
              args: [
                Arg(
                name: 'metadata-nam'
              )
              ]
            ),
            Option(
              name: '--parent-id',
              description: 'Full parent resource ID of the content item the metadata is for. This is the full resource ID including the scope (subscription and resource group)',
              args: [
                Arg(
                name: 'parent-i'
              )
              ]
            ),
            Option(
              name: '--preview-images',
              description: 'Preview image file names. These will be taken from the solution artifacts Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'preview-image'
              )
              ]
            ),
            Option(
              name: '--preview-images-dark',
              description: 'Preview image file names. These will be taken from the solution artifacts. used for dark theme support Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'preview-images-dar'
              )
              ]
            ),
            Option(
              name: '--providers',
              description: 'Providers for the solution content item Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'provider'
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
              name: '--source',
              description: 'Source of the content. This is where/how it was created. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
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
              name: '--support',
              description: 'Support information for the metadata - type, name, contact information Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'suppor'
              )
              ]
            ),
            Option(
              name: '--threat-tactics',
              description: 'The tactics the resource covers Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-tactic'
              )
              ]
            ),
            Option(
              name: '--threat-techniques',
              description: 'The techniques the resource covers, these have to be aligned with the tactics being used Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-technique'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of the content. Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM template best practices. Can also be any string, but then we cannot guarantee any version checks',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'office-consent',
      description: 'Manage office consent with sentinel',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete the office365 consent',
          options: [

            Option(
              name: ['--consent-id', '--name', '-n'],
              description: 'Consent ID',
              args: [
                Arg(
                name: 'consent-i'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all office365 consents',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an office365 consent',
          options: [

            Option(
              name: ['--consent-id', '--name', '-n'],
              description: 'Consent ID',
              args: [
                Arg(
                name: 'consent-i'
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
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'onboarding-state',
      description: 'Manage onboarding state with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create Sentinel onboarding state',
          options: [

            Option(
              name: ['--sentinel-onboarding-state-name', '--name', '-n'],
              description: 'The Sentinel onboarding state name. Supports - default',
              args: [
                Arg(
                name: 'sentinel-onboarding-state-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--customer-managed-key',
              description: 'Flag that indicates the status of the CMK setting',
              args: [
                Arg(
                name: 'customer-managed-key',
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
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete Sentinel onboarding state',
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
              name: ['--sentinel-onboarding-state-name', '--name', '-n'],
              description: 'The Sentinel onboarding state name. Supports - default',
              args: [
                Arg(
                name: 'sentinel-onboarding-state-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all Sentinel onboarding states',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get Sentinel onboarding state',
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
              name: ['--sentinel-onboarding-state-name', '--name', '-n'],
              description: 'The Sentinel onboarding state name. Supports - default',
              args: [
                Arg(
                name: 'sentinel-onboarding-state-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update Sentinel onboarding state',
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
              name: '--customer-managed-key',
              description: 'Flag that indicates the status of the CMK setting',
              args: [
                Arg(
                name: 'customer-managed-key',
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
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: ['--sentinel-onboarding-state-name', '--name', '-n'],
              description: 'The Sentinel onboarding state name. Supports - default',
              args: [
                Arg(
                name: 'sentinel-onboarding-state-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'setting',
      description: 'Manage setting with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create setting',
          options: [

            Option(
              name: ['--settings-name', '--name', '-n'],
              description: 'The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba',
              args: [
                Arg(
                name: 'settings-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--entity-analytics',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'entity-analytic'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--ueba',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'ueb'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete setting of the product',
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
              name: ['--settings-name', '--name', '-n'],
              description: 'The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba',
              args: [
                Arg(
                name: 'settings-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'List of all the settings',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a setting',
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
              name: ['--settings-name', '--name', '-n'],
              description: 'The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba',
              args: [
                Arg(
                name: 'settings-nam'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update setting',
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
              name: '--entity-analytics',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'entity-analytic'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: ['--settings-name', '--name', '-n'],
              description: 'The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba',
              args: [
                Arg(
                name: 'settings-nam'
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
              name: '--ueba',
              description: 'Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'ueb'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'source-control',
      description: 'Manage source control with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a source control',
          options: [

            Option(
              name: ['--source-control-id', '--name', '-n'],
              description: 'Source control Id',
              args: [
                Arg(
                name: 'source-control-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--content-types',
              description: 'Array of source control content types. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'content-type'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description of the source control',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the source control',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The id (a Guid) of the source control',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--last-deployment-info',
              description: 'Information regarding the latest deployment for the source control. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'last-deployment-inf'
              )
              ]
            ),
            Option(
              name: '--repo-type',
              description: 'The repository type of the source control',
              args: [
                Arg(
                name: 'repo-type',
                suggestions: [

                  FigSuggestion(name: 'DevOps'),
                  FigSuggestion(name: 'Github')
                ]
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'Repository metadata. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--repository-info',
              description: 'Information regarding the resources created in user\'s repository. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'repository-inf'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'The version number associated with the source control',
              args: [
                Arg(
                name: 'version',
                suggestions: [

                  FigSuggestion(name: 'V1'),
                  FigSuggestion(name: 'V2')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a source control',
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
              name: ['--source-control-id', '--name', '-n'],
              description: 'Source control Id',
              args: [
                Arg(
                name: 'source-control-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all source controls, without source control items',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-repository',
          description: 'Get a list of repositories metadata',
          options: [

            Option(
              name: '--repo-type',
              description: 'The type of repository',
              args: [
                Arg(
                name: 'repo-type',
                suggestions: [

                  FigSuggestion(name: 'DevOps'),
                  FigSuggestion(name: 'Github')
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a source control by its identifier',
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
              name: ['--source-control-id', '--name', '-n'],
              description: 'Source control Id',
              args: [
                Arg(
                name: 'source-control-i'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Create a source control',
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
              name: '--content-types',
              description: 'Array of source control content types. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'content-type'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description of the source control',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the source control',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: '--id',
              description: 'The id (a Guid) of the source control',
              args: [
                Arg(
                name: 'i'
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
              name: '--last-deployment-info',
              description: 'Information regarding the latest deployment for the source control. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'last-deployment-inf'
              )
              ]
            ),
            Option(
              name: ['--source-control-id', '--name', '-n'],
              description: 'Source control Id',
              args: [
                Arg(
                name: 'source-control-i'
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
              name: '--repo-type',
              description: 'The repository type of the source control',
              args: [
                Arg(
                name: 'repo-type',
                suggestions: [

                  FigSuggestion(name: 'DevOps'),
                  FigSuggestion(name: 'Github')
                ]
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'Repository metadata. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--repository-info',
              description: 'Information regarding the resources created in user\'s repository. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'repository-inf'
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
              name: '--version',
              description: 'The version number associated with the source control',
              args: [
                Arg(
                name: 'version',
                suggestions: [

                  FigSuggestion(name: 'V1'),
                  FigSuggestion(name: 'V2')
                ]
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'threat-indicator',
      description: 'Manage threat intelligence indicator with sentinel',
      subcommands: [

        Subcommand(
          name: 'append-tag',
          description: 'Append tags to a threat intelligence indicator',
          options: [

            Option(
              name: '--name',
              description: 'Threat intelligence indicator name field',
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--intelligence-tags',
              description: 'List of tags to be appended. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'intelligence-tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new threat intelligence indicator',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--confidence',
              description: 'Confidence of threat intelligence entity',
              args: [
                Arg(
                name: 'confidenc'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Created by',
              args: [
                Arg(
                name: 'create'
              )
              ]
            ),
            Option(
              name: '--created-by-ref',
              description: 'Created by reference of threat intelligence entity',
              args: [
                Arg(
                name: 'created-by-re'
              )
              ]
            ),
            Option(
              name: '--defanged',
              description: 'Is threat intelligence entity defanged',
              args: [
                Arg(
                name: 'defanged',
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
              name: '--description',
              description: 'Description of a threat intelligence entity',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of a threat intelligence entity',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--external-id',
              description: 'External ID of threat intelligence entity',
              args: [
                Arg(
                name: 'external-i'
              )
              ]
            ),
            Option(
              name: '--external-references',
              description: 'External References Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'external-reference'
              )
              ]
            ),
            Option(
              name: '--external-updated-time',
              description: 'External last updated time in UTC',
              args: [
                Arg(
                name: 'external-updated-tim'
              )
              ]
            ),
            Option(
              name: '--granular-markings',
              description: 'Granular Markings Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'granular-marking'
              )
              ]
            ),
            Option(
              name: '--indicator-types',
              description: 'Indicator types of threat intelligence entities Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'indicator-type'
              )
              ]
            ),
            Option(
              name: '--kill-chain-phases',
              description: 'Kill chain phases Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'kill-chain-phase'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'Labels of threat intelligence entity Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--language',
              description: 'Language of threat intelligence entity',
              args: [
                Arg(
                name: 'languag'
              )
              ]
            ),
            Option(
              name: '--last-updated-time',
              description: 'Last updated time in UTC',
              args: [
                Arg(
                name: 'last-updated-tim'
              )
              ]
            ),
            Option(
              name: '--modified',
              description: 'Modified by',
              args: [
                Arg(
                name: 'modifie'
              )
              ]
            ),
            Option(
              name: '--object-marking-refs',
              description: 'Threat intelligence entity object marking references Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'object-marking-ref'
              )
              ]
            ),
            Option(
              name: '--parsed-pattern',
              description: 'Parsed patterns Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'parsed-patter'
              )
              ]
            ),
            Option(
              name: '--pattern',
              description: 'Pattern of a threat intelligence entity',
              args: [
                Arg(
                name: 'patter'
              )
              ]
            ),
            Option(
              name: '--pattern-type',
              description: 'Pattern type of a threat intelligence entity',
              args: [
                Arg(
                name: 'pattern-typ'
              )
              ]
            ),
            Option(
              name: '--pattern-version',
              description: 'Pattern version of a threat intelligence entity',
              args: [
                Arg(
                name: 'pattern-versio'
              )
              ]
            ),
            Option(
              name: '--revoked',
              description: 'Is threat intelligence entity revoked',
              args: [
                Arg(
                name: 'revoked',
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
              name: '--source',
              description: 'Source of a threat intelligence entity',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--threat-tags',
              description: 'List of tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-tag'
              )
              ]
            ),
            Option(
              name: '--threat-types',
              description: 'Threat types Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-type'
              )
              ]
            ),
            Option(
              name: '--valid-from',
              description: 'Valid from',
              args: [
                Arg(
                name: 'valid-fro'
              )
              ]
            ),
            Option(
              name: '--valid-until',
              description: 'Valid until',
              args: [
                Arg(
                name: 'valid-unti'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a threat intelligence indicator',
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
              description: 'Threat intelligence indicator name field',
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all threat intelligence indicators',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filters the results, based on a Boolean condition. Optional',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Sorts the results. Optional',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls. Optional',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Returns only the first n results. Optional',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'query',
          description: 'Query threat intelligence indicators as per filtering criteria',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'Ids of threat intelligence indicators Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--include-disabled',
              description: 'Parameter to include/exclude disabled indicators',
              args: [
                Arg(
                name: 'include-disabled',
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
              name: '--keywords',
              description: 'Keywords for searching threat intelligence indicators Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'keyword'
              )
              ]
            ),
            Option(
              name: '--max-confidence',
              description: 'Maximum confidence',
              args: [
                Arg(
                name: 'max-confidenc'
              )
              ]
            ),
            Option(
              name: '--max-valid-until',
              description: 'End time for ValidUntil filter',
              args: [
                Arg(
                name: 'max-valid-unti'
              )
              ]
            ),
            Option(
              name: '--min-confidence',
              description: 'Minimum confidence',
              args: [
                Arg(
                name: 'min-confidenc'
              )
              ]
            ),
            Option(
              name: '--min-valid-until',
              description: 'Start time for ValidUntil filter',
              args: [
                Arg(
                name: 'min-valid-unti'
              )
              ]
            ),
            Option(
              name: '--page-size',
              description: 'Page size',
              args: [
                Arg(
                name: 'page-siz'
              )
              ]
            ),
            Option(
              name: '--pattern-types',
              description: 'Pattern types Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'pattern-type'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Skip token',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            ),
            Option(
              name: '--sort-by',
              description: 'Columns to sort by and sorting order Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'sort-b'
              )
              ]
            ),
            Option(
              name: '--sources',
              description: 'Sources of threat intelligence indicators Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'source'
              )
              ]
            ),
            Option(
              name: '--threat-types',
              description: 'Threat types of threat intelligence indicators Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-type'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'replace-tag',
          description: 'Replace tags added to a threat intelligence indicator',
          options: [

            Option(
              name: '--name',
              description: 'Threat intelligence indicator name field',
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--confidence',
              description: 'Confidence of threat intelligence entity',
              args: [
                Arg(
                name: 'confidenc'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Created by',
              args: [
                Arg(
                name: 'create'
              )
              ]
            ),
            Option(
              name: '--created-by-ref',
              description: 'Created by reference of threat intelligence entity',
              args: [
                Arg(
                name: 'created-by-re'
              )
              ]
            ),
            Option(
              name: '--defanged',
              description: 'Is threat intelligence entity defanged',
              args: [
                Arg(
                name: 'defanged',
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
              name: '--description',
              description: 'Description of a threat intelligence entity',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of a threat intelligence entity',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--external-id',
              description: 'External ID of threat intelligence entity',
              args: [
                Arg(
                name: 'external-i'
              )
              ]
            ),
            Option(
              name: '--external-references',
              description: 'External References Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'external-reference'
              )
              ]
            ),
            Option(
              name: '--external-updated-time',
              description: 'External last updated time in UTC',
              args: [
                Arg(
                name: 'external-updated-tim'
              )
              ]
            ),
            Option(
              name: '--granular-markings',
              description: 'Granular Markings Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'granular-marking'
              )
              ]
            ),
            Option(
              name: '--indicator-types',
              description: 'Indicator types of threat intelligence entities Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'indicator-type'
              )
              ]
            ),
            Option(
              name: '--intelligence-tags',
              description: 'List of tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'intelligence-tag'
              )
              ]
            ),
            Option(
              name: '--kill-chain-phases',
              description: 'Kill chain phases Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'kill-chain-phase'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'Labels of threat intelligence entity Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--language',
              description: 'Language of threat intelligence entity',
              args: [
                Arg(
                name: 'languag'
              )
              ]
            ),
            Option(
              name: '--last-updated-time',
              description: 'Last updated time in UTC',
              args: [
                Arg(
                name: 'last-updated-tim'
              )
              ]
            ),
            Option(
              name: '--modified',
              description: 'Modified by',
              args: [
                Arg(
                name: 'modifie'
              )
              ]
            ),
            Option(
              name: '--object-marking-refs',
              description: 'Threat intelligence entity object marking references Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'object-marking-ref'
              )
              ]
            ),
            Option(
              name: '--parsed-pattern',
              description: 'Parsed patterns Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'parsed-patter'
              )
              ]
            ),
            Option(
              name: '--pattern',
              description: 'Pattern of a threat intelligence entity',
              args: [
                Arg(
                name: 'patter'
              )
              ]
            ),
            Option(
              name: '--pattern-type',
              description: 'Pattern type of a threat intelligence entity',
              args: [
                Arg(
                name: 'pattern-typ'
              )
              ]
            ),
            Option(
              name: '--pattern-version',
              description: 'Pattern version of a threat intelligence entity',
              args: [
                Arg(
                name: 'pattern-versio'
              )
              ]
            ),
            Option(
              name: '--revoked',
              description: 'Is threat intelligence entity revoked',
              args: [
                Arg(
                name: 'revoked',
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
              name: '--source',
              description: 'Source of a threat intelligence entity',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--threat-types',
              description: 'Threat types Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-type'
              )
              ]
            ),
            Option(
              name: '--valid-from',
              description: 'Valid from',
              args: [
                Arg(
                name: 'valid-fro'
              )
              ]
            ),
            Option(
              name: '--valid-until',
              description: 'Valid until',
              args: [
                Arg(
                name: 'valid-unti'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'View a threat intelligence indicator by name',
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
              description: 'Threat intelligence indicator name field',
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a threat Intelligence indicator',
          options: [

            Option(
              name: '--confidence',
              description: 'Confidence of threat intelligence entity',
              args: [
                Arg(
                name: 'confidenc'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Created by',
              args: [
                Arg(
                name: 'create'
              )
              ]
            ),
            Option(
              name: '--created-by-ref',
              description: 'Created by reference of threat intelligence entity',
              args: [
                Arg(
                name: 'created-by-re'
              )
              ]
            ),
            Option(
              name: '--defanged',
              description: 'Is threat intelligence entity defanged',
              args: [
                Arg(
                name: 'defanged',
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
              name: '--description',
              description: 'Description of a threat intelligence entity',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of a threat intelligence entity',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--external-id',
              description: 'External ID of threat intelligence entity',
              args: [
                Arg(
                name: 'external-i'
              )
              ]
            ),
            Option(
              name: '--external-references',
              description: 'External References Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'external-reference'
              )
              ]
            ),
            Option(
              name: '--external-updated-time',
              description: 'External last updated time in UTC',
              args: [
                Arg(
                name: 'external-updated-tim'
              )
              ]
            ),
            Option(
              name: '--granular-markings',
              description: 'Granular Markings Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'granular-marking'
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
              name: '--indicator-types',
              description: 'Indicator types of threat intelligence entities Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'indicator-type'
              )
              ]
            ),
            Option(
              name: '--kill-chain-phases',
              description: 'Kill chain phases Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'kill-chain-phase'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'Labels of threat intelligence entity Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--language',
              description: 'Language of threat intelligence entity',
              args: [
                Arg(
                name: 'languag'
              )
              ]
            ),
            Option(
              name: '--last-updated-time',
              description: 'Last updated time in UTC',
              args: [
                Arg(
                name: 'last-updated-tim'
              )
              ]
            ),
            Option(
              name: '--modified',
              description: 'Modified by',
              args: [
                Arg(
                name: 'modifie'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Threat intelligence indicator name field',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--object-marking-refs',
              description: 'Threat intelligence entity object marking references Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'object-marking-ref'
              )
              ]
            ),
            Option(
              name: '--parsed-pattern',
              description: 'Parsed patterns Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'parsed-patter'
              )
              ]
            ),
            Option(
              name: '--pattern',
              description: 'Pattern of a threat intelligence entity',
              args: [
                Arg(
                name: 'patter'
              )
              ]
            ),
            Option(
              name: '--pattern-type',
              description: 'Pattern type of a threat intelligence entity',
              args: [
                Arg(
                name: 'pattern-typ'
              )
              ]
            ),
            Option(
              name: '--pattern-version',
              description: 'Pattern version of a threat intelligence entity',
              args: [
                Arg(
                name: 'pattern-versio'
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
              name: '--revoked',
              description: 'Is threat intelligence entity revoked',
              args: [
                Arg(
                name: 'revoked',
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
              name: '--source',
              description: 'Source of a threat intelligence entity',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
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
              name: '--threat-tags',
              description: 'List of tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-tag'
              )
              ]
            ),
            Option(
              name: '--threat-types',
              description: 'Threat types Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'threat-type'
              )
              ]
            ),
            Option(
              name: '--valid-from',
              description: 'Valid from',
              args: [
                Arg(
                name: 'valid-fro'
              )
              ]
            ),
            Option(
              name: '--valid-until',
              description: 'Valid until',
              args: [
                Arg(
                name: 'valid-unti'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'metric',
          description: 'Manage threat intelligence indicator metric with sentinel',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get threat intelligence indicators metrics (Indicators counts by Type, Threat Type, Source)',
              options: [

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
                  name: ['--workspace-name', '-w'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
      name: 'watchlist',
      description: 'Manage watchlist with sentinel',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Watchlist and its Watchlist Items (bulk creation, e.g. through text/csv content type). To create a Watchlist and its Items, we should call this endpoint with either rawContent or a valid SAR URI and contentType properties. The rawContent is mainly used for small watchlist (content size below 3.8 MB). The SAS URI enables the creation of large watchlist, where the content size can go up to 500 MB. The status of processing such large file can be polled through the URL returned in Azure-AsyncOperation header',
          options: [

            Option(
              name: ['--watchlist-alias', '--name', '-n'],
              description: 'Watchlist Alias',
              args: [
                Arg(
                name: 'watchlist-alia'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--content-type',
              description: 'The content type of the raw content. Example : text/csv or text/tsv',
              args: [
                Arg(
                name: 'content-typ'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'The time the watchlist was created',
              args: [
                Arg(
                name: 'create'
              )
              ]
            ),
            Option(
              name: '--created-by',
              description: 'Describes a user that created the watchlist Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'created-b'
              )
              ]
            ),
            Option(
              name: '--default-duration',
              description: 'The default duration of a watchlist (in ISO 8601 duration format)',
              args: [
                Arg(
                name: 'default-duratio'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description of the watchlist',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the watchlist',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--is-deleted',
              description: 'A flag that indicates if the watchlist is deleted or not',
              args: [
                Arg(
                name: 'is-deleted',
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
              name: '--items-search-key',
              description: 'The search key is used to optimize query performance when using watchlists for joins with other data. For example, enable a column with IP addresses to be the designated SearchKey field, then use this field as the key field when joining to other event data by IP address',
              args: [
                Arg(
                name: 'items-search-ke'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'List of labels relevant to this watchlist Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--provider',
              description: 'The provider of the watchlist',
              args: [
                Arg(
                name: 'provide'
              )
              ]
            ),
            Option(
              name: '--raw-content',
              description: 'The raw content that represents to watchlist items to create. In case of csv/tsv content type, it\'s the content of the file that will parsed by the endpoint',
              args: [
                Arg(
                name: 'raw-conten'
              )
              ]
            ),
            Option(
              name: '--skip-num',
              description: 'The number of lines in a csv/tsv content to skip before the header',
              args: [
                Arg(
                name: 'skip-nu'
              )
              ]
            ),
            Option(
              name: '--source',
              description: 'The filename of the watchlist, called \'source\'',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--source-type',
              description: 'The sourceType of the watchlist',
              args: [
                Arg(
                name: 'source-type',
                suggestions: [

                  FigSuggestion(name: 'Local file'),
                  FigSuggestion(name: 'Remote storage')
                ]
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The tenantId where the watchlist belongs to',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'The last time the watchlist was updated',
              args: [
                Arg(
                name: 'update'
              )
              ]
            ),
            Option(
              name: '--updated-by',
              description: 'Describes a user that updated the watchlist Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'updated-b'
              )
              ]
            ),
            Option(
              name: '--upload-status',
              description: 'The status of the Watchlist upload : New, InProgress or Complete. Pls note : When a Watchlist upload status is equal to InProgress, the Watchlist cannot be deleted',
              args: [
                Arg(
                name: 'upload-statu'
              )
              ]
            ),
            Option(
              name: '--watchlist-id',
              description: 'The id (a Guid) of the watchlist',
              args: [
                Arg(
                name: 'watchlist-i'
              )
              ]
            ),
            Option(
              name: '--watchlist-type',
              description: 'The type of the watchlist',
              args: [
                Arg(
                name: 'watchlist-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a watchlist',
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
              name: ['--watchlist-alias', '--name', '-n'],
              description: 'Watchlist Alias',
              args: [
                Arg(
                name: 'watchlist-alia'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Get all watchlists, without watchlist items',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls. Optional',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a watchlist, without its watchlist items',
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
              name: ['--watchlist-alias', '--name', '-n'],
              description: 'Watchlist Alias',
              args: [
                Arg(
                name: 'watchlist-alia'
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
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a Watchlist and its Watchlist Items (bulk creation, e.g. through text/csv content type). To create a Watchlist and its Items, we should call this endpoint with either rawContent or a valid SAR URI and contentType properties. The rawContent is mainly used for small watchlist (content size below 3.8 MB). The SAS URI enables the creation of large watchlist, where the content size can go up to 500 MB. The status of processing such large file can be polled through the URL returned in Azure-AsyncOperation header',
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
              description: 'The content type of the raw content. Example : text/csv or text/tsv',
              args: [
                Arg(
                name: 'content-typ'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'The time the watchlist was created',
              args: [
                Arg(
                name: 'create'
              )
              ]
            ),
            Option(
              name: '--created-by',
              description: 'Describes a user that created the watchlist Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'created-b'
              )
              ]
            ),
            Option(
              name: '--default-duration',
              description: 'The default duration of a watchlist (in ISO 8601 duration format)',
              args: [
                Arg(
                name: 'default-duratio'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description of the watchlist',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the watchlist',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Etag of the azure resource',
              args: [
                Arg(
                name: 'eta'
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
              name: '--is-deleted',
              description: 'A flag that indicates if the watchlist is deleted or not',
              args: [
                Arg(
                name: 'is-deleted',
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
              name: '--items-search-key',
              description: 'The search key is used to optimize query performance when using watchlists for joins with other data. For example, enable a column with IP addresses to be the designated SearchKey field, then use this field as the key field when joining to other event data by IP address',
              args: [
                Arg(
                name: 'items-search-ke'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'List of labels relevant to this watchlist Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: ['--watchlist-alias', '--name', '-n'],
              description: 'Watchlist Alias',
              args: [
                Arg(
                name: 'watchlist-alia'
              )
              ]
            ),
            Option(
              name: '--provider',
              description: 'The provider of the watchlist',
              args: [
                Arg(
                name: 'provide'
              )
              ]
            ),
            Option(
              name: '--raw-content',
              description: 'The raw content that represents to watchlist items to create. In case of csv/tsv content type, it\'s the content of the file that will parsed by the endpoint',
              args: [
                Arg(
                name: 'raw-conten'
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
              name: '--skip-num',
              description: 'The number of lines in a csv/tsv content to skip before the header',
              args: [
                Arg(
                name: 'skip-nu'
              )
              ]
            ),
            Option(
              name: '--source',
              description: 'The filename of the watchlist, called \'source\'',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--source-type',
              description: 'The sourceType of the watchlist',
              args: [
                Arg(
                name: 'source-type',
                suggestions: [

                  FigSuggestion(name: 'Local file'),
                  FigSuggestion(name: 'Remote storage')
                ]
              )
              ]
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
              name: '--tenant-id',
              description: 'The tenantId where the watchlist belongs to',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'The last time the watchlist was updated',
              args: [
                Arg(
                name: 'update'
              )
              ]
            ),
            Option(
              name: '--updated-by',
              description: 'Describes a user that updated the watchlist Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'updated-b'
              )
              ]
            ),
            Option(
              name: '--upload-status',
              description: 'The status of the Watchlist upload : New, InProgress or Complete. Pls note : When a Watchlist upload status is equal to InProgress, the Watchlist cannot be deleted',
              args: [
                Arg(
                name: 'upload-statu'
              )
              ]
            ),
            Option(
              name: '--watchlist-id',
              description: 'The id (a Guid) of the watchlist',
              args: [
                Arg(
                name: 'watchlist-i'
              )
              ]
            ),
            Option(
              name: '--watchlist-type',
              description: 'The type of the watchlist',
              args: [
                Arg(
                name: 'watchlist-typ'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
