// Auto-generated from TypeScript source: resource-mover.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `resource-mover` CLI
final FigSpec resourceMoverSpec = FigSpec(
  name: 'resource-mover',
  description: 'Manage Resource Mover Service API',
  subcommands: [

    Subcommand(
      name: 'move-collection',
      description: 'Manage move-collection',
      subcommands: [

        Subcommand(
          name: 'bulk-remove',
          description: 'Removes the set of move resources included in the request body from move collection. The orchestration is done by service. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true',
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
              name: '--input-type',
              description: 'Defines the move resource input type',
              args: [
                Arg(
                name: 'input-type',
                suggestions: [

                  FigSuggestion(name: 'MoveResourceId'),
                  FigSuggestion(name: 'MoveResourceSourceId')
                ]
              )
              ]
            ),
            Option(
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: '--move-resources',
              description: 'Gets or sets the list of resource Id\'s, by default it accepts move resource id\'s unless the input type is switched via moveResourceInputType property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'move-resource'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
              name: '--validate-only',
              description: 'Gets or sets a value indicating whether the operation needs to only run pre-requisite',
              args: [
                Arg(
                name: 'validate-only',
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
          name: 'commit',
          description: 'Commits the set of resources included in the request body. The commit operation is triggered on the moveResources in the moveState \'CommitPending\' or \'CommitFailed\', on a successful completion the moveResource moveState do a transition to Committed. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true',
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
              name: '--input-type',
              description: 'Defines the move resource input type',
              args: [
                Arg(
                name: 'input-type',
                suggestions: [

                  FigSuggestion(name: 'MoveResourceId'),
                  FigSuggestion(name: 'MoveResourceSourceId')
                ]
              )
              ]
            ),
            Option(
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: '--move-resources',
              description: 'Gets or sets the list of resource Id\'s, by default it accepts move resource id\'s unless the input type is switched via moveResourceInputType property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'move-resource'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
              name: '--validate-only',
              description: 'Gets or sets a value indicating whether the operation needs to only run pre-requisite',
              args: [
                Arg(
                name: 'validate-only',
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
          name: 'create',
          description: 'Create a move collection',
          options: [

            Option(
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'Defines the MSI properties of the Move Collection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'identit'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The geo-location where the resource lives',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--move-region',
              description: 'Gets or sets the move region which indicates the region where the VM Regional to Zonal move will be conducted',
              args: [
                Arg(
                name: 'move-regio'
              )
              ]
            ),
            Option(
              name: '--move-type',
              description: 'Defines the MoveType',
              args: [
                Arg(
                name: 'move-type',
                suggestions: [

                  FigSuggestion(name: 'RegionToRegion'),
                  FigSuggestion(name: 'RegionToZone')
                ]
              )
              ]
            ),
            Option(
              name: '--source-region',
              description: 'Gets or sets the source region',
              args: [
                Arg(
                name: 'source-regio'
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
              name: '--target-region',
              description: 'Gets or sets the target region',
              args: [
                Arg(
                name: 'target-regio'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Gets or sets the version of move collection',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a move collection',
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
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
          name: 'discard',
          description: 'Discards the set of resources included in the request body. The discard operation is triggered on the moveResources in the moveState \'CommitPending\' or \'DiscardFailed\', on a successful completion the moveResource moveState do a transition to MovePending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true',
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
              name: '--input-type',
              description: 'Defines the move resource input type',
              args: [
                Arg(
                name: 'input-type',
                suggestions: [

                  FigSuggestion(name: 'MoveResourceId'),
                  FigSuggestion(name: 'MoveResourceSourceId')
                ]
              )
              ]
            ),
            Option(
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: '--move-resources',
              description: 'Gets or sets the list of resource Id\'s, by default it accepts move resource id\'s unless the input type is switched via moveResourceInputType property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'move-resource'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
              name: '--validate-only',
              description: 'Gets or sets a value indicating whether the operation needs to only run pre-requisite',
              args: [
                Arg(
                name: 'validate-only',
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
          name: 'initiate-move',
          description: 'Moves the set of resources included in the request body. The move operation is triggered after the moveResources are in the moveState \'MovePending\' or \'MoveFailed\', on a successful completion the moveResource moveState do a transition to CommitPending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true',
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
              name: '--input-type',
              description: 'Defines the move resource input type',
              args: [
                Arg(
                name: 'input-type',
                suggestions: [

                  FigSuggestion(name: 'MoveResourceId'),
                  FigSuggestion(name: 'MoveResourceSourceId')
                ]
              )
              ]
            ),
            Option(
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: '--move-resources',
              description: 'Gets or sets the list of resource Id\'s, by default it accepts move resource id\'s unless the input type is switched via moveResourceInputType property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'move-resource'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
              name: '--validate-only',
              description: 'Gets or sets a value indicating whether the operation needs to only run pre-requisite',
              args: [
                Arg(
                name: 'validate-only',
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
          name: 'list',
          description: 'List all the Move Collections in the subscription',
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-required-for',
          description: 'List of the move resources for which an arm resource is required for',
          options: [

            Option(
              name: '--source-id',
              description: 'The sourceId for which the api is invoked',
              args: [
                Arg(
                name: 'source-i'
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
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
          name: 'list-unresolved-dependency',
          description: 'Lists a list of unresolved dependencies',
          options: [

            Option(
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--dependency-level',
              description: 'Defines the dependency level',
              args: [
                Arg(
                name: 'dependency-level',
                suggestions: [

                  FigSuggestion(name: 'Descendant'),
                  FigSuggestion(name: 'Direct')
                ]
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply on the operation. For example, \$apply=filter(count eq 2)',
              args: [
                Arg(
                name: 'filte'
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
              name: '--orderby',
              description: 'OData order by query option. For example, you can use \$orderby=Count desc',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'prepare',
          description: 'Initiates prepare for the set of resources included in the request body. The prepare operation is on the moveResources that are in the moveState \'PreparePending\' or \'PrepareFailed\', on a successful completion the moveResource moveState do a transition to MovePending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true',
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
              name: '--input-type',
              description: 'Defines the move resource input type',
              args: [
                Arg(
                name: 'input-type',
                suggestions: [

                  FigSuggestion(name: 'MoveResourceId'),
                  FigSuggestion(name: 'MoveResourceSourceId')
                ]
              )
              ]
            ),
            Option(
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: '--move-resources',
              description: 'Gets or sets the list of resource Id\'s, by default it accepts move resource id\'s unless the input type is switched via moveResourceInputType property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'move-resource'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
              name: '--validate-only',
              description: 'Gets or sets a value indicating whether the operation needs to only run pre-requisite',
              args: [
                Arg(
                name: 'validate-only',
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
          name: 'resolve-dependency',
          description: 'Computes, resolves and validate the dependencies of the moveResources in the move collection',
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
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
          description: 'Get the move collection',
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
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
          description: 'Update a move collection',
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
              name: '--identity',
              description: 'Defines the MSI properties of the Move Collection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: '--move-region',
              description: 'Gets or sets the move region which indicates the region where the VM Regional to Zonal move will be conducted',
              args: [
                Arg(
                name: 'move-regio'
              )
              ]
            ),
            Option(
              name: '--move-type',
              description: 'Defines the MoveType',
              args: [
                Arg(
                name: 'move-type',
                suggestions: [

                  FigSuggestion(name: 'RegionToRegion'),
                  FigSuggestion(name: 'RegionToZone')
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
              name: '--source-region',
              description: 'Gets or sets the source region',
              args: [
                Arg(
                name: 'source-regio'
              )
              ]
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
              name: '--target-region',
              description: 'Gets or sets the target region',
              args: [
                Arg(
                name: 'target-regio'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Gets or sets the version of move collection',
              args: [
                Arg(
                name: 'versio'
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
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
      name: 'move-resource',
      description: 'Manage move-resource',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Create a Move Resource in the move collection',
          options: [

            Option(
              name: '--depends-on-overrides',
              description: 'Gets or sets the move resource dependencies overrides. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'depends-on-override'
              )
              ]
            ),
            Option(
              name: '--existing-target-id',
              description: 'Gets or sets the existing target ARM Id of the resource',
              args: [
                Arg(
                name: 'existing-target-i'
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
              name: '--move-collection-name',
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--move-resource-name', '--name', '-n'],
              description: 'The Move Resource Name',
              args: [
                Arg(
                name: 'move-resource-nam'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-settings',
              description: 'The resource settings. Expected value: json-string/@json-file. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'resource-setting'
              )
              ]
            ),
            Option(
              name: '--source-id',
              description: 'Gets or sets the Source ARM Id of the resource',
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
          name: 'delete',
          description: 'Delete a Move Resource from the move collection',
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
              name: '--move-collection-name',
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--move-resource-name', '--name', '-n'],
              description: 'The Move Resource Name',
              args: [
                Arg(
                name: 'move-resource-nam'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
          description: 'List the Move Resources in the move collection',
          options: [

            Option(
              name: ['--move-collection-name', '--name', '-n'],
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply on the operation. For example, you can use \$filter=Properties/ProvisioningState eq \'Succeeded\'',
              args: [
                Arg(
                name: 'filte'
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
          description: 'Get the Move Resource',
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
              name: '--move-collection-name',
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--move-resource-name', '--name', '-n'],
              description: 'The Move Resource Name',
              args: [
                Arg(
                name: 'move-resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
              name: '--move-collection-name',
              description: 'The Move Collection Name',
              args: [
                Arg(
                name: 'move-collection-nam'
              )
              ]
            ),
            Option(
              name: ['--move-resource-name', '--name', '-n'],
              description: 'The Move Resource Name',
              args: [
                Arg(
                name: 'move-resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
