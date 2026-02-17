// Auto-generated from TypeScript source: webpubsub.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `webpubsub` CLI
final FigSpec webpubsubSpec = FigSpec(
  name: 'webpubsub',
  description: 'Commands to manage Webpubsub',
  subcommands: [

    Subcommand(
      name: 'client',
      description: 'Commands to manage client connections',
      subcommands: [

        Subcommand(
          name: 'start',
          description: 'Start a interactive client connection',
          options: [

            Option(
              name: '--hub-name',
              description: 'The hub which client connects to',
              args: [
                Arg(
                name: 'hub-nam'
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
              description: 'Name of the Webpubsub',
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
              name: '--user-id',
              description: 'The user id',
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
      name: 'create',
      description: 'Create a Webpubsub',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Webpubsub',
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
          name: '--sku',
          description: 'The sku name of the webpubsub service. Allowed values: Free_F1, Standard_S1, Premium_P1',
          args: [
            Arg(
            name: 'sk'
          )
          ]
        ),
        Option(
          name: '--kind',
          description: 'The kind of the webpubsub service. Allowed values: WebPubSub, SocketIO',
          args: [
            Arg(
            name: 'kin'
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
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--unit-count',
          description: 'The number of webpubsub service unit count',
          args: [
            Arg(
            name: 'unit-coun'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a Webpubsub',
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
          description: 'Name of the Webpubsub',
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
      name: 'list',
      description: 'List Webpubsub',
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
      name: 'list-skus',
      description: 'List all available skus of the resource',
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
          description: 'Name of the Webpubsub',
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
      name: 'list-usage',
      description: 'List resource usage quotas by location',
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
      name: 'restart',
      description: 'Restart a Webpubsub',
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
          description: 'Name of the Webpubsub',
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
      name: 'show',
      description: 'Show details of a Webpubsub',
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
          description: 'Name of the Webpubsub',
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
      description: 'Update a Webpubsub',
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
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
          description: 'Name of the Webpubsub',
          args: [
            Arg(
            name: 'nam'
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
          description: 'The sku name of the webpubsub service. Allowed values: Free_F1, Standard_S1, Premium_P1',
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
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--unit-count',
          description: 'The number of webpubsub service unit count',
          args: [
            Arg(
            name: 'unit-coun'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'hub',
      description: 'Commands to manage Webpubsub hub settings',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create hub settings for WebPubSub Service',
          options: [

            Option(
              name: '--hub-name',
              description: 'The hub to manage',
              args: [
                Arg(
                name: 'hub-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Webpubsub',
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
              name: '--allow-anonymous',
              description: 'Set if anonymous connections are allowed for this hub. True means allow and False means deny'
            ),
            Option(
              name: '--event-handler',
              description: 'Template item for event handler settings. Use key=value pattern to set properties. Supported keys are "url-template", "user-event-pattern", "system-event", "auth-type" and "auth-resource". Setting multiple "system-event" results in an array and for other properties, only last set takes active',
              args: [
                Arg(
                name: 'event-handle'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete hub settings for WebPubSub Service',
          options: [

            Option(
              name: '--hub-name',
              description: 'Name of the hub',
              args: [
                Arg(
                name: 'hub-nam'
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
              description: 'Name of the Webpubsub',
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
          name: 'list',
          description: 'List all hub settings for WebPubSub Service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Webpubsub',
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show hub settings for WebPubSub Service',
          options: [

            Option(
              name: '--hub-name',
              description: 'Name of the hub',
              args: [
                Arg(
                name: 'hub-nam'
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
              description: 'Name of the Webpubsub',
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
          description: 'Update hub settings for WebPubSub Service',
          options: [

            Option(
              name: '--hub-name',
              description: 'The hub to manage',
              args: [
                Arg(
                name: 'hub-nam'
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
              name: '--allow-anonymous',
              description: 'Set if anonymous connections are allowed for this hub. True means allow and False means deny',
              args: [
                Arg(
                name: 'allow-anonymous',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--event-handler',
              description: 'Template item for event handler settings. Use key=value pattern to set properties. Supported keys are "url-template", "user-event-pattern", "system-event", "auth-type" and "auth-resource". Setting multiple "system-event" results in an array and for other properties, only last set takes active',
              args: [
                Arg(
                name: 'event-handle'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
              description: 'Name of the Webpubsub',
              args: [
                Arg(
                name: 'nam'
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
      name: 'key',
      description: 'Commands to manage Webpubsub keys',
      subcommands: [

        Subcommand(
          name: 'regenerate',
          description: 'Regenerate keys for a WebPubSub Service',
          options: [

            Option(
              name: '--key-type',
              description: 'The name of access key to regenerate',
              args: [
                Arg(
                name: 'key-type',
                suggestions: [

                  FigSuggestion(name: 'primary'),
                  FigSuggestion(name: 'salt'),
                  FigSuggestion(name: 'secondary')
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
              description: 'Name of the Webpubsub',
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
          name: 'show',
          description: 'Show connetion strings and keys for a WebPubSub Service',
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
              description: 'Name of the Webpubsub',
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
        )
      ]
    ),
    Subcommand(
      name: 'network-rule',
      description: 'Commands to manage Webpubsub network rules',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Get the Network access control of WebPubSub Service',
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
              description: 'Name of the Webpubsub',
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
          description: 'Update the Network access control of WebPubSub Service',
          options: [

            Option(
              name: '--allow',
              description: 'The allowed virtual network rule. Space-separeted list of scope to assign',
              args: [
                Arg(
                name: 'allow',
                suggestions: [

                  FigSuggestion(name: 'ClientConnection'),
                  FigSuggestion(name: 'RESTAPI'),
                  FigSuggestion(name: 'ServerConnection'),
                  FigSuggestion(name: 'Trace')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-name',
              description: 'Space-separeted list of private endpoint connection name',
              args: [
                Arg(
                name: 'connection-nam'
              )
              ]
            ),
            Option(
              name: '--deny',
              description: 'The denied virtual network rule. Space-separeted list of scope to assign',
              args: [
                Arg(
                name: 'deny',
                suggestions: [

                  FigSuggestion(name: 'ClientConnection'),
                  FigSuggestion(name: 'RESTAPI'),
                  FigSuggestion(name: 'ServerConnection'),
                  FigSuggestion(name: 'Trace')
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
              description: 'Name of the Webpubsub',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--public-network',
              description: 'Set rules for public network',
              args: [
                Arg(
                name: 'public-network',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
        )
      ]
    ),
    Subcommand(
      name: 'service',
      description: 'Commands to manage Webpubsub service',
      subcommands: [

        Subcommand(
          name: 'broadcast',
          description: 'Broadcast messages to hub. Error throws if operation fails',
          options: [

            Option(
              name: '--hub-name',
              description: 'The hub to manage',
              args: [
                Arg(
                name: 'hub-nam'
              )
              ]
            ),
            Option(
              name: '--payload',
              description: 'A string payload to send',
              args: [
                Arg(
                name: 'payloa'
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
              description: 'Name of the Webpubsub',
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
          name: 'connection',
          description: 'Commands to manage Webpubsub service connections',
          subcommands: [

            Subcommand(
              name: 'close',
              description: 'Close a specific client connection. Error throws if operation fails',
              options: [

                Option(
                  name: '--connection-id',
                  description: 'The connection id',
                  args: [
                    Arg(
                    name: 'connection-i'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
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
                  description: 'Name of the Webpubsub',
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
              name: 'exist',
              description: 'Check whether client connection exists',
              options: [

                Option(
                  name: '--connection-id',
                  description: 'The connection id',
                  args: [
                    Arg(
                    name: 'connection-i'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
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
                  description: 'Name of the Webpubsub',
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
              name: 'send',
              description: 'Send a message to connection. Error throws if operation fails',
              options: [

                Option(
                  name: '--connection-id',
                  description: 'The connection id',
                  args: [
                    Arg(
                    name: 'connection-i'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--payload',
                  description: 'A string payload to send',
                  args: [
                    Arg(
                    name: 'payloa'
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
                  description: 'Name of the Webpubsub',
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
            )
          ]
        ),
        Subcommand(
          name: 'group',
          description: 'Commands to manage Webpubsub service groups',
          subcommands: [

            Subcommand(
              name: 'add-connection',
              description: 'Add a connection to group. Error throws if operation fails',
              options: [

                Option(
                  name: '--connection-id',
                  description: 'The connection id',
                  args: [
                    Arg(
                    name: 'connection-i'
                  )
                  ]
                ),
                Option(
                  name: '--group-name',
                  description: 'The group name',
                  args: [
                    Arg(
                    name: 'group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
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
                  description: 'Name of the Webpubsub',
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
              name: 'add-user',
              description: 'Add a user to group. Error throws if operation fails',
              options: [

                Option(
                  name: '--group-name',
                  description: 'The group name',
                  args: [
                    Arg(
                    name: 'group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The user id',
                  args: [
                    Arg(
                    name: 'user-i'
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
                  description: 'Name of the Webpubsub',
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
              name: 'remove-connection',
              description: 'Remove a connection from group. Error throws if operation fails',
              options: [

                Option(
                  name: '--connection-id',
                  description: 'The connection id',
                  args: [
                    Arg(
                    name: 'connection-i'
                  )
                  ]
                ),
                Option(
                  name: '--group-name',
                  description: 'The group name',
                  args: [
                    Arg(
                    name: 'group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
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
                  description: 'Name of the Webpubsub',
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
              name: 'remove-user',
              description: 'Remove a user from group. Error throws if operation fails',
              options: [

                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The user id',
                  args: [
                    Arg(
                    name: 'user-i'
                  )
                  ]
                ),
                Option(
                  name: '--group-name',
                  description: 'The group name',
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
                  name: ['--name', '-n'],
                  description: 'Name of the Webpubsub',
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
              name: 'send',
              description: 'Send a message to group. Error throws if operation fails',
              options: [

                Option(
                  name: '--group-name',
                  description: 'The group name',
                  args: [
                    Arg(
                    name: 'group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--payload',
                  description: 'A string payload to send',
                  args: [
                    Arg(
                    name: 'payloa'
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
                  description: 'Name of the Webpubsub',
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
            )
          ]
        ),
        Subcommand(
          name: 'permission',
          description: 'Commands to manage Webpubsub service permissions',
          subcommands: [

            Subcommand(
              name: 'check',
              description: 'Check if a connection has permission to the specified group',
              options: [

                Option(
                  name: '--connection-id',
                  description: 'The connection id',
                  args: [
                    Arg(
                    name: 'connection-i'
                  )
                  ]
                ),
                Option(
                  name: '--group-name',
                  description: 'The group name',
                  args: [
                    Arg(
                    name: 'group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--permission',
                  description: 'The permission',
                  args: [
                    Arg(
                    name: 'permission',
                    suggestions: [

                      FigSuggestion(name: 'joinLeaveGroup'),
                      FigSuggestion(name: 'sendToGroup')
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
                  description: 'Name of the Webpubsub',
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
              name: 'grant',
              description: 'Grant a group permission to the connection. Error throws if operation fails',
              options: [

                Option(
                  name: '--connection-id',
                  description: 'The connection id',
                  args: [
                    Arg(
                    name: 'connection-i'
                  )
                  ]
                ),
                Option(
                  name: '--group-name',
                  description: 'The group name',
                  args: [
                    Arg(
                    name: 'group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--permission',
                  description: 'The permission',
                  args: [
                    Arg(
                    name: 'permission',
                    suggestions: [

                      FigSuggestion(name: 'joinLeaveGroup'),
                      FigSuggestion(name: 'sendToGroup')
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
                  description: 'Name of the Webpubsub',
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
              name: 'revoke',
              description: 'Revoke a group permission from the connection. Error throws if operation fails',
              options: [

                Option(
                  name: '--connection-id',
                  description: 'The connection id',
                  args: [
                    Arg(
                    name: 'connection-i'
                  )
                  ]
                ),
                Option(
                  name: '--group-name',
                  description: 'The group name',
                  args: [
                    Arg(
                    name: 'group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--permission',
                  description: 'The permission',
                  args: [
                    Arg(
                    name: 'permission',
                    suggestions: [

                      FigSuggestion(name: 'joinLeaveGroup'),
                      FigSuggestion(name: 'sendToGroup')
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
                  description: 'Name of the Webpubsub',
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
            )
          ]
        ),
        Subcommand(
          name: 'user',
          description: 'Commands to manage Webpubsub service users',
          subcommands: [

            Subcommand(
              name: 'exist',
              description: 'Check if there are any client connections connected for the given user',
              options: [

                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The user id',
                  args: [
                    Arg(
                    name: 'user-i'
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
                  description: 'Name of the Webpubsub',
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
              name: 'send',
              description: 'Send a message to user. Error throws if operation fails',
              options: [

                Option(
                  name: '--hub-name',
                  description: 'The hub to manage',
                  args: [
                    Arg(
                    name: 'hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--payload',
                  description: 'A string payload to send',
                  args: [
                    Arg(
                    name: 'payloa'
                  )
                  ]
                ),
                Option(
                  name: '--user-id',
                  description: 'The user id',
                  args: [
                    Arg(
                    name: 'user-i'
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
                  description: 'Name of the Webpubsub',
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
            )
          ]
        )
      ]
    )
  ]
);
