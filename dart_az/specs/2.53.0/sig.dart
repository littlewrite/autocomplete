// Auto-generated from TypeScript source: sig.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sig` CLI
final FigSpec sigSpec = FigSpec(
  name: 'sig',
  description: 'Manage shared image gallery',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a shared image gallery',
      options: [

        Option(
          name: ['--gallery-name', '-r'],
          description: 'Gallery name',
          args: [
            Arg(
            name: 'gallery-nam'
          )
          ]
        ),
        Option(
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
          description: 'The description of the gallery',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--eula',
          description: 'Community gallery publisher eula',
          args: [
            Arg(
            name: 'eul'
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
          name: '--permissions',
          description: 'This property allows you to specify the permission of sharing gallery',
          args: [
            Arg(
            name: 'permissions',
            suggestions: [

              FigSuggestion(name: 'Community'),
              FigSuggestion(name: 'Groups'),
              FigSuggestion(name: 'Private')
            ]
          )
          ]
        ),
        Option(
          name: '--public-name-prefix',
          description: 'Community gallery public name prefix',
          args: [
            Arg(
            name: 'public-name-prefi'
          )
          ]
        ),
        Option(
          name: '--publisher-email',
          description: 'Community gallery publisher contact email',
          args: [
            Arg(
            name: 'publisher-emai'
          )
          ]
        ),
        Option(
          name: '--publisher-uri',
          description: 'Community gallery publisher uri',
          args: [
            Arg(
            name: 'publisher-ur'
          )
          ]
        ),
        Option(
          name: '--soft-delete',
          description: 'Enable soft-deletion for resources in this gallery, allowing them to be recovered within retention time',
          args: [
            Arg(
            name: 'soft-delete',
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
      description: 'Delete a Shared Image Gallery',
      options: [

        Option(
          name: ['--gallery-name', '-r'],
          description: 'The name of the Shared Image Gallery to be deleted',
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
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List galleries under a resource group',
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
      name: 'list-community',
      description: 'List all community galleries shared directly to your subscription or tenant',
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
          name: '--marker',
          description: 'A string value that identifies the portion of the list of containers to be returned with the next listing operation. The operation returns the NextMarker value within the response body if the listing operation did not return all containers remaining to be listed with the current page. If specified, this generator will begin returning results from the point where the previous generator stopped',
          args: [
            Arg(
            name: 'marke'
          )
          ]
        ),
        Option(
          name: '--show-next-marker',
          description: 'Show nextMarker in result when specified',
          args: [
            Arg(
            name: 'show-next-marke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-shared',
      description: 'List all shared galleries shared directly to your subscription or tenant',
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
          name: '--shared-to',
          description: 'The query parameter to decide what shared galleries to fetch when doing listing operations. If not specified, list by subscription id',
          args: [
            Arg(
            name: 'shared-to',
            suggestions: [

              FigSuggestion(name: 'tenant')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Retrieve information about a Shared Image Gallery',
      options: [

        Option(
          name: ['--gallery-name', '-r'],
          description: 'Gallery name',
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
          name: '--select',
          description: 'The select expression to apply on the operation',
          args: [
            Arg(
            name: 'selec'
          )
          ]
        ),
        Option(
          name: '--sharing-groups',
          description: 'The expand query option to query shared gallery groups',
          args: [
            Arg(
            name: 'sharing-group'
          )
          ]
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
      name: 'show-community',
      description: 'Get a community gallery by gallery public name',
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
          name: ['--public-gallery-name', '--name', '-n'],
          description: 'The public name of the community gallery',
          args: [
            Arg(
            name: 'public-gallery-nam'
          )
          ]
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
      name: 'show-shared',
      description: 'Get a gallery that has been shared directly to your subscription or tenant',
      options: [

        Option(
          name: ['--gallery-unique-name', '--name', '-n'],
          description: 'The unique name of the Shared Gallery',
          args: [
            Arg(
            name: 'gallery-unique-nam'
          )
          ]
        ),
        Option(
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
      name: 'update',
      description: 'Update a share image gallery',
      options: [

        Option(
          name: ['--gallery-name', '-r'],
          description: 'Gallery name',
          args: [
            Arg(
            name: 'gallery-nam'
          )
          ]
        ),
        Option(
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
          name: '--eula',
          description: 'Community gallery publisher eula',
          args: [
            Arg(
            name: 'eul'
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--permissions',
          description: 'This property allows you to specify the permission of sharing gallery',
          args: [
            Arg(
            name: 'permissions',
            suggestions: [

              FigSuggestion(name: 'Community'),
              FigSuggestion(name: 'Groups'),
              FigSuggestion(name: 'Private')
            ]
          )
          ]
        ),
        Option(
          name: '--public-name-prefix',
          description: 'Community gallery public name prefix',
          args: [
            Arg(
            name: 'public-name-prefi'
          )
          ]
        ),
        Option(
          name: '--publisher-email',
          description: 'Community gallery publisher contact email',
          args: [
            Arg(
            name: 'publisher-emai'
          )
          ]
        ),
        Option(
          name: '--publisher-uri',
          description: 'Community gallery publisher uri',
          args: [
            Arg(
            name: 'publisher-ur'
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
          name: '--select',
          description: 'The select expression to apply on the operation. "Permissions" Default value is None',
          args: [
            Arg(
            name: 'selec'
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
          name: '--soft-delete',
          description: 'Enable soft-deletion for resources in this gallery, allowing them to be recovered within retention time',
          args: [
            Arg(
            name: 'soft-delete',
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
      name: 'gallery-application',
      description: 'Manage gallery application',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a gallery Application Definition',
          options: [

            Option(
              name: ['--application-name', '--name', '-n'],
              description: 'The name of the gallery Application',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
              name: '--os-type',
              description: 'This property allows you to specify the supported type of the OS that application is built for. Possible values are: Windows Linux',
              args: [
                Arg(
                name: 'os-type',
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
              name: '--description',
              description: 'The description of this gallery Application Definition resource. This property is updatable',
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          description: 'Delete a gallery Application',
          options: [

            Option(
              name: [
                '--gallery-application-name',
                '--application-name',
                '--name',
                '-n',
              ],
              description: 'The name of the gallery application',
              args: [
                Arg(
                name: 'gallery-application-nam'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
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
          description: 'List gallery Application Definitions in a gallery',
          options: [

            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
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
          description: 'Get information about a gallery Application Definition',
          options: [

            Option(
              name: [
                '--gallery-application-name',
                '--application-name',
                '--name',
                '-n',
              ],
              description: 'The name of the gallery application',
              args: [
                Arg(
                name: 'gallery-application-nam'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
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
          name: 'update',
          description: 'Update a gallery Application Definition',
          options: [

            Option(
              name: ['--application-name', '--name', '-n'],
              description: 'The name of the gallery Application',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
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
              description: 'The description of this gallery Application Definition resource. This property is updatable',
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          description: 'Place the CLI in a waiting state until a condition of the sig gallery-application is met',
          options: [

            Option(
              name: ['--application-name', '--name', '-n'],
              description: 'The name of the gallery Application',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
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
          name: 'version',
          description: 'Manage gallery application version',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a gallery Application Version',
              options: [

                Option(
                  name: '--application-name',
                  description: 'The name of the gallery Application',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '-r'],
                  description: 'Gallery name',
                  args: [
                    Arg(
                    name: 'gallery-nam'
                  )
                  ]
                ),
                Option(
                  name: '--install-command',
                  description: 'The path and arguments to install the gallery application',
                  args: [
                    Arg(
                    name: 'install-comman'
                  )
                  ]
                ),
                Option(
                  name: ['--version-name', '--name', '-n'],
                  description: 'The name of the gallery Application Version',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                ),
                Option(
                  name: '--package-file-link',
                  description: 'The mediaLink of the artifact, must be a readable storage page blob',
                  args: [
                    Arg(
                    name: 'package-file-lin'
                  )
                  ]
                ),
                Option(
                  name: '--remove-command',
                  description: 'The path and arguments to remove the gallery application',
                  args: [
                    Arg(
                    name: 'remove-comman'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--config-file-name',
                  description: 'The name to assign the downloaded config file on the VM. This is limited to 4096 characters. If not specified, the config file will be named the Gallery Application name appended with "_config"',
                  args: [
                    Arg(
                    name: 'config-file-nam'
                  )
                  ]
                ),
                Option(
                  name: '--default-file-link',
                  description: 'The default configuration link of the artifact, must be a readable storage page blob',
                  args: [
                    Arg(
                    name: 'default-file-lin'
                  )
                  ]
                ),
                Option(
                  name: '--end-of-life-date',
                  description: 'The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable',
                  args: [
                    Arg(
                    name: 'end-of-life-dat'
                  )
                  ]
                ),
                Option(
                  name: '--exclude-from',
                  description: 'If set to true, Virtual Machines deployed from the latest version of the Image Definition won\'t use this Image Version',
                  args: [
                    Arg(
                    name: 'exclude-from',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--package-file-name',
                  description: 'The name to assign the downloaded package file on the VM. This is limited to 4096 characters.If not specified, the package file will be named the same as the Gallery Application name',
                  args: [
                    Arg(
                    name: 'package-file-nam'
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
                  name: '--target-regions',
                  description: 'The target regions where the Image Version isgoing to be replicated to. This property is updatable. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'target-region'
                  )
                  ]
                ),
                Option(
                  name: '--update-command',
                  description: 'The path and arguments to update the gallery application. If not present, then update operation will invoke remove command on the previous version and install command on the current version of the gallery application',
                  args: [
                    Arg(
                    name: 'update-comman'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a gallery application version',
              options: [

                Option(
                  name: ['--gallery-application-name', '--application-name'],
                  description: 'The name of the gallery application',
                  args: [
                    Arg(
                    name: 'gallery-application-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--gallery-application-version-name',
                    '--version-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The name of the gallery application version',
                  args: [
                    Arg(
                    name: 'gallery-application-version-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '-r'],
                  description: 'Gallery name',
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
              description: 'List gallery application versions',
              options: [

                Option(
                  name: ['--gallery-application-name', '--application-name'],
                  description: 'The name of the gallery application',
                  args: [
                    Arg(
                    name: 'gallery-application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '-r'],
                  description: 'Gallery name',
                  args: [
                    Arg(
                    name: 'gallery-nam'
                  )
                  ]
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
              description: 'Get information about a gallery application version',
              options: [

                Option(
                  name: ['--gallery-application-name', '--application-name'],
                  description: 'The name of the gallery application',
                  args: [
                    Arg(
                    name: 'gallery-application-nam'
                  )
                  ]
                ),
                Option(
                  name: '--expand',
                  description: 'The expand expression to apply on the operation. "ReplicationStatus" Default value is None',
                  args: [
                    Arg(
                    name: 'expand',
                    suggestions: [

                      FigSuggestion(name: 'ReplicationStatus')
                    ]
                  )
                  ]
                ),
                Option(
                  name: [
                    '--gallery-application-version-name',
                    '--version-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The name of the gallery application version',
                  args: [
                    Arg(
                    name: 'gallery-application-version-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '-r'],
                  description: 'Gallery name',
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
              name: 'update',
              description: 'Update a gallery Application Version',
              options: [

                Option(
                  name: '--application-name',
                  description: 'The name of the gallery Application',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '-r'],
                  description: 'Gallery name',
                  args: [
                    Arg(
                    name: 'gallery-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--version-name', '--name', '-n'],
                  description: 'The name of the gallery Application Version',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                ),
                Option(
                  name: '--package-file-link',
                  description: 'The mediaLink of the artifact, must be a readable storage page blob',
                  args: [
                    Arg(
                    name: 'package-file-lin'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--default-file-link',
                  description: 'The default configuration link of the artifact, must be a readable storage page blob',
                  args: [
                    Arg(
                    name: 'default-file-lin'
                  )
                  ]
                ),
                Option(
                  name: '--end-of-life-date',
                  description: 'The end of life date of the gallery image version. This property can be used for decommissioning purposes. This property is updatable',
                  args: [
                    Arg(
                    name: 'end-of-life-dat'
                  )
                  ]
                ),
                Option(
                  name: '--exclude-from',
                  description: 'If set to true, Virtual Machines deployed from the latest version of the Image Definition won\'t use this Image Version',
                  args: [
                    Arg(
                    name: 'exclude-from',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
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
                  name: '--target-regions',
                  description: 'The target regions where the Image Version isgoing to be replicated to. This property is updatable. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'target-region'
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
                  name: ['--gallery-application-name', '--application-name'],
                  description: 'The name of the gallery application',
                  args: [
                    Arg(
                    name: 'gallery-application-nam'
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
                  name: '--expand',
                  description: 'The expand expression to apply on the operation. "ReplicationStatus" Default value is None',
                  args: [
                    Arg(
                    name: 'expand',
                    suggestions: [

                      FigSuggestion(name: 'ReplicationStatus')
                    ]
                  )
                  ]
                ),
                Option(
                  name: [
                    '--gallery-application-version-name',
                    '--version-name',
                    '--name',
                    '-n',
                  ],
                  description: 'The name of the gallery application version',
                  args: [
                    Arg(
                    name: 'gallery-application-version-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--gallery-name', '-r'],
                  description: 'Gallery name',
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
        )
      ]
    ),
    Subcommand(
      name: 'image-definition',
      description: 'Manage shared gallery image with VM',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a gallery image definition',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'Gallery image definition',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
              name: ['--offer', '-f'],
              description: 'Image offer',
              args: [
                Arg(
                name: 'offe'
              )
              ]
            ),
            Option(
              name: '--os-type',
              description: 'The type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD',
              args: [
                Arg(
                name: 'os-type',
                suggestions: [

                  FigSuggestion(name: 'Linux'),
                  FigSuggestion(name: 'Windows')
                ]
              )
              ]
            ),
            Option(
              name: ['--publisher', '-p'],
              description: 'Image publisher',
              args: [
                Arg(
                name: 'publishe'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--sku', '-s'],
              description: 'Image sku',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--architecture',
              description: 'CPU architecture',
              args: [
                Arg(
                name: 'architecture',
                suggestions: [

                  FigSuggestion(name: 'Arm64'),
                  FigSuggestion(name: 'x64')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of the gallery image definition',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--disallowed-disk-types',
              description: 'Disk types which would not work with the image, e.g., Standard_LRS',
              args: [
                Arg(
                name: 'disallowed-disk-type'
              )
              ]
            ),
            Option(
              name: '--end-of-life-date',
              description: 'The end of life date, e.g. \'2020-12-31\'',
              args: [
                Arg(
                name: 'end-of-life-dat'
              )
              ]
            ),
            Option(
              name: '--eula',
              description: 'The Eula agreement for the gallery image',
              args: [
                Arg(
                name: 'eul'
              )
              ]
            ),
            Option(
              name: '--features',
              description: 'A list of gallery image features. E.g. "IsSecureBootSupported=true IsMeasuredBootSupported=false"',
              args: [
                Arg(
                name: 'feature'
              )
              ]
            ),
            Option(
              name: '--hyper-v-generation',
              description: 'The hypervisor generation of the Virtual Machine. Applicable to OS disks only',
              args: [
                Arg(
                name: 'hyper-v-generation',
                suggestions: [

                  FigSuggestion(name: 'V1'),
                  FigSuggestion(name: 'V2')
                ]
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
              name: '--maximum-cpu-core',
              description: 'Maximum cpu cores',
              args: [
                Arg(
                name: 'maximum-cpu-cor'
              )
              ]
            ),
            Option(
              name: '--maximum-memory',
              description: 'Maximum memory in MB',
              args: [
                Arg(
                name: 'maximum-memor'
              )
              ]
            ),
            Option(
              name: '--minimum-cpu-core',
              description: 'Minimum cpu cores',
              args: [
                Arg(
                name: 'minimum-cpu-cor'
              )
              ]
            ),
            Option(
              name: '--minimum-memory',
              description: 'Minimum memory in MB',
              args: [
                Arg(
                name: 'minimum-memor'
              )
              ]
            ),
            Option(
              name: '--os-state',
              description: 'This property allows the user to specify whether the virtual machines created under this image are \'Generalized\' or \'Specialized\'',
              args: [
                Arg(
                name: 'os-state',
                suggestions: [

                  FigSuggestion(name: 'Generalized'),
                  FigSuggestion(name: 'Specialized')
                ]
              )
              ]
            ),
            Option(
              name: '--plan-name',
              description: 'Plan name',
              args: [
                Arg(
                name: 'plan-nam'
              )
              ]
            ),
            Option(
              name: '--plan-product',
              description: 'Plan product',
              args: [
                Arg(
                name: 'plan-produc'
              )
              ]
            ),
            Option(
              name: '--plan-publisher',
              description: 'Plan publisher',
              args: [
                Arg(
                name: 'plan-publishe'
              )
              ]
            ),
            Option(
              name: '--privacy-statement-uri',
              description: 'The privacy statement uri',
              args: [
                Arg(
                name: 'privacy-statement-ur'
              )
              ]
            ),
            Option(
              name: '--release-note-uri',
              description: 'The release note uri',
              args: [
                Arg(
                name: 'release-note-ur'
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
          description: 'Delete a gallery image',
          options: [

            Option(
              name: [
                '--gallery-image-definition',
                '--gallery-image-name',
                '-i',
              ],
              description: 'The name of the gallery image definition to be deleted',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery in which the Image Definition is to be deleted',
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List gallery image definitions in a gallery',
          options: [

            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery from which Image Definitions are to be listed',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
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
          name: 'list-community',
          description: 'List VM Image definitions in a gallery community',
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
              name: '--marker',
              description: 'A string value that identifies the portion of the list of containers to be returned with the next listing operation. The operation returns the NextMarker value within the response body if the listing operation did not return all containers remaining to be listed with the current page. If specified, this generator will begin returning results from the point where the previous generator stopped',
              args: [
                Arg(
                name: 'marke'
              )
              ]
            ),
            Option(
              name: '--public-gallery-name',
              description: 'The public name of community gallery',
              args: [
                Arg(
                name: 'public-gallery-nam'
              )
              ]
            ),
            Option(
              name: '--show-next-marker',
              description: 'Show nextMarker in result when specified',
              args: [
                Arg(
                name: 'show-next-marke'
              )
              ]
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
          name: 'list-shared',
          description: 'List VM Image definitions in a gallery shared directly to your subscription or tenant',
          options: [

            Option(
              name: '--gallery-unique-name',
              description: 'The unique name of the Shared Gallery',
              args: [
                Arg(
                name: 'gallery-unique-nam'
              )
              ]
            ),
            Option(
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
              name: '--marker',
              description: 'A string value that identifies the portion of the list of containers to be returned with the next listing operation. The operation returns the NextMarker value within the response body if the listing operation did not return all containers remaining to be listed with the current page. If specified, this generator will begin returning results from the point where the previous generator stopped',
              args: [
                Arg(
                name: 'marke'
              )
              ]
            ),
            Option(
              name: '--shared-to',
              description: 'The query parameter to decide what shared galleries to fetch when doing listing operations. If not specified, list by subscription id',
              args: [
                Arg(
                name: 'shared-to',
                suggestions: [

                  FigSuggestion(name: 'tenant')
                ]
              )
              ]
            ),
            Option(
              name: '--show-next-marker',
              description: 'Show nextMarker in result when specified',
              args: [
                Arg(
                name: 'show-next-marke'
              )
              ]
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
          description: 'Get information about a gallery image definition',
          options: [

            Option(
              name: [
                '--gallery-image-definition',
                '--gallery-image-name',
                '-i',
              ],
              description: 'The name of the gallery image definition to be retrieved',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery from which the Image Definitions are to be retrieved',
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
          name: 'show-community',
          description: 'Get a community gallery image',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'The name of the community gallery image definition from which the image versions are to be listed',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
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
              name: '--public-gallery-name',
              description: 'The public name of community gallery',
              args: [
                Arg(
                name: 'public-gallery-nam'
              )
              ]
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
          name: 'show-shared',
          description: 'Get a shared gallery image',
          options: [

            Option(
              name: [
                '--gallery-image-definition',
                '--gallery-image-name',
                '-i',
              ],
              description: 'The name of the Shared Gallery Image Definition from which the Image Versions are to be listed',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: '--gallery-unique-name',
              description: 'The unique name of the Shared Gallery',
              args: [
                Arg(
                name: 'gallery-unique-nam'
              )
              ]
            ),
            Option(
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
          name: 'update',
          description: 'Update a VM Image definition',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'Gallery image definition',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
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
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
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
              name: [
                '--gallery-image-definition',
                '--gallery-image-name',
                '-i',
              ],
              description: 'The name of the gallery image definition to be retrieved',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery from which the Image Definitions are to be retrieved',
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
      name: 'image-version',
      description: 'Manage shared gallery image version with VM',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new image version',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'Gallery image definition',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-image-version', '-e'],
              description: 'Gallery image version in semantic version pattern. The allowed characters are digit and period. Digits must be within the range of a 32-bit integer, e.g. <MajorVersion>.<MinorVersion>.<Patch>',
              args: [
                Arg(
                name: 'gallery-image-versio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--allow-replicated-location-deletion',
              description: 'Indicate whether or not removing this gallery image version from replicated regions is allowed',
              args: [
                Arg(
                name: 'allow-replicated-location-deletion',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--data-snapshot-luns',
              description: 'Logical unit numbers (space-delimited) of data disk snapshots',
              args: [
                Arg(
                name: 'data-snapshot-lun'
              )
              ]
            ),
            Option(
              name: '--data-snapshots',
              description: 'Names or IDs (space-delimited) of data disk snapshots',
              args: [
                Arg(
                name: 'data-snapshot'
              )
              ]
            ),
            Option(
              name: '--data-vhds-luns',
              description: 'Logical unit numbers (space-delimited) of source VHD URIs of data disks',
              args: [
                Arg(
                name: 'data-vhds-lun'
              )
              ]
            ),
            Option(
              name: ['--data-vhds-storage-accounts', '--data-vhds-sa'],
              description: 'Names or IDs (space-delimited) of storage accounts of source VHD URIs of data disks',
              args: [
                Arg(
                name: 'data-vhds-storage-account'
              )
              ]
            ),
            Option(
              name: '--data-vhds-uris',
              description: 'Source VHD URIs (space-delimited) of data disks',
              args: [
                Arg(
                name: 'data-vhds-uri'
              )
              ]
            ),
            Option(
              name: '--end-of-life-date',
              description: 'The end of life date, e.g. \'2020-12-31\'',
              args: [
                Arg(
                name: 'end-of-life-dat'
              )
              ]
            ),
            Option(
              name: '--exclude-from-latest',
              description: 'The flag means that if it is set to true, people deploying VMs with version omitted will not use this version',
              args: [
                Arg(
                name: 'exclude-from-latest',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--image-version',
              description: 'Resource id of gallery image version source',
              args: [
                Arg(
                name: 'image-versio'
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
              name: '--managed-image',
              description: 'Image name(if in the same resource group) or resource id',
              args: [
                Arg(
                name: 'managed-imag'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--os-snapshot',
              description: 'Name or ID of OS disk snapshot',
              args: [
                Arg(
                name: 'os-snapsho'
              )
              ]
            ),
            Option(
              name: '--os-vhd-storage-account',
              description: 'Name or ID of storage account of source VHD URI of OS disk',
              args: [
                Arg(
                name: 'os-vhd-storage-accoun'
              )
              ]
            ),
            Option(
              name: '--os-vhd-uri',
              description: 'Source VHD URI of OS disk',
              args: [
                Arg(
                name: 'os-vhd-ur'
              )
              ]
            ),
            Option(
              name: '--replica-count',
              description: 'The default number of replicas to be created per region. To set regional replication counts, use --target-regions',
              args: [
                Arg(
                name: 'replica-coun'
              )
              ]
            ),
            Option(
              name: '--replication-mode',
              description: 'Optional parameter which specifies the mode to be used for replication. This property is not updatable',
              args: [
                Arg(
                name: 'replication-mode',
                suggestions: [

                  FigSuggestion(name: 'Full'),
                  FigSuggestion(name: 'Shallow')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-account-type',
              description: 'The default storage account type to be used per region. To set regional storage account types, use --target-regions',
              args: [
                Arg(
                name: 'storage-account-type',
                suggestions: [

                  FigSuggestion(name: 'Premium_LRS'),
                  FigSuggestion(name: 'Standard_LRS'),
                  FigSuggestion(name: 'Standard_ZRS')
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
            ),
            Option(
              name: ['--target-edge-zone-encryption', '--zone-encryption'],
              description: 'Space-separated list of customer managed keys for encrypting the OS and data disks in the gallery artifact for each region. Format for each edge zone: ,<os_des>,,<lun1_des>,,<lun2_des>',
              args: [
                Arg(
                name: 'target-edge-zone-encryptio'
              )
              ]
            ),
            Option(
              name: '--target-edge-zones',
              description: 'Space-separated list of regions, edge zones, replica counts and storage types. Use =[=][=] to optionally set the replica count and/or storage account type for each region. If a replica count is not specified, the default replica count will be used. If a storage account type is not specified, the default storage account type will be used. If "--target-edge-zones None" is specified, the target extended locations will be cleared',
              args: [
                Arg(
                name: 'target-edge-zone'
              )
              ]
            ),
            Option(
              name: '--target-region-cvm-encryption',
              description: 'Space-separated list of customer managed key for Confidential VM encrypting the OS disk in the gallery artifact for each region. Format for each region: <os_cvm_encryption_type>,<os_cvm_des>. The valid values for os_cvm_encryption_type are EncryptedVMGuestStateOnlyWithPmk, EncryptedWithPmk, EncryptedWithCmk',
              args: [
                Arg(
                name: 'target-region-cvm-encryptio'
              )
              ]
            ),
            Option(
              name: '--target-region-encryption',
              description: 'Space-separated list of customer managed keys for encrypting the OS and data disks in the gallery artifact for each region. Format for each region: <os_des>,<lun1>,<lun1_des>,<lun2>,<lun2_des>. Use "null" as a placeholder',
              args: [
                Arg(
                name: 'target-region-encryptio'
              )
              ]
            ),
            Option(
              name: '--target-regions',
              description: 'Space-separated list of regions and their replica counts. Use <region>[=<replica count>][=<storage account type>] to optionally set the replica count and/or storage account type for each region. If a replica count is not specified, the default replica count will be used. If a storage account type is not specified, the default storage account type will be used',
              args: [
                Arg(
                name: 'target-region'
              )
              ]
            ),
            Option(
              name: '--virtual-machine',
              description: 'Resource id of VM source',
              args: [
                Arg(
                name: 'virtual-machin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a gallery image version',
          options: [

            Option(
              name: [
                '--gallery-image-definition',
                '--gallery-image-name',
                '-i',
              ],
              description: 'The name of the gallery image definition in which the Image Version resides',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: [
                '--gallery-image-version-name',
                '--gallery-image-version',
                '-e',
              ],
              description: 'The name of the gallery image version to be deleted',
              args: [
                Arg(
                name: 'gallery-image-version-nam'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery in which the Image Definition resides',
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List gallery image versions in a gallery image definition',
          options: [

            Option(
              name: [
                '--gallery-image-definition',
                '--gallery-image-name',
                '-i',
              ],
              description: 'Gallery image definition',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
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
          name: 'list-community',
          description: 'List VM Image Versions in a gallery community',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'The name of the community gallery image definition from which the image versions are to be listed',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
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
              name: '--marker',
              description: 'A string value that identifies the portion of the list of containers to be returned with the next listing operation. The operation returns the NextMarker value within the response body if the listing operation did not return all containers remaining to be listed with the current page. If specified, this generator will begin returning results from the point where the previous generator stopped',
              args: [
                Arg(
                name: 'marke'
              )
              ]
            ),
            Option(
              name: '--public-gallery-name',
              description: 'The public name of community gallery',
              args: [
                Arg(
                name: 'public-gallery-nam'
              )
              ]
            ),
            Option(
              name: '--show-next-marker',
              description: 'Show nextMarker in result when specified',
              args: [
                Arg(
                name: 'show-next-marke'
              )
              ]
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
          name: 'list-shared',
          description: 'List VM Image Versions in a gallery shared directly to your subscription or tenant',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'The name of the Shared Gallery Image Definition from which the Image Versions are to be listed',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: '--gallery-unique-name',
              description: 'The unique name of the Shared Gallery',
              args: [
                Arg(
                name: 'gallery-unique-nam'
              )
              ]
            ),
            Option(
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
              name: '--marker',
              description: 'A string value that identifies the portion of the list of containers to be returned with the next listing operation. The operation returns the NextMarker value within the response body if the listing operation did not return all containers remaining to be listed with the current page. If specified, this generator will begin returning results from the point where the previous generator stopped',
              args: [
                Arg(
                name: 'marke'
              )
              ]
            ),
            Option(
              name: '--shared-to',
              description: 'The query parameter to decide what shared galleries to fetch when doing listing operations. If not specified, list by subscription id',
              args: [
                Arg(
                name: 'shared-to',
                suggestions: [

                  FigSuggestion(name: 'tenant')
                ]
              )
              ]
            ),
            Option(
              name: '--show-next-marker',
              description: 'Show nextMarker in result when specified',
              args: [
                Arg(
                name: 'show-next-marke'
              )
              ]
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
          description: 'Retrieves information about a gallery image version',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'Gallery image definition',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-image-version', '-e'],
              description: 'Gallery image version in semantic version pattern. The allowed characters are digit and period. Digits must be within the range of a 32-bit integer, e.g. <MajorVersion>.<MinorVersion>.<Patch>',
              args: [
                Arg(
                name: 'gallery-image-versio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'The expand expression to apply on the operation, e.g. \'ReplicationStatus\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-community',
          description: 'Get a community gallery image version',
          options: [

            Option(
              name: [
                '--gallery-image-definition',
                '--gallery-image-name',
                '-i',
              ],
              description: 'The name of the community gallery image definition from which the image versions are to be listed',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: [
                '--gallery-image-version-name',
                '--gallery-image-version',
                '-e',
              ],
              description: 'Gallery image version in semantic version pattern. The allowed characters are digit and period. Digits must be within the range of a 32-bit integer, e.g. <MajorVersion>.<MinorVersion>.<Patch>',
              args: [
                Arg(
                name: 'gallery-image-version-nam'
              )
              ]
            ),
            Option(
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
              name: '--public-gallery-name',
              description: 'The public name of the community gallery',
              args: [
                Arg(
                name: 'public-gallery-nam'
              )
              ]
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
          name: 'show-shared',
          description: 'Get an image version in a gallery shared directly to your subscription or tenant',
          options: [

            Option(
              name: [
                '--gallery-image-definition',
                '--gallery-image-name',
                '-i',
              ],
              description: 'The name of the Shared Gallery Image Definition from which the Image Versions are to be listed',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: [
                '--gallery-image-version-name',
                '--gallery-image-version',
                '-e',
              ],
              description: 'The name of the gallery image version to be created. Needs to follow semantic version name pattern: The allowed characters are digit and period. Digits must be within the range of a 32-bit integer. Format:',
              args: [
                Arg(
                name: 'gallery-image-version-nam'
              )
              ]
            ),
            Option(
              name: '--gallery-unique-name',
              description: 'The unique name of the Shared Gallery',
              args: [
                Arg(
                name: 'gallery-unique-nam'
              )
              ]
            ),
            Option(
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
          name: 'undelete',
          description: 'Restore soft deleted Image Version',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'Gallery image definition',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-image-version', '-e'],
              description: 'Gallery image version in semantic version pattern. The allowed characters are digit and period. Digits must be within the range of a 32-bit integer, e.g. <MajorVersion>.<MinorVersion>.<Patch>',
              args: [
                Arg(
                name: 'gallery-image-versio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--allow-replicated-location-deletion',
              description: 'Indicate whether or not removing this gallery image version from replicated regions is allowed',
              args: [
                Arg(
                name: 'allow-replicated-location-deletion',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          name: 'update',
          description: 'Update a share image version',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'Gallery image definition',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-image-version', '-e'],
              description: 'Gallery image version in semantic version pattern. The allowed characters are digit and period. Digits must be within the range of a 32-bit integer, e.g. <MajorVersion>.<MinorVersion>.<Patch>',
              args: [
                Arg(
                name: 'gallery-image-versio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
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
              name: '--allow-replicated-location-deletion',
              description: 'Indicate whether or not removing this gallery image version from replicated regions is allowed',
              args: [
                Arg(
                name: 'allow-replicated-location-deletion',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
              name: '--replica-count',
              description: 'The default number of replicas to be created per region. To set regional replication counts, use --target-regions',
              args: [
                Arg(
                name: 'replica-coun'
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
              name: '--target-edge-zones',
              description: 'Space-separated list of regions, edge zones, replica counts and storage types. Use =[=][=] to optionally set the replica count and/or storage account type for each region. If a replica count is not specified, the default replica count will be used. If a storage account type is not specified, the default storage account type will be used. If "--target-edge-zones None" is specified, the target extended locations will be cleared',
              args: [
                Arg(
                name: 'target-edge-zone'
              )
              ]
            ),
            Option(
              name: '--target-regions',
              description: 'Space-separated list of regions and their replica counts. Use <region>[=<replica count>][=<storage account type>] to optionally set the replica count and/or storage account type for each region. If a replica count is not specified, the default replica count will be used. If a storage account type is not specified, the default storage account type will be used',
              args: [
                Arg(
                name: 'target-region'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for image version related operation',
          options: [

            Option(
              name: ['--gallery-image-definition', '-i'],
              description: 'Gallery image definition',
              args: [
                Arg(
                name: 'gallery-image-definitio'
              )
              ]
            ),
            Option(
              name: ['--gallery-image-version', '-e'],
              description: 'Gallery image version in semantic version pattern. The allowed characters are digit and period. Digits must be within the range of a 32-bit integer, e.g. <MajorVersion>.<MinorVersion>.<Patch>',
              args: [
                Arg(
                name: 'gallery-image-versio'
              )
              ]
            ),
            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: '--expand',
              description: 'The expand expression to apply on the operation. \'ReplicationStatus\' Default value is None',
              args: [
                Arg(
                name: 'expan'
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
      name: 'share',
      description: 'Manage gallery sharing profile',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Share gallery with subscriptions and tenants',
          options: [

            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery',
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
            ),
            Option(
              name: '--subscription-ids',
              description: 'A list of subscription ids to share the gallery',
              args: [
                Arg(
                name: 'subscription-id'
              )
              ]
            ),
            Option(
              name: '--tenant-ids',
              description: 'A list of tenant ids to share the gallery',
              args: [
                Arg(
                name: 'tenant-id'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable-community',
          description: 'Allow to share gallery to the community',
          options: [

            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery',
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
            ),
            Option(
              name: '--subscription-ids',
              description: 'A list of subscription ids to share the gallery',
              args: [
                Arg(
                name: 'subscription-id'
              )
              ]
            ),
            Option(
              name: '--tenant-ids',
              description: 'A list of tenant ids to share the gallery',
              args: [
                Arg(
                name: 'tenant-id'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Stop sharing gallery with a subscription or tenant',
          options: [

            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery',
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
            ),
            Option(
              name: '--subscription-ids',
              description: 'A list of subscription ids to share the gallery',
              args: [
                Arg(
                name: 'subscription-id'
              )
              ]
            ),
            Option(
              name: '--tenant-ids',
              description: 'A list of tenant ids to share the gallery',
              args: [
                Arg(
                name: 'tenant-id'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Disable gallery from being shared with subscription or tenant',
          options: [

            Option(
              name: ['--gallery-name', '-r'],
              description: 'The name of the Shared Image Gallery',
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of a shared gallery is met',
          options: [

            Option(
              name: ['--gallery-name', '-r'],
              description: 'Gallery name',
              args: [
                Arg(
                name: 'gallery-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
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
);
