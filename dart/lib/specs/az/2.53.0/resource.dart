// Auto-generated from TypeScript source: resource.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `resource` CLI
final FigSpec resourceSpec = FigSpec(
  name: 'resource',
  description: 'Manage Azure resources',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a resource',
      options: [

        Option(
          name: ['--properties', '-p'],
          description: 'A JSON-formatted string containing resource properties',
          args: [
            Arg(
            name: 'propertie'
          )
          ]
        ),
        Option(
          name: '--api-version',
          description: 'The api version of the resource (omit for the latest stable version)',
          args: [
            Arg(
            name: 'api-versio'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'Resource ID',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: '--is-full-object',
          description: 'Indicate that the properties object includes other options such as location, tags, sku, and/or plan'
        ),
        Option(
          name: ['--latest-include-preview', '-v'],
          description: 'Indicate that the latest api-version will be used regardless of whether it is preview version (like 2020-01-01-preview) or not. For example, if the supported api-version of resource provider is 2020-01-01-preview and 2019-01-01: when passing in this parameter it will take the latest version 2020-01-01-preview, otherwise it will take the latest stable version 2019-01-01 without passing in this parameter'
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
          name: ['--name', '-n'],
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--parent',
          description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
          args: [
            Arg(
            name: 'paren'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a resource',
      options: [

        Option(
          name: '--api-version',
          description: 'The api version of the resource (omit for the latest stable version)',
          args: [
            Arg(
            name: 'api-versio'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--latest-include-preview', '-v'],
          description: 'Indicate that the latest api-version will be used regardless of whether it is preview version (like 2020-01-01-preview) or not. For example, if the supported api-version of resource provider is 2020-01-01-preview and 2019-01-01: when passing in this parameter it will take the latest version 2020-01-01-preview, otherwise it will take the latest stable version 2019-01-01 without passing in this parameter'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--parent',
          description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
          args: [
            Arg(
            name: 'paren'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'invoke-action',
      description: 'Invoke an action on the resource',
      options: [

        Option(
          name: '--action',
          description: 'The action that will be invoked on the specified resource',
          args: [
            Arg(
            name: 'actio'
          )
          ]
        ),
        Option(
          name: '--api-version',
          description: 'The api version of the resource (omit for the latest stable version)',
          args: [
            Arg(
            name: 'api-versio'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--latest-include-preview', '-v'],
          description: 'Indicate that the latest api-version will be used regardless of whether it is preview version (like 2020-01-01-preview) or not. For example, if the supported api-version of resource provider is 2020-01-01-preview and 2019-01-01: when passing in this parameter it will take the latest version 2020-01-01-preview, otherwise it will take the latest stable version 2019-01-01 without passing in this parameter'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--parent',
          description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
          args: [
            Arg(
            name: 'paren'
          )
          ]
        ),
        Option(
          name: '--request-body',
          description: 'JSON encoded parameter arguments for the action that will be passed along in the post request body. Use @{file} to load from a file',
          args: [
            Arg(
            name: 'request-bod'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List resources',
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
          name: ['--name', '-n'],
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        ),
        Option(
          name: '--tag',
          description: 'A single tag in \'key[=value]\' format. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'ta'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'move',
      description: 'Move resources from one resource group to another (can be under different subscription)',
      options: [

        Option(
          name: '--destination-group',
          description: 'The destination resource group name',
          args: [
            Arg(
            name: 'destination-grou'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'The space-separated resource ids to be moved',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--destination-subscription-id',
          description: 'The destination subscription identifier',
          args: [
            Arg(
            name: 'destination-subscription-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'patch',
      description: 'Update a resource by PATCH request',
      options: [

        Option(
          name: ['--properties', '-p'],
          description: 'A JSON-formatted string containing resource properties',
          args: [
            Arg(
            name: 'propertie'
          )
          ]
        ),
        Option(
          name: '--api-version',
          description: 'The api version of the resource (omit for the latest stable version)',
          args: [
            Arg(
            name: 'api-versio'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--is-full-object',
          description: 'Indicate that the properties object includes other options such as location, tags, sku, and/or plan'
        ),
        Option(
          name: ['--latest-include-preview', '-v'],
          description: 'Indicate that the latest api-version will be used regardless of whether it is preview version (like 2020-01-01-preview) or not. For example, if the supported api-version of resource provider is 2020-01-01-preview and 2019-01-01: when passing in this parameter it will take the latest version 2020-01-01-preview, otherwise it will take the latest stable version 2019-01-01 without passing in this parameter'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--parent',
          description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
          args: [
            Arg(
            name: 'paren'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of a resource',
      options: [

        Option(
          name: '--api-version',
          description: 'The api version of the resource (omit for the latest stable version)',
          args: [
            Arg(
            name: 'api-versio'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--include-response-body',
          description: 'Use if the default command output doesn\'t capture all of the property data'
        ),
        Option(
          name: ['--latest-include-preview', '-v'],
          description: 'Indicate that the latest api-version will be used regardless of whether it is preview version (like 2020-01-01-preview) or not. For example, if the supported api-version of resource provider is 2020-01-01-preview and 2019-01-01: when passing in this parameter it will take the latest version 2020-01-01-preview, otherwise it will take the latest stable version 2019-01-01 without passing in this parameter'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--parent',
          description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
          args: [
            Arg(
            name: 'paren'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tag',
      description: 'Tag a resource',
      options: [

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
          name: '--api-version',
          description: 'The api version of the resource (omit for the latest stable version)',
          args: [
            Arg(
            name: 'api-versio'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--is-incremental', '-i'],
          description: 'The option to add tags incrementally without deleting the original tags. If the key of new tag and original tag are duplicated, the original value will be overwritten',
          args: [
            Arg(
            name: 'is-incrementa'
          )
          ]
        ),
        Option(
          name: ['--latest-include-preview', '-v'],
          description: 'Indicate that the latest api-version will be used regardless of whether it is preview version (like 2020-01-01-preview) or not. For example, if the supported api-version of resource provider is 2020-01-01-preview and 2019-01-01: when passing in this parameter it will take the latest version 2020-01-01-preview, otherwise it will take the latest stable version 2019-01-01 without passing in this parameter'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--parent',
          description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
          args: [
            Arg(
            name: 'paren'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a resource by PUT request',
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
          name: '--api-version',
          description: 'The api version of the resource (omit for the latest stable version)',
          args: [
            Arg(
            name: 'api-versio'
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--include-response-body',
          description: 'Use if the default command output doesn\'t capture all of the property data'
        ),
        Option(
          name: ['--latest-include-preview', '-v'],
          description: 'Indicate that the latest api-version will be used regardless of whether it is preview version (like 2020-01-01-preview) or not. For example, if the supported api-version of resource provider is 2020-01-01-preview and 2019-01-01: when passing in this parameter it will take the latest version 2020-01-01-preview, otherwise it will take the latest stable version 2019-01-01 without passing in this parameter'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--parent',
          description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
          args: [
            Arg(
            name: 'paren'
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
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
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
      description: 'Place the CLI in a waiting state until a condition of a resources is met',
      options: [

        Option(
          name: '--api-version',
          description: 'The api version of the resource (omit for the latest stable version)',
          args: [
            Arg(
            name: 'api-versio'
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
          description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--include-response-body',
          description: 'Use if the default command output doesn\'t capture all of the property data'
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
          description: 'The resource name. (Ex: myC)',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--parent',
          description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
          args: [
            Arg(
            name: 'paren'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
          args: [
            Arg(
            name: 'resource-typ'
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
      name: 'link',
      description: 'Manage links between resources.\n\n\t\tLinking is a feature of the Resource Manager. It enables declaring relationships between resources even if they do not reside in the same resource group. Linking has no impact on resource usage, billing, or role-based access. It allows for managing multiple resources across groups as a single unit',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new link between resources',
          options: [

            Option(
              name: '--link',
              description: 'Fully-qualified resource ID of the resource link',
              args: [
                Arg(
                name: 'lin'
              )
              ]
            ),
            Option(
              name: '--target',
              description: 'Fully-qualified resource ID of the resource link target',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            ),
            Option(
              name: '--notes',
              description: 'Notes for the link',
              args: [
                Arg(
                name: 'note'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a link between resources',
          options: [

            Option(
              name: '--link',
              description: 'Fully-qualified resource ID of the resource link',
              args: [
                Arg(
                name: 'lin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List resource links',
          options: [

            Option(
              name: '--filter',
              description: 'Filter string for limiting results',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Fully-qualified scope for retrieving links',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a resource link with the specified ID',
          options: [

            Option(
              name: '--link',
              description: 'Fully-qualified resource ID of the resource link',
              args: [
                Arg(
                name: 'lin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update link between resources',
          options: [

            Option(
              name: '--link',
              description: 'Fully-qualified resource ID of the resource link',
              args: [
                Arg(
                name: 'lin'
              )
              ]
            ),
            Option(
              name: '--notes',
              description: 'Notes for the link',
              args: [
                Arg(
                name: 'note'
              )
              ]
            ),
            Option(
              name: '--target',
              description: 'Fully-qualified resource ID of the resource link target',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'lock',
      description: 'Manage Azure resource level locks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a resource-level lock',
          options: [

            Option(
              name: ['--lock-type', '-t'],
              description: 'The type of lock restriction',
              args: [
                Arg(
                name: 'lock-type',
                suggestions: [

                  FigSuggestion(name: 'CanNotDelete'),
                  FigSuggestion(name: 'ReadOnly')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the lock',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--notes',
              description: 'Notes about this lock',
              args: [
                Arg(
                name: 'note'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--resource-name', '--resource'],
              description: 'If an ID is given, other resource arguments should not be given',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a resource-level lock',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the lock',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--resource-name', '--resource'],
              description: 'If an ID is given, other resource arguments should not be given',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List lock information in the resource-level',
          options: [

            Option(
              name: '--filter-string',
              description: 'A query filter to use to restrict the results',
              args: [
                Arg(
                name: 'filter-strin'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--resource-name', '--resource'],
              description: 'If an ID is given, other resource arguments should not be given',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of a resource-level lock',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the lock',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--resource-name', '--resource'],
              description: 'If an ID is given, other resource arguments should not be given',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a resource-level lock',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--lock-type', '-t'],
              description: 'The type of lock restriction',
              args: [
                Arg(
                name: 'lock-type',
                suggestions: [

                  FigSuggestion(name: 'CanNotDelete'),
                  FigSuggestion(name: 'ReadOnly')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the lock',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: \'Microsoft.Provider\')',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--notes',
              description: 'Notes about this lock',
              args: [
                Arg(
                name: 'note'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: \'resA/myA/resB/myB\')',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--resource-name', '--resource'],
              description: 'If an ID is given, other resource arguments should not be given',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type (Ex: \'resC\'). Can also accept namespace/type format (Ex: \'Microsoft.Provider/resC\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
