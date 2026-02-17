// Auto-generated from TypeScript source: lock.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `lock` CLI
final FigSpec lockSpec = FigSpec(
  name: 'lock',
  description: 'Manage Azure locks',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a lock',
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
          description: 'Name or ID of the resource being locked. If an ID is given, other resource arguments should not be given',
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
      description: 'Delete a lock',
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
          description: 'Name or ID of the resource being locked. If an ID is given, other resource arguments should not be given',
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
      description: 'List lock information',
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
          description: 'Name or ID of the resource being locked. If an ID is given, other resource arguments should not be given',
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
      description: 'Show the properties of a lock',
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
          description: 'Name or ID of the resource being locked. If an ID is given, other resource arguments should not be given',
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
      description: 'Update a lock',
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
          description: 'Name or ID of the resource being locked. If an ID is given, other resource arguments should not be given',
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
);
