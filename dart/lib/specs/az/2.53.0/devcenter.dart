// Auto-generated from TypeScript source: devcenter.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `devcenter` CLI
final FigSpec devcenterSpec = FigSpec(
  name: 'devcenter',
  description: 'Manage resources with devcenter',
  subcommands: [

    Subcommand(
      name: 'admin',
      description: 'Manage devcenter admin resources',
      subcommands: [

        Subcommand(
          name: 'attached-network',
          description: 'Manage attached networks',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an attached network connection',
              options: [

                Option(
                  name: ['--attached-network-connection-name', '--name', '-n'],
                  description: 'The name of the attached network connection',
                  args: [
                    Arg(
                    name: 'attached-network-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--network-connection-id',
                  description: 'The resource ID of the network connection you want to attach',
                  args: [
                    Arg(
                    name: 'network-connection-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
              description: 'Delete an attached network connection',
              options: [

                Option(
                  name: ['--attached-network-connection-name', '--name', '-n'],
                  description: 'The name of the attached network connection',
                  args: [
                    Arg(
                    name: 'attached-network-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the attached network connections configured for a dev center or project',
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
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
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
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an attached network connection configured for a dev center or project',
              options: [

                Option(
                  name: ['--attached-network-connection-name', '--name', '-n'],
                  description: 'The name of the attached network connection',
                  args: [
                    Arg(
                    name: 'attached-network-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
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
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
                  name: ['--attached-network-connection-name', '--name', '-n'],
                  description: 'The name of the attached network connection',
                  args: [
                    Arg(
                    name: 'attached-network-connection-nam'
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
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
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
          name: 'catalog',
          description: 'Manage catalogs',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a catalog',
              options: [

                Option(
                  name: ['--catalog-name', '--name', '-n'],
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--ado-git',
                  description: 'Properties for an Azure DevOps catalog type. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'ado-gi'
                  )
                  ]
                ),
                Option(
                  name: '--git-hub',
                  description: 'Properties for a GitHub catalog type. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'git-hu'
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
              description: 'Delete a catalog resource',
              options: [

                Option(
                  name: ['--catalog-name', '--name', '-n'],
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List catalogs for a dev center',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a catalog',
              options: [

                Option(
                  name: ['--catalog-name', '--name', '-n'],
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
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
              name: 'sync',
              description: 'Syncs templates for a template source',
              options: [

                Option(
                  name: ['--catalog-name', '--name', '-n'],
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
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
              name: 'update',
              description: 'Update a catalog',
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
                  name: '--ado-git',
                  description: 'Properties for an Azure DevOps catalog type. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'ado-gi'
                  )
                  ]
                ),
                Option(
                  name: ['--catalog-name', '--name', '-n'],
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
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
                  name: '--git-hub',
                  description: 'Properties for a GitHub catalog type. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'git-hu'
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
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition is met',
              options: [

                Option(
                  name: ['--catalog-name', '--name', '-n'],
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
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
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
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
          name: 'check-name-availability',
          description: 'Manage check name availability',
          subcommands: [

            Subcommand(
              name: 'execute',
              description: 'Check the availability of name for resource',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the resource for which availability needs to be checked',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--type',
                  description: 'The resource type',
                  args: [
                    Arg(
                    name: 'typ'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'devbox-definition',
          description: 'Manage dev box definitions',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a dev box definition',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--devbox-definition-name', '--name', '-n'],
                  description: 'The name of the dev box definition',
                  args: [
                    Arg(
                    name: 'devbox-definition-nam'
                  )
                  ]
                ),
                Option(
                  name: '--image-reference',
                  description: 'Image reference information. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'image-referenc'
                  )
                  ]
                ),
                Option(
                  name: '--os-storage-type',
                  description: 'The storage type used for the operating system disk of dev boxes created using this definition',
                  args: [
                    Arg(
                    name: 'os-storage-typ'
                  )
                  ]
                ),
                Option(
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
                  description: 'The SKU for dev boxes created using this definition. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'sk'
                  )
                  ]
                ),
                Option(
                  name: '--hibernate-support',
                  description: 'Indicates whether dev boxes created with this definition are capable of hibernation. Not all images are capable of supporting hibernation. To find out more see https://aka.ms/devbox/hibernate',
                  args: [
                    Arg(
                    name: 'hibernate-support',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. When not specified, the location of the resource group will be used',
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
              description: 'Delete a dev box definition',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--devbox-definition-name', '--name', '-n'],
                  description: 'The name of the dev box definition',
                  args: [
                    Arg(
                    name: 'devbox-definition-nam'
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List dev box definitions configured for a dev center or project',
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
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
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
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a dev box definition configured for a dev center or a project',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--devbox-definition-name', '--name', '-n'],
                  description: 'The name of the dev box definition',
                  args: [
                    Arg(
                    name: 'devbox-definition-nam'
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
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a dev box definition',
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
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--devbox-definition-name', '--name', '-n'],
                  description: 'The name of the dev box definition',
                  args: [
                    Arg(
                    name: 'devbox-definition-nam'
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
                  name: '--hibernate-support',
                  description: 'Indicates whether dev boxes created with this definition are capable of hibernation. Not all images are capable of supporting hibernation. To find out more see https://aka.ms/devbox/hibernate',
                  args: [
                    Arg(
                    name: 'hibernate-support',
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
                  name: '--image-reference',
                  description: 'Image reference information. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'image-referenc'
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
                  name: '--os-storage-type',
                  description: 'The storage type used for the operating system disk of dev boxes created using this definition',
                  args: [
                    Arg(
                    name: 'os-storage-typ'
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
                  name: '--sku',
                  description: 'The SKU for dev boxes created using this definition. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'sk'
                  )
                  ]
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
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--devbox-definition-name', '--name', '-n'],
                  description: 'The name of the dev box definition',
                  args: [
                    Arg(
                    name: 'devbox-definition-nam'
                  )
                  ]
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
          name: 'devcenter',
          description: 'Manage dev centers',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a dev center',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the dev center',
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
                  name: '--identity-type',
                  description: 'Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed)',
                  args: [
                    Arg(
                    name: 'identity-type',
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
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. When not specified, the location of the resource group will be used',
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
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--user-assigned-identities', '-u'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a dev center',
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
                  description: 'The name of the dev center',
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all dev centers in a resource group',
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
              name: 'show',
              description: 'Get a dev center',
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
                  description: 'The name of the dev center',
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
              description: 'Update a dev center',
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
                  name: '--identity-type',
                  description: 'Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed)',
                  args: [
                    Arg(
                    name: 'identity-type',
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
                  description: 'The name of the dev center',
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
                ),
                Option(
                  name: ['--user-assigned-identities', '-u'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
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
                  name: ['--name', '-n'],
                  description: 'The name of the dev center',
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
          name: 'environment-type',
          description: 'Manage environment types',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an environment type',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Delete an environment type',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
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
              description: 'List environment types for the devcenter',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get an environment type',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
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
              description: 'Update an environment type',
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
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
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
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
          name: 'gallery',
          description: 'Manage galleries',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a gallery',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '--name', '-n'],
                  description: 'The name of the gallery',
                  args: [
                    Arg(
                    name: 'gallery-nam'
                  )
                  ]
                ),
                Option(
                  name: '--gallery-resource-id',
                  description: 'The resource ID of the backing Azure Compute Gallery',
                  args: [
                    Arg(
                    name: 'gallery-resource-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
              description: 'Delete a gallery',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '--name', '-n'],
                  description: 'The name of the gallery',
                  args: [
                    Arg(
                    name: 'gallery-nam'
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List galleries for a dev center',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a gallery',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '--name', '-n'],
                  description: 'The name of the gallery',
                  args: [
                    Arg(
                    name: 'gallery-nam'
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
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--exists',
                  description: 'Wait until the resource exists'
                ),
                Option(
                  name: ['--gallery-name', '--name', '-n'],
                  description: 'The name of the gallery',
                  args: [
                    Arg(
                    name: 'gallery-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'image',
          description: 'Manage images',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List images for a dev center or gallery',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--gallery-name',
                  description: 'The name of the gallery',
                  args: [
                    Arg(
                    name: 'gallery-nam'
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
              description: 'Get a gallery image',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--gallery-name',
                  description: 'The name of the gallery',
                  args: [
                    Arg(
                    name: 'gallery-nam'
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
                  name: ['--image-name', '--name', '-n'],
                  description: 'The name of the image',
                  args: [
                    Arg(
                    name: 'image-nam'
                  )
                  ]
                ),
                Option(
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
          name: 'image-version',
          description: 'Manage image versions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List versions for an image',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--gallery-name',
                  description: 'The name of the gallery',
                  args: [
                    Arg(
                    name: 'gallery-nam'
                  )
                  ]
                ),
                Option(
                  name: '--image-name',
                  description: 'The name of the image',
                  args: [
                    Arg(
                    name: 'image-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get an image version',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--gallery-name',
                  description: 'The name of the gallery',
                  args: [
                    Arg(
                    name: 'gallery-nam'
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
                  name: '--image-name',
                  description: 'The name of the image',
                  args: [
                    Arg(
                    name: 'image-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--version-name', '--name', '-n'],
                  description: 'The version of the image',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                ),
                Option(
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
          name: 'network-connection',
          description: 'Manage network connections',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a network connection',
              options: [

                Option(
                  name: '--domain-join-type',
                  description: 'AAD Join type',
                  args: [
                    Arg(
                    name: 'domain-join-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureADJoin'),
                      FigSuggestion(name: 'HybridAzureADJoin')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subnet-id',
                  description: 'The subnet to attach dev boxes to',
                  args: [
                    Arg(
                    name: 'subnet-i'
                  )
                  ]
                ),
                Option(
                  name: '--domain-name',
                  description: 'Active Directory domain name',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: '--domain-password',
                  description: 'The password for the account used to join domain. If value is blank it\'s asked from the tty',
                  args: [
                    Arg(
                    name: 'domain-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--domain-username',
                  description: 'The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com',
                  args: [
                    Arg(
                    name: 'domain-usernam'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. When not specified, the location of the resource group will be used',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--networking-resource-group-name', '-r'],
                  description: 'The name for resource group where NICs will be placed',
                  args: [
                    Arg(
                    name: 'networking-resource-group-nam'
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
                  name: '--organization-unit',
                  description: 'Active Directory domain Organization Unit (OU)',
                  args: [
                    Arg(
                    name: 'organization-uni'
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
              description: 'Delete a network connection',
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
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List network connections',
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
              name: 'list-health-check',
              description: 'List health check status details',
              options: [

                Option(
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'list-outbound-network-dependencies-endpoint',
              description: 'List the endpoints that agents may call as part of Dev Box service administration. These FQDNs should be allowed for outbound access in order for the Dev Box service to function',
              options: [

                Option(
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'run-health-check',
              description: 'Triggers a new health check run. The execution and health check result can be tracked via the network Connection health check details',
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
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
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
              name: 'show',
              description: 'Get a network connection',
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
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'show-health-check',
              description: 'Get health check status details',
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
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a network connection',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Active Directory domain name',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: '--domain-password',
                  description: 'The password for the account used to join domain. If value is blank it\'s asked from the tty',
                  args: [
                    Arg(
                    name: 'domain-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--domain-username',
                  description: 'The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com',
                  args: [
                    Arg(
                    name: 'domain-usernam'
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
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
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
                  name: '--organization-unit',
                  description: 'Active Directory domain Organization Unit (OU)',
                  args: [
                    Arg(
                    name: 'organization-uni'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subnet-id',
                  description: 'The subnet to attach dev boxes to',
                  args: [
                    Arg(
                    name: 'subnet-i'
                  )
                  ]
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
                  name: ['--network-connection-name', '--name', '-n'],
                  description: 'Name of the network connection that can be applied to a pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
                  )
                  ]
                ),
                Option(
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
          name: 'pool',
          description: 'Manage pools',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a pool',
              options: [

                Option(
                  name: ['--devbox-definition-name', '-d'],
                  description: 'Name of a dev box definition in parent project of this pool',
                  args: [
                    Arg(
                    name: 'devbox-definition-nam'
                  )
                  ]
                ),
                Option(
                  name: '--local-administrator',
                  description: 'Indicates whether owners of dev boxes in this pool are added as local administrators on the dev box',
                  args: [
                    Arg(
                    name: 'local-administrator',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '--name', '-n'],
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--network-connection-name', '-c'],
                  description: 'Name of a network connection in parent project of this pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'The geo-location where the resource lives. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. When not specified, the location of the resource group will be used',
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
              description: 'Delete a pool',
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
                  name: ['--pool-name', '--name', '-n'],
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
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
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List pools for a project',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'run-health-check',
              description: 'Triggers a refresh of the pool status',
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
                  name: ['--pool-name', '--name', '-n'],
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
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
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a pool',
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
                  name: ['--pool-name', '--name', '-n'],
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a pool',
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
                  name: ['--devbox-definition-name', '-d'],
                  description: 'Name of a dev box definition in parent project of this pool',
                  args: [
                    Arg(
                    name: 'devbox-definition-nam'
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
                  name: '--local-administrator',
                  description: 'Indicates whether owners of dev boxes in this pool are added as local administrators on the dev box',
                  args: [
                    Arg(
                    name: 'local-administrator',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '--name', '-n'],
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--network-connection-name', '-c'],
                  description: 'Name of a network connection in parent project of this pool',
                  args: [
                    Arg(
                    name: 'network-connection-nam'
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
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
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
                  name: ['--pool-name', '--name', '-n'],
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
          name: 'project',
          description: 'Manage projects',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a project',
              options: [

                Option(
                  name: '--dev-center-id',
                  description: 'Resource ID of an associated dev center',
                  args: [
                    Arg(
                    name: 'dev-center-i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the project',
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
                  description: 'Description of the project',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. When not specified, the location of the resource group will be used',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--max-dev-boxes-per-user',
                  description: 'When specified, limits the maximum number of dev boxes a single user can create across all pools in the project. This will have no effect on existing dev boxes when reduced',
                  args: [
                    Arg(
                    name: 'max-dev-boxes-per-use'
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
              description: 'Delete a project',
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
                  description: 'The name of the project',
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List projects',
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
              name: 'show',
              description: 'Get a project',
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
                  description: 'The name of the project',
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
              description: 'Update a project',
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
                  name: '--description',
                  description: 'Description of the project',
                  args: [
                    Arg(
                    name: 'descriptio'
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
                  name: '--max-dev-boxes-per-user',
                  description: 'When specified, limits the maximum number of dev boxes a single user can create across all pools in the project. This will have no effect on existing dev boxes when reduced',
                  args: [
                    Arg(
                    name: 'max-dev-boxes-per-use'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the project',
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
                  name: ['--name', '-n'],
                  description: 'The name of the project',
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
          name: 'project-allowed-environment-type',
          description: 'Manage project allowed environment types',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List allowed environment types for a project',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get an allowed environment type',
              options: [

                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
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
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
          name: 'project-environment-type',
          description: 'Manage project environment types',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a project environment type',
              options: [

                Option(
                  name: '--deployment-target-id',
                  description: 'ID of a subscription that the environment type will be mapped to. The environment\'s resources will be deployed into this subscription',
                  args: [
                    Arg(
                    name: 'deployment-target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--status',
                  description: 'Defines whether this environment type can be used in this project',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--identity-type',
                  description: 'Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed)',
                  args: [
                    Arg(
                    name: 'identity-type',
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
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--roles',
                  description: 'A map of roles to assign to the environment creator. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'role'
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
                  name: ['--user-assigned-identities', '-u'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                ),
                Option(
                  name: '--user-role-assignments',
                  description: 'Role assignments created on environment backing resources. This is a mapping from a user object ID to an object of role definition IDs. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'user-role-assignment'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a project environment type',
              options: [

                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
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
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List environment types for a project',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a project environment type',
              options: [

                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
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
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a project environment type',
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
                  name: '--deployment-target-id',
                  description: 'ID of a subscription that the environment type will be mapped to. The environment\'s resources will be deployed into this subscription',
                  args: [
                    Arg(
                    name: 'deployment-target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-type-name', '--name', '-n'],
                  description: 'The name of the environment type',
                  args: [
                    Arg(
                    name: 'environment-type-nam'
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
                  name: '--identity-type',
                  description: 'Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed)',
                  args: [
                    Arg(
                    name: 'identity-type',
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
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
                  name: '--roles',
                  description: 'A map of roles to assign to the environment creator. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'role'
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
                  name: '--status',
                  description: 'Defines whether this environment type can be used in this project',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
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
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--user-assigned-identities', '-u'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                ),
                Option(
                  name: '--user-role-assignments',
                  description: 'Role assignments created on environment backing resources. This is a mapping from a user object ID to an object of role definition IDs. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'user-role-assignment'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'schedule',
          description: 'Manage schedules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a schedule',
              options: [

                Option(
                  name: '--pool-name',
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--time',
                  description: 'The target time to trigger the action. The format is HH:MM',
                  args: [
                    Arg(
                    name: 'tim'
                  )
                  ]
                ),
                Option(
                  name: '--time-zone',
                  description: 'The IANA timezone id at which the schedule should execute',
                  args: [
                    Arg(
                    name: 'time-zon'
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
                  name: '--state',
                  description: 'Indicates whether or not this scheduled task is enabled',
                  args: [
                    Arg(
                    name: 'state',
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
              name: 'delete',
              description: 'Delete a schedule',
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
                  name: '--pool-name',
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'show',
              description: 'Get a schedule',
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
                  name: '--pool-name',
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a schedule',
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
                  name: '--pool-name',
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
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
                  name: '--state',
                  description: 'Indicates whether or not this scheduled task is enabled',
                  args: [
                    Arg(
                    name: 'state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
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
                  name: '--time',
                  description: 'The target time to trigger the action. The format is HH:MM',
                  args: [
                    Arg(
                    name: 'tim'
                  )
                  ]
                ),
                Option(
                  name: '--time-zone',
                  description: 'The IANA timezone id at which the schedule should execute',
                  args: [
                    Arg(
                    name: 'time-zon'
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
                  name: '--pool-name',
                  description: 'Name of the pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
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
          name: 'sku',
          description: 'Manage skus',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the Microsoft.DevCenter SKUs available in a subscription',
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'usage',
          description: 'Manage usages',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the current usages and limits in this location for the provided subscription',
              options: [

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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dev',
      description: 'Manage devcenter developer resources',
      subcommands: [

        Subcommand(
          name: 'catalog',
          description: 'Manage catalogs',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all of the catalogs available for a project',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the specified catalog within the project',
              options: [

                Option(
                  name: ['--catalog-name', '--name', '-n'],
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'dev-box',
          description: 'Manage dev boxes',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a dev box',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '--pool'],
                  description: 'The name of the dev box pool this machine belongs to',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delay-action',
              description: 'Delay an action',
              options: [

                Option(
                  name: '--action-name',
                  description: 'The name of an action that will take place on a dev box',
                  args: [
                    Arg(
                    name: 'action-nam'
                  )
                  ]
                ),
                Option(
                  name: '--delay-time',
                  description: 'The delayed timespan from the scheduled action time. Format HH:MM',
                  args: [
                    Arg(
                    name: 'delay-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delay-all-actions',
              description: 'Delay all actions',
              options: [

                Option(
                  name: '--delay-time',
                  description: 'The delayed timespan from the earliest scheduled time of all actions. Format HH:MM',
                  args: [
                    Arg(
                    name: 'delay-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a dev box',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
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
              description: 'List dev boxes for a user, list dev boxes in the dev center for a project and user, or list dev boxes that the caller has access to in the dev center',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-action',
              description: 'List actions on a dev box',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-operation',
              description: 'Lists operations on the dev box which have occurred within the past 90 days',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'repair',
              description: 'Attempts automated repair steps to resolve common problems on a Dev Box. The dev box may restart during this operation',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restart',
              description: 'Restart a dev box',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a dev box',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-action',
              description: 'Get an action',
              options: [

                Option(
                  name: '--action-name',
                  description: 'The name of an action that will take place on a dev box',
                  args: [
                    Arg(
                    name: 'action-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-operation',
              description: 'Get an operation on a dev box',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: '--operation-id',
                  description: 'The id of the operation on a dev box',
                  args: [
                    Arg(
                    name: 'operation-i'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-remote-connection',
              description: 'Get remote connection info',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'skip-action',
              description: 'Skip an action',
              options: [

                Option(
                  name: '--action-name',
                  description: 'The name of an action that will take place on a dev box',
                  args: [
                    Arg(
                    name: 'action-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'start',
              description: 'Start a dev box',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'stop',
              description: 'Stop a dev box',
              options: [

                Option(
                  name: ['--dev-box-name', '--name', '-n'],
                  description: 'The name of a dev box',
                  args: [
                    Arg(
                    name: 'dev-box-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--hibernate',
                  description: 'Optional parameter to hibernate the dev box',
                  args: [
                    Arg(
                    name: 'hibernate',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'environment',
          description: 'Manage environments',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an environment',
              options: [

                Option(
                  name: '--catalog-name',
                  description: 'Name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-definition-name', '-e'],
                  description: 'Name of the environment definition',
                  args: [
                    Arg(
                    name: 'environment-definition-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-name', '--name', '-n'],
                  description: 'The name of the environment',
                  args: [
                    Arg(
                    name: 'environment-nam'
                  )
                  ]
                ),
                Option(
                  name: '--environment-type',
                  description: 'Environment type',
                  args: [
                    Arg(
                    name: 'environment-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--parameters',
                  description: 'Parameters object for the environment. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'parameter'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an environment and all its associated resources',
              options: [

                Option(
                  name: ['--environment-name', '--name', '-n'],
                  description: 'The name of the environment',
                  args: [
                    Arg(
                    name: 'environment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
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
              name: 'deploy',
              description: 'Update an environment',
              options: [

                Option(
                  name: ['--environment-name', '--name', '-n'],
                  description: 'The name of the environment',
                  args: [
                    Arg(
                    name: 'environment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--parameters',
                  description: 'Parameters object for the environment. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'parameter'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the environments for a project or list the environments for a user within a project',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an environment',
              options: [

                Option(
                  name: ['--environment-name', '--name', '-n'],
                  description: 'The name of the environment',
                  args: [
                    Arg(
                    name: 'environment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an environment',
              options: [

                Option(
                  name: ['--environment-name', '--name', '-n'],
                  description: 'The name of the environment',
                  args: [
                    Arg(
                    name: 'environment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--parameters',
                  description: 'Parameters object for the environment. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'parameter'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The AAD object id of the user. If value is \'me\', the identity is taken from the authentication context',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'environment-definition',
          description: 'Manage environment definitions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all environment definitions available within a catalog or list all environment definitions available for a project',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: '--catalog-name',
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an environment definition from a catalog',
              options: [

                Option(
                  name: '--catalog-name',
                  description: 'The name of the catalog',
                  args: [
                    Arg(
                    name: 'catalog-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--definition-name', '--name', '-n'],
                  description: 'The name of the environment definition',
                  args: [
                    Arg(
                    name: 'definition-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'environment-type',
          description: 'Manage environment types',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all environment types configured for a project',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pool',
          description: 'Manage pools',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List available pools',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a pool',
              options: [

                Option(
                  name: ['--pool-name', '--name', '-n'],
                  description: 'The name of a pool of dev boxes',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'project',
          description: 'Manage projects',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all projects',
              options: [

                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a project',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The dev center project upon which to execute operations',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'schedule',
          description: 'Manage schedules',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List schedules',
              options: [

                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '--pool'],
                  description: 'The name of a pool of dev boxes',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a schedule',
              options: [

                Option(
                  name: ['--pool-name', '--pool'],
                  description: 'The name of a pool of dev boxes',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--project-name', '--project'],
                  description: 'The name of the project. Use az configure -d project=<project_name> to configure a default',
                  args: [
                    Arg(
                    name: 'project-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dev-center-name', '--dev-center', '-d'],
                  description: 'The name of the dev center. Use az configure -d dev-center=<dev_center_name> to configure a default',
                  args: [
                    Arg(
                    name: 'dev-center-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The API endpoint for the developer resources. Use az configure -d endpoint=<endpoint_uri> to configure a default',
                  args: [
                    Arg(
                    name: 'endpoin'
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
