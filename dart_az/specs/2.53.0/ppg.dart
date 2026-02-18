// Auto-generated from TypeScript source: ppg.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ppg` CLI
final FigSpec ppgSpec = FigSpec(
  name: 'ppg',
  description: 'Manage Proximity Placement Groups',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a proximity placement group',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the proximity placement group',
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
          name: '--intent-vm-sizes',
          description: 'Specify possible sizes of virtual machines that can be created in the proximity placement group',
          args: [
            Arg(
            name: 'intent-vm-size'
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
          name: ['--type', '-t'],
          description: 'The type of the proximity placement group',
          args: [
            Arg(
            name: 'type',
            suggestions: [

              FigSuggestion(name: 'Standard'),
              FigSuggestion(name: 'Ultra')
            ]
          )
          ]
        ),
        Option(
          name: ['--zone', '-z'],
          description: 'Availability zone into which to provision the resource',
          args: [
            Arg(
            name: 'zone',
            suggestions: [

              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '3')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a proximity placement group',
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
          name: ['--proximity-placement-group-name', '--name', '-n'],
          description: 'The name of the proximity placement group',
          args: [
            Arg(
            name: 'proximity-placement-group-nam'
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
      description: 'List proximity placement groups',
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
      description: 'Get a proximity placement group',
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
          name: '--include-colocation-status',
          description: 'Enable fetching the colocation status of all the resources in the proximity placement group',
          args: [
            Arg(
            name: 'include-colocation-status',
            suggestions: [

              FigSuggestion(name: 'False'),
              FigSuggestion(name: 'True')
            ]
          )
          ]
        ),
        Option(
          name: ['--proximity-placement-group-name', '--name', '-n'],
          description: 'The name of the proximity placement group',
          args: [
            Arg(
            name: 'proximity-placement-group-nam'
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
      description: 'Update a proximity placement group',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the proximity placement group',
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
          name: '--include-colocation-status',
          description: 'IncludeColocationStatus=true enables fetching the colocation status of all the resources in the proximity placement group. Default value is None',
          args: [
            Arg(
            name: 'include-colocation-statu'
          )
          ]
        ),
        Option(
          name: '--intent-vm-sizes',
          description: 'Specify possible sizes of virtual machines that can be created in the proximity placement group',
          args: [
            Arg(
            name: 'intent-vm-size'
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
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: ['--type', '-t'],
          description: 'The type of the proximity placement group',
          args: [
            Arg(
            name: 'type',
            suggestions: [

              FigSuggestion(name: 'Standard'),
              FigSuggestion(name: 'Ultra')
            ]
          )
          ]
        )
      ]
    )
  ]
);
