// Auto-generated from TypeScript source: fleet.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fleet` CLI
final FigSpec fleetSpec = FigSpec(
  name: 'fleet',
  description: 'Commands to manage fleet',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Creates or updates a Fleet',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Specify the fleet name',
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
          name: '--agent-subnet-id',
          description: 'The ID of the subnet which the Fleet hub node will join on startup. If this is not specified, a vnet and subnet will be generated and used',
          args: [
            Arg(
            name: 'agent-subnet-i'
          )
          ]
        ),
        Option(
          name: '--apiserver-subnet-id',
          description: 'The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new Fleet with BYO vnet',
          args: [
            Arg(
            name: 'apiserver-subnet-i'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'With --enable-managed-identity, enable user assigned managed identity (MSI) on the Fleet resource. Specify the existing user assigned identity resource',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: ['--dns-name-prefix', '-p'],
          description: 'Prefix for hostnames that are created. If not specified, generate a hostname using the managed cluster and resource group names',
          args: [
            Arg(
            name: 'dns-name-prefi'
          )
          ]
        ),
        Option(
          name: '--enable-hub',
          description: 'If set, the Fleet will be created with a hub cluster'
        ),
        Option(
          name: '--enable-managed-identity',
          description: 'Enable system assigned managed identity (MSI) on the Fleet resource'
        ),
        Option(
          name: '--enable-private-cluster',
          description: 'Whether to create the Fleet hub as a private cluster or not'
        ),
        Option(
          name: '--enable-vnet-integration',
          description: 'Whether to enable apiserver vnet integration for the Fleet hub or not'
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
      description: 'Deletes a Fleet',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Specify the fleet name',
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
      name: 'get-credentials',
      description: 'Lists the user credentials of a Fleet',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Specify the fleet name',
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
          name: '--context',
          description: 'If specified, overwrite the default context name',
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--file', '-f'],
          description: 'Kubernetes configuration file to update. Use "-" to print YAML to stdout instead',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--overwrite-existing',
          description: 'Overwrite any existing cluster entry with the same name'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Lists fleets in the specified subscription and resource group',
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
      description: 'Gets a Fleet',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Specify the fleet name',
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
      description: 'Patches a fleet resource',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Specify the fleet name',
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
          name: '--assign-identity',
          description: 'With --enable-managed-identity, enable user assigned managed identity (MSI) on the Fleet resource. Specify the existing user assigned identity resource',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--enable-managed-identity',
          description: 'Enable system assigned managed identity (MSI) on the Fleet resource',
          args: [
            Arg(
            name: 'enable-managed-identity',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
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
      description: 'Wait for a fleet resource to reach a desired state',
      options: [

        Option(
          name: '--fleet-name',
          description: 'The name of the Fleet resource. Required',
          args: [
            Arg(
            name: 'fleet-nam'
          )
          ]
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
      name: 'member',
      description: 'Commands to manage a fleet member',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a fleet member',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: '--member-cluster-id',
              description: 'ID of the managed cluster',
              args: [
                Arg(
                name: 'member-cluster-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify the fleet member name',
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
              name: '--update-group',
              description: 'Group of the fleet member',
              args: [
                Arg(
                name: 'update-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a fleet member',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify the fleet member name',
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
          description: 'Lists the members of a fleet',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
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
          description: 'Gets a Fleet member',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify the fleet member name',
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
          description: 'Update a fleet member',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify the fleet member name',
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
              name: '--update-group',
              description: 'Group of the fleet member',
              args: [
                Arg(
                name: 'update-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for a fleet member resource to reach a desired state',
          options: [

            Option(
              name: '--fleet-member-name',
              description: 'The name of the Fleet member resource. Required',
              args: [
                Arg(
                name: 'fleet-member-nam'
              )
              ]
            ),
            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
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
      name: 'updaterun',
      description: 'Commands to manage a fleet update run',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a fleet update run',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify name for the update run',
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
              name: '--upgrade-type',
              description: 'Specify the upgrade type of fleet members. Acceptable values are \'Full\' and \'NodeImageOnly\'',
              args: [
                Arg(
                name: 'upgrade-type',
                suggestions: [

                  FigSuggestion(name: 'Full'),
                  FigSuggestion(name: 'NodeImageOnly')
                ]
              )
              ]
            ),
            Option(
              name: '--kubernetes-version',
              description: 'Specify the kubernetes version to upgrade fleet member(s) to, when --upgrade-type is set to \'Full\'. Acceptable format is x.x.x (eg. 1.2.3)',
              args: [
                Arg(
                name: 'kubernetes-versio'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--node-image-selection',
              description: 'Node Image Selection is an option that lets you choose how your clusters\' nodes are upgraded',
              args: [
                Arg(
                name: 'node-image-selection',
                suggestions: [

                  FigSuggestion(name: 'Consistent'),
                  FigSuggestion(name: 'Latest')
                ]
              )
              ]
            ),
            Option(
              name: '--stages',
              description: 'Path to a json file that defines stages to upgrade a fleet. See examples for further reference',
              args: [
                Arg(
                name: 'stage'
              )
              ]
            ),
            Option(
              name: '--update-strategy-name',
              description: 'The name of the update strategy to use for this update run. If not specified, the default update strategy will be used',
              args: [
                Arg(
                name: 'update-strategy-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a fleet update run',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify name for the update run',
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
          description: 'Lists the update runs of a fleet',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
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
          description: 'Shows a fleet update run',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify name for the update run',
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
          name: 'start',
          description: 'Starts a fleet update run',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify name for the update run',
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
          name: 'stop',
          description: 'Stops a fleet update run',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify name for the update run',
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
          name: 'wait',
          description: 'Wait for a fleet updateraun resource to reach a desired state',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
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
              name: '--update-run-name',
              description: 'The name of the UpdateRun resource. Required',
              args: [
                Arg(
                name: 'update-run-nam'
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
      name: 'updatestrategy',
      description: 'Commands to manage a fleet update strategy',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a update strategy',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify name for the fleet update strategy',
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
              name: '--stages',
              description: 'Path to a json file that defines the update strategy',
              args: [
                Arg(
                name: 'stage'
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
          description: 'Deletes a update strategy',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify name for the fleet update strategy',
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
          description: 'Lists the fleet\'s update strategies',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
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
          description: 'Shows a update strategy',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify name for the fleet update strategy',
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
          description: 'Wait for a fleet updatestrategy resource to reach a desired state',
          options: [

            Option(
              name: ['--fleet-name', '-f'],
              description: 'Specify the fleet name',
              args: [
                Arg(
                name: 'fleet-nam'
              )
              ]
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
              name: '--update-strategy-name',
              description: 'The name of the UpdateStrategy resource. Required',
              args: [
                Arg(
                name: 'update-strategy-nam'
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
