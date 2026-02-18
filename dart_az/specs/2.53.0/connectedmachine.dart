// Auto-generated from TypeScript source: connectedmachine.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `connectedmachine` CLI
final FigSpec connectedmachineSpec = FigSpec(
  name: 'connectedmachine',
  description: 'Manage an Azure Arc-Enabled Server',
  subcommands: [

    Subcommand(
      name: 'assess-patches',
      description: 'Assess patches on an Azure Arc-Enabled Server',
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
          description: 'The name of the hybrid machine',
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
      name: 'delete',
      description: 'Delete an Azure Arc-Enabled Server',
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
          name: ['--machine-name', '--name', '-n'],
          description: 'The name of the hybrid machine',
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
      name: 'install-patches',
      description: 'Install patches on an Azure Arc-Enabled Server',
      options: [

        Option(
          name: '--maximum-duration',
          description: 'Specifies the maximum amount of time that the operation will run. It must be an ISO 8601-compliant duration string such as PT4H (4 hours)',
          args: [
            Arg(
            name: 'maximum-duratio'
          )
          ]
        ),
        Option(
          name: '--reboot-setting',
          description: 'Defines when it is acceptable to reboot a VM during a software update operation',
          args: [
            Arg(
            name: 'reboot-setting',
            suggestions: [

              FigSuggestion(name: 'Always'),
              FigSuggestion(name: 'IfRequired'),
              FigSuggestion(name: 'Never')
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
          name: '--linux-parameters',
          description: 'Input for InstallPatches on a Linux VM, as directly received by the API Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'linux-parameter'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the hybrid machine',
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
          name: '--windows-parameters',
          description: 'Input for InstallPatches on a Windows VM, as directly received by the API Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'windows-parameter'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all the Azure Arc-Enabled Servers in the specified resource group',
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
      description: 'Get information about the model view or the instance view of an Azure Arc-Enabled Server',
      options: [

        Option(
          name: '--expand',
          description: 'The expand expression to apply on the operation',
          args: [
            Arg(
            name: 'expand',
            suggestions: [

              FigSuggestion(name: 'instanceView')
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
          name: ['--machine-name', '--name', '-n'],
          description: 'The name of the hybrid machine',
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
      description: 'Update an Azure Arc-Enabled Server. Please note some properties can be set only during machine creation',
      options: [

        Option(
          name: '--location',
          description: 'The location of the hybrid machine',
          args: [
            Arg(
            name: 'locatio'
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
          name: '--agent-upgrade',
          description: 'The info of the machine w.r.t Agent Upgrade Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'agent-upgrad'
          )
          ]
        ),
        Option(
          name: '--client-public-key',
          description: 'Public Key that the client provides to be used during initial resource onboarding',
          args: [
            Arg(
            name: 'client-public-ke'
          )
          ]
        ),
        Option(
          name: '--extensions',
          description: 'Machine Extensions information (deprecated field) Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'extension'
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
          description: 'Identity for the resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
          name: '--location-data',
          description: 'Metadata pertaining to the geographic location of the resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'location-dat'
          )
          ]
        ),
        Option(
          name: ['--machine-name', '--name', '-n'],
          description: 'The name of the hybrid machine',
          args: [
            Arg(
            name: 'machine-nam'
          )
          ]
        ),
        Option(
          name: '--mssql-discovered',
          description: 'Specifies whether any MS SQL instance is discovered on the machine',
          args: [
            Arg(
            name: 'mssql-discovere'
          )
          ]
        ),
        Option(
          name: '--os-profile',
          description: 'Specifies the operating system settings for the hybrid machine. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'os-profil'
          )
          ]
        ),
        Option(
          name: '--os-type',
          description: 'The type of Operating System (windows/linux)',
          args: [
            Arg(
            name: 'os-typ'
          )
          ]
        ),
        Option(
          name: '--parent-cluster-id',
          description: 'The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any',
          args: [
            Arg(
            name: 'parent-cluster-i'
          )
          ]
        ),
        Option(
          name: '--private-scope-id',
          description: 'The resource id of the private link scope this machine is assigned to, if any',
          args: [
            Arg(
            name: 'private-scope-i'
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
          name: '--service-statuses',
          description: 'Statuses of dependent services that are reported back to ARM. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'service-statuse'
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
      name: 'upgrade-extension',
      description: 'Upgrade Extensions of an Azure Arc-Enabled Server',
      options: [

        Option(
          name: '--extension-targets',
          description: 'Describes the Extension Target Properties. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'extension-target'
          )
          ]
        ),
        Option(
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
          description: 'The name of the hybrid machine',
          args: [
            Arg(
            name: 'machine-nam'
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
      name: 'extension',
      description: 'Manage a VM extension on an Azure Arc-Enabled Server',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the extension',
          options: [

            Option(
              name: ['--extension-name', '--name', '-n'],
              description: 'The name of the machine extension',
              args: [
                Arg(
                name: 'extension-nam'
              )
              ]
            ),
            Option(
              name: '--machine-name',
              description: 'The name of the machine where the extension should be created or updated',
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
              name: '--enable-auto-upgrade',
              description: 'Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available',
              args: [
                Arg(
                name: 'enable-auto-upgrade',
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
              name: '--force-update-tag',
              description: 'How the extension handler should be forced to update even if the extension configuration has not changed',
              args: [
                Arg(
                name: 'force-update-ta'
              )
              ]
            ),
            Option(
              name: '--instance-view',
              description: 'The machine extension instance view. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'instance-vie'
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
              name: '--protected-settings',
              description: 'The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'protected-setting'
              )
              ]
            ),
            Option(
              name: '--publisher',
              description: 'The name of the extension handler publisher',
              args: [
                Arg(
                name: 'publishe'
              )
              ]
            ),
            Option(
              name: '--settings',
              description: 'Json formatted public settings for the extension. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'setting'
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
              name: '--type',
              description: 'Specifies the type of the extension; an example is "CustomScriptExtension"',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: '--type-handler-version',
              description: 'Specifies the version of the script handler',
              args: [
                Arg(
                name: 'type-handler-versio'
              )
              ]
            ),
            Option(
              name: '--upgrade-minor-ver',
              description: 'Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true',
              args: [
                Arg(
                name: 'upgrade-minor-ver',
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
          description: 'Delete the extension',
          options: [

            Option(
              name: ['--extension-name', '--name', '-n'],
              description: 'The name of the machine extension',
              args: [
                Arg(
                name: 'extension-nam'
              )
              ]
            ),
            Option(
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
              description: 'The name of the machine where the extension should be deleted',
              args: [
                Arg(
                name: 'machine-nam'
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
          description: 'Get all extensions of a Non-Azure machine',
          options: [

            Option(
              name: '--machine-name',
              description: 'The name of the machine containing the extension',
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
              name: '--expand',
              description: 'The expand expression to apply on the operation',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Create or update the extension',
          options: [

            Option(
              name: ['--extension-name', '--name', '-n'],
              description: 'The name of the machine extension',
              args: [
                Arg(
                name: 'extension-nam'
              )
              ]
            ),
            Option(
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
              description: 'The name of the machine containing the extension',
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
          description: 'Update operation to update the extension',
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
              name: '--enable-auto-upgrade',
              description: 'Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available',
              args: [
                Arg(
                name: 'enable-auto-upgrade',
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
              name: ['--extension-name', '--name', '-n'],
              description: 'The name of the machine extension',
              args: [
                Arg(
                name: 'extension-nam'
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
              name: '--force-update-tag',
              description: 'How the extension handler should be forced to update even if the extension configuration has not changed',
              args: [
                Arg(
                name: 'force-update-ta'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--instance-view',
              description: 'The machine extension instance view. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'instance-vie'
              )
              ]
            ),
            Option(
              name: '--machine-name',
              description: 'The name of the machine containing the extension',
              args: [
                Arg(
                name: 'machine-nam'
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
              name: '--protected-settings',
              description: 'The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'protected-setting'
              )
              ]
            ),
            Option(
              name: '--publisher',
              description: 'The name of the extension handler publisher',
              args: [
                Arg(
                name: 'publishe'
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
              name: '--settings',
              description: 'Json formatted public settings for the extension. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'setting'
              )
              ]
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
              name: '--type',
              description: 'Specifies the type of the extension; an example is "CustomScriptExtension"',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: '--type-handler-version',
              description: 'Specifies the version of the script handler',
              args: [
                Arg(
                name: 'type-handler-versio'
              )
              ]
            ),
            Option(
              name: '--upgrade-minor-ver',
              description: 'Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true',
              args: [
                Arg(
                name: 'upgrade-minor-ver',
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
              name: ['--extension-name', '--name', '-n'],
              description: 'The name of the machine extension',
              args: [
                Arg(
                name: 'extension-nam'
              )
              ]
            ),
            Option(
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
              name: '--machine-name',
              description: 'The name of the machine containing the extension',
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
          name: 'image',
          description: 'Manage VM extension metadata available for Azure Arc-Enabled Servers',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all Extension versions based on location, publisher, extensionType',
              options: [

                Option(
                  name: ['--extension-type', '--type'],
                  description: 'The extensionType of the Extension being received',
                  args: [
                    Arg(
                    name: 'extension-typ'
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
                  name: ['--publisher', '-p'],
                  description: 'The publisher of the Extension being received',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an Extension Metadata based on location, publisher, extensionType and version',
              options: [

                Option(
                  name: ['--extension-type', '--type'],
                  description: 'The extensionType of the Extension being received',
                  args: [
                    Arg(
                    name: 'extension-typ'
                  )
                  ]
                ),
                Option(
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
                  name: ['--version', '--name', '-n'],
                  description: 'The version of the Extension being received',
                  args: [
                    Arg(
                    name: 'versio'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher', '-p'],
                  description: 'The publisher of the Extension being received',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
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
      name: 'private-endpoint-connection',
      description: 'Manage private endpoint connection with an Azure Arc-Enabled Server',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a private endpoint connection with a given name',
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection',
              args: [
                Arg(
                name: 'private-endpoint-connection-nam'
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
              name: '--scope-name',
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
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
          description: 'List all private endpoint connections on a private link scope',
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
              name: '--scope-name',
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a private endpoint connection',
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection',
              args: [
                Arg(
                name: 'private-endpoint-connection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope-name',
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
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
          description: 'Update a private endpoint connection with a given name',
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
              name: [
                '--private-link-service-connection-state',
                '--connection-state',
              ],
              description: 'Connection state of the private endpoint connection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'private-link-service-connection-stat'
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection',
              args: [
                Arg(
                name: 'private-endpoint-connection-nam'
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
              name: '--private-endpoint',
              description: 'Private endpoint which the connection belongs to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'private-endpoin'
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
              name: '--scope-name',
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection',
              args: [
                Arg(
                name: 'private-endpoint-connection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope-name',
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
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
      name: 'private-link-resource',
      description: 'Manage private link resource of an Azure Arc-Enabled Server',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the private link resources that need to be created for an Azure Monitor PrivateLinkScope',
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
              name: ['--scope-name', '-n'],
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the private link resources that need to be created for an Azure Monitor PrivateLinkScope',
          options: [

            Option(
              name: ['--group-name', '--name', '-n'],
              description: 'The name of the private link resource',
              args: [
                Arg(
                name: 'group-nam'
              )
              ]
            ),
            Option(
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
              name: '--scope-name',
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
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
      name: 'private-link-scope',
      description: 'Manage private link scope of an Azure Arc-Enabled Server',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create (or updates) a Azure Arc PrivateLinkScope. Note: You cannot specify a different value for InstrumentationKey nor AppId in the Put operation',
          options: [

            Option(
              name: ['--scope-name', '--name', '-n'],
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
            ),
            Option(
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
              description: 'Resource location When not specified, the location of the resource group will be used',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Azure Arc PrivateLinkScope',
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
              name: ['--scope-name', '--name', '-n'],
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
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
          description: 'Get a list of Azure Arc PrivateLinkScopes within a resource group. And Gets a list of all Azure Arc PrivateLinkScopes within a subscription',
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
          description: 'Return an Azure Arc PrivateLinkScope',
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
              name: ['--scope-name', '--name', '-n'],
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update an Azure Arc PrivateLinkScope. Note: You cannot specify a different value for InstrumentationKey nor AppId in the Put operation',
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
              name: '--location',
              description: 'The location of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--scope-name', '--name', '-n'],
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-tag',
          description: 'Update an existing PrivateLinkScope\'s tags. To update other fields use the CreateOrUpdate method',
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope-name',
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
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
              name: ['--scope-name', '--name', '-n'],
              description: 'The name of the Azure Arc PrivateLinkScope resource',
              args: [
                Arg(
                name: 'scope-nam'
              )
              ]
            ),
            Option(
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
);
