// Auto-generated from TypeScript source: cache.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cache` CLI
final FigSpec cacheSpec = FigSpec(
  name: 'cache',
  description: 'Commands to manage CLI objects cached using the --defer argument',
  subcommands: [

    Subcommand(
      name: 'delete',
      description: 'Delete an object from the cache',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The resource name',
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
          name: ['--resource-type', '-t'],
          description: 'The resource type',
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
      description: 'List the contents of the object cache'
    ),
    Subcommand(
      name: 'purge',
      description: 'Clear the entire CLI object cache'
    ),
    Subcommand(
      name: 'show',
      description: 'Show the contents of a specific object in the cache',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The resource name',
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
          name: ['--resource-type', '-t'],
          description: 'The resource type',
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
