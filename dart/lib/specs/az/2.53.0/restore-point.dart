// Auto-generated from TypeScript source: restore-point.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `restore-point` CLI
final FigSpec restorePointSpec = FigSpec(
  name: 'restore-point',
  description: 'Manage restore point with res',
  subcommands: [

    Subcommand(
      name: 'collection',
      description: 'Create the restore point collection. Please refer to https://aka.ms/RestorePoints for more details. When updating a restore point collection, only tags may be modified',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the restore point collection. Please refer to https://aka.ms/RestorePoints for more details. When updating a restore point collection, only tags may be modified',
          options: [

            Option(
              name: '--collection-name',
              description: 'The name of the restore point collection',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--source-id',
              description: 'Resource Id of the source resource used to create this restore point collection',
              args: [
                Arg(
                name: 'source-i'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the restore point collection. This operation will also delete all the contained restore points',
          options: [

            Option(
              name: ['--restore-point-collection-name', '--collection-name'],
              description: 'The name of the restore point collection',
              args: [
                Arg(
                name: 'restore-point-collection-nam'
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
          description: 'Get the list of restore point collections in a resource group',
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
          name: 'list-all',
          description: 'Get the list of restore point collections in the subscription. Use nextLink property in the response to get the next page of restore point collections. Do this till nextLink is not null to fetch all the restore point collections'
        ),
        Subcommand(
          name: 'show',
          description: 'Get the restore point collection',
          options: [

            Option(
              name: '--collection-name',
              description: 'The name of the restore point collection',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--restore-points',
              description: 'Show all contained restore points in the restore point collection',
              args: [
                Arg(
                name: 'restore-point'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the restore point collection',
          options: [

            Option(
              name: '--collection-name',
              description: 'The name of the restore point collection',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
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
          description: 'Place the CLI in a waiting state until a condition of the restore-point-collection is met',
          options: [

            Option(
              name: '--collection-name',
              description: 'The name of the restore point collection',
              args: [
                Arg(
                name: 'collection-nam'
              )
              ]
            ),
            Option(
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
              description: 'The expand expression to apply on the operation. If expand=restorePoints, server will return all contained restore points in the restorePointCollection. "restorePoints" Default value is None',
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
      name: 'create',
      description: 'Create the restore point. Updating properties of an existing restore point is not allowed',
      options: [

        Option(
          name: '--collection-name',
          description: 'The name of the restore point collection',
          args: [
            Arg(
            name: 'collection-nam'
          )
          ]
        ),
        Option(
          name: ['--restore-point-name', '--name', '-n'],
          description: 'The name of the restore point',
          args: [
            Arg(
            name: 'restore-point-nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--consistency-mode',
          description: 'Consistency mode of the restore point. Can be specified in the input while creating a restore point. For now, only CrashConsistent is accepted as a valid input. Please refer to https://aka.ms/RestorePoints for more details',
          args: [
            Arg(
            name: 'consistency-mode',
            suggestions: [

              FigSuggestion(name: 'ApplicationConsistent'),
              FigSuggestion(name: 'CrashConsistent'),
              FigSuggestion(name: 'FileSystemConsistent')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude-disks',
          description: 'List of disk resource ids that the customer wishes to exclude from the restore point. If no disks are specified, all disks will be included',
          args: [
            Arg(
            name: 'exclude-disk'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--source-restore-point',
          description: 'Resource Id of the source restore point from which a copy needs to be created',
          args: [
            Arg(
            name: 'source-restore-poin'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete the restore point',
      options: [

        Option(
          name: ['--restore-point-collection-name', '--collection-name'],
          description: 'The name of the restore point collection',
          args: [
            Arg(
            name: 'restore-point-collection-nam'
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
          name: ['--restore-point-name', '--name', '-n'],
          description: 'The name of the restore point',
          args: [
            Arg(
            name: 'restore-point-nam'
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
      name: 'show',
      description: 'Get the restore point',
      options: [

        Option(
          name: '--collection-name',
          description: 'The name of the restore point collection',
          args: [
            Arg(
            name: 'collection-nam'
          )
          ]
        ),
        Option(
          name: ['--restore-point-name', '--name', '-n'],
          description: 'The name of the restore point',
          args: [
            Arg(
            name: 'restore-point-nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--instance-view',
          description: 'Show the instance view of a restore point',
          args: [
            Arg(
            name: 'instance-vie'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Place the CLI in a waiting state until a condition of the restore-point is met',
      options: [

        Option(
          name: '--collection-name',
          description: 'The name of the restore point collection',
          args: [
            Arg(
            name: 'collection-nam'
          )
          ]
        ),
        Option(
          name: ['--restore-point-name', '--name', '-n'],
          description: 'The name of the restore point',
          args: [
            Arg(
            name: 'restore-point-nam'
          )
          ]
        ),
        Option(
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
          description: 'The expand expression to apply on the operation. \'InstanceView\' retrieves information about the run-time state of a restore point. \'instanceView\' Default value is None',
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
);
