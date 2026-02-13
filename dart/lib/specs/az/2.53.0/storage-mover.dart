// Auto-generated from TypeScript source: storage-mover.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `storage-mover` CLI
final FigSpec storageMoverSpec = FigSpec(
  name: 'storage-mover',
  description: 'Manage top-level Storage Mover resource',
  subcommands: [

    Subcommand(
      name: 'agent',
      description: 'Manage Agent resource, which references a hybrid compute machine that can run jobs',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists all Agents in a Storage Mover',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
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
          description: 'Gets an Agent resource',
          options: [

            Option(
              name: ['--agent-name', '--name', '-n'],
              description: 'The name of the Agent resource',
              args: [
                Arg(
                name: 'agent-nam'
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          name: 'unregister',
          description: 'Unregisters an Agent resource',
          options: [

            Option(
              name: ['--agent-name', '--name', '-n'],
              description: 'The name of the Agent resource',
              args: [
                Arg(
                name: 'agent-nam'
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          description: 'Update an Agent resource, which references a hybrid compute machine that can run jobs',
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
              name: ['--agent-name', '--name', '-n'],
              description: 'The name of the Agent resource',
              args: [
                Arg(
                name: 'agent-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Agent',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
              name: ['--agent-name', '--name', '-n'],
              description: 'The name of the Agent resource',
              args: [
                Arg(
                name: 'agent-nam'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
      name: 'create',
      description: 'Creates a top-level Storage Mover resource',
      options: [

        Option(
          name: ['--storage-mover-name', '--name', '-n'],
          description: 'The name of the Storage Mover resource',
          args: [
            Arg(
            name: 'storage-mover-nam'
          )
          ]
        ),
        Option(
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
          description: 'A description for the Storage Mover',
          args: [
            Arg(
            name: 'descriptio'
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
      description: 'Deletes a Storage Mover resource',
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
          name: ['--storage-mover-name', '--name', '-n'],
          description: 'The name of the Storage Mover resource',
          args: [
            Arg(
            name: 'storage-mover-nam'
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
      description: 'Lists all Storage Movers in a subscription',
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
      description: 'Gets a Storage Mover resource',
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
          name: ['--storage-mover-name', '--name', '-n'],
          description: 'The name of the Storage Mover resource',
          args: [
            Arg(
            name: 'storage-mover-nam'
          )
          ]
        ),
        Option(
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
      description: 'Update a top-level Storage Mover resource',
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
          description: 'A description for the Storage Mover',
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
          name: ['--storage-mover-name', '--name', '-n'],
          description: 'The name of the Storage Mover resource',
          args: [
            Arg(
            name: 'storage-mover-nam'
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
          name: ['--storage-mover-name', '--name', '-n'],
          description: 'The name of the Storage Mover resource',
          args: [
            Arg(
            name: 'storage-mover-nam'
          )
          ]
        ),
        Option(
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
      name: 'endpoint',
      description: 'Manage Endpoint resource, which represents a data transfer source or destination',
      subcommands: [

        Subcommand(
          name: 'create-for-nfs',
          description: 'Creates an Endpoint resource for nfs',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--export',
              description: 'The directory being exported from the server',
              args: [
                Arg(
                name: 'expor'
              )
              ]
            ),
            Option(
              name: '--host',
              description: 'The host name or IP address of the server exporting the file system',
              args: [
                Arg(
                name: 'hos'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--nfs-version',
              description: 'The NFS protocol version',
              args: [
                Arg(
                name: 'nfs-version',
                suggestions: [

                  FigSuggestion(name: 'NFSauto'),
                  FigSuggestion(name: 'NFSv3'),
                  FigSuggestion(name: 'NFSv4')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-for-smb',
          description: 'Creates an Endpoint resource for smb mount',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--host',
              description: 'The host name or IP address of the server exporting the file system',
              args: [
                Arg(
                name: 'hos'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--share-name',
              description: 'The name of the SMB share being exported from the server',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--password-uri',
              description: 'The Azure Key Vault secret URI which stores the password. Use empty string to clean-up existing value',
              args: [
                Arg(
                name: 'password-ur'
              )
              ]
            ),
            Option(
              name: '--username-uri',
              description: 'The Azure Key Vault secret URI which stores the username. Use empty string to clean-up existing value',
              args: [
                Arg(
                name: 'username-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-for-storage-container',
          description: 'Creates an Endpoint resource for storage blob container',
          options: [

            Option(
              name: '--container-name',
              description: 'The name of the Storage blob container that is the target destination',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-account-id',
              description: 'The Azure Resource ID of the storage account that is the target destination',
              args: [
                Arg(
                name: 'storage-account-i'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-for-storage-smb-file-share',
          description: 'Creates an Endpoint resource for storage smb file share',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--file-share-name',
              description: 'The name of the Azure Storage file share',
              args: [
                Arg(
                name: 'file-share-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-account-id',
              description: 'The Azure Resource ID of the storage account that is the target destination',
              args: [
                Arg(
                name: 'storage-account-i'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an Endpoint resource',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the Endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          description: 'Lists all Endpoints in a Storage Mover',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
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
          description: 'Gets an Endpoint resource',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the Endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          name: 'update-for-nfs',
          description: 'Updates an Endpoint resource for nfs',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-for-smb',
          description: 'Updates an Endpoint resource for smb mount',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--password-uri',
              description: 'The Azure Key Vault secret URI which stores the password. Use empty string to clean-up existing value',
              args: [
                Arg(
                name: 'password-ur'
              )
              ]
            ),
            Option(
              name: '--username-uri',
              description: 'The Azure Key Vault secret URI which stores the username. Use empty string to clean-up existing value',
              args: [
                Arg(
                name: 'username-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-for-storage-container',
          description: 'Updates an Endpoint resource for storage blob container',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-for-storage-smb-file-share',
          description: 'Updates an Endpoint resource for storage smb file share',
          options: [

            Option(
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Endpoint',
              args: [
                Arg(
                name: 'descriptio'
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
              name: ['--endpoint-name', '--name', '-n'],
              description: 'The name of the Endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
      name: 'job-definition',
      description: 'Manage Job Definition resource, which contains configuration for a single unit of managed data transfer',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a Job Definition resource, which contains configuration for a single unit of managed data transfer',
          options: [

            Option(
              name: '--copy-mode',
              description: 'Strategy to use for copy',
              args: [
                Arg(
                name: 'copy-mode',
                suggestions: [

                  FigSuggestion(name: 'Additive'),
                  FigSuggestion(name: 'Mirror')
                ]
              )
              ]
            ),
            Option(
              name: ['--job-definition-name', '--name', '-n'],
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--source-name',
              description: 'The name of the source Endpoint',
              args: [
                Arg(
                name: 'source-nam'
              )
              ]
            ),
            Option(
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--target-name',
              description: 'The name of the target Endpoint',
              args: [
                Arg(
                name: 'target-nam'
              )
              ]
            ),
            Option(
              name: '--agent-name',
              description: 'Name of the Agent to assign for new Job Runs of this Job Definition',
              args: [
                Arg(
                name: 'agent-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Job Definition',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--source-subpath',
              description: 'The subpath to use when reading from the source Endpoint',
              args: [
                Arg(
                name: 'source-subpat'
              )
              ]
            ),
            Option(
              name: '--target-subpath',
              description: 'The subpath to use when writing to the target Endpoint',
              args: [
                Arg(
                name: 'target-subpat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Job Definition resource',
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
              name: ['--job-definition-name', '--name', '-n'],
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
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
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          description: 'Lists all Job Definitions in a Project',
          options: [

            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
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
          description: 'Gets a Job Definition resource',
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
              name: ['--job-definition-name', '--name', '-n'],
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          name: 'start-job',
          description: 'Requests an Agent to start a new instance of this Job Definition, generating a new Job Run resource',
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
              name: '--job-definition-name',
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          name: 'stop-job',
          description: 'Requests the Agent of any active instance of this Job Definition to stop',
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
              name: '--job-definition-name',
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          description: 'Update a Job Definition resource, which contains configuration for a single unit of managed data transfer',
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
              name: '--agent-name',
              description: 'Name of the Agent to assign for new Job Runs of this Job Definition',
              args: [
                Arg(
                name: 'agent-nam'
              )
              ]
            ),
            Option(
              name: '--copy-mode',
              description: 'Strategy to use for copy',
              args: [
                Arg(
                name: 'copy-mode',
                suggestions: [

                  FigSuggestion(name: 'Additive'),
                  FigSuggestion(name: 'Mirror')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Job Definition',
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
              name: ['--job-definition-name', '--name', '-n'],
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
              name: ['--job-definition-name', '--name', '-n'],
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
      name: 'job-run',
      description: 'Manage Job Run resource',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists all Job Runs in a Job Definition',
          options: [

            Option(
              name: '--job-definition-name',
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
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
          description: 'Gets a Job Run resource',
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
              name: '--job-definition-name',
              description: 'The name of the Job Definition resource',
              args: [
                Arg(
                name: 'job-definition-nam'
              )
              ]
            ),
            Option(
              name: ['--job-run-name', '--name', '-n'],
              description: 'The name of the Job Run resource',
              args: [
                Arg(
                name: 'job-run-nam'
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
      name: 'project',
      description: 'Manage Project resource, which is a logical grouping of related jobs',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a Project resource, which is a logical grouping of related jobs',
          options: [

            Option(
              name: ['--project-name', '--name', '-n'],
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the Project',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Project resource',
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
              name: ['--project-name', '--name', '-n'],
              description: 'The name of the Project resource',
              args: [
                Arg(
                name: 'project-nam'
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          description: 'Lists all Projects in a Storage Mover',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
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
          description: 'Gets a Project resource',
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
              name: ['--project-name', '--name', '-n'],
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
          description: 'Update a Project resource, which is a logical grouping of related jobs',
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
              description: 'A description for the Project',
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
              name: ['--project-name', '--name', '-n'],
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
              name: ['--project-name', '--name', '-n'],
              description: 'The name of the Project resource',
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
              name: '--storage-mover-name',
              description: 'The name of the Storage Mover resource',
              args: [
                Arg(
                name: 'storage-mover-nam'
              )
              ]
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
