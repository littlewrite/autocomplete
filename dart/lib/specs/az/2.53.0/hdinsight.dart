// Auto-generated from TypeScript source: hdinsight.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hdinsight` CLI
final FigSpec hdinsightSpec = FigSpec(
  name: 'hdinsight',
  description: 'Manage HDInsight resources',
  subcommands: [

    Subcommand(
      name: 'application',
      description: 'Manage HDInsight applications',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an application for a HDInsight cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The constant value for the application name',
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
              name: '--script-action-name',
              description: 'The name of the script action',
              args: [
                Arg(
                name: 'script-action-nam'
              )
              ]
            ),
            Option(
              name: '--script-uri',
              description: 'The URI to the script',
              args: [
                Arg(
                name: 'script-ur'
              )
              ]
            ),
            Option(
              name: '--access-mode',
              description: 'The access mode for the application',
              args: [
                Arg(
                name: 'access-mod'
              )
              ]
            ),
            Option(
              name: '--destination-port',
              description: 'The destination port to connect to',
              args: [
                Arg(
                name: 'destination-por'
              )
              ]
            ),
            Option(
              name: '--disable-gateway-auth',
              description: 'Indicates whether to disable gateway authentication. Default is to enable gateway authentication. Default: false',
              args: [
                Arg(
                name: 'disable-gateway-auth',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--edgenode-size',
              description: 'The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-provision-linux-clusters#configure-cluster-size',
              args: [
                Arg(
                name: 'edgenode-siz'
              )
              ]
            ),
            Option(
              name: '--marketplace-id',
              description: 'The marketplace identifier',
              args: [
                Arg(
                name: 'marketplace-i'
              )
              ]
            ),
            Option(
              name: '--no-validation-timeout',
              description: 'Permit timeout error during argument validation phase. If omitted, validation timeout error will be permitted'
            ),
            Option(
              name: '--script-parameters',
              description: 'The parameters for the script',
              args: [
                Arg(
                name: 'script-parameter'
              )
              ]
            ),
            Option(
              name: ['--ssh-password', '-P'],
              description: 'SSH password for the cluster nodes',
              args: [
                Arg(
                name: 'ssh-passwor'
              )
              ]
            ),
            Option(
              name: ['--ssh-public-key', '-K'],
              description: 'SSH public key for the cluster nodes',
              args: [
                Arg(
                name: 'ssh-public-ke'
              )
              ]
            ),
            Option(
              name: ['--ssh-user', '-U'],
              description: 'SSH username for the cluster nodes',
              args: [
                Arg(
                name: 'ssh-use'
              )
              ]
            ),
            Option(
              name: '--sub-domain-suffix',
              description: 'The subdomain suffix of the application',
              args: [
                Arg(
                name: 'sub-domain-suffi'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'The name or ID of subnet. If name is supplied, --vnet-name must be supplied',
              args: [
                Arg(
                name: 'subne'
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
              name: ['--type', '-t'],
              description: 'The application type',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'CustomApplication'),
                  FigSuggestion(name: 'RServer')
                ]
              )
              ]
            ),
            Option(
              name: '--vnet-name',
              description: 'The name of a virtual network',
              args: [
                Arg(
                name: 'vnet-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes the specified application on the HDInsight cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The constant value for the application name',
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all of the applications for the HDInsight cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
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
          description: 'Gets properties of the specified application',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The constant value for the application name',
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until an operation is complete',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The constant value for the application name',
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
    ),
    Subcommand(
      name: 'autoscale',
      description: 'Manage HDInsight cluster\'s Autoscale configuration',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Enable Autoscale for a running cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
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
              name: '--type',
              description: 'The autoscale type',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'Load'),
                  FigSuggestion(name: 'Schedule')
                ]
              )
              ]
            ),
            Option(
              name: '--days',
              description: 'A space-delimited list of schedule day',
              args: [
                Arg(
                name: 'days',
                suggestions: [

                  FigSuggestion(name: 'Friday'),
                  FigSuggestion(name: 'Monday'),
                  FigSuggestion(name: 'Saturday'),
                  FigSuggestion(name: 'Sunday'),
                  FigSuggestion(name: 'Thursday'),
                  FigSuggestion(name: 'Tuesday'),
                  FigSuggestion(name: 'Wednesday')
                ]
              )
              ]
            ),
            Option(
              name: '--max-workernode-count',
              description: 'The max workernode count for Load-based atuoscale',
              args: [
                Arg(
                name: 'max-workernode-coun'
              )
              ]
            ),
            Option(
              name: '--min-workernode-count',
              description: 'The minimal workernode count for Load-based atuoscale',
              args: [
                Arg(
                name: 'min-workernode-coun'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--time',
              description: 'The 24-hour time in the form xx:xx in days',
              args: [
                Arg(
                name: 'tim'
              )
              ]
            ),
            Option(
              name: '--timezone',
              description: 'The timezone for schedule autoscale type. Values from az hdinsight autoscale list-timezones',
              args: [
                Arg(
                name: 'timezon'
              )
              ]
            ),
            Option(
              name: '--workernode-count',
              description: 'The schedule workernode count',
              args: [
                Arg(
                name: 'workernode-coun'
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
          name: 'delete',
          description: 'Disable Autoscale for a running cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list-timezones',
          description: 'List the available timezone name when enabling Schedule-based Autoscale'
        ),
        Subcommand(
          name: 'show',
          description: 'Get the Autoscale configuration of a specified cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
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
          name: 'update',
          description: 'Update the Autoscale configuration',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
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
              name: '--max-workernode-count',
              description: 'The max workernode count for Load-based atuoscale',
              args: [
                Arg(
                name: 'max-workernode-coun'
              )
              ]
            ),
            Option(
              name: '--min-workernode-count',
              description: 'The minimal workernode count for Load-based atuoscale',
              args: [
                Arg(
                name: 'min-workernode-coun'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--timezone',
              description: 'The timezone for schedule autoscale type. Values from az hdinsight autoscale list-timezones',
              args: [
                Arg(
                name: 'timezon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until an operation is complete',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cluster',
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
          name: 'condition',
          description: 'Manage schedule condition of the HDInsight cluster which enabled Schedule-based Autoscale',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Add a new schedule condition',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--days',
                  description: 'A space-delimited list of schedule day',
                  args: [
                    Arg(
                    name: 'days',
                    suggestions: [

                      FigSuggestion(name: 'Friday'),
                      FigSuggestion(name: 'Monday'),
                      FigSuggestion(name: 'Saturday'),
                      FigSuggestion(name: 'Sunday'),
                      FigSuggestion(name: 'Thursday'),
                      FigSuggestion(name: 'Tuesday'),
                      FigSuggestion(name: 'Wednesday')
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
                  name: '--time',
                  description: 'The 24-hour time in the form xx:xx in days',
                  args: [
                    Arg(
                    name: 'tim'
                  )
                  ]
                ),
                Option(
                  name: '--workernode-count',
                  description: 'The schedule workernode count',
                  args: [
                    Arg(
                    name: 'workernode-coun'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete schedule condition',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'The Space-separated list of condition indices which starts with 0 to delete',
                  args: [
                    Arg(
                    name: 'inde'
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all schedule conditions',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
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
              name: 'update',
              description: 'Update a schedule condition',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'The schedule condition index which starts with 0',
                  args: [
                    Arg(
                    name: 'inde'
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
                  name: '--days',
                  description: 'A space-delimited list of schedule day',
                  args: [
                    Arg(
                    name: 'days',
                    suggestions: [

                      FigSuggestion(name: 'Friday'),
                      FigSuggestion(name: 'Monday'),
                      FigSuggestion(name: 'Saturday'),
                      FigSuggestion(name: 'Sunday'),
                      FigSuggestion(name: 'Thursday'),
                      FigSuggestion(name: 'Tuesday'),
                      FigSuggestion(name: 'Wednesday')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--time',
                  description: 'The 24-hour time in the form xx:xx in days',
                  args: [
                    Arg(
                    name: 'tim'
                  )
                  ]
                ),
                Option(
                  name: '--workernode-count',
                  description: 'The schedule workernode count',
                  args: [
                    Arg(
                    name: 'workernode-coun'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until an operation is complete',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the cluster',
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
    ),
    Subcommand(
      name: 'azure-monitor',
      description: 'Manage Azure Monitor logs integration on an HDInsight cluster',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable the Azure Monitor logs integration on an HDInsight cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cluster',
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
          name: 'enable',
          description: 'Enable the Azure Monitor logs integration on an HDInsight cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cluster',
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
              name: '--workspace',
              description: 'The name, resource ID or workspace ID of Log Analytics workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            ),
            Option(
              name: '--no-validation-timeout',
              description: 'Permit timeout error during argument validation phase. If omitted, validation timeout error will be permitted'
            ),
            Option(
              name: '--primary-key',
              description: 'The certificate for the Log Analytics workspace. Required when workspace ID is provided',
              args: [
                Arg(
                name: 'primary-ke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the status of Azure Monitor logs integration on an HDInsight cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a new cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the cluster',
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
          name: ['--type', '-t'],
          description: 'Type of HDInsight cluster, like: hadoop, interactivehive, hbase, kafka, storm, spark, rserver, mlservices. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-provision-linux-clusters#cluster-types',
          args: [
            Arg(
            name: 'typ'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'The name or ID of user assigned identity',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: ['--autoscale-workernode-count', '--autoscale-count'],
          description: 'The scheduled workernode count',
          args: [
            Arg(
            name: 'autoscale-workernode-coun'
          )
          ]
        ),
        Option(
          name: ['--autoscale-max-workernode-count', '--autoscale-max-count'],
          description: 'The max workernode count for Load-based atuoscale',
          args: [
            Arg(
            name: 'autoscale-max-workernode-coun'
          )
          ]
        ),
        Option(
          name: ['--autoscale-min-workernode-count', '--autoscale-min-count'],
          description: 'The minimal workernode count for Load-based atuoscale',
          args: [
            Arg(
            name: 'autoscale-min-workernode-coun'
          )
          ]
        ),
        Option(
          name: '--autoscale-type',
          description: 'The autoscale type',
          args: [
            Arg(
            name: 'autoscale-type',
            suggestions: [

              FigSuggestion(name: 'Load'),
              FigSuggestion(name: 'Schedule')
            ]
          )
          ]
        ),
        Option(
          name: '--cluster-admin-account',
          description: 'The domain user account that will have admin privileges on the cluster. Required only when create cluster with Enterprise Security Package',
          args: [
            Arg(
            name: 'cluster-admin-accoun'
          )
          ]
        ),
        Option(
          name: '--cluster-admin-password',
          description: 'The domain admin password. Required only when create cluster with Enterprise Security Package',
          args: [
            Arg(
            name: 'cluster-admin-passwor'
          )
          ]
        ),
        Option(
          name: '--cluster-configurations',
          description: 'Extra configurations of various components. Configurations may be supplied from a file using the @{path} syntax or a JSON string. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-customize-cluster-bootstrap',
          args: [
            Arg(
            name: 'cluster-configuration'
          )
          ]
        ),
        Option(
          name: '--cluster-tier',
          description: 'The tier of the cluster',
          args: [
            Arg(
            name: 'cluster-tier',
            suggestions: [

              FigSuggestion(name: 'Premium'),
              FigSuggestion(name: 'Standard')
            ]
          )
          ]
        ),
        Option(
          name: '--cluster-users-group-dns',
          description: 'A space-delimited list of Distinguished Names for cluster user groups. Required only when create cluster with Enterprise Security Package',
          args: [
            Arg(
            name: 'cluster-users-group-dn'
          )
          ]
        ),
        Option(
          name: '--component-version',
          description: 'The versions of various Hadoop components, in space-separated versions in \'component=version\' format. Example: Spark=2.0 Hadoop=2.7.3 See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-component-versioning#hadoop-components-available-with-different-hdinsight-versions',
          args: [
            Arg(
            name: 'component-versio'
          )
          ]
        ),
        Option(
          name: ['--enable-compute-isolation', '--compute-isolation'],
          description: 'Indicate whether enable compute isolation or not',
          args: [
            Arg(
            name: 'enable-compute-isolation',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--days',
          description: 'A space-delimited list of schedule day',
          args: [
            Arg(
            name: 'days',
            suggestions: [

              FigSuggestion(name: 'Friday'),
              FigSuggestion(name: 'Monday'),
              FigSuggestion(name: 'Saturday'),
              FigSuggestion(name: 'Sunday'),
              FigSuggestion(name: 'Thursday'),
              FigSuggestion(name: 'Tuesday'),
              FigSuggestion(name: 'Wednesday')
            ]
          )
          ]
        ),
        Option(
          name: '--domain',
          description: 'The name or resource ID of the user\'s Azure Active Directory Domain Service. Required only when create cluster with Enterprise Security Package',
          args: [
            Arg(
            name: 'domai'
          )
          ]
        ),
        Option(
          name: '--edgenode-size',
          description: 'The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-provision-linux-clusters#configure-cluster-size',
          args: [
            Arg(
            name: 'edgenode-siz'
          )
          ]
        ),
        Option(
          name: '--enable-private-link',
          description: 'Indicate whether enable the private link or not',
          args: [
            Arg(
            name: 'enable-private-link',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-algorithm',
          description: 'Algorithm identifier for encryption',
          args: [
            Arg(
            name: 'encryption-algorithm',
            suggestions: [

              FigSuggestion(name: 'RSA-OAEP'),
              FigSuggestion(name: 'RSA-OAEP-256'),
              FigSuggestion(name: 'RSA1_5')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-at-host',
          description: 'Indicates whether enable encryption at host or not',
          args: [
            Arg(
            name: 'encryption-at-host',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-in-transit',
          description: 'Indicates whether enable encryption in transit',
          args: [
            Arg(
            name: 'encryption-in-transit',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-key-name',
          description: 'Key name that is used for enabling disk encryption',
          args: [
            Arg(
            name: 'encryption-key-nam'
          )
          ]
        ),
        Option(
          name: '--encryption-key-version',
          description: 'Key version that is used for enabling disk encryption',
          args: [
            Arg(
            name: 'encryption-key-versio'
          )
          ]
        ),
        Option(
          name: '--encryption-vault-uri',
          description: 'Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net',
          args: [
            Arg(
            name: 'encryption-vault-ur'
          )
          ]
        ),
        Option(
          name: '--esp',
          description: 'Specify to create cluster with Enterprise Security Package. If omitted, creating cluster with Enterprise Security Package will not allowed'
        ),
        Option(
          name: '--headnode-size',
          description: 'The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-provision-linux-clusters#configure-cluster-size',
          args: [
            Arg(
            name: 'headnode-siz'
          )
          ]
        ),
        Option(
          name: '--host-sku',
          description: 'The dedicated host sku of compute isolation',
          args: [
            Arg(
            name: 'host-sk'
          )
          ]
        ),
        Option(
          name: ['--http-password', '-p'],
          description: 'HTTP password for the cluster. Will prompt if not given',
          args: [
            Arg(
            name: 'http-passwor'
          )
          ]
        ),
        Option(
          name: ['--http-user', '-u'],
          description: 'HTTP username for the cluster. Default: admin',
          args: [
            Arg(
            name: 'http-use'
          )
          ]
        ),
        Option(
          name: '--idbroker',
          description: 'Specify to create ESP cluster with HDInsight ID Broker. If omitted, creating ESP cluster with HDInsight ID Broker will not allowed'
        ),
        Option(
          name: '--kafka-client-group-id',
          description: 'The client AAD security group id for Kafka Rest Proxy',
          args: [
            Arg(
            name: 'kafka-client-group-i'
          )
          ]
        ),
        Option(
          name: '--kafka-client-group-name',
          description: 'The client AAD security group name for Kafka Rest Proxy',
          args: [
            Arg(
            name: 'kafka-client-group-nam'
          )
          ]
        ),
        Option(
          name: '--kafka-management-node-count',
          description: 'The number of kafka management node in the cluster',
          args: [
            Arg(
            name: 'kafka-management-node-coun'
          )
          ]
        ),
        Option(
          name: '--kafka-management-node-size',
          description: 'The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-provision-linux-clusters#configure-cluster-size',
          args: [
            Arg(
            name: 'kafka-management-node-siz'
          )
          ]
        ),
        Option(
          name: '--ldaps-urls',
          description: 'A space-delimited list of LDAPS protocol URLs to communicate with the Active Directory. Required only when create cluster with Enterprise Security Package',
          args: [
            Arg(
            name: 'ldaps-url'
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
          name: '--minimal-tls-version',
          description: 'The minimal supported TLS version',
          args: [
            Arg(
            name: 'minimal-tls-version',
            suggestions: [

              FigSuggestion(name: '1.2')
            ]
          )
          ]
        ),
        Option(
          name: '--no-validation-timeout',
          description: 'Permit timeout error during argument validation phase. If omitted, validation timeout error will be permitted'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--private-link-configurations', '--private-link-config'],
          description: 'The private link configurations when creating cluster. Private Link Configurations may be supplied from a file using the @{path} syntax or a JSON string. Please see https://github.com/Azure/azure-cli/blob/dev/src/azure-cli/azure/cli/command_modules/hdinsight/tests/latest/privatelinkconfigurations.json',
          args: [
            Arg(
            name: 'private-link-configuration'
          )
          ]
        ),
        Option(
          name: ['--resource-provider-connection', '--rp-connection'],
          description: 'The resource provider connection type',
          args: [
            Arg(
            name: 'resource-provider-connection',
            suggestions: [

              FigSuggestion(name: 'Inbound'),
              FigSuggestion(name: 'Outbound')
            ]
          )
          ]
        ),
        Option(
          name: ['--ssh-password', '-P'],
          description: 'SSH password for the cluster nodes. If none specified, uses the HTTP password',
          args: [
            Arg(
            name: 'ssh-passwor'
          )
          ]
        ),
        Option(
          name: ['--ssh-public-key', '-K'],
          description: 'SSH public key for the cluster nodes',
          args: [
            Arg(
            name: 'ssh-public-ke'
          )
          ]
        ),
        Option(
          name: ['--ssh-user', '-U'],
          description: 'SSH username for the cluster nodes',
          args: [
            Arg(
            name: 'ssh-use'
          )
          ]
        ),
        Option(
          name: '--storage-account',
          description: 'The name or ID of the storage account',
          args: [
            Arg(
            name: 'storage-accoun'
          )
          ]
        ),
        Option(
          name: '--storage-account-key',
          description: 'The storage account key. A key can be retrieved automatically if the user has access to the storage account',
          args: [
            Arg(
            name: 'storage-account-ke'
          )
          ]
        ),
        Option(
          name: '--storage-account-managed-identity',
          description: 'User-assigned managed identity with access to the storage account filesystem. Only required when storage account type is Azure Data Lake Storage Gen2',
          args: [
            Arg(
            name: 'storage-account-managed-identit'
          )
          ]
        ),
        Option(
          name: '--storage-container',
          description: 'The storage container the cluster will use. Uses the cluster name if none was specified. (WASB only)',
          args: [
            Arg(
            name: 'storage-containe'
          )
          ]
        ),
        Option(
          name: '--storage-filesystem',
          description: 'The storage filesystem the cluster will use. Uses the cluster name if none was specified. (DFS only)',
          args: [
            Arg(
            name: 'storage-filesyste'
          )
          ]
        ),
        Option(
          name: '--subnet',
          description: 'The name or ID of subnet. If name is supplied, --vnet-name must be supplied',
          args: [
            Arg(
            name: 'subne'
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
          name: '--time',
          description: 'The 24-hour time in the form of xx:xx in days',
          args: [
            Arg(
            name: 'tim'
          )
          ]
        ),
        Option(
          name: '--timezone',
          description: 'The timezone for schedule autoscale type. Values from az hdinsight autoscale list-timezones',
          args: [
            Arg(
            name: 'timezon'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The HDInsight cluster version. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-component-versioning#supported-hdinsight-versions',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--vnet-name',
          description: 'The name of a virtual network',
          args: [
            Arg(
            name: 'vnet-nam'
          )
          ]
        ),
        Option(
          name: ['--workernode-count', '-c'],
          description: 'The number of worker nodes in the cluster',
          args: [
            Arg(
            name: 'workernode-coun'
          )
          ]
        ),
        Option(
          name: '--workernode-data-disk-size',
          description: 'The size of the data disk in GB, e.g. 1023',
          args: [
            Arg(
            name: 'workernode-data-disk-siz'
          )
          ]
        ),
        Option(
          name: '--workernode-data-disk-storage-account-type',
          description: 'The type of storage account that will be used for the data disks: standard_lrs or premium_lrs',
          args: [
            Arg(
            name: 'workernode-data-disk-storage-account-type',
            suggestions: [

              FigSuggestion(name: 'premium_lrs'),
              FigSuggestion(name: 'standard_lrs')
            ]
          )
          ]
        ),
        Option(
          name: '--workernode-data-disks-per-node',
          description: 'The number of data disks to use per worker node',
          args: [
            Arg(
            name: 'workernode-data-disks-per-nod'
          )
          ]
        ),
        Option(
          name: '--workernode-size',
          description: 'The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-provision-linux-clusters#configure-cluster-size',
          args: [
            Arg(
            name: 'workernode-siz'
          )
          ]
        ),
        Option(
          name: '--zones',
          description: 'A space-delimited list of availability zones where cluster will be created',
          args: [
            Arg(
            name: 'zone'
          )
          ]
        ),
        Option(
          name: '--zookeepernode-size',
          description: 'The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-provision-linux-clusters#configure-cluster-size',
          args: [
            Arg(
            name: 'zookeepernode-siz'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes the specified HDInsight cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the cluster',
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
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List HDInsight clusters in a resource group or subscription',
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
      name: 'list-usage',
      description: 'Lists the usages for the specified location',
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
      name: 'resize',
      description: 'Resize the specified HDInsight cluster to the specified size',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the cluster',
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
          name: ['--workernode-count', '-c'],
          description: 'The target worker node instance count for the operation',
          args: [
            Arg(
            name: 'workernode-coun'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'rotate-disk-encryption-key',
      description: 'Rotate the disk encryption key of the specified HDInsight cluster',
      options: [

        Option(
          name: '--encryption-key-name',
          description: 'Key name that is used for enabling disk encryption',
          args: [
            Arg(
            name: 'encryption-key-nam'
          )
          ]
        ),
        Option(
          name: '--encryption-key-version',
          description: 'Key version that is used for enabling disk encryption',
          args: [
            Arg(
            name: 'encryption-key-versio'
          )
          ]
        ),
        Option(
          name: '--encryption-vault-uri',
          description: 'Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net',
          args: [
            Arg(
            name: 'encryption-vault-ur'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the cluster',
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
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Gets the specified cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the cluster',
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
      name: 'update',
      description: 'Update the tags of the specified HDInsight cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the cluster',
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
      description: 'Place the CLI in a waiting state until an operation is complete',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the cluster',
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
      name: 'host',
      description: 'Manage HDInsight cluster\'s virtual hosts',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the hosts of the specified HDInsight cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
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
          name: 'restart',
          description: 'Restart the specific hosts of the specified HDInsight cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--host-names',
              description: 'A space-delimited list of host names that need to be restarted',
              args: [
                Arg(
                name: 'host-name'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'monitor',
      description: 'Manage Classic Azure Monitor logs integration on an HDInsight cluster',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable the Classic Azure Monitor logs integration on an HDInsight cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cluster',
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
          name: 'enable',
          description: 'Enable the Classic Azure Monitor logs integration on an HDInsight cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cluster',
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
              name: '--workspace',
              description: 'The name, resource ID or workspace ID of Log Analytics workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            ),
            Option(
              name: '--no-validation-timeout',
              description: 'Permit timeout error during argument validation phase. If omitted, validation timeout error will be permitted'
            ),
            Option(
              name: '--primary-key',
              description: 'The certificate for the Log Analytics workspace. Required when workspace ID is provided',
              args: [
                Arg(
                name: 'primary-ke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the status of Classic Azure Monitor logs integration on an HDInsight cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'script-action',
      description: 'Manage HDInsight script actions',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Deletes a specified persisted script action of the cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the script',
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
          name: 'execute',
          description: 'Execute script actions on the specified HDInsight cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the script action',
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
              name: '--roles',
              description: 'A space-delimited list of roles (nodes) where the script will be executed. Valid roles are headnode, workernode, zookeepernode, edgenode',
              args: [
                Arg(
                name: 'role'
              )
              ]
            ),
            Option(
              name: '--script-uri',
              description: 'The URI to the script',
              args: [
                Arg(
                name: 'script-ur'
              )
              ]
            ),
            Option(
              name: '--persist-on-success',
              description: 'If the scripts needs to be persisted'
            ),
            Option(
              name: '--script-parameters',
              description: 'The parameters for the script',
              args: [
                Arg(
                name: 'script-parameter'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all the persisted script actions for the specified cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
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
          name: 'list-execution-history',
          description: 'Lists all scripts\' execution history for the specified cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
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
          name: 'promote',
          description: 'Promotes the specified ad-hoc script execution to a persisted script',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--execution-id',
              description: 'The script execution id',
              args: [
                Arg(
                name: 'execution-i'
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
          name: 'show-execution-details',
          description: 'Gets the script execution detail for the given script execution ID',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--execution-id',
              description: 'The script execution id',
              args: [
                Arg(
                name: 'execution-i'
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
);
