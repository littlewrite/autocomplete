// Auto-generated from TypeScript source: advisor.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `advisor` CLI
final FigSpec advisorSpec = FigSpec(
  name: 'advisor',
  description: 'Manage Azure Advisor',
  subcommands: [

    Subcommand(
      name: 'configuration',
      description: 'Manage Azure Advisor configuration',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List Azure Advisor configuration for the entire subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'Show Azure Advisor configuration for the given subscription or resource group',
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
          name: 'update',
          description: 'Update Azure Advisor configuration',
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
              name: '--configuration-name',
              description: 'Advisor configuration name. Value must be "default"',
              args: [
                Arg(
                name: 'configuration-nam'
              )
              ]
            ),
            Option(
              name: ['--exclude', '-e'],
              description: 'Exclude from recommendation generation',
              args: [
                Arg(
                name: 'exclud'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: ['--include', '-i'],
              description: 'Include in recommendation generation',
              args: [
                Arg(
                name: 'includ'
              )
              ]
            ),
            Option(
              name: ['--low-cpu-threshold', '-l'],
              description: 'Value for low CPU threshold',
              args: [
                Arg(
                name: 'low-cpu-threshold',
                suggestions: [

                  FigSuggestion(name: '10'),
                  FigSuggestion(name: '15'),
                  FigSuggestion(name: '20'),
                  FigSuggestion(name: '5')
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'recommendation',
      description: 'Review Azure Advisor recommendations',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable Azure Advisor recommendations',
          options: [

            Option(
              name: ['--days', '-d'],
              description: 'Number of days to disable. If not specified, the recommendation is disabled forever',
              args: [
                Arg(
                name: 'day'
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
              name: ['--name', '-n'],
              description: 'The name of the recommendation as output by the list command',
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
          description: 'Enable Azure Advisor recommendations',
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
              description: 'The name of the recommendation as output by the list command',
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
          name: 'list',
          description: 'List Azure Advisor recommendations',
          options: [

            Option(
              name: ['--category', '-c'],
              description: 'Name of recommendation category',
              args: [
                Arg(
                name: 'category',
                suggestions: [

                  FigSuggestion(name: 'Cost'),
                  FigSuggestion(name: 'HighAvailability'),
                  FigSuggestion(name: 'Performance'),
                  FigSuggestion(name: 'Security')
                ]
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
              name: ['--refresh', '-r'],
              description: 'Generate new recommendations',
              args: [
                Arg(
                name: 'refres'
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
