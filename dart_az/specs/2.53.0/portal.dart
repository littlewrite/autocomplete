// Auto-generated from TypeScript source: portal.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `portal` CLI
final FigSpec portalSpec = FigSpec(
  name: 'portal',
  description: 'Manage Portal',
  subcommands: [

    Subcommand(
      name: 'dashboard',
      description: 'Manage portal dashboards',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a dashboard',
          options: [

            Option(
              name: '--input-path',
              description: 'The path to the dashboard properties JSON file',
              args: [
                Arg(
                name: 'input-pat'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the dashboard',
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
          description: 'Deletes a dashboard',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the dashboard',
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
          name: 'import',
          description: 'Imports a dashboard from a JSON file',
          options: [

            Option(
              name: '--input-path',
              description: 'The path to the dashboard json file',
              args: [
                Arg(
                name: 'input-pat'
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
              name: ['--name', '-n'],
              description: 'The name of the dashboard',
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
          description: 'Lists the dashboards within a subscription or resource group',
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
          description: 'Gets details for a single dashboard',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the dashboard',
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
          description: 'Updates an existing dashboard',
          options: [

            Option(
              name: '--input-path',
              description: 'The path to the dashboard properties JSON file',
              args: [
                Arg(
                name: 'input-pat'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the dashboard',
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
