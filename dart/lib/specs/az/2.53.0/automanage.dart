// Auto-generated from TypeScript source: automanage.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `automanage` CLI
final FigSpec automanageSpec = FigSpec(
  name: 'automanage',
  description: 'Manage Automanage',
  subcommands: [

    Subcommand(
      name: 'best-practice',
      description: 'Manage Automanage best practice',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List Automanage best practices'
        ),
        Subcommand(
          name: 'show',
          description: 'Get information about a Automanage best practice',
          options: [

            Option(
              name: '--best-practice-name',
              description: 'The Automanage best practice name',
              args: [
                Arg(
                name: 'best-practice-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Manage Automanage best practice version',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List Automanage best practice versions',
              options: [

                Option(
                  name: '--best-practice-name',
                  description: 'The Automanage best practice name',
                  args: [
                    Arg(
                    name: 'best-practice-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get information about a Automanage best practice version',
              options: [

                Option(
                  name: '--best-practice-name',
                  description: 'The Automanage best practice name',
                  args: [
                    Arg(
                    name: 'best-practice-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version-name',
                  description: 'The Automanage best practice version name',
                  args: [
                    Arg(
                    name: 'version-nam'
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
      name: 'configuration-profile',
      description: 'Manage configuration profile',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a configuration profile',
          options: [

            Option(
              name: ['--configuration-profile-name', '--name', '-n'],
              description: 'Name of the configuration profile',
              args: [
                Arg(
                name: 'configuration-profile-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'Configuration dictionary of the configuration profile. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'configuratio'
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
          description: 'Delete a configuration profile',
          options: [

            Option(
              name: ['--configuration-profile-name', '--name', '-n'],
              description: 'Name of the configuration profile',
              args: [
                Arg(
                name: 'configuration-profile-nam'
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
          description: 'List configuration profiles within a subscription',
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
          description: 'Get information about a configuration profile',
          options: [

            Option(
              name: ['--configuration-profile-name', '--name', '-n'],
              description: 'The configuration profile name',
              args: [
                Arg(
                name: 'configuration-profile-nam'
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
          description: 'Update a configuration profile',
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
              name: '--configuration',
              description: 'Configuration dictionary of the configuration profile. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'configuratio'
              )
              ]
            ),
            Option(
              name: ['--configuration-profile-name', '--name', '-n'],
              description: 'The configuration profile name',
              args: [
                Arg(
                name: 'configuration-profile-nam'
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
        ),
        Subcommand(
          name: 'version',
          description: 'Manage configuration profile version',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a configuration profile version',
              options: [

                Option(
                  name: ['--configuration-profile-name', '--profile-name'],
                  description: 'Name of the configuration profile',
                  args: [
                    Arg(
                    name: 'configuration-profile-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--version-name', '--name', '-n'],
                  description: 'The configuration profile version name',
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
                  name: '--configuration',
                  description: 'Configuration dictionary of the configuration profile. Support json-file and yaml-file',
                  args: [
                    Arg(
                    name: 'configuratio'
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
              description: 'Delete a configuration profile version',
              options: [

                Option(
                  name: ['--configuration-profile-name', '--profile-name'],
                  description: 'Name of the configuration profile',
                  args: [
                    Arg(
                    name: 'configuration-profile-nam'
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
                  name: ['--version-name', '--name', '-n'],
                  description: 'The configuration profile version name',
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List configuration profile versions for a configuration profile',
              options: [

                Option(
                  name: ['--configuration-profile-name', '--profile-name'],
                  description: 'Name of the configuration profile',
                  args: [
                    Arg(
                    name: 'configuration-profile-nam'
                  )
                  ]
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
              description: 'Get information about a configuration profile version',
              options: [

                Option(
                  name: ['--configuration-profile-name', '--profile-name'],
                  description: 'The configuration profile name',
                  args: [
                    Arg(
                    name: 'configuration-profile-nam'
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
                  name: ['--version-name', '--name', '-n'],
                  description: 'The configuration profile version name',
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
            ),
            Subcommand(
              name: 'update',
              description: 'Update a configuration profile version',
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
                  name: '--configuration',
                  description: 'Configuration dictionary of the configuration profile. Support json-file and yaml-file',
                  args: [
                    Arg(
                    name: 'configuratio'
                  )
                  ]
                ),
                Option(
                  name: ['--configuration-profile-name', '--profile-name'],
                  description: 'The configuration profile name',
                  args: [
                    Arg(
                    name: 'configuration-profile-nam'
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
                  name: ['--version-name', '--name', '-n'],
                  description: 'The configuration profile version name',
                  args: [
                    Arg(
                    name: 'version-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'configuration-profile-assignment',
      description: 'Manage configuration profile assignment',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List configuration profile assignments under a given subscription',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Arc machine',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--machine-name',
              description: 'The name of the Arc machine',
              args: [
                Arg(
                name: 'machine-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'arc',
          description: 'Manage association between an ARC machine and Automanage configuration profile',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an association between an ARC machine and Automanage configuration profile',
              options: [

                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the configuration profile assignment. Only default is supported',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: '--machine-name',
                  description: 'The name of the Arc machine',
                  args: [
                    Arg(
                    name: 'machine-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--configuration-profile',
                  description: 'The Automanage configurationProfile ARM Resource URI',
                  args: [
                    Arg(
                    name: 'configuration-profil'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an association between an ARC machine and Automanage configuration profile',
              options: [

                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the configuration profile assignment',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
                  name: '--machine-name',
                  description: 'The name of the Arc machine',
                  args: [
                    Arg(
                    name: 'machine-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get information about an association between an ARC machine and Automanage configuration profile',
              options: [

                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The configuration profile assignment name',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
                  name: '--machine-name',
                  description: 'The name of the Arc machine',
                  args: [
                    Arg(
                    name: 'machine-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an association between a ARC machine and Automanage configuration profile',
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
                  name: '--configuration-profile',
                  description: 'The Automanage configurationProfile ARM Resource URI',
                  args: [
                    Arg(
                    name: 'configuration-profil'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The configuration profile assignment name',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
                  name: '--machine-name',
                  description: 'The name of the Arc machine',
                  args: [
                    Arg(
                    name: 'machine-nam'
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
              name: 'report',
              description: 'Manage report within a given ARC machine configuration profile assignment',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List reports within a given ARC machine configuration profile assignment',
                  options: [

                    Option(
                      name: [
                        '--configuration-profile-assignment-name',
                        '--assignment-name',
                      ],
                      description: 'The configuration profile assignment name',
                      args: [
                        Arg(
                        name: 'configuration-profile-assignment-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--machine-name',
                      description: 'The name of the Arc machine',
                      args: [
                        Arg(
                        name: 'machine-nam'
                      )
                      ]
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
                  description: 'Get information about a report associated with an ARC machine configuration profile assignment run',
                  options: [

                    Option(
                      name: [
                        '--configuration-profile-assignment-name',
                        '--assignment-name',
                      ],
                      description: 'The configuration profile assignment name',
                      args: [
                        Arg(
                        name: 'configuration-profile-assignment-nam'
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
                      name: '--machine-name',
                      description: 'The name of the Arc machine',
                      args: [
                        Arg(
                        name: 'machine-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--report-name', '--name', '-n'],
                      description: 'The report name',
                      args: [
                        Arg(
                        name: 'report-nam'
                      )
                      ]
                    ),
                    Option(
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
          name: 'cluster',
          description: 'Manage association between an AzureStackHCI cluster and Automanage configuration profile',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an association between an AzureStackHCI cluster and Automanage configuration profile',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Arc machine',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the configuration profile assignment. Only default is supported',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--configuration-profile',
                  description: 'The Automanage configurationProfile ARM Resource URI',
                  args: [
                    Arg(
                    name: 'configuration-profil'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an association between an AzureStackHCI cluster and Automanage configuration profile',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Arc machine',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the configuration profile assignment',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
              name: 'show',
              description: 'Get information about an association between an AzureStackHCI cluster and Automanage configuration profile',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Arc machine',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The configuration profile assignment name',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
              description: 'Update an association between a AzureStackHCI cluster and Automanage configuration profile',
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
                  description: 'The name of the Arc machine',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--configuration-profile',
                  description: 'The Automanage configurationProfile ARM Resource URI',
                  args: [
                    Arg(
                    name: 'configuration-profil'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The configuration profile assignment name',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'report',
              description: 'Manage report within a given AzureStackHCI cluster configuration profile assignment',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List reports within a given AzureStackHCI cluster configuration profile assignment',
                  options: [

                    Option(
                      name: [
                        '--configuration-profile-assignment-name',
                        '--assignment-name',
                      ],
                      description: 'The configuration profile assignment name',
                      args: [
                        Arg(
                        name: 'configuration-profile-assignment-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--cluster-name',
                      description: 'The name of the HCI cluster',
                      args: [
                        Arg(
                        name: 'cluster-nam'
                      )
                      ]
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
                  description: 'Get information about a report associated with a AzureStackHCI cluster configuration profile assignment run',
                  options: [

                    Option(
                      name: [
                        '--configuration-profile-assignment-name',
                        '--assignment-name',
                      ],
                      description: 'The configuration profile assignment name',
                      args: [
                        Arg(
                        name: 'configuration-profile-assignment-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--cluster-name',
                      description: 'The name of the HCI cluster',
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
                      name: ['--report-name', '--name', '-n'],
                      description: 'The report name',
                      args: [
                        Arg(
                        name: 'report-nam'
                      )
                      ]
                    ),
                    Option(
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
          name: 'vm',
          description: 'Manage association between a VM and Automanage configuration profile',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an association between a VM and Automanage configuration profile',
              options: [

                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the configuration profile assignment. Only default is supported',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'The name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--configuration-profile',
                  description: 'The Automanage configurationProfile ARM Resource URI',
                  args: [
                    Arg(
                    name: 'configuration-profil'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an association between a VM and Automanage configuration profile',
              options: [

                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the configuration profile assignment',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
                  name: '--vm-name',
                  description: 'The name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
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
              description: 'Get information about an association between a VM and Automanage configuration profile',
              options: [

                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The configuration profile assignment name',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
                  name: '--vm-name',
                  description: 'The name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an association between a VM and Automanage configuration profile',
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
                  name: '--configuration-profile',
                  description: 'The Automanage configurationProfile ARM Resource URI',
                  args: [
                    Arg(
                    name: 'configuration-profil'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--configuration-profile-assignment-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The configuration profile assignment name',
                  args: [
                    Arg(
                    name: 'configuration-profile-assignment-nam'
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
                  name: '--vm-name',
                  description: 'The name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'report',
              description: 'Manage report within a given VM configuration profile assignment',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List reports within a given VM configuration profile assignment',
                  options: [

                    Option(
                      name: [
                        '--configuration-profile-assignment-name',
                        '--assignment-name',
                      ],
                      description: 'The configuration profile assignment name',
                      args: [
                        Arg(
                        name: 'configuration-profile-assignment-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'The name of the virtual machine',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get information about a report associated with a VM configuration profile assignment run',
                  options: [

                    Option(
                      name: [
                        '--configuration-profile-assignment-name',
                        '--assignment-name',
                      ],
                      description: 'The configuration profile assignment name',
                      args: [
                        Arg(
                        name: 'configuration-profile-assignment-nam'
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
                      name: ['--report-name', '--name', '-n'],
                      description: 'The report name',
                      args: [
                        Arg(
                        name: 'report-nam'
                      )
                      ]
                    ),
                    Option(
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
                      name: '--vm-name',
                      description: 'The name of the virtual machine',
                      args: [
                        Arg(
                        name: 'vm-nam'
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
      name: 'service-principal',
      description: 'Manage Automanage AAD first party Application Service Principal',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the Automanage AAD first party Application Service Principal details for the subscription id'
        ),
        Subcommand(
          name: 'show-default',
          description: 'Get the Automanage AAD first party Application Service Principal details for the subscription id'
        )
      ]
    )
  ]
);
