// Auto-generated from TypeScript source: resourcemanagement.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `resourcemanagement` CLI
final FigSpec resourcemanagementSpec = FigSpec(
  name: 'resourcemanagement',
  description: 'Resourcemanagement CLI command group',
  subcommands: [

    Subcommand(
      name: 'private-link',
      description: 'Resourcemanagement private-link management on a resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a resource management group private link',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The region to create the resource management private link',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the resource management private link',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The name of the resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a resource management private link',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the resource management private link',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The name of the resource group',
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
          description: 'Get all the resource management private links at scope',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The name of the resource group',
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
          description: 'Get resource management private',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the resource management private link',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The name of the resource group',
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
