// Auto-generated from TypeScript source: graph.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `graph` CLI
final FigSpec graphSpec = FigSpec(
  name: 'graph',
  description: 'Query the resources managed by Azure Resource Manager.\n\n\t\tRun \'az graph query --help\' for detailed help',
  subcommands: [

    Subcommand(
      name: 'query',
      description: 'Query the resources managed by Azure Resource Manager',
      options: [

        Option(
          name: ['--graph-query', '--q', '-q'],
          description: 'Resource Graph query to execute',
          args: [
            Arg(
            name: 'graph-quer'
          )
          ]
        ),
        Option(
          name: ['--allow-partial-scopes', '-a'],
          description: 'Indicates if query should succeed when only partial number of subscription underneath can be processed by server'
        ),
        Option(
          name: '--first',
          description: 'The maximum number of objects to return. Accepted range: 1-1000',
          args: [
            Arg(
            name: 'firs'
          )
          ]
        ),
        Option(
          name: ['--management-groups', '-m'],
          description: 'List of management groups to run query against',
          args: [
            Arg(
            name: 'management-group'
          )
          ]
        ),
        Option(
          name: '--skip',
          description: 'Ignores the first N objects and then gets the remaining objects',
          args: [
            Arg(
            name: 'ski'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: 'Skip token to get the next page of the query if applicable',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        ),
        Option(
          name: ['--subscriptions', '-s'],
          description: 'List of subscriptions to run query against. By default all accessible subscriptions are queried',
          args: [
            Arg(
            name: 'subscription'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'shared-query',
      description: 'Manage shared query of Azure resource graph',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a shared query',
          options: [

            Option(
              name: ['--description', '-d'],
              description: 'Description of the graph shared query',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--graph-query', '--q', '-q'],
              description: 'Resource Graph query to execute',
              args: [
                Arg(
                name: 'graph-quer'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the graph shared query',
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
          description: 'Delete a shared query',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the graph shared query',
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
          description: 'List all shared query in a resource group',
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
          description: 'Show the properties of a shared query',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the graph shared query',
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
    )
  ]
);
