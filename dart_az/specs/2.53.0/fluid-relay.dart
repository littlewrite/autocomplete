// Auto-generated from TypeScript source: fluid-relay.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fluid-relay` CLI
final FigSpec fluidRelaySpec = FigSpec(
  name: 'fluid-relay',
  description: 'Manage Fluid Relay',
  subcommands: [

    Subcommand(
      name: 'container',
      description: 'Manage Fluid Relay Container',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a Fluid Relay container',
          options: [

            Option(
              name: ['--container-name', '--name', '-n'],
              description: 'The Fluid Relay container resource name',
              args: [
                Arg(
                name: 'container-nam'
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
              name: '--server-name',
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
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
          description: 'List all Fluid Relay containers which are children of a given Fluid Relay server',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group containing the resource',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--server-name',
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a Fluid Relay container',
          options: [

            Option(
              name: ['--container-name', '--name', '-n'],
              description: 'The Fluid Relay container resource name',
              args: [
                Arg(
                name: 'container-nam'
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
              name: '--server-name',
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
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
      description: 'Manage Fluid Relay Server',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Fluid Relay server',
          options: [

            Option(
              name: ['--server-name', '--name', '-n'],
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'The type of identity used for the resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'identit'
              )
              ]
            ),
            Option(
              name: '--key-identity',
              description: 'All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'key-identit'
              )
              ]
            ),
            Option(
              name: '--key-url',
              description: 'Key encryption key Url, with or without a version. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek. Key auto rotation is enabled by providing a key uri without version. Otherwise, customer is responsible for rotating the key. The keyEncryptionKeyIdentity(either SystemAssigned or UserAssigned) should have permission to access this key url',
              args: [
                Arg(
                name: 'key-ur'
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
              name: '--provisioning-state',
              description: 'Provision states for FluidRelay RP',
              args: [
                Arg(
                name: 'provisioning-state',
                suggestions: [

                  FigSuggestion(name: 'Canceled'),
                  FigSuggestion(name: 'Failed'),
                  FigSuggestion(name: 'Succeeded')
                ]
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Sku of the storage associated with the resource',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'basic'),
                  FigSuggestion(name: 'standard')
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
          description: 'Delete a Fluid Relay server',
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
              name: ['--server-name', '--name', '-n'],
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
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
          description: 'List all Fluid Relay servers',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group containing the resource',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-key',
          description: 'Get primary and secondary key for this server',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group containing the resource',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--server-name', '-n'],
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'regenerate-key',
          description: 'Regenerate the primary or secondary key for this server',
          options: [

            Option(
              name: '--key-name',
              description: 'The key to regenerate',
              args: [
                Arg(
                name: 'key-name',
                suggestions: [

                  FigSuggestion(name: 'key1'),
                  FigSuggestion(name: 'key2')
                ]
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group containing the resource',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--server-name', '-n'],
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a Fluid Relay server',
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
              name: ['--server-name', '--name', '-n'],
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a Fluid Relay server',
          options: [

            Option(
              name: '--identity',
              description: 'The type of identity used for the resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              name: '--key-identity',
              description: 'All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'key-identit'
              )
              ]
            ),
            Option(
              name: '--key-url',
              description: 'Key encryption key Url, with or without a version. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek. Key auto rotation is enabled by providing a key uri without version. Otherwise, customer is responsible for rotating the key. The keyEncryptionKeyIdentity(either SystemAssigned or UserAssigned) should have permission to access this key url',
              args: [
                Arg(
                name: 'key-ur'
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'The geo-location where the resource lives',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--server-name', '--name', '-n'],
              description: 'The Fluid Relay server resource name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
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
);
