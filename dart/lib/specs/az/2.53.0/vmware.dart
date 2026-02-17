// Auto-generated from TypeScript source: vmware.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vmware` CLI
final FigSpec vmwareSpec = FigSpec(
  name: 'vmware',
  description: 'Commands to manage Azure VMware Solution',
  subcommands: [

    Subcommand(
      name: 'addon',
      description: 'Commands to manage addons for a private cloud',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List addons in a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          name: 'arc',
          description: 'Commands to manage a Arc addon',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Arc addon for a private cloud',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vcenter',
                  description: 'The VMware vCenter resource ID',
                  args: [
                    Arg(
                    name: 'vcente'
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
              description: 'Delete an Arc addon for a private cloud',
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Show details of an Arc addon for a private cloud',
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an Arc addon for a private cloud',
              options: [

                Option(
                  name: '--vcenter',
                  description: 'The VMware vCenter resource ID',
                  args: [
                    Arg(
                    name: 'vcente'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
          name: 'hcx',
          description: 'Commands to manage a HCX addon',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a HCX addon for a private cloud',
              options: [

                Option(
                  name: '--offer',
                  description: 'The HCX offer, example VMware MaaS Cloud Provider (Enterprise)',
                  args: [
                    Arg(
                    name: 'offe'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Delete a HCX addon for a private cloud',
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Show details of a HCX addon for a private cloud',
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a HCX addon for a private cloud',
              options: [

                Option(
                  name: '--offer',
                  description: 'The HCX offer, example VMware MaaS Cloud Provider (Enterprise)',
                  args: [
                    Arg(
                    name: 'offe'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
          name: 'srm',
          description: 'Commands to manage a Site Recovery Manager (SRM) addon',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Site Recovery Manager (SRM) addon for a private cloud',
              options: [

                Option(
                  name: '--license-key',
                  description: 'The Site Recovery Manager (SRM) license',
                  args: [
                    Arg(
                    name: 'license-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Delete a Site Recovery Manager (SRM) addon for a private cloud',
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Show details of a Site Recovery Manager (SRM) addon',
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a Site Recovery Manager (SRM) addon for a private cloud',
              options: [

                Option(
                  name: '--license-key',
                  description: 'The Site Recovery Manager (SRM) license',
                  args: [
                    Arg(
                    name: 'license-ke'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
          name: 'vr',
          description: 'Commands to manage a vSphere Replication (VR) addon',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a vSphere Replication (VR) addon for a private cloud',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vrs-count',
                  description: 'The vSphere Replication Server (VRS) count',
                  args: [
                    Arg(
                    name: 'vrs-coun'
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
              description: 'Delete a vSphere Replication (VR) addon for a private cloud',
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Show details of a vSphere Replication (VR) addon for a private cloud',
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a vSphere Replication (VR) addon for a private cloud',
              options: [

                Option(
                  name: '--vrs-count',
                  description: 'The vSphere Replication Server (VRS) count',
                  args: [
                    Arg(
                    name: 'vrs-coun'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
        )
      ]
    ),
    Subcommand(
      name: 'authorization',
      description: 'Commands to manage the authorizations of an ExpressRoute Circuit for a private cloud',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an ExpressRoute Circuit Authorization in a private cloud',
          options: [

            Option(
              name: ['--authorization-name', '--name', '-n'],
              description: 'Name of the ExpressRoute Circuit Authorization in the private cloud',
              args: [
                Arg(
                name: 'authorization-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--express-route-id',
              description: 'The ID of the ExpressRoute Circuit',
              args: [
                Arg(
                name: 'express-route-i'
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
          description: 'Delete an ExpressRoute Circuit Authorization in a private cloud',
          options: [

            Option(
              name: ['--authorization-name', '--name', '-n'],
              description: 'Name of the ExpressRoute Circuit Authorization in the private cloud',
              args: [
                Arg(
                name: 'authorization-nam'
              )
              ]
            ),
            Option(
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'List ExpressRoute Circuit Authorizations in a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Get an ExpressRoute Circuit Authorization by name in a private cloud',
          options: [

            Option(
              name: ['--authorization-name', '--name', '-n'],
              description: 'Name of the ExpressRoute Circuit Authorization in the private cloud',
              args: [
                Arg(
                name: 'authorization-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
              name: ['--authorization-name', '--name', '-n'],
              description: 'Name of the ExpressRoute Circuit Authorization in the private cloud',
              args: [
                Arg(
                name: 'authorization-nam'
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
      name: 'cloud-link',
      description: 'Commands to manage cloud links in a private cloud',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a cloud link in a private cloud',
          options: [

            Option(
              name: ['--cloud-link-name', '--name', '-n'],
              description: 'Name of the cloud link resource',
              args: [
                Arg(
                name: 'cloud-link-nam'
              )
              ]
            ),
            Option(
              name: '--linked-cloud',
              description: 'Identifier of the other private cloud participating in the link',
              args: [
                Arg(
                name: 'linked-clou'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Delete a cloud link in a private cloud',
          options: [

            Option(
              name: ['--cloud-link-name', '--name', '-n'],
              description: 'Name of the cloud link resource',
              args: [
                Arg(
                name: 'cloud-link-nam'
              )
              ]
            ),
            Option(
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'List cloud link in a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Show details of a cloud link in a private cloud',
          options: [

            Option(
              name: ['--cloud-link-name', '--name', '-n'],
              description: 'Name of the cloud link resource',
              args: [
                Arg(
                name: 'cloud-link-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Update a cloud link in a private cloud',
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
              name: ['--cloud-link-name', '--name', '-n'],
              description: 'Name of the cloud link resource',
              args: [
                Arg(
                name: 'cloud-link-nam'
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
              name: '--linked-cloud',
              description: 'Identifier of the other private cloud participating in the link',
              args: [
                Arg(
                name: 'linked-clou'
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
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
      name: 'cluster',
      description: 'Commands to manage all the clusters in a private cloud, excluding the first cluster which is the default management cluster.\n\n\t\tThe default management cluster is created and managed as part of the private cloud. To view details of the management cluster, use az vmware private-cloud show',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a cluster in a private cloud',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
              description: 'The name of the SKU',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: ['--cluster-size', '--size'],
              description: 'The cluster size',
              args: [
                Arg(
                name: 'cluster-siz'
              )
              ]
            ),
            Option(
              name: '--hosts',
              description: 'The hosts Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'host'
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
          description: 'Delete a cluster in a private cloud, excluding the first cluster which is the default management cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'List clusters in a private cloud, excluding the first cluster which is the default management cluster',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          name: 'list-zones',
          description: 'List hosts by zone in a cluster in a private cloud, including the first cluster which is the default management cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Get a cluster by name in a private cloud, excluding the first cluster which is the default management cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Update a cluster in a private cloud, excluding the first cluster which is the default management cluster',
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
              name: ['--cluster-name', '--name', '-n'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-size', '--size'],
              description: 'The cluster size',
              args: [
                Arg(
                name: 'cluster-siz'
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
              name: '--hosts',
              description: 'The hosts Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'host'
              )
              ]
            ),
            Option(
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
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
              description: 'The name of the SKU',
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition is met',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
      name: 'datastore',
      description: 'Commands to manage a datastore in a private cloud cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Please use "netapp-volume create" or "disk-pool-volume create" instead'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a datastore in a private cloud cluster',
          options: [

            Option(
              name: ['--cluster-name', '--cluster'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--datastore-name', '--name', '-n'],
              description: 'Name of the datastore in the private cloud cluster',
              args: [
                Arg(
                name: 'datastore-nam'
              )
              ]
            ),
            Option(
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
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'List datastores in a private cloud cluster',
          options: [

            Option(
              name: ['--cluster-name', '--cluster'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Show details of a datastore in a private cloud cluster',
          options: [

            Option(
              name: ['--cluster-name', '--cluster'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--datastore-name', '--name', '-n'],
              description: 'Name of the datastore in the private cloud cluster',
              args: [
                Arg(
                name: 'datastore-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
              name: ['--cluster-name', '--cluster'],
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--datastore-name', '--name', '-n'],
              description: 'Name of the datastore in the private cloud cluster',
              args: [
                Arg(
                name: 'datastore-nam'
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
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          name: 'disk-pool-volume',
          description: 'Create a VMFS datastore in a private cloud cluster using Microsoft.StoragePool provided iSCSI target',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a VMFS datastore in a private cloud cluster using Microsoft.StoragePool provided iSCSI target',
              options: [

                Option(
                  name: ['--cluster-name', '--cluster'],
                  description: 'Name of the cluster in the private cloud',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--datastore-name', '--name', '-n'],
                  description: 'Name of the datastore in the private cloud cluster',
                  args: [
                    Arg(
                    name: 'datastore-nam'
                  )
                  ]
                ),
                Option(
                  name: '--lun-name',
                  description: 'Name of the LUN to be used for datastore',
                  args: [
                    Arg(
                    name: 'lun-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'Azure resource ID of the iSCSI target',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: '--mount-option',
                  description: 'Mode that describes whether the LUN has to be mounted as a datastore or attached as a LUN',
                  args: [
                    Arg(
                    name: 'mount-option',
                    suggestions: [

                      FigSuggestion(name: 'ATTACH'),
                      FigSuggestion(name: 'MOUNT')
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'netapp-volume',
          description: 'Create a new Microsoft.NetApp provided NetApp volume in a private cloud cluster',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new Microsoft.NetApp provided NetApp volume in a private cloud cluster',
              options: [

                Option(
                  name: ['--cluster-name', '--cluster'],
                  description: 'Name of the cluster in the private cloud',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--datastore-name', '--name', '-n'],
                  description: 'Name of the datastore in the private cloud cluster',
                  args: [
                    Arg(
                    name: 'datastore-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--net-app-volumn', '--volume-id'],
                  description: 'Azure resource ID of the NetApp volume',
                  args: [
                    Arg(
                    name: 'net-app-volum'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'global-reach-connection',
      description: 'Commands to manage global reach connections in a private cloud',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a global reach connection in a private cloud',
          options: [

            Option(
              name: ['--global-reach-connection-name', '--name', '-n'],
              description: 'Name of the global reach connection in the private cloud',
              args: [
                Arg(
                name: 'global-reach-connection-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--authorization-key',
              description: 'Authorization key from the peer express route used for the global reach connection',
              args: [
                Arg(
                name: 'authorization-ke'
              )
              ]
            ),
            Option(
              name: '--express-route-id',
              description: 'The ID of the Private Cloud\'s ExpressRoute Circuit that is participating in the global reach connection',
              args: [
                Arg(
                name: 'express-route-i'
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
              name: '--peer-express-route-circuit',
              description: 'Identifier of the ExpressRoute Circuit to peer with in the global reach connection',
              args: [
                Arg(
                name: 'peer-express-route-circui'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a global reach connection in a private cloud',
          options: [

            Option(
              name: ['--global-reach-connection-name', '--name', '-n'],
              description: 'Name of the global reach connection in the private cloud',
              args: [
                Arg(
                name: 'global-reach-connection-nam'
              )
              ]
            ),
            Option(
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'List global reach connections in a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Get a global reach connection by name in a private cloud',
          options: [

            Option(
              name: ['--global-reach-connection-name', '--name', '-n'],
              description: 'Name of the global reach connection in the private cloud',
              args: [
                Arg(
                name: 'global-reach-connection-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
              name: ['--global-reach-connection-name', '--name', '-n'],
              description: 'Name of the global reach connection in the private cloud',
              args: [
                Arg(
                name: 'global-reach-connection-nam'
              )
              ]
            ),
            Option(
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
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
      name: 'hcx-enterprise-site',
      description: 'Commands to manage HCX Enterprise Sites in a private cloud',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an HCX Enterprise Site in a private cloud',
          options: [

            Option(
              name: ['--hcx-enterprise-site-name', '--name', '-n'],
              description: 'Name of the HCX Enterprise Site in the private cloud',
              args: [
                Arg(
                name: 'hcx-enterprise-site-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
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
          name: 'delete',
          description: 'Delete an HCX Enterprise Site in a private cloud',
          options: [

            Option(
              name: ['--hcx-enterprise-site-name', '--name', '-n'],
              description: 'Name of the HCX Enterprise Site in the private cloud',
              args: [
                Arg(
                name: 'hcx-enterprise-site-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'List HCX Enterprise Sites in a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Get an HCX Enterprise Site by name in a private cloud',
          options: [

            Option(
              name: ['--hcx-enterprise-site-name', '--name', '-n'],
              description: 'Name of the HCX Enterprise Site in the private cloud',
              args: [
                Arg(
                name: 'hcx-enterprise-site-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'The name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
      name: 'location',
      description: 'Commands to check availability by location',
      subcommands: [

        Subcommand(
          name: 'check-quota-availability',
          description: 'Return quota for subscription by region',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
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
          name: 'check-trial-availability',
          description: 'Return trial status for subscription by region',
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
              description: 'The name of the SKU',
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
            )
          ]
        ),
        Subcommand(
          name: 'checkquotaavailability',
          description: 'Return quota for subscription by region',
          options: [

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
          name: 'checktrialavailability',
          description: 'Return trial status for subscription by region',
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
              name: '--sku',
              description: 'The name of the SKU',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'placement-policy',
      description: 'Commands to manage placement policies',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List placement policies in a private cloud cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Get a placement policy by name in a private cloud cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--placement-policy-name', '--name', '-n'],
              description: 'Name of the VMware vSphere Distributed Resource Scheduler (DRS) placement policy',
              args: [
                Arg(
                name: 'placement-policy-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          name: 'vm',
          description: 'Commands to manage VM placement policies',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a VM placement policy in a private cloud cluster',
              options: [

                Option(
                  name: '--affinity-type',
                  description: 'Placement policy affinity type',
                  args: [
                    Arg(
                    name: 'affinity-type',
                    suggestions: [

                      FigSuggestion(name: 'Affinity'),
                      FigSuggestion(name: 'AntiAffinity')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cluster-name',
                  description: 'Name of the cluster in the private cloud',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--placement-policy-name', '--name', '-n'],
                  description: 'Name of the VMware vSphere Distributed Resource Scheduler (DRS) placement policy',
                  args: [
                    Arg(
                    name: 'placement-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-members',
                  description: 'Virtual machine members list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'vm-member'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the placement policy',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  description: 'Whether the placement policy is enabled or disabled',
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
              description: 'Delete a VM placement policy in a private cloud cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'Name of the cluster in the private cloud',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--placement-policy-name', '--name', '-n'],
                  description: 'Name of the VMware vSphere Distributed Resource Scheduler (DRS) placement policy',
                  args: [
                    Arg(
                    name: 'placement-policy-nam'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              name: 'update',
              description: 'Update a VM placement policy in a private cloud cluster',
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
                  name: '--cluster-name',
                  description: 'Name of the cluster in the private cloud',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the placement policy',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  name: ['--placement-policy-name', '--name', '-n'],
                  description: 'Name of the VMware vSphere Distributed Resource Scheduler (DRS) placement policy',
                  args: [
                    Arg(
                    name: 'placement-policy-nam'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
                  description: 'Whether the placement policy is enabled or disabled',
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
                  name: '--vm-members',
                  description: 'Virtual machine members list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'vm-member'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'vm-host',
          description: 'Commands to manage VM Host placement policies',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a VM Host placement policy in a private cloud cluster',
              options: [

                Option(
                  name: '--affinity-type',
                  description: 'Placement policy affinity type',
                  args: [
                    Arg(
                    name: 'affinity-type',
                    suggestions: [

                      FigSuggestion(name: 'Affinity'),
                      FigSuggestion(name: 'AntiAffinity')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cluster-name',
                  description: 'Name of the cluster in the private cloud',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--host-members',
                  description: 'Host members list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'host-member'
                  )
                  ]
                ),
                Option(
                  name: ['--placement-policy-name', '--name', '-n'],
                  description: 'Name of the VMware vSphere Distributed Resource Scheduler (DRS) placement policy',
                  args: [
                    Arg(
                    name: 'placement-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-members',
                  description: 'Virtual machine members list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'vm-member'
                  )
                  ]
                ),
                Option(
                  name: '--affinity-strength',
                  description: 'Vm-host placement policy affinity strength (should/must)',
                  args: [
                    Arg(
                    name: 'affinity-strength',
                    suggestions: [

                      FigSuggestion(name: 'Must'),
                      FigSuggestion(name: 'Should')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--azure-hybrid-benefit',
                  description: 'Placement policy azure hybrid benefit opt-in type',
                  args: [
                    Arg(
                    name: 'azure-hybrid-benefit',
                    suggestions: [

                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'SqlHost')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the placement policy',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  description: 'Whether the placement policy is enabled or disabled',
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
              description: 'Delete a VM Host placement policy in a private cloud cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'Name of the cluster in the private cloud',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--placement-policy-name', '--name', '-n'],
                  description: 'Name of the VMware vSphere Distributed Resource Scheduler (DRS) placement policy',
                  args: [
                    Arg(
                    name: 'placement-policy-nam'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              name: 'update',
              description: 'Update a VM Host placement policy in a private cloud cluster',
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
                  name: '--affinity-strength',
                  description: 'Vm-host placement policy affinity strength (should/must)',
                  args: [
                    Arg(
                    name: 'affinity-strength',
                    suggestions: [

                      FigSuggestion(name: 'Must'),
                      FigSuggestion(name: 'Should')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--azure-hybrid-benefit',
                  description: 'Placement policy azure hybrid benefit opt-in type',
                  args: [
                    Arg(
                    name: 'azure-hybrid-benefit',
                    suggestions: [

                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'SqlHost')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cluster-name',
                  description: 'Name of the cluster in the private cloud',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the placement policy',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  name: '--host-members',
                  description: 'Host members list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'host-member'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--placement-policy-name', '--name', '-n'],
                  description: 'Name of the VMware vSphere Distributed Resource Scheduler (DRS) placement policy',
                  args: [
                    Arg(
                    name: 'placement-policy-nam'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
                  description: 'Whether the placement policy is enabled or disabled',
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
                  name: '--vm-members',
                  description: 'Virtual machine members list Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'vm-member'
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
      name: 'private-cloud',
      description: 'Commands to manage private clouds',
      subcommands: [

        Subcommand(
          name: 'add-cmk-encryption',
          description: 'Add a Customer Managed Keys Encryption to a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--enc-kv-key-name',
              description: 'The name of the encryption key vault key',
              args: [
                Arg(
                name: 'enc-kv-key-nam'
              )
              ]
            ),
            Option(
              name: '--enc-kv-key-version',
              description: 'The version of the encryption key vault key',
              args: [
                Arg(
                name: 'enc-kv-key-versio'
              )
              ]
            ),
            Option(
              name: '--enc-kv-url',
              description: 'The URL of the encryption key vault',
              args: [
                Arg(
                name: 'enc-kv-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'add-identity-source',
          description: 'Add a vCenter Single Sign On Identity Source to a private cloud',
          options: [

            Option(
              name: '--alias',
              description: 'The domain\'s NetBIOS name',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--base-group-dn',
              description: 'The base distinguished name for groups',
              args: [
                Arg(
                name: 'base-group-d'
              )
              ]
            ),
            Option(
              name: '--base-user-dn',
              description: 'The base distinguished name for users',
              args: [
                Arg(
                name: 'base-user-d'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'The domain\'s dns name',
              args: [
                Arg(
                name: 'domai'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the identity source',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The password of the Active Directory user with a minimum of read-only access to Base DN for users and groups',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--primary-server',
              description: 'Primary server URL',
              args: [
                Arg(
                name: 'primary-serve'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'The ID of an Active Directory user with a minimum of read-only access to Base DN for users and group',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--secondary-server',
              description: 'Secondary server URL',
              args: [
                Arg(
                name: 'secondary-serve'
              )
              ]
            ),
            Option(
              name: '--ssl',
              description: 'Protect LDAP communication using SSL certificate (LDAPS). Specify "Enabled" or "Disabled"',
              args: [
                Arg(
                name: 'ss'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'addidentitysource',
          description: 'Add a vCenter Single Sign On Identity Source to a private cloud',
          options: [

            Option(
              name: '--alias',
              description: 'The domain\'s NetBIOS name',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--base-group-dn',
              description: 'The base distinguished name for groups',
              args: [
                Arg(
                name: 'base-group-d'
              )
              ]
            ),
            Option(
              name: '--base-user-dn',
              description: 'The base distinguished name for users',
              args: [
                Arg(
                name: 'base-user-d'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'The domain\'s dns name',
              args: [
                Arg(
                name: 'domai'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the identity source',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The password of the Active Directory user with a minimum of read-only access to Base DN for users and groups',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--primary-server',
              description: 'Primary server URL',
              args: [
                Arg(
                name: 'primary-serve'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'The ID of an Active Directory user with a minimum of read-only access to Base DN for users and group',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--secondary-server',
              description: 'Secondary server URL',
              args: [
                Arg(
                name: 'secondary-serve'
              )
              ]
            ),
            Option(
              name: '--ssl',
              description: 'Protect LDAP communication using SSL certificate (LDAPS). Specify "Enabled" or "Disabled"',
              args: [
                Arg(
                name: 'ss'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a private cloud',
          options: [

            Option(
              name: '--cluster-size',
              description: 'Number of hosts for the default management cluster. Minimum of 3 and maximum of 16',
              args: [
                Arg(
                name: 'cluster-siz'
              )
              ]
            ),
            Option(
              name: ['--private-cloud-name', '--name', '-n'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-cloud-nam'
              )
              ]
            ),
            Option(
              name: '--network-block',
              description: 'The block of addresses should be unique across VNet in your subscription as well as on-premise. Make sure the CIDR format is conformed to (A.B.C.D/X) where A,B,C,D are between 0 and 255, and X is between 0 and 22',
              args: [
                Arg(
                name: 'network-bloc'
              )
              ]
            ),
            Option(
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
              description: 'The name of the SKU',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: ['--accept-eula', '--yes', '-y'],
              description: 'Accept the end-user license agreement without prompting'
            ),
            Option(
              name: ['--extended-network-blocks', '--ext-nw-blocks'],
              description: 'Array of additional networks noncontiguous with networkBlock. Networks must be unique and non-overlapping across VNet in your subscription, on-premise, and this privateCloud networkBlock attribute. Make sure the CIDR format conforms to (A.B.C.D/X). Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'extended-network-block'
              )
              ]
            ),
            Option(
              name: '--internet',
              description: 'Connectivity to internet is enabled or disabled',
              args: [
                Arg(
                name: 'internet',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Resource location When not specified, the location of the resource group will be used',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Enable a system assigned identity',
              args: [
                Arg(
                name: 'mi-system-assigned',
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
              name: '--nsxt-password',
              description: 'NSX-T Manager password when the private cloud is created If value is blank it\'s asked from the tty',
              args: [
                Arg(
                name: 'nsxt-passwor'
              )
              ]
            ),
            Option(
              name: '--secondary-zone',
              description: 'The secondary availability zone for the private cloud',
              args: [
                Arg(
                name: 'secondary-zon'
              )
              ]
            ),
            Option(
              name: '--strategy',
              description: 'The availability strategy for the private cloud',
              args: [
                Arg(
                name: 'strategy',
                suggestions: [

                  FigSuggestion(name: 'DualZone'),
                  FigSuggestion(name: 'SingleZone')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vcenter-password',
              description: 'VCenter admin password when the private cloud is created If value is blank it\'s asked from the tty',
              args: [
                Arg(
                name: 'vcenter-passwor'
              )
              ]
            ),
            Option(
              name: '--zone',
              description: 'The primary availability zone for the private cloud',
              args: [
                Arg(
                name: 'zon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a private cloud',
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
              name: ['--private-cloud-name', '--name', '-n'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-cloud-nam'
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
          name: 'delete-cmk-encryption',
          description: 'Delete a Customer Managed Keys Encryption from a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Delete without confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'delete-identity-source',
          description: 'Delete a vCenter Single Sign On Identity Source for a private cloud',
          options: [

            Option(
              name: '--alias',
              description: 'The domain\'s NetBIOS name',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'The domain\'s dns name',
              args: [
                Arg(
                name: 'domai'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the identity source',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Delete without confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'deleteidentitysource',
          description: 'Delete a vCenter Single Sign On Identity Source for a private cloud',
          options: [

            Option(
              name: '--alias',
              description: 'The domain\'s NetBIOS name',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'The domain\'s dns name',
              args: [
                Arg(
                name: 'domai'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the identity source',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Delete without confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'disable-cmk-encryption',
          description: 'Disable a Customer Managed Keys Encryption from a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Delete without confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'enable-cmk-encryption',
          description: 'Enable a Customer Managed Keys Encryption to a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--enc-kv-key-name',
              description: 'The name of the encryption key vault key',
              args: [
                Arg(
                name: 'enc-kv-key-nam'
              )
              ]
            ),
            Option(
              name: '--enc-kv-key-version',
              description: 'The version of the encryption key vault key',
              args: [
                Arg(
                name: 'enc-kv-key-versio'
              )
              ]
            ),
            Option(
              name: '--enc-kv-url',
              description: 'The URL of the encryption key vault',
              args: [
                Arg(
                name: 'enc-kv-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the private clouds',
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
          name: 'list-admin-credentials',
          description: 'List the admin credentials for the private cloud',
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
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          name: 'listadmincredentials',
          description: 'List the admin credentials for the private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
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
          name: 'rotate-nsxt-password',
          description: 'Rotate the NSX-T Manager password'
        ),
        Subcommand(
          name: 'rotate-vcenter-password',
          description: 'Rotate the vCenter password',
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
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Get a private cloud',
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
              name: ['--private-cloud-name', '--name', '-n'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-cloud-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a private cloud',
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
              name: '--cluster-size',
              description: 'The cluster size',
              args: [
                Arg(
                name: 'cluster-siz'
              )
              ]
            ),
            Option(
              name: ['--extended-network-blocks', '--ext-nw-blocks'],
              description: 'Array of additional networks noncontiguous with networkBlock. Networks must be unique and non-overlapping across VNet in your subscription, on-premise, and this privateCloud networkBlock attribute. Make sure the CIDR format conforms to (A.B.C.D/X). Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'extended-network-block'
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
              name: '--internet',
              description: 'Connectivity to internet is enabled or disabled',
              args: [
                Arg(
                name: 'internet',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--private-cloud-name', '--name', '-n'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-cloud-nam'
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
              name: '--nsxt-password',
              description: 'Optionally, set the NSX-T Manager password when the private cloud is created If value is blank it\'s asked from the tty',
              args: [
                Arg(
                name: 'nsxt-passwor'
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
              description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vcenter-password',
              description: 'Optionally, set the vCenter admin password when the private cloud is created If value is blank it\'s asked from the tty',
              args: [
                Arg(
                name: 'vcenter-passwor'
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
              name: ['--private-cloud-name', '--name', '-n'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-cloud-nam'
              )
              ]
            ),
            Option(
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
          name: 'identity',
          description: 'Commands for Managed Identity in a private cloud',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Assign a Managed Identity in a private cloud',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Enable a system assigned identity'
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a Managed Identity in a private cloud',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Disable a system assigned identity'
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show Managed Identities in a private cloud',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
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
          name: 'identity-source',
          description: 'Manage a vCenter Single Sign On Identity Source of a  private cloud',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a vCenter Single Sign On Identity Source to a private cloud',
              options: [

                Option(
                  name: '--alias',
                  description: 'The domain\'s NetBIOS name',
                  args: [
                    Arg(
                    name: 'alia'
                  )
                  ]
                ),
                Option(
                  name: '--base-group-dn',
                  description: 'The base distinguished name for groups',
                  args: [
                    Arg(
                    name: 'base-group-d'
                  )
                  ]
                ),
                Option(
                  name: '--base-user-dn',
                  description: 'The base distinguished name for users',
                  args: [
                    Arg(
                    name: 'base-user-d'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'The domain\'s dns name',
                  args: [
                    Arg(
                    name: 'domai'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the identity source',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The password of the Active Directory user with a minimum of read-only access to Base DN for users and groups',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--primary-server',
                  description: 'Primary server URL',
                  args: [
                    Arg(
                    name: 'primary-serve'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'The ID of an Active Directory user with a minimum of read-only access to Base DN for users and group',
                  args: [
                    Arg(
                    name: 'usernam'
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
                  name: '--secondary-server',
                  description: 'Secondary server URL',
                  args: [
                    Arg(
                    name: 'secondary-serve'
                  )
                  ]
                ),
                Option(
                  name: '--ssl',
                  description: 'Protect LDAP communication using SSL certificate (LDAPS)',
                  args: [
                    Arg(
                    name: 'ssl',
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
              description: 'Delete a vCenter Single Sign On Identity Source of a private cloud',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the identity source',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List vCenter Single Sign On Identity Sources of a private cloud',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
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
              description: 'Show a vCenter Single Sign On Identity Source of a private cloud',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the identity source',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
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
              description: 'Update a vCenter Single Sign On Identity Source of a private cloud',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the identity source',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                  name: '--alias',
                  description: 'The domain\'s NetBIOS name',
                  args: [
                    Arg(
                    name: 'alia'
                  )
                  ]
                ),
                Option(
                  name: '--base-group-dn',
                  description: 'The base distinguished name for groups',
                  args: [
                    Arg(
                    name: 'base-group-d'
                  )
                  ]
                ),
                Option(
                  name: '--base-user-dn',
                  description: 'The base distinguished name for users',
                  args: [
                    Arg(
                    name: 'base-user-d'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'The domain\'s dns name',
                  args: [
                    Arg(
                    name: 'domai'
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
                  name: '--password',
                  description: 'The password of the Active Directory user with a minimum of read-only access to Base DN for users and groups',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--primary-server',
                  description: 'Primary server URL',
                  args: [
                    Arg(
                    name: 'primary-serve'
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
                  name: '--secondary-server',
                  description: 'Secondary server URL',
                  args: [
                    Arg(
                    name: 'secondary-serve'
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
                  name: '--ssl',
                  description: 'Protect LDAP communication using SSL certificate (LDAPS)',
                  args: [
                    Arg(
                    name: 'ssl',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'The ID of an Active Directory user with a minimum of read-only access to Base DN for users and group',
                  args: [
                    Arg(
                    name: 'usernam'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
      name: 'script-cmdlet',
      description: 'Commands to list and show script cmdlet resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List script cmdlet resources available for a private cloud to create a script execution resource on a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--script-package', '-p'],
              description: 'Name of the script package in the private cloud',
              args: [
                Arg(
                name: 'script-packag'
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
          description: 'Get information about a script cmdlet resource in a specific package on a private cloud',
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
              name: ['--script-cmdlet-name', '--name', '-n'],
              description: 'Name of the script cmdlet resource in the script package in the private cloud',
              args: [
                Arg(
                name: 'script-cmdlet-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--script-package', '-p'],
              description: 'Name of the script package in the private cloud',
              args: [
                Arg(
                name: 'script-packag'
              )
              ]
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
      name: 'script-execution',
      description: 'Commands to manage script executions in a private cloud',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create or update a script execution in a private cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the script execution',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Time limit for execution',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--failure-reason',
              description: 'Error message if the script was able to run, but if the script itself had errors or powershell threw an exception',
              args: [
                Arg(
                name: 'failure-reaso'
              )
              ]
            ),
            Option(
              name: '--hidden-parameter',
              description: 'Parameters that will be hidden/not visible to ARM, such as passwords and credentials',
              args: [
                Arg(
                name: 'hidden-paramete'
              )
              ]
            ),
            Option(
              name: '--named-outputs',
              description: 'User-defined dictionary',
              args: [
                Arg(
                name: 'named-output'
              )
              ]
            ),
            Option(
              name: '--out',
              description: 'Standard output stream from the powershell execution',
              args: [
                Arg(
                name: 'ou'
              )
              ]
            ),
            Option(
              name: ['--parameter', '-p'],
              description: 'Parameters the script will accept',
              args: [
                Arg(
                name: 'paramete'
              )
              ]
            ),
            Option(
              name: '--retention',
              description: 'Time to live for the resource. If not provided, will be available for 60 days',
              args: [
                Arg(
                name: 'retentio'
              )
              ]
            ),
            Option(
              name: '--script-cmdlet-id',
              description: 'A reference to the script cmdlet resource if user is running a AVS script',
              args: [
                Arg(
                name: 'script-cmdlet-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a ScriptExecution in a private cloud',
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
              name: ['--script-execution-name', '--name', '-n'],
              description: 'Name of the user-invoked script execution resource',
              args: [
                Arg(
                name: 'script-execution-nam'
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
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'List script executions in a private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Get an script execution by name in a private cloud',
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
              name: ['--script-execution-name', '--name', '-n'],
              description: 'Name of the user-invoked script execution resource',
              args: [
                Arg(
                name: 'script-execution-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
              name: ['--script-execution-name', '--name', '-n'],
              description: 'Name of the user-invoked script execution resource',
              args: [
                Arg(
                name: 'script-execution-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
      name: 'script-package',
      description: 'Commands to list and show script packages available to run on the private cloud',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List script packages available to run on the private cloud',
          options: [

            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          description: 'Get a script package available to run on a private cloud',
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
              name: ['--script-package-name', '--name', '-n'],
              description: 'Name of the script package in the private cloud',
              args: [
                Arg(
                name: 'script-package-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
      name: 'vm',
      description: 'Commands to manage Virtual Machines',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List of virtual machines in a private cloud cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
          name: 'restrict-movement',
          description: 'Enable or disable DRS-driven VM movement restriction',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
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
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--restrict-movement',
              description: 'Whether VM DRS-driven movement is restricted (enabled) or not (disabled)',
              args: [
                Arg(
                name: 'restrict-movement',
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
              name: '--virtual-machine',
              description: 'Virtual Machine identifier',
              args: [
                Arg(
                name: 'virtual-machin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a virtual machine by id in a private cloud cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the cluster in the private cloud',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--virtual-machine', '--name', '-n'],
              description: 'Virtual Machine identifier',
              args: [
                Arg(
                name: 'virtual-machin'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-c'],
              description: 'Name of the private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
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
      name: 'workload-network',
      description: 'Commands to manage workload-networks in a private cloud',
      subcommands: [

        Subcommand(
          name: 'dhcp',
          description: 'Commands to manage a DHCP (Data Host Configuration Protocol) workload network',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List dhcp in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get dhcp by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--dhcp', '--name', '-n'],
                  description: 'NSX DHCP identifier. Generally the same as the DHCP display name',
                  args: [
                    Arg(
                    name: 'dhc'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              name: 'relay',
              description: 'Commands to manage a DHCP (Data Host Configuration Protocol) workload network',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create DHCP by ID in a private cloud workload network',
                  options: [

                    Option(
                      name: ['--dhcp', '--name', '-n'],
                      description: 'NSX DHCP identifier. Generally the same as the DHCP display name',
                      args: [
                        Arg(
                        name: 'dhc'
                      )
                      ]
                    ),
                    Option(
                      name: ['--private-cloud', '-c'],
                      description: 'Name of the private cloud',
                      args: [
                        Arg(
                        name: 'private-clou'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--display-name',
                      description: 'Display name of the DHCP entity',
                      args: [
                        Arg(
                        name: 'display-nam'
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
                      name: '--revision',
                      description: 'NSX revision number',
                      args: [
                        Arg(
                        name: 'revisio'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-addresses',
                      description: 'DHCP Relay Addresses. Max 3. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'server-addresse'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete DHCP by ID in a private cloud workload network',
                  options: [

                    Option(
                      name: ['--dhcp', '--name', '-n'],
                      description: 'NSX DHCP identifier. Generally the same as the DHCP display name',
                      args: [
                        Arg(
                        name: 'dhc'
                      )
                      ]
                    ),
                    Option(
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
                      name: ['--private-cloud', '-c'],
                      description: 'Name of the private cloud',
                      args: [
                        Arg(
                        name: 'private-clou'
                      )
                      ]
                    ),
                    Option(
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
                  name: 'update',
                  description: 'Create DHCP by ID in a private cloud workload network',
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
                      name: ['--dhcp', '--name', '-n'],
                      description: 'NSX DHCP identifier. Generally the same as the DHCP display name',
                      args: [
                        Arg(
                        name: 'dhc'
                      )
                      ]
                    ),
                    Option(
                      name: '--display-name',
                      description: 'Display name of the DHCP entity',
                      args: [
                        Arg(
                        name: 'display-nam'
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
                      name: ['--private-cloud', '-c'],
                      description: 'Name of the private cloud',
                      args: [
                        Arg(
                        name: 'private-clou'
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
                      name: '--revision',
                      description: 'NSX revision number',
                      args: [
                        Arg(
                        name: 'revisio'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-addresses',
                      description: 'DHCP Relay Addresses. Max 3. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'server-addresse'
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
              name: 'server',
              description: 'Commands to manage a DHCP (Data Host Configuration Protocol) workload network',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create DHCP by ID in a private cloud workload network',
                  options: [

                    Option(
                      name: ['--dhcp', '--name', '-n'],
                      description: 'NSX DHCP identifier. Generally the same as the DHCP display name',
                      args: [
                        Arg(
                        name: 'dhc'
                      )
                      ]
                    ),
                    Option(
                      name: ['--private-cloud', '-c'],
                      description: 'Name of the private cloud',
                      args: [
                        Arg(
                        name: 'private-clou'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--display-name',
                      description: 'Display name of the DHCP entity',
                      args: [
                        Arg(
                        name: 'display-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--lease-time',
                      description: 'DHCP Server Lease Time',
                      args: [
                        Arg(
                        name: 'lease-tim'
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
                      name: '--revision',
                      description: 'NSX revision number',
                      args: [
                        Arg(
                        name: 'revisio'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-address',
                      description: 'DHCP Server Address',
                      args: [
                        Arg(
                        name: 'server-addres'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete DHCP by ID in a private cloud workload network',
                  options: [

                    Option(
                      name: ['--dhcp', '--name', '-n'],
                      description: 'NSX DHCP identifier. Generally the same as the DHCP display name',
                      args: [
                        Arg(
                        name: 'dhc'
                      )
                      ]
                    ),
                    Option(
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
                      name: ['--private-cloud', '-c'],
                      description: 'Name of the private cloud',
                      args: [
                        Arg(
                        name: 'private-clou'
                      )
                      ]
                    ),
                    Option(
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
                  name: 'update',
                  description: 'Update DHCP by ID in a private cloud workload network',
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
                      name: ['--dhcp', '--name', '-n'],
                      description: 'NSX DHCP identifier. Generally the same as the DHCP display name',
                      args: [
                        Arg(
                        name: 'dhc'
                      )
                      ]
                    ),
                    Option(
                      name: '--display-name',
                      description: 'Display name of the DHCP entity',
                      args: [
                        Arg(
                        name: 'display-nam'
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
                      name: '--lease-time',
                      description: 'DHCP Server Lease Time',
                      args: [
                        Arg(
                        name: 'lease-tim'
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
                      name: ['--private-cloud', '-c'],
                      description: 'Name of the private cloud',
                      args: [
                        Arg(
                        name: 'private-clou'
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
                      name: '--revision',
                      description: 'NSX revision number',
                      args: [
                        Arg(
                        name: 'revisio'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-address',
                      description: 'DHCP Server Address',
                      args: [
                        Arg(
                        name: 'server-addres'
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
            )
          ]
        ),
        Subcommand(
          name: 'dns-service',
          description: 'Commands to manage a DNS Service workload network',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a DNS service by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--dns-service', '--name', '-n'],
                  description: 'NSX DNS Service identifier. Generally the same as the DNS Service\'s display name',
                  args: [
                    Arg(
                    name: 'dns-servic'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--default-dns-zone',
                  description: 'Default DNS zone of the DNS Service',
                  args: [
                    Arg(
                    name: 'default-dns-zon'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the DNS Service',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--dns-service-ip',
                  description: 'DNS service IP of the DNS Service',
                  args: [
                    Arg(
                    name: 'dns-service-i'
                  )
                  ]
                ),
                Option(
                  name: '--fqdn-zones',
                  description: 'FQDN zones of the DNS Service. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'fqdn-zone'
                  )
                  ]
                ),
                Option(
                  name: '--log-level',
                  description: 'DNS Service log level',
                  args: [
                    Arg(
                    name: 'log-level',
                    suggestions: [

                      FigSuggestion(name: 'DEBUG'),
                      FigSuggestion(name: 'ERROR'),
                      FigSuggestion(name: 'FATAL'),
                      FigSuggestion(name: 'INFO'),
                      FigSuggestion(name: 'WARNING')
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a DNS service by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--dns-service', '--name', '-n'],
                  description: 'NSX DNS Service identifier. Generally the same as the DNS Service\'s display name',
                  args: [
                    Arg(
                    name: 'dns-servic'
                  )
                  ]
                ),
                Option(
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'List of DNS services in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a DNS service by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--dns-service', '--name', '-n'],
                  description: 'NSX DNS Service identifier. Generally the same as the DNS Service\'s display name',
                  args: [
                    Arg(
                    name: 'dns-servic'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a DNS service by id in a private cloud workload network',
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
                  name: '--default-dns-zone',
                  description: 'Default DNS zone of the DNS Service',
                  args: [
                    Arg(
                    name: 'default-dns-zon'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the DNS Service',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--dns-service', '--name', '-n'],
                  description: 'NSX DNS Service identifier. Generally the same as the DNS Service\'s display name',
                  args: [
                    Arg(
                    name: 'dns-servic'
                  )
                  ]
                ),
                Option(
                  name: '--dns-service-ip',
                  description: 'DNS service IP of the DNS Service',
                  args: [
                    Arg(
                    name: 'dns-service-i'
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
                  name: '--fqdn-zones',
                  description: 'FQDN zones of the DNS Service. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'fqdn-zone'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--log-level',
                  description: 'DNS Service log level',
                  args: [
                    Arg(
                    name: 'log-level',
                    suggestions: [

                      FigSuggestion(name: 'DEBUG'),
                      FigSuggestion(name: 'ERROR'),
                      FigSuggestion(name: 'FATAL'),
                      FigSuggestion(name: 'INFO'),
                      FigSuggestion(name: 'WARNING')
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
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
                  name: ['--dns-service', '--name', '-n'],
                  description: 'NSX DNS Service identifier. Generally the same as the DNS Service\'s display name',
                  args: [
                    Arg(
                    name: 'dns-servic'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
          name: 'dns-zone',
          description: 'Commands to manage a DNS Zone workload network',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a DNS zone by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--dns-zone', '--name', '-n'],
                  description: 'NSX DNS Zone identifier. Generally the same as the DNS Zone\'s display name',
                  args: [
                    Arg(
                    name: 'dns-zon'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the DNS Zone',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--dns-server-ips',
                  description: 'DNS Server IP array of the DNS Zone. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'dns-server-ip'
                  )
                  ]
                ),
                Option(
                  name: '--dns-services',
                  description: 'Number of DNS Services using the DNS zone',
                  args: [
                    Arg(
                    name: 'dns-service'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'Domain names of the DNS Zone. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'domai'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
                  )
                  ]
                ),
                Option(
                  name: '--source-ip',
                  description: 'Source IP of the DNS Zone',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a DNS zone by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--dns-zone', '--name', '-n'],
                  description: 'NSX DNS Zone identifier. Generally the same as the DNS Zone\'s display name',
                  args: [
                    Arg(
                    name: 'dns-zon'
                  )
                  ]
                ),
                Option(
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'List of DNS zones in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a DNS zone by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--dns-zone', '--name', '-n'],
                  description: 'NSX DNS Zone identifier. Generally the same as the DNS Zone\'s display name',
                  args: [
                    Arg(
                    name: 'dns-zon'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a DNS zone by id in a private cloud workload network',
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
                  name: '--display-name',
                  description: 'Display name of the DNS Zone',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--dns-server-ips',
                  description: 'DNS Server IP array of the DNS Zone. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'dns-server-ip'
                  )
                  ]
                ),
                Option(
                  name: '--dns-services',
                  description: 'Number of DNS Services using the DNS zone',
                  args: [
                    Arg(
                    name: 'dns-service'
                  )
                  ]
                ),
                Option(
                  name: ['--dns-zone', '--name', '-n'],
                  description: 'NSX DNS Zone identifier. Generally the same as the DNS Zone\'s display name',
                  args: [
                    Arg(
                    name: 'dns-zon'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'Domain names of the DNS Zone. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'domai'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
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
                  name: '--source-ip',
                  description: 'Source IP of the DNS Zone',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
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
                  name: ['--dns-zone', '--name', '-n'],
                  description: 'NSX DNS Zone identifier. Generally the same as the DNS Zone\'s display name',
                  args: [
                    Arg(
                    name: 'dns-zon'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
          name: 'gateway',
          description: 'Commands to manage a Gateway workload network',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List of gateways in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a gateway by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--gateway', '--name', '-n'],
                  description: 'NSX Gateway identifier. Generally the same as the Gateway\'s display name',
                  args: [
                    Arg(
                    name: 'gatewa'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
          name: 'port-mirroring',
          description: 'Commands to manage a Port Mirroring workload network',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a port mirroring profile by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--port-mirroring', '--name', '-n'],
                  description: 'NSX Port Mirroring identifier. Generally the same as the Port Mirroring display name',
                  args: [
                    Arg(
                    name: 'port-mirrorin'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--destination',
                  description: 'Destination VM Group',
                  args: [
                    Arg(
                    name: 'destinatio'
                  )
                  ]
                ),
                Option(
                  name: '--direction',
                  description: 'Direction of port mirroring profile',
                  args: [
                    Arg(
                    name: 'direction',
                    suggestions: [

                      FigSuggestion(name: 'BIDIRECTIONAL'),
                      FigSuggestion(name: 'EGRESS'),
                      FigSuggestion(name: 'INGRESS')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the port mirroring profile',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
                  )
                  ]
                ),
                Option(
                  name: '--source',
                  description: 'Source VM Group',
                  args: [
                    Arg(
                    name: 'sourc'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a port mirroring profile by id in a private cloud workload network',
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
                  name: ['--port-mirroring', '--name', '-n'],
                  description: 'NSX Port Mirroring identifier. Generally the same as the Port Mirroring display name',
                  args: [
                    Arg(
                    name: 'port-mirrorin'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'List of port mirroring profiles in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a port mirroring profile by id in a private cloud workload network',
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
                  name: ['--port-mirroring', '--name', '-n'],
                  description: 'NSX Port Mirroring identifier. Generally the same as the Port Mirroring display name',
                  args: [
                    Arg(
                    name: 'port-mirrorin'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a port mirroring profile by id in a private cloud workload network',
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
                  name: '--destination',
                  description: 'Destination VM Group',
                  args: [
                    Arg(
                    name: 'destinatio'
                  )
                  ]
                ),
                Option(
                  name: '--direction',
                  description: 'Direction of port mirroring profile',
                  args: [
                    Arg(
                    name: 'direction',
                    suggestions: [

                      FigSuggestion(name: 'BIDIRECTIONAL'),
                      FigSuggestion(name: 'EGRESS'),
                      FigSuggestion(name: 'INGRESS')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the port mirroring profile',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  name: ['--port-mirroring', '--name', '-n'],
                  description: 'NSX Port Mirroring identifier. Generally the same as the Port Mirroring display name',
                  args: [
                    Arg(
                    name: 'port-mirrorin'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
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
                  description: 'Source VM Group',
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
                  name: ['--port-mirroring', '--name', '-n'],
                  description: 'NSX Port Mirroring identifier. Generally the same as the Port Mirroring display name',
                  args: [
                    Arg(
                    name: 'port-mirrorin'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
          name: 'public-ip',
          description: 'Commands to manage a Public-IP workload network',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Public IP Block by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--public-ip', '--name', '-n'],
                  description: 'NSX Public IP Block identifier. Generally the same as the Public IP Block\'s display name',
                  args: [
                    Arg(
                    name: 'public-i'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the Public IP Block',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  name: '--number-of-public-ips',
                  description: 'Number of Public IPs requested',
                  args: [
                    Arg(
                    name: 'number-of-public-ip'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Public IP Block by id in a private cloud workload network',
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
                  name: ['--public-ip', '--name', '-n'],
                  description: 'NSX Public IP Block identifier. Generally the same as the Public IP Block\'s display name',
                  args: [
                    Arg(
                    name: 'public-i'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'List of Public IP Blocks in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a Public IP Block by id in a private cloud workload network',
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
                  name: ['--public-ip', '--name', '-n'],
                  description: 'NSX Public IP Block identifier. Generally the same as the Public IP Block\'s display name',
                  args: [
                    Arg(
                    name: 'public-i'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
                  name: ['--public-ip', '--name', '-n'],
                  description: 'NSX Public IP Block identifier. Generally the same as the Public IP Block\'s display name',
                  args: [
                    Arg(
                    name: 'public-i'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
          name: 'segment',
          description: 'Commands to manage a Segment workload network',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a segment by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--segment', '--name', '-n'],
                  description: 'NSX Segment identifier. Generally the same as the Segment\'s display name',
                  args: [
                    Arg(
                    name: 'segmen'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--connected-gateway',
                  description: 'Gateway which to connect segment to',
                  args: [
                    Arg(
                    name: 'connected-gatewa'
                  )
                  ]
                ),
                Option(
                  name: '--dhcp-ranges',
                  description: 'DHCP Range assigned for subnet. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'dhcp-range'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the segment',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--gateway-address',
                  description: 'Gateway address',
                  args: [
                    Arg(
                    name: 'gateway-addres'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a segment by id in a private cloud workload network',
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
                  name: ['--segment', '--name', '-n'],
                  description: 'NSX Segment identifier. Generally the same as the Segment\'s display name',
                  args: [
                    Arg(
                    name: 'segmen'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'List of segments in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a segment by id in a private cloud workload network',
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
                  name: ['--segment', '--name', '-n'],
                  description: 'NSX Segment identifier. Generally the same as the Segment\'s display name',
                  args: [
                    Arg(
                    name: 'segmen'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a segment by id in a private cloud workload network',
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
                  name: '--connected-gateway',
                  description: 'Gateway which to connect segment to',
                  args: [
                    Arg(
                    name: 'connected-gatewa'
                  )
                  ]
                ),
                Option(
                  name: '--dhcp-ranges',
                  description: 'DHCP Range assigned for subnet. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'dhcp-range'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the segment',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  name: '--gateway-address',
                  description: 'Gateway address',
                  args: [
                    Arg(
                    name: 'gateway-addres'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--segment', '--name', '-n'],
                  description: 'NSX Segment identifier. Generally the same as the Segment\'s display name',
                  args: [
                    Arg(
                    name: 'segmen'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
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
                  name: ['--segment', '--name', '-n'],
                  description: 'NSX Segment identifier. Generally the same as the Segment\'s display name',
                  args: [
                    Arg(
                    name: 'segmen'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
          name: 'vm',
          description: 'Commands to manage a Virtual Machine workload network',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List of virtual machines in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a virtual machine by id in a private cloud workload network',
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
                  name: ['--virtual-machine', '--name', '-n'],
                  description: 'Virtual Machine identifier',
                  args: [
                    Arg(
                    name: 'virtual-machin'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
          name: 'vm-group',
          description: 'Commands to manage a VM Group workload network',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a vm group by id in a private cloud workload network',
              options: [

                Option(
                  name: ['--vm-group', '--name', '-n'],
                  description: 'NSX VM Group identifier. Generally the same as the VM Group\'s display name',
                  args: [
                    Arg(
                    name: 'vm-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the VM group',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--members',
                  description: 'Virtual machine members of this group. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'member'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a vm group by id in a private cloud workload network',
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
                  name: ['--vm-group', '--name', '-n'],
                  description: 'NSX VM Group identifier. Generally the same as the VM Group\'s display name',
                  args: [
                    Arg(
                    name: 'vm-grou'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'List of vm groups in a private cloud workload network',
              options: [

                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Get a vm group by id in a private cloud workload network',
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
                  name: ['--vm-group', '--name', '-n'],
                  description: 'NSX VM Group identifier. Generally the same as the VM Group\'s display name',
                  args: [
                    Arg(
                    name: 'vm-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
              description: 'Update a vm group by id in a private cloud workload network',
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
                  name: '--display-name',
                  description: 'Display name of the VM group',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  name: '--members',
                  description: 'Virtual machine members of this group. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'member'
                  )
                  ]
                ),
                Option(
                  name: ['--vm-group', '--name', '-n'],
                  description: 'NSX VM Group identifier. Generally the same as the VM Group\'s display name',
                  args: [
                    Arg(
                    name: 'vm-grou'
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
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
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
                  name: '--revision',
                  description: 'NSX revision number',
                  args: [
                    Arg(
                    name: 'revisio'
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
                  name: ['--vm-group', '--name', '-n'],
                  description: 'NSX VM Group identifier. Generally the same as the VM Group\'s display name',
                  args: [
                    Arg(
                    name: 'vm-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--private-cloud', '-c'],
                  description: 'Name of the private cloud',
                  args: [
                    Arg(
                    name: 'private-clou'
                  )
                  ]
                ),
                Option(
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
);
