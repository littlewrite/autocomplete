// Auto-generated from TypeScript source: eventhubs.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `eventhubs` CLI
final FigSpec eventhubsSpec = FigSpec(
  name: 'eventhubs',
  description: 'Eventhubs',
  subcommands: [

    Subcommand(
      name: 'cluster',
      description: 'Manage Azure EventHubs Clusters',
      subcommands: [

        Subcommand(
          name: 'available-region',
          description: 'List the quantity of available pre-provisioned Event Hubs Clusters, indexed by Azure region'
        ),
        Subcommand(
          name: 'create',
          description: 'Create an instance of an Event Hubs Cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Event Hubs Cluster',
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
            ),
            Option(
              name: '--capacity',
              description: 'The quantity of Event Hubs Cluster Capacity Units contained in this cluster',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Resource location. When not specified, the location of the resource group will be used',
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
              name: '--provisioning-state',
              description: 'Provisioning state of the Cluster',
              args: [
                Arg(
                name: 'provisioning-stat'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Name of this SKU',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Dedicated')
                ]
              )
              ]
            ),
            Option(
              name: '--supports-scaling',
              description: 'A value that indicates whether Scaling is Supported',
              args: [
                Arg(
                name: 'supports-scaling',
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
          description: 'Delete an existing Event Hubs Cluster. This operation is idempotent',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Event Hubs Cluster',
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
          description: 'List the available Event Hubs Clusters within an ARM resource group',
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
          description: 'Get the resource description of the specified Event Hubs Cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Event Hubs Cluster',
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
          description: 'Update an instance of an Event Hubs Cluster',
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
              name: '--capacity',
              description: 'The quantity of Event Hubs Cluster Capacity Units contained in this cluster',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Event Hubs Cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--provisioning-state',
              description: 'Provisioning state of the Cluster',
              args: [
                Arg(
                name: 'provisioning-stat'
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
              description: 'Name of this SKU',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Dedicated')
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
              name: '--supports-scaling',
              description: 'A value that indicates whether Scaling is Supported',
              args: [
                Arg(
                name: 'supports-scaling',
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
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Event Hubs Cluster',
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
          name: 'namespace',
          description: 'List of Namespaces within given Cluster',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all Event Hubs Namespace IDs in an Event Hubs Dedicated Cluster',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'The name of the Event Hubs Cluster',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'eventhub',
      description: 'Manage Azure EventHubs eventhub and authorization-rule',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates the EventHubs Eventhub',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Eventhub',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'Name of Namespace',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--archive-name-format',
              description: 'Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order',
              args: [
                Arg(
                name: 'archive-name-forma'
              )
              ]
            ),
            Option(
              name: '--blob-container',
              description: 'Blob container Name',
              args: [
                Arg(
                name: 'blob-containe'
              )
              ]
            ),
            Option(
              name: '--capture-interval',
              description: 'Allows you to set the frequency with which the capture to Azure Blobs will happen, value should between 60 to 900 seconds',
              args: [
                Arg(
                name: 'capture-interva'
              )
              ]
            ),
            Option(
              name: '--capture-size-limit',
              description: 'Defines the amount of data built up in your Event Hub before an capture operation, value should be between 10485760 to 524288000 bytes',
              args: [
                Arg(
                name: 'capture-size-limi'
              )
              ]
            ),
            Option(
              name: '--cleanup-policy',
              description: 'Enumerates the possible values for cleanup policy',
              args: [
                Arg(
                name: 'cleanup-policy',
                suggestions: [

                  FigSuggestion(name: 'Compact'),
                  FigSuggestion(name: 'Delete')
                ]
              )
              ]
            ),
            Option(
              name: '--destination-name',
              description: 'Name for capture destination, should be EventHubArchive.AzureBlockBlob',
              args: [
                Arg(
                name: 'destination-nam'
              )
              ]
            ),
            Option(
              name: '--enable-capture',
              description: 'A boolean value that indicates whether capture is enabled',
              args: [
                Arg(
                name: 'enable-capture',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Enable System Assigned Identity'
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'List of User Assigned Identity ids',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: '--partition-count',
              description: 'Number of partitions created for the Event Hub. By default, allowed values are 2-32. Lower value of 1 is supported with Kafka enabled namespaces. In presence of a custom quota, the upper limit will match the upper limit of the quota',
              args: [
                Arg(
                name: 'partition-coun'
              )
              ]
            ),
            Option(
              name: ['--retention-time-in-hours', '--retention-time'],
              description: 'Number of hours to retain the events for this Event Hub. This value is only used when cleanupPolicy is Delete. If cleanupPolicy is Compaction the returned value of this property is Long.MaxValue',
              args: [
                Arg(
                name: 'retention-time-in-hour'
              )
              ]
            ),
            Option(
              name: '--skip-empty-archives',
              description: 'A boolean value that indicates whether to Skip Empty',
              args: [
                Arg(
                name: 'skip-empty-archives',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Status of Eventhub',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'SendDisabled')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Name (if within same resource group and not of type Classic Storage) or ARM id of the storage account to be used to create the blobs',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: ['--tombstone-retention-time-in-hours', '--tombstone-time'],
              description: 'Number of hours to retain the tombstone markers of a compacted Event Hub. This value is only used when cleanupPolicy is Compaction. Consumer must complete reading the tombstone marker within this specified amount of time if consumer begins from starting offset to ensure they get a valid snapshot for the specific key described by the tombstone marker within the compacted Event Hub',
              args: [
                Arg(
                name: 'tombstone-retention-time-in-hour'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Event Hub from the specified Namespace and resource group',
          options: [

            Option(
              name: ['--event-hub-name', '--name', '-n'],
              description: 'The Event Hub name',
              args: [
                Arg(
                name: 'event-hub-nam'
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'List all the Event Hubs in a Namespace',
          options: [

            Option(
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
            ),
            Option(
              name: '--skip',
              description: 'Skip is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'May be used to limit the number of results to the most recent N usageDetails',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an Event Hubs description for the specified Event Hub',
          options: [

            Option(
              name: ['--event-hub-name', '--name', '-n'],
              description: 'The Event Hub name',
              args: [
                Arg(
                name: 'event-hub-nam'
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a new Event Hub as a nested resource within a Namespace',
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
              name: '--archive-name-format',
              description: 'Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order',
              args: [
                Arg(
                name: 'archive-name-forma'
              )
              ]
            ),
            Option(
              name: '--blob-container',
              description: 'Blob container Name',
              args: [
                Arg(
                name: 'blob-containe'
              )
              ]
            ),
            Option(
              name: '--capture-interval',
              description: 'The time window allows you to set the frequency with which the capture to Azure Blobs will happen, value should between 60 to 900 seconds',
              args: [
                Arg(
                name: 'capture-interva'
              )
              ]
            ),
            Option(
              name: '--capture-size-limit',
              description: 'The size window defines the amount of data built up in your Event Hub before an capture operation, value should be between 10485760 to 524288000 bytes',
              args: [
                Arg(
                name: 'capture-size-limi'
              )
              ]
            ),
            Option(
              name: '--cleanup-policy',
              description: 'Enumerates the possible values for cleanup policy',
              args: [
                Arg(
                name: 'cleanup-policy',
                suggestions: [

                  FigSuggestion(name: 'Compact'),
                  FigSuggestion(name: 'Delete')
                ]
              )
              ]
            ),
            Option(
              name: '--destination-name',
              description: 'Name for capture destination',
              args: [
                Arg(
                name: 'destination-nam'
              )
              ]
            ),
            Option(
              name: '--enable-capture',
              description: 'A value that indicates whether capture description is enabled',
              args: [
                Arg(
                name: 'enable-capture',
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
              name: '--encoding',
              description: 'Enumerates the possible values for the encoding format of capture description. Note: \'AvroDeflate\' will be deprecated in New API Version',
              args: [
                Arg(
                name: 'encoding',
                suggestions: [

                  FigSuggestion(name: 'Avro'),
                  FigSuggestion(name: 'AvroDeflate')
                ]
              )
              ]
            ),
            Option(
              name: ['--event-hub-name', '--name', '-n'],
              description: 'The Event Hub name',
              args: [
                Arg(
                name: 'event-hub-nam'
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
              description: 'A value that indicates whether capture description is enabled. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--partition-count',
              description: 'Number of partitions created for the Event Hub, allowed values are from 1 to 32 partitions',
              args: [
                Arg(
                name: 'partition-coun'
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
              name: ['--retention-time-in-hours', '--retention-time'],
              description: 'Number of hours to retain the events for this Event Hub. This value is only used when cleanupPolicy is Delete. If cleanupPolicy is Compact the returned value of this property is Long.MaxValue',
              args: [
                Arg(
                name: 'retention-time-in-hour'
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
              name: '--skip-empty-archives',
              description: 'A value that indicates whether to Skip Empty Archives',
              args: [
                Arg(
                name: 'skip-empty-archives',
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
              name: '--status',
              description: 'Enumerates the possible values for the status of the Event Hub',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Creating'),
                  FigSuggestion(name: 'Deleting'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'ReceiveDisabled'),
                  FigSuggestion(name: 'Renaming'),
                  FigSuggestion(name: 'Restoring'),
                  FigSuggestion(name: 'SendDisabled'),
                  FigSuggestion(name: 'Unknown')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Resource id of the storage account to be used to create the blobs',
              args: [
                Arg(
                name: 'storage-accoun'
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
              name: ['--tombstone-retention-time-in-hours', '-t'],
              description: 'Number of hours to retain the tombstone markers of a compacted Event Hub. This value is only used when cleanupPolicy is Compact. Consumer must complete reading the tombstone marker within this specified amount of time if consumer begins from starting offset to ensure they get a valid snapshot for the specific key described by the tombstone marker within the compacted Event Hub',
              args: [
                Arg(
                name: 'tombstone-retention-time-in-hour'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'authorization-rule',
          description: 'Eventhub authorization rule',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an AuthorizationRule for the specified Event Hub. Creation/update of the AuthorizationRule will take a few seconds to take effect',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an Event Hub AuthorizationRule',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List the authorization rules for an Event Hub',
              options: [

                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get an AuthorizationRule for an Event Hub by rule name',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an AuthorizationRule for the specified Event Hub. Creation/update of the AuthorizationRule will take a few seconds to take effect',
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
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
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
              name: 'keys',
              description: 'Authorization-rule keys',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'Gets the ACS and SAS connection strings for the Event Hub',
                  options: [

                    Option(
                      name: ['--authorization-rule-name', '--name'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--eventhub-name',
                      description: 'The Event Hub name',
                      args: [
                        Arg(
                        name: 'eventhub-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The Namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
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
                  name: 'renew',
                  description: 'Regenerates the ACS and SAS connection strings for the Event Hub',
                  options: [

                    Option(
                      name: '--key',
                      description: 'The access key to regenerate',
                      args: [
                        Arg(
                        name: 'key',
                        suggestions: [

                          FigSuggestion(name: 'PrimaryKey'),
                          FigSuggestion(name: 'SecondaryKey')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--authorization-rule-name', '--name'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--eventhub-name',
                      description: 'The Event Hub name',
                      args: [
                        Arg(
                        name: 'eventhub-nam'
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
                      name: '--key-value',
                      description: 'Optional, if the key value provided, is set for KeyType or autogenerated Key value set for keyType',
                      args: [
                        Arg(
                        name: 'key-valu'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The Namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
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
          name: 'consumer-group',
          description: 'Manage Azure Event Hubs consumergroup',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Event Hubs consumer group as a nested resource within a Namespace',
              options: [

                Option(
                  name: ['--consumer-group-name', '--name', '-n'],
                  description: 'The consumer group name',
                  args: [
                    Arg(
                    name: 'consumer-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-metadata',
                  description: 'User Metadata is a placeholder to store user-defined string data with maximum length 1024. e.g. it can be used to store descriptive data, such as list of teams and their contact information also user-defined configuration settings can be stored',
                  args: [
                    Arg(
                    name: 'user-metadat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a consumer group from the specified Event Hub and resource group',
              options: [

                Option(
                  name: ['--consumer-group-name', '--name', '-n'],
                  description: 'The consumer group name',
                  args: [
                    Arg(
                    name: 'consumer-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List all the consumer groups in a Namespace. An empty feed is returned if no consumer group exists in the Namespace',
              options: [

                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                ),
                Option(
                  name: '--skip',
                  description: 'Skip is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls',
                  args: [
                    Arg(
                    name: 'ski'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'May be used to limit the number of results to the most recent N usageDetails',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a description for the specified consumer group',
              options: [

                Option(
                  name: ['--consumer-group-name', '--name', '-n'],
                  description: 'The consumer group name',
                  args: [
                    Arg(
                    name: 'consumer-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an Event Hubs consumer group as a nested resource within a Namespace',
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
                  name: ['--consumer-group-name', '--name', '-n'],
                  description: 'The consumer group name',
                  args: [
                    Arg(
                    name: 'consumer-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--eventhub-name',
                  description: 'The Event Hub name',
                  args: [
                    Arg(
                    name: 'eventhub-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--user-metadata',
                  description: 'User Metadata is a placeholder to store user-defined string data with maximum length 1024. e.g. it can be used to store descriptive data, such as list of teams and their contact information also user-defined configuration settings can be stored',
                  args: [
                    Arg(
                    name: 'user-metadat'
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
      name: 'georecovery-alias',
      description: 'Manage Azure EventHubs Geo Recovery configuration Alias',
      subcommands: [

        Subcommand(
          name: 'break-pair',
          description: 'This operation disables the Disaster Recovery and stops replicating changes from primary to secondary namespaces',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'create',
          description: 'Create a new Alias(Disaster Recovery configuration)',
          options: [

            Option(
              name: ['--alias', '--name', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--alternate-name',
              description: 'Alternate name specified when alias and namespace names are same',
              args: [
                Arg(
                name: 'alternate-nam'
              )
              ]
            ),
            Option(
              name: '--partner-namespace',
              description: 'ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing',
              args: [
                Arg(
                name: 'partner-namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Alias(Disaster Recovery configuration)',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'exists',
          description: 'Check the give Namespace name availability',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'Name to check the namespace name availability',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'fail-over',
          description: 'Invokes GEO DR failover and reconfigure the alias to point to the secondary namespace',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'List all Alias(Disaster Recovery configurations)',
          options: [

            Option(
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'set',
          description: 'Sets a Geo-Disaster Recovery Configuration Alias for the give Namespace',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'Name of the Geo-Disaster Recovery Configuration Alias',
              args: [
                Arg(
                name: 'alia'
              )
              ]
            ),
            Option(
              name: '--partner-namespace',
              description: 'Name (if within the same resource group) or ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing',
              args: [
                Arg(
                name: 'partner-namespac'
              )
              ]
            ),
            Option(
              name: '--alternate-name',
              description: 'Alternate Name for the Alias, when the Namespace name and Alias name are same',
              args: [
                Arg(
                name: 'alternate-nam'
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
              name: '--namespace-name',
              description: 'Name of Namespace',
              args: [
                Arg(
                name: 'namespace-nam'
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
          name: 'show',
          description: 'Get Alias(Disaster Recovery configuration) for primary or secondary namespace',
          options: [

            Option(
              name: ['--alias', '-a'],
              description: 'The Disaster Recovery configuration name',
              args: [
                Arg(
                name: 'alia'
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a new Event Hub as a nested resource within a Namespace',
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
              name: '--archive-name-format',
              description: 'Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order',
              args: [
                Arg(
                name: 'archive-name-forma'
              )
              ]
            ),
            Option(
              name: '--blob-container',
              description: 'Blob container Name',
              args: [
                Arg(
                name: 'blob-containe'
              )
              ]
            ),
            Option(
              name: '--capture-interval',
              description: 'The time window allows you to set the frequency with which the capture to Azure Blobs will happen, value should between 60 to 900 seconds',
              args: [
                Arg(
                name: 'capture-interva'
              )
              ]
            ),
            Option(
              name: '--capture-size-limit',
              description: 'The size window defines the amount of data built up in your Event Hub before an capture operation, value should be between 10485760 to 524288000 bytes',
              args: [
                Arg(
                name: 'capture-size-limi'
              )
              ]
            ),
            Option(
              name: '--cleanup-policy',
              description: 'Enumerates the possible values for cleanup policy',
              args: [
                Arg(
                name: 'cleanup-policy',
                suggestions: [

                  FigSuggestion(name: 'Compact'),
                  FigSuggestion(name: 'Delete')
                ]
              )
              ]
            ),
            Option(
              name: '--destination-name',
              description: 'Name for capture destination',
              args: [
                Arg(
                name: 'destination-nam'
              )
              ]
            ),
            Option(
              name: '--enable-capture',
              description: 'A value that indicates whether capture description is enabled',
              args: [
                Arg(
                name: 'enable-capture',
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
              name: '--encoding',
              description: 'Enumerates the possible values for the encoding format of capture description. Note: \'AvroDeflate\' will be deprecated in New API Version',
              args: [
                Arg(
                name: 'encoding',
                suggestions: [

                  FigSuggestion(name: 'Avro'),
                  FigSuggestion(name: 'AvroDeflate')
                ]
              )
              ]
            ),
            Option(
              name: ['--event-hub-name', '--name', '-n'],
              description: 'The Event Hub name',
              args: [
                Arg(
                name: 'event-hub-nam'
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
              description: 'A value that indicates whether capture description is enabled. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              name: '--namespace-name',
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--partition-count',
              description: 'Number of partitions created for the Event Hub, allowed values are from 1 to 32 partitions',
              args: [
                Arg(
                name: 'partition-coun'
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
              name: ['--retention-time-in-hours', '--retention-time'],
              description: 'Number of hours to retain the events for this Event Hub. This value is only used when cleanupPolicy is Delete. If cleanupPolicy is Compact the returned value of this property is Long.MaxValue',
              args: [
                Arg(
                name: 'retention-time-in-hour'
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
              name: '--skip-empty-archives',
              description: 'A value that indicates whether to Skip Empty Archives',
              args: [
                Arg(
                name: 'skip-empty-archives',
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
              name: '--status',
              description: 'Enumerates the possible values for the status of the Event Hub',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Creating'),
                  FigSuggestion(name: 'Deleting'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'ReceiveDisabled'),
                  FigSuggestion(name: 'Renaming'),
                  FigSuggestion(name: 'Restoring'),
                  FigSuggestion(name: 'SendDisabled'),
                  FigSuggestion(name: 'Unknown')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Resource id of the storage account to be used to create the blobs',
              args: [
                Arg(
                name: 'storage-accoun'
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
              name: ['--tombstone-retention-time-in-hours', '-t'],
              description: 'Number of hours to retain the tombstone markers of a compacted Event Hub. This value is only used when cleanupPolicy is Compact. Consumer must complete reading the tombstone marker within this specified amount of time if consumer begins from starting offset to ensure they get a valid snapshot for the specific key described by the tombstone marker within the compacted Event Hub',
              args: [
                Arg(
                name: 'tombstone-retention-time-in-hour'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'authorization-rule',
          description: 'Manage Azure EventHubs Authorizationrule for Geo Recovery configuration Alias',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List a list of authorization rules for a Namespace',
              options: [

                Option(
                  name: ['--alias', '-a'],
                  description: 'The Disaster Recovery configuration name',
                  args: [
                    Arg(
                    name: 'alia'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get an AuthorizationRule for a Namespace by rule name',
              options: [

                Option(
                  name: ['--alias', '-a'],
                  description: 'The Disaster Recovery configuration name',
                  args: [
                    Arg(
                    name: 'alia'
                  )
                  ]
                ),
                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'keys',
              description: 'Manage Azure Event Hubs Authorizationrule connection strings for Geo Recovery configuration Alias',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'Gets the primary and secondary connection strings for the Namespace',
                  options: [

                    Option(
                      name: ['--alias', '-a'],
                      description: 'The Disaster Recovery configuration name',
                      args: [
                        Arg(
                        name: 'alia'
                      )
                      ]
                    ),
                    Option(
                      name: ['--authorization-rule-name', '--name', '-n'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The Namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'namespace',
      description: 'Eventhub namespace',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates the EventHubs Namespace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Namespace',
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
              name: '--alternate-name',
              description: 'Alternate name specified when alias and namespace names are same',
              args: [
                Arg(
                name: 'alternate-nam'
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'Capacity for Sku',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: '--cluster-arm-id',
              description: 'Cluster ARM ID of the Namespace',
              args: [
                Arg(
                name: 'cluster-arm-i'
              )
              ]
            ),
            Option(
              name: '--disable-local-auth',
              description: 'A boolean value that indicates whether SAS authentication is enabled/disabled for the Event Hubs',
              args: [
                Arg(
                name: 'disable-local-auth',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-auto-inflate',
              description: 'A boolean value that indicates whether AutoInflate is enabled for eventhub namespace',
              args: [
                Arg(
                name: 'enable-auto-inflate',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-kafka',
              description: 'A boolean value that indicates whether Kafka is enabled for eventhub namespace',
              args: [
                Arg(
                name: 'enable-kafka',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--encryption-config',
              description: 'List of KeyVaultProperties objects',
              args: [
                Arg(
                name: 'encryption-confi'
              )
              ]
            ),
            Option(
              name: '--infra-encryption',
              description: 'A boolean value that indicates whether Infrastructure Encryption (Double Encryption) is enabled/disabled',
              args: [
                Arg(
                name: 'infra-encryption',
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
              name: '--maximum-throughput-units',
              description: 'Upper limit of throughput units when AutoInflate is enabled, vaule should be within 0 to 20 throughput units. ( 0 if AutoInflateEnabled = true)',
              args: [
                Arg(
                name: 'maximum-throughput-unit'
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Enable System Assigned Identity'
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'List of User Assigned Identity ids',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--minimum-tls-version', '--min-tls'],
              description: 'The minimum TLS version for the cluster to support, e.g. 1.2',
              args: [
                Arg(
                name: 'minimum-tls-version',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.1'),
                  FigSuggestion(name: '1.2')
                ]
              )
              ]
            ),
            Option(
              name: ['--public-network-access', '--public-network'],
              description: 'This determines if traffic is allowed over public network. By default it is enabled. If value is SecuredByPerimeter then Inbound and Outbound communication is controlled by the network security perimeter and profile\' access rules',
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
              name: '--sku',
              description: 'Namespace SKU',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard')
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
              name: '--zone-redundant',
              description: 'Enabling this property creates a Standard EventHubs Namespace in regions supported availability zones',
              args: [
                Arg(
                name: 'zone-redundant',
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
          name: 'delete',
          description: 'Delete an existing namespace. This operation also removes all associated resources under the namespace',
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
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
          name: 'exists',
          description: 'Check the give Namespace name availability',
          options: [

            Option(
              name: '--name',
              description: 'Name to check the namespace name availability',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all the available Namespaces within a subscription, irrespective of the resource groups',
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
          description: 'Get the description of the specified namespace',
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a namespace. Once created, this namespace\'s resource manifest is immutable. This operation is idempotent',
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
              name: '--alternate-name',
              description: 'Alternate name specified when alias and namespace names are same',
              args: [
                Arg(
                name: 'alternate-nam'
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'The Event Hubs throughput units for Basic or Standard tiers, where value should be 0 to 20 throughput units. The Event Hubs premium units for Premium tier, where value should be 0 to 10 premium units',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: '--cluster-arm-id',
              description: 'Cluster ARM ID of the Namespace',
              args: [
                Arg(
                name: 'cluster-arm-i'
              )
              ]
            ),
            Option(
              name: '--disable-local-auth',
              description: 'This property disables SAS authentication for the Event Hubs namespace',
              args: [
                Arg(
                name: 'disable-local-auth',
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
              name: '--enable-auto-inflate',
              description: 'Value that indicates whether AutoInflate is enabled for eventhub namespace',
              args: [
                Arg(
                name: 'enable-auto-inflate',
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
              name: '--encryption',
              description: 'Properties of BYOK Encryption description Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'encryptio'
              )
              ]
            ),
            Option(
              name: [
                '--private-endpoint-connections',
                '--endpoint-connections',
              ],
              description: 'List of private endpoint connections. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'private-endpoint-connection'
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
              description: 'Properties of BYOK Identity description Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              name: '--kafka-enabled',
              description: 'Value that indicates whether Kafka is enabled for eventhub namespace',
              args: [
                Arg(
                name: 'kafka-enabled',
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
              name: '--maximum-throughput-units',
              description: 'Upper limit of throughput units when AutoInflate is enabled, value should be within 0 to 20 throughput units. ( \'0\' if AutoInflateEnabled = true)',
              args: [
                Arg(
                name: 'maximum-throughput-unit'
              )
              ]
            ),
            Option(
              name: '--minimum-tls-version',
              description: 'The minimum TLS version for the cluster to support, e.g. \'1.2\'',
              args: [
                Arg(
                name: 'minimum-tls-version',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.1'),
                  FigSuggestion(name: '1.2')
                ]
              )
              ]
            ),
            Option(
              name: ['--namespace-name', '--name', '-n'],
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
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
              name: '--public-network-access',
              description: 'This determines if traffic is allowed over public network. By default it is enabled',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'SecuredByPerimeter')
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
              name: '--sku',
              description: 'Name of this SKU',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard')
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
              name: '--tags',
              description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--tier',
              description: 'The billing tier of this particular SKU',
              args: [
                Arg(
                name: 'tier',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard')
                ]
              )
              ]
            ),
            Option(
              name: '--zone-redundant',
              description: 'Enabling this property creates a Standard Event Hubs Namespace in regions supported availability zones',
              args: [
                Arg(
                name: 'zone-redundant',
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
              name: ['--namespace-name', '--name', '-n'],
              description: 'The Namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
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
          name: 'application-group',
          description: 'Manages Application Groups for premium eventhubs namespace',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates an application group for an EventHub namespace',
              options: [

                Option(
                  name: [
                    '--client-app-group-identifier',
                    '--client-app-group-id',
                  ],
                  description: 'The Unique identifier for application group.Supports SAS(NamespaceSASKeyName=KeyName or EntitySASKeyName=KeyName) or AAD(AADAppID=Guid)',
                  args: [
                    Arg(
                    name: 'client-app-group-identifie'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of Application Group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'Name of Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--is-enabled',
                  description: 'Determines if Application Group is allowed to create connection with namespace or not. Once the isEnabled is set to false, all the existing connections of application group gets dropped and no new connections will be allowed',
                  args: [
                    Arg(
                    name: 'is-enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: [
                    '--throttling-policy-config',
                    '--throttling-policy',
                    '--policy-config',
                  ],
                  description: 'List of Throttling Policy Objects',
                  args: [
                    Arg(
                    name: 'throttling-policy-confi'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an ApplicationGroup for a Namespace',
              options: [

                Option(
                  name: ['--application-group-name', '--name', '-n'],
                  description: 'The Application Group name',
                  args: [
                    Arg(
                    name: 'application-group-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List a list of application groups for a Namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get an ApplicationGroup for a Namespace',
              options: [

                Option(
                  name: ['--application-group-name', '--name', '-n'],
                  description: 'The Application Group name',
                  args: [
                    Arg(
                    name: 'application-group-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an ApplicationGroup for a Namespace',
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
                  name: ['--application-group-name', '--name', '-n'],
                  description: 'The Application Group name',
                  args: [
                    Arg(
                    name: 'application-group-nam'
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
                  name: '--is-enabled',
                  description: 'Determines if Application Group is allowed to create connection with namespace or not. Once the isEnabled is set to false, all the existing connections of application group gets dropped and no new connections will be allowed',
                  args: [
                    Arg(
                    name: 'is-enabled',
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--policies',
                  description: 'List of group policies that define the behavior of application group. The policies can support resource governance scenarios such as limiting ingress or egress traffic. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'policie'
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
              name: 'policy',
              description: 'Append or Remove application group policies',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Appends an application group policy to the existing policy. This cmdlet can be used to append one or more throttling policies',
                  options: [

                    Option(
                      name: [
                        '--throttling-policy-config',
                        '--throttling-policy',
                        '--policy-config',
                      ],
                      description: 'List of Throttling Policy Objects',
                      args: [
                        Arg(
                        name: 'throttling-policy-confi'
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
                      description: 'Name of Application Group',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'Name of Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
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
                  name: 'remove',
                  description: 'Removes an application group policy from the existing policies. This cmdlet can be used to remove one or more throttling policies',
                  options: [

                    Option(
                      name: '--policy',
                      description: 'List of Throttling Policy Objects',
                      args: [
                        Arg(
                        name: 'polic'
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
                      description: 'Name of Application Group',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'Name of Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
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
          name: 'authorization-rule',
          description: 'Eventhub namespace authorization-rule',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an AuthorizationRule for a Namespace',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an AuthorizationRule for a Namespace',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List a list of authorization rules for a Namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get an AuthorizationRule for a Namespace by rule name',
              options: [

                Option(
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an AuthorizationRule for a Namespace',
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
                  name: ['--authorization-rule-name', '--name', '-n'],
                  description: 'The authorization rule name',
                  args: [
                    Arg(
                    name: 'authorization-rule-nam'
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
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
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
              name: 'keys',
              description: 'Authorization-rule keys',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'Gets the primary and secondary connection strings for the Namespace',
                  options: [

                    Option(
                      name: ['--authorization-rule-name', '--name'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The Namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
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
                  name: 'renew',
                  description: 'Regenerates the primary or secondary connection strings for the specified Namespace',
                  options: [

                    Option(
                      name: '--key',
                      description: 'The access key to regenerate',
                      args: [
                        Arg(
                        name: 'key',
                        suggestions: [

                          FigSuggestion(name: 'PrimaryKey'),
                          FigSuggestion(name: 'SecondaryKey')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--authorization-rule-name', '--name'],
                      description: 'The authorization rule name',
                      args: [
                        Arg(
                        name: 'authorization-rule-nam'
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
                      name: '--key-value',
                      description: 'Optional, if the key value provided, is set for KeyType or autogenerated Key value set for keyType',
                      args: [
                        Arg(
                        name: 'key-valu'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace-name',
                      description: 'The Namespace name',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
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
          name: 'encryption',
          description: 'Manage eventhubs namespace encryption properties',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add Encryption properties to a namespace',
              options: [

                Option(
                  name: '--encryption-config',
                  description: 'List of KeyVaultProperties objects',
                  args: [
                    Arg(
                    name: 'encryption-confi'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'Name of the Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--infra-encryption',
                  description: 'A boolean value that indicates whether Infrastructure Encryption (Double Encryption) is enabled/disabled',
                  args: [
                    Arg(
                    name: 'infra-encryption',
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
              name: 'remove',
              description: 'Remove one or more Encryption properties from a namespace',
              options: [

                Option(
                  name: '--encryption-config',
                  description: 'List of KeyVaultProperties objects',
                  args: [
                    Arg(
                    name: 'encryption-confi'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'Name of the Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
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
          name: 'identity',
          description: 'Manage eventhubs namespace identity',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Assign System or User or System,User assigned identities to a namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'Name of the Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'System Assigned Identity',
                  args: [
                    Arg(
                    name: 'system-assigned',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'User Assigned Identity',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove System or User or System,User assigned identities from a namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'Name of the Namespace',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'System Assigned Identity',
                  args: [
                    Arg(
                    name: 'system-assigned',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'User Assigned Identity',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'network-rule-set',
          description: 'Manage Azure EventHubs networkruleset for namespace',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create NetworkRuleSet for a Namespace',
              options: [

                Option(
                  name: ['--namespace-name', '--name', '-n'],
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--default-action',
                  description: 'Default Action for Network Rule Set',
                  args: [
                    Arg(
                    name: 'default-action',
                    suggestions: [

                      FigSuggestion(name: 'Allow'),
                      FigSuggestion(name: 'Deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--enable-trusted-service-access', '-t'],
                  description: 'Value that indicates whether Trusted Service Access is Enabled or not',
                  args: [
                    Arg(
                    name: 'enable-trusted-service-access',
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
                  name: '--ip-rules',
                  description: 'List of IpRules Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'ip-rule'
                  )
                  ]
                ),
                Option(
                  name: '--public-network-access',
                  description: 'This determines if traffic is allowed over public network. By default it is enabled. If value is SecuredByPerimeter then Inbound and Outbound communication is controlled by the network security perimeter and profile\'s access rules',
                  args: [
                    Arg(
                    name: 'public-network-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled'),
                      FigSuggestion(name: 'SecuredByPerimeter')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--virtual-network-rules',
                  description: 'List VirtualNetwork Rules Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'virtual-network-rule'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List NetworkRuleSet for a Namespace',
              options: [

                Option(
                  name: ['--namespace-name', '--name', '-n'],
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Get NetworkRuleSet for a Namespace',
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
                  name: ['--namespace-name', '--name', '-n'],
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update NetworkRuleSet for a Namespace',
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
                  name: '--default-action',
                  description: 'Default Action for Network Rule Set',
                  args: [
                    Arg(
                    name: 'default-action',
                    suggestions: [

                      FigSuggestion(name: 'Allow'),
                      FigSuggestion(name: 'Deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--enable-trusted-service-access', '-t'],
                  description: 'Value that indicates whether Trusted Service Access is Enabled or not',
                  args: [
                    Arg(
                    name: 'enable-trusted-service-access',
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
                  name: '--ip-rules',
                  description: 'List of IpRules Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'ip-rule'
                  )
                  ]
                ),
                Option(
                  name: ['--namespace-name', '--name', '-n'],
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--public-network-access',
                  description: 'This determines if traffic is allowed over public network. By default it is enabled. If value is SecuredByPerimeter then Inbound and Outbound communication is controlled by the network security perimeter and profile\'s access rules',
                  args: [
                    Arg(
                    name: 'public-network-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled'),
                      FigSuggestion(name: 'SecuredByPerimeter')
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
                  name: '--virtual-network-rules',
                  description: 'List VirtualNetwork Rules Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'virtual-network-rule'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'ip-rule',
              description: 'Manage Azure eventhubs ip-rules in networkruleSet for namespace',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a IP-Rule for network rule of namespace',
                  options: [

                    Option(
                      name: ['--namespace-name', '--name', '-n'],
                      description: 'Name of the Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--ip-rule',
                      description: 'List VirtualNetwork Rules',
                      args: [
                        Arg(
                        name: 'ip-rul'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove Ip-Rule from network rule of namespace',
                  options: [

                    Option(
                      name: ['--namespace-name', '--name', '-n'],
                      description: 'Name of the Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--ip-rule',
                      description: 'List VirtualNetwork Rules',
                      args: [
                        Arg(
                        name: 'ip-rul'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'virtual-network-rule',
              description: 'Manage Azure eventhubs subnet-rule in networkruleSet for namespace',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a Virtual-Network-Rule for network rule of namespace',
                  options: [

                    Option(
                      name: ['--namespace-name', '--name', '-n'],
                      description: 'Name of the Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subnet',
                      description: 'List VirtualNetwork Rules',
                      args: [
                        Arg(
                        name: 'subne'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove network rule for a namespace',
                  options: [

                    Option(
                      name: ['--namespace-name', '--name', '-n'],
                      description: 'Name of the Namespace',
                      args: [
                        Arg(
                        name: 'namespace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subnet',
                      description: 'List VirtualNetwork Rules',
                      args: [
                        Arg(
                        name: 'subne'
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
          description: 'Manage eventhubs namespace private endpoint connection',
          subcommands: [

            Subcommand(
              name: 'approve',
              description: 'Approve a private endpoint connection request for eventhubs namesapce',
              options: [

                Option(
                  name: '--description',
                  description: 'Comments for approve operation',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the EventHubs Namespace. You can get it using az eventhubs namespace show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the EventHubs Namespace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The eventhubs namesapce name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified eventhubs namespace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create PrivateEndpointConnections of service namespace',
              options: [

                Option(
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The PrivateEndpointConnection name',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'Description of the connection state',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--provisioning-state',
                  description: 'Provisioning state of the Private Endpoint Connection',
                  args: [
                    Arg(
                    name: 'provisioning-state',
                    suggestions: [

                      FigSuggestion(name: 'Canceled'),
                      FigSuggestion(name: 'Creating'),
                      FigSuggestion(name: 'Deleting'),
                      FigSuggestion(name: 'Failed'),
                      FigSuggestion(name: 'Succeeded'),
                      FigSuggestion(name: 'Updating')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--status',
                  description: 'Status of the connection',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Approved'),
                      FigSuggestion(name: 'Disconnected'),
                      FigSuggestion(name: 'Pending'),
                      FigSuggestion(name: 'Rejected')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a private endpoint connection request for eventhubs namespace',
              options: [

                Option(
                  name: '--description',
                  description: 'Comments for delete operation',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the EventHubs Namespace. You can get it using az eventhubs namespace show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the EventHubs Namespace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The eventhubs namesapce name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified eventhubs namespace',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
              description: 'List the available PrivateEndpointConnections within a namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'reject',
              description: 'Reject a private endpoint connection request for eventhubs namespace',
              options: [

                Option(
                  name: '--description',
                  description: 'Comments for reject operation',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the EventHubs Namespace. You can get it using az eventhubs namespace show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the EventHubs Namespace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The eventhubs namesapce name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified eventhubs namespace',
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
              description: 'Get a description for the specified Private Endpoint Connection name',
              options: [

                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the EventHubs Namespace. You can get it using az eventhubs namespace show',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The PrivateEndpointConnection name',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update PrivateEndpointConnections of service namespace',
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
                  description: 'Description of the connection state',
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
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The PrivateEndpointConnection name',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--provisioning-state',
                  description: 'Provisioning state of the Private Endpoint Connection',
                  args: [
                    Arg(
                    name: 'provisioning-state',
                    suggestions: [

                      FigSuggestion(name: 'Canceled'),
                      FigSuggestion(name: 'Creating'),
                      FigSuggestion(name: 'Deleting'),
                      FigSuggestion(name: 'Failed'),
                      FigSuggestion(name: 'Succeeded'),
                      FigSuggestion(name: 'Updating')
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
                  name: '--status',
                  description: 'Status of the connection',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Approved'),
                      FigSuggestion(name: 'Disconnected'),
                      FigSuggestion(name: 'Pending'),
                      FigSuggestion(name: 'Rejected')
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
                  description: 'The PrivateEndpointConnection name',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
          name: 'private-link-resource',
          description: 'Manage eventhubs namespace private link resources',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'List lists of resources that supports Privatelinks',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
            )
          ]
        ),
        Subcommand(
          name: 'schema-registry',
          description: 'Manages eventhubs namespace schema registry',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an EventHub schema group',
              options: [

                Option(
                  name: ['--schema-group-name', '--name', '-n'],
                  description: 'The Schema Group name',
                  args: [
                    Arg(
                    name: 'schema-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--group-properties',
                  description: 'Dictionary object for SchemaGroup group properties Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'group-propertie'
                  )
                  ]
                ),
                Option(
                  name: '--schema-compatibility',
                  description: 'Compatibility of Schema',
                  args: [
                    Arg(
                    name: 'schema-compatibility',
                    suggestions: [

                      FigSuggestion(name: 'Backward'),
                      FigSuggestion(name: 'Forward'),
                      FigSuggestion(name: 'None')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--schema-type',
                  description: 'Type of Schema',
                  args: [
                    Arg(
                    name: 'schema-type',
                    suggestions: [

                      FigSuggestion(name: 'Avro'),
                      FigSuggestion(name: 'Unknown')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an EventHub schema group',
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
                  name: ['--schema-group-name', '--name', '-n'],
                  description: 'The Schema Group name',
                  args: [
                    Arg(
                    name: 'schema-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'List all the Schema Groups in a Namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
                ),
                Option(
                  name: '--skip',
                  description: 'Skip is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls',
                  args: [
                    Arg(
                    name: 'ski'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'May be used to limit the number of results to the most recent N usageDetails',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of an EventHub schema group',
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
                  name: ['--schema-group-name', '--name', '-n'],
                  description: 'The Schema Group name',
                  args: [
                    Arg(
                    name: 'schema-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
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
              description: 'Update an EventHub schema group',
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
                  name: '--group-properties',
                  description: 'Dictionary object for SchemaGroup group properties Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'group-propertie'
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
                  name: ['--schema-group-name', '--name', '-n'],
                  description: 'The Schema Group name',
                  args: [
                    Arg(
                    name: 'schema-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The Namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--schema-compatibility',
                  description: 'Compatibility of Schema',
                  args: [
                    Arg(
                    name: 'schema-compatibility',
                    suggestions: [

                      FigSuggestion(name: 'Backward'),
                      FigSuggestion(name: 'Forward'),
                      FigSuggestion(name: 'None')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--schema-type',
                  description: 'Type of Schema',
                  args: [
                    Arg(
                    name: 'schema-type',
                    suggestions: [

                      FigSuggestion(name: 'Avro'),
                      FigSuggestion(name: 'Unknown')
                    ]
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
    )
  ]
);
