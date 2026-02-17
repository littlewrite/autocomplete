// Auto-generated from TypeScript source: automation.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `automation` CLI
final FigSpec automationSpec = FigSpec(
  name: 'automation',
  description: 'Manage Automation Account',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Automation Account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create automation account',
          options: [

            Option(
              name: ['--automation-account-name', '--name', '-n'],
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Account SKU',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Free')
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
          description: 'Delete an automation account',
          options: [

            Option(
              name: ['--automation-account-name', '--name', '-n'],
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of accounts within a given resource group. And Retrieve a list of accounts within a given subscription',
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
          description: 'Get information about an Automation Account',
          options: [

            Option(
              name: ['--automation-account-name', '--name', '-n'],
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
          description: 'Update an automation account',
          options: [

            Option(
              name: ['--automation-account-name', '--name', '-n'],
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: '--sku',
              description: 'Account SKU',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Free')
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
      name: 'hrwg',
      description: 'Automation Hybrid Runbook Worker Group',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a hybrid runbook worker group',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--hybrid-runbook-worker-group-name', '--name', '-n'],
              description: 'The hybrid runbook worker group name',
              args: [
                Arg(
                name: 'hybrid-runbook-worker-group-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--credential',
              description: 'Sets the credential of a worker group. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'credentia'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a hybrid runbook worker group',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--hybrid-runbook-worker-group-name', '--name', '-n'],
              description: 'The hybrid runbook worker group name',
              args: [
                Arg(
                name: 'hybrid-runbook-worker-group-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all hybrid runbook worker groups',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
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
              description: 'The filter to apply on the operation',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get hybrid worker group',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--hybrid-runbook-worker-group-name', '--name', '-n'],
              description: 'The hybrid runbook worker group name',
              args: [
                Arg(
                name: 'hybrid-runbook-worker-group-nam'
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
          description: 'Update a hybrid runbook worker group',
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
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: '--credential',
              description: 'Sets the credential of a worker group. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'credentia'
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
              name: ['--hybrid-runbook-worker-group-name', '--name', '-n'],
              description: 'The hybrid runbook worker group name',
              args: [
                Arg(
                name: 'hybrid-runbook-worker-group-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'hrw',
          description: 'Hrw',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a hybrid runbook worker',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hybrid-runbook-worker-group-name',
                  description: 'The hybrid runbook worker group name',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-group-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--hybrid-runbook-worker-id', '--name', '-n'],
                  description: 'The hybrid runbook worker id',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-resource-id',
                  description: 'Azure Resource Manager Id for a virtual machine',
                  args: [
                    Arg(
                    name: 'vm-resource-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a hybrid runbook worker',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hybrid-runbook-worker-group-name',
                  description: 'The hybrid runbook worker group name',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-group-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--hybrid-runbook-worker-id', '--name', '-n'],
                  description: 'The hybrid runbook worker id',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-i'
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List a list of hybrid runbook workers',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hybrid-runbook-worker-group-name',
                  description: 'The hybrid runbook worker group name',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-group-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'The filter to apply on the operation',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'move',
              description: 'Move a hybrid worker to a different group',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hybrid-runbook-worker-group-name',
                  description: 'The hybrid runbook worker group name',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hybrid-runbook-worker-id',
                  description: 'The hybrid runbook worker id',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-i'
                  )
                  ]
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
              description: 'Get a hybrid runbook worker',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hybrid-runbook-worker-group-name',
                  description: 'The hybrid runbook worker group name',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-group-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--hybrid-runbook-worker-id', '--name', '-n'],
                  description: 'The hybrid runbook worker id',
                  args: [
                    Arg(
                    name: 'hybrid-runbook-worker-i'
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
      name: 'job',
      description: 'Automation Job',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Retrieve a list of jobs',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
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
          name: 'resume',
          description: 'Resume the job identified by jobName',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--job-name', '--name', '-n'],
              description: 'The job name',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
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
          description: 'Retrieve the job identified by job name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--job-name', '--name', '-n'],
              description: 'The job name',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
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
          description: 'Stop the job identified by jobName',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--job-name', '--name', '-n'],
              description: 'The job name',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
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
          name: 'suspend',
          description: 'Suspend the job identified by job name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--job-name', '--name', '-n'],
              description: 'The job name',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
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
      name: 'python3-package',
      description: 'Python3-package',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create or Update the python 3 package identified by package name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: '--content-link',
              description: 'Gets or sets the module content link. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'content-lin'
              )
              ]
            ),
            Option(
              name: ['--package-name', '--name', '-n'],
              description: 'The name of python package',
              args: [
                Arg(
                name: 'package-nam'
              )
              ]
            ),
            Option(
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
              description: 'Gets or sets the tags attached to the resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
          description: 'Delete the python 3 package by name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--package-name', '--name', '-n'],
              description: 'The python package name',
              args: [
                Arg(
                name: 'package-nam'
              )
              ]
            ),
            Option(
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
          description: 'Retrieve a list of python 3 packages',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
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
          description: 'Retrieve the python 3 package identified by package name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--package-name', '--name', '-n'],
              description: 'The python package name',
              args: [
                Arg(
                name: 'package-nam'
              )
              ]
            ),
            Option(
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
          description: 'Create or Update the python 3 package identified by package name',
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
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: '--content-link',
              description: 'Gets or sets the module content link. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'content-lin'
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
              name: ['--package-name', '--name', '-n'],
              description: 'The python package name',
              args: [
                Arg(
                name: 'package-nam'
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
              description: 'Gets or sets the tags attached to the resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
      name: 'runbook',
      description: 'Automation Runbook',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the runbook identified by runbook name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--runbook-name', '--name', '-n'],
              description: 'The runbook name',
              args: [
                Arg(
                name: 'runbook-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Type of the runbook',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'Graph'),
                  FigSuggestion(name: 'GraphPowerShell'),
                  FigSuggestion(name: 'GraphPowerShellWorkflow'),
                  FigSuggestion(name: 'PowerShell'),
                  FigSuggestion(name: 'PowerShellWorkflow'),
                  FigSuggestion(name: 'Python2'),
                  FigSuggestion(name: 'Python3'),
                  FigSuggestion(name: 'Script')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the runbook',
              args: [
                Arg(
                name: 'descriptio'
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
              name: '--log-activity-trace',
              description: 'Activity level tracing options of the runbook',
              args: [
                Arg(
                name: 'log-activity-trac'
              )
              ]
            ),
            Option(
              name: '--log-progress',
              description: 'Progress log option of the runbook',
              args: [
                Arg(
                name: 'log-progress',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--log-verbose',
              description: 'Verbose log option of the runbook',
              args: [
                Arg(
                name: 'log-verbose',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
          description: 'Delete the runbook by name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--runbook-name', '--name', '-n'],
              description: 'The runbook name',
              args: [
                Arg(
                name: 'runbook-nam'
              )
              ]
            ),
            Option(
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
          description: 'Retrieve a list of runbooks',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
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
          name: 'publish',
          description: 'Publish runbook draft',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--runbook-name', '--name', '-n'],
              description: 'The parameters supplied to the publish runbook operation',
              args: [
                Arg(
                name: 'runbook-nam'
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
          name: 'replace-content',
          description: 'Replace content of the runbook',
          options: [

            Option(
              name: '--content',
              description: 'The runbook content',
              args: [
                Arg(
                name: 'conten'
              )
              ]
            ),
            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--runbook-name', '--name', '-n'],
              description: 'The runbook name',
              args: [
                Arg(
                name: 'runbook-nam'
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
          name: 'revert-to-published',
          description: 'Revert the runbook content to last known published state',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--runbook-name', '--name', '-n'],
              description: 'The runbook name',
              args: [
                Arg(
                name: 'runbook-nam'
              )
              ]
            ),
            Option(
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
          description: 'Retrieve the runbook identified by runbook name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--runbook-name', '--name', '-n'],
              description: 'The runbook name',
              args: [
                Arg(
                name: 'runbook-nam'
              )
              ]
            ),
            Option(
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
          description: 'Start the runbook',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--runbook-name', '--name', '-n'],
              description: 'The runbook name',
              args: [
                Arg(
                name: 'runbook-nam'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'Parameters of the job. Expect value: KEY1=VALUE1 KEY2=VALUE2',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--run-on',
              description: 'RunOn which specifies the group name where the job is to be executed',
              args: [
                Arg(
                name: 'run-o'
              )
              ]
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
          description: 'Update the runbook identified by runbook name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the runbook',
              args: [
                Arg(
                name: 'descriptio'
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
              name: '--log-activity-trace',
              description: 'Activity level tracing options of the runbook',
              args: [
                Arg(
                name: 'log-activity-trac'
              )
              ]
            ),
            Option(
              name: '--log-progress',
              description: 'Progress log option of the runbook',
              args: [
                Arg(
                name: 'log-progress',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--log-verbose',
              description: 'Verbose log option of the runbook',
              args: [
                Arg(
                name: 'log-verbose',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--runbook-name', '--name', '-n'],
              description: 'The runbook name',
              args: [
                Arg(
                name: 'runbook-nam'
              )
              ]
            ),
            Option(
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the automation runbook is met',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
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
              name: ['--runbook-name', '--name', '-n'],
              description: 'The runbook name',
              args: [
                Arg(
                name: 'runbook-nam'
              )
              ]
            ),
            Option(
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
      name: 'schedule',
      description: 'Automation Schedule',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create automation schedule',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: '--frequency',
              description: 'The frequency of the schedule',
              args: [
                Arg(
                name: 'frequenc'
              )
              ]
            ),
            Option(
              name: '--interval',
              description: 'The interval of the schedule',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: ['--schedule-name', '--name', '-n'],
              description: 'The schedule name',
              args: [
                Arg(
                name: 'schedule-nam'
              )
              ]
            ),
            Option(
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
              description: 'The description of the schedule',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--expiry-time',
              description: 'The end time of the schedule. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'expiry-tim'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'The start time of the schedule. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--time-zone',
              description: 'The time zone of the schedule',
              args: [
                Arg(
                name: 'time-zon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an automation schedule',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--schedule-name', '--name', '-n'],
              description: 'The schedule name',
              args: [
                Arg(
                name: 'schedule-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Retrieve a list of schedules',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
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
          description: 'Retrieve the schedule identified by schedule name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--schedule-name', '--name', '-n'],
              description: 'The schedule name',
              args: [
                Arg(
                name: 'schedule-nam'
              )
              ]
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
          name: 'update',
          description: 'Update an automation schedule',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--schedule-name', '--name', '-n'],
              description: 'The schedule name',
              args: [
                Arg(
                name: 'schedule-nam'
              )
              ]
            ),
            Option(
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
              description: 'The description of the schedule',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--is-enabled',
              description: 'Indicate whether this schedule is enabled',
              args: [
                Arg(
                name: 'is-enabled',
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
      name: 'software-update-configuration',
      description: 'Automation software-update-configuration',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create automation software-update-configuration',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--configuration-name', '--name', '-n'],
              description: 'The name of the software update configuration',
              args: [
                Arg(
                name: 'configuration-nam'
              )
              ]
            ),
            Option(
              name: '--frequency',
              description: 'The frequency of the schedule',
              args: [
                Arg(
                name: 'frequenc'
              )
              ]
            ),
            Option(
              name: '--interval',
              description: 'The interval of the schedule',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--operating-system',
              description: 'Operating system of target machines',
              args: [
                Arg(
                name: 'operating-system',
                suggestions: [

                  FigSuggestion(name: 'Linux'),
                  FigSuggestion(name: 'Windows')
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
              name: '--azure-queries-locations',
              description: 'Space-separated list of Azure queries location in the software update configuration',
              args: [
                Arg(
                name: 'azure-queries-location'
              )
              ]
            ),
            Option(
              name: '--azure-queries-scope',
              description: 'Space-separated list of Azure queries scope in the software update configuration',
              args: [
                Arg(
                name: 'azure-queries-scop'
              )
              ]
            ),
            Option(
              name: '--azure-queries-tags',
              description: 'Space-separated list of Azure queries tag settings in the software update configuration',
              args: [
                Arg(
                name: 'azure-queries-tag'
              )
              ]
            ),
            Option(
              name: '--azure-virtual-machines',
              description: 'Space-separated list of azure resource Ids for azure virtual machines targeted by the software update configuration',
              args: [
                Arg(
                name: 'azure-virtual-machine'
              )
              ]
            ),
            Option(
              name: '--creation-time',
              description: 'The creation time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'creation-tim'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of the schedule',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--duration',
              description: 'Maximum time allowed for the software update configuration run. Duration needs to be specified using the format PT[n]H[n]M[n]S as per ISO8601',
              args: [
                Arg(
                name: 'duratio'
              )
              ]
            ),
            Option(
              name: '--excluded-kb-numbers',
              description: 'Space-separated list of KB numbers excluded from the software update configuration',
              args: [
                Arg(
                name: 'excluded-kb-number'
              )
              ]
            ),
            Option(
              name: '--expiry-time',
              description: 'The end time of the schedule. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'expiry-tim'
              )
              ]
            ),
            Option(
              name: '--expiry-time-offset-minutes',
              description: 'The expiry time\'s offset in minutes',
              args: [
                Arg(
                name: 'expiry-time-offset-minute'
              )
              ]
            ),
            Option(
              name: '--included-kb-numbers',
              description: 'Space-separated list of KB numbers included from the software update configuration',
              args: [
                Arg(
                name: 'included-kb-number'
              )
              ]
            ),
            Option(
              name: '--included-update-classifications',
              description: 'Update classification included in the software update configuration. A comma separated string with required values',
              args: [
                Arg(
                name: 'included-update-classification'
              )
              ]
            ),
            Option(
              name: '--is-enabled',
              description: 'Indicating whether this schedule is enabled',
              args: [
                Arg(
                name: 'is-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--last-modified-time',
              description: 'The last modified time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'last-modified-tim'
              )
              ]
            ),
            Option(
              name: '--next-run',
              description: 'The next run time of the schedule. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'next-ru'
              )
              ]
            ),
            Option(
              name: '--next-run-offset-minutes',
              description: 'The next run time\'s offset in minutes',
              args: [
                Arg(
                name: 'next-run-offset-minute'
              )
              ]
            ),
            Option(
              name: '--non-azure-computer-names',
              description: 'Space-separated list of names of non-azure machines targeted by the software update configuration',
              args: [
                Arg(
                name: 'non-azure-computer-name'
              )
              ]
            ),
            Option(
              name: '--non-azure-queries-function-alias',
              description: 'Log Analytics Saved Search name',
              args: [
                Arg(
                name: 'non-azure-queries-function-alia'
              )
              ]
            ),
            Option(
              name: '--non-azure-queries-workspace-id',
              description: 'Workspace Id for Log Analytics',
              args: [
                Arg(
                name: 'non-azure-queries-workspace-i'
              )
              ]
            ),
            Option(
              name: '--post-task-job-id',
              description: 'The job id of the task',
              args: [
                Arg(
                name: 'post-task-job-i'
              )
              ]
            ),
            Option(
              name: '--post-task-source',
              description: 'The name of the source of the task',
              args: [
                Arg(
                name: 'post-task-sourc'
              )
              ]
            ),
            Option(
              name: '--post-task-status',
              description: 'The status of the task',
              args: [
                Arg(
                name: 'post-task-statu'
              )
              ]
            ),
            Option(
              name: '--pre-task-job-id',
              description: 'The job id of the task',
              args: [
                Arg(
                name: 'pre-task-job-i'
              )
              ]
            ),
            Option(
              name: '--pre-task-source',
              description: 'The name of the source of the task',
              args: [
                Arg(
                name: 'pre-task-sourc'
              )
              ]
            ),
            Option(
              name: '--pre-task-status',
              description: 'The status of the task',
              args: [
                Arg(
                name: 'pre-task-statu'
              )
              ]
            ),
            Option(
              name: '--reboot-setting',
              description: 'Reboot setting for the software update configuration',
              args: [
                Arg(
                name: 'reboot-settin'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'The start time of the schedule. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--time-zone',
              description: 'The time zone of the schedule',
              args: [
                Arg(
                name: 'time-zon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an automation software-update-configuration',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--configuration-name', '--name', '-n'],
              description: 'The name of the software update configuration',
              args: [
                Arg(
                name: 'configuration-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List all software-update-configurations for the account',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
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
          description: 'Get a single software-update-configuration by name',
          options: [

            Option(
              name: '--automation-account-name',
              description: 'The name of the automation account',
              args: [
                Arg(
                name: 'automation-account-nam'
              )
              ]
            ),
            Option(
              name: ['--configuration-name', '--name', '-n'],
              description: 'The name of the software update configuration',
              args: [
                Arg(
                name: 'configuration-nam'
              )
              ]
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
          name: 'machine-runs',
          description: 'Software Update Configuration Machine Runs',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List software update configuration machine-runs',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
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
              description: 'Get a single software update configuration machine runs by Id',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--software-update-configuration-machine-run-id',
                  description: 'The Id of the software update configuration machine run',
                  args: [
                    Arg(
                    name: 'software-update-configuration-machine-run-id'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'runs',
          description: 'Software Update Configuration Runs',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Return list of software update configuration runs',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
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
              description: 'Get a single software update configuration runs by Id',
              options: [

                Option(
                  name: '--automation-account-name',
                  description: 'The name of the automation account',
                  args: [
                    Arg(
                    name: 'automation-account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--software-update-configuration-run-id',
                  description: 'The Id of the software update configuration run',
                  args: [
                    Arg(
                    name: 'software-update-configuration-run-i'
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
