// Auto-generated from TypeScript source: managedservices.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `managedservices` CLI
final FigSpec managedservicesSpec = FigSpec(
  name: 'managedservices',
  description: 'Manage the registration assignments and definitions in Azure',
  subcommands: [

    Subcommand(
      name: 'assignment',
      description: 'Manage the registration assignments in Azure',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new registration assignment',
          options: [

            Option(
              name: '--definition',
              description: 'The fully qualified resource id of the registration definition',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: '--assignment-id',
              description: 'Can be used to override the generated registration assignment id',
              args: [
                Arg(
                name: 'assignment-i'
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
          name: 'delete',
          description: 'Deletes the registration assignment',
          options: [

            Option(
              name: '--assignment',
              description: 'The identifier (guid) or the fully qualified resource id of the registration assignment. When resource id is used, subscription id and resource group parameters are ignored',
              args: [
                Arg(
                name: 'assignmen'
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
          description: 'List all the registration assignments',
          options: [

            Option(
              name: '--include-definition',
              description: 'When provided, gets the associated registration definition details',
              args: [
                Arg(
                name: 'include-definition',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a registration assignment',
          options: [

            Option(
              name: '--assignment',
              description: 'The identifier (guid) or the fully qualified resource id of the registration assignment. When resource id is used, subscription id and resource group parameters are ignored',
              args: [
                Arg(
                name: 'assignmen'
              )
              ]
            ),
            Option(
              name: '--include-definition',
              description: 'When provided, gets the associated registration definition details',
              args: [
                Arg(
                name: 'include-definition',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'definition',
      description: 'Manage the registration definitions in Azure',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new registration definition',
          options: [

            Option(
              name: '--name',
              description: 'The name of the registration definition',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--principal-id',
              description: 'The principal id',
              args: [
                Arg(
                name: 'principal-i'
              )
              ]
            ),
            Option(
              name: '--role-definition-id',
              description: 'The role definition id',
              args: [
                Arg(
                name: 'role-definition-i'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The managed by tenant id',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: '--definition-id',
              description: 'Can be used to override the generated registration definition id',
              args: [
                Arg(
                name: 'definition-i'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The friendly description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--plan-name',
              description: 'The plan name',
              args: [
                Arg(
                name: 'plan-nam'
              )
              ]
            ),
            Option(
              name: '--plan-product',
              description: 'The plan product',
              args: [
                Arg(
                name: 'plan-produc'
              )
              ]
            ),
            Option(
              name: '--plan-publisher',
              description: 'The plan publisher',
              args: [
                Arg(
                name: 'plan-publishe'
              )
              ]
            ),
            Option(
              name: '--plan-version',
              description: 'The plan version',
              args: [
                Arg(
                name: 'plan-versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a registration',
          options: [

            Option(
              name: '--definition',
              description: 'The identifier (guid) or the fully qualified resource id of the registration definition. When resource id is used, subscription id and resource group parameters are ignored',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all the registration definitions under the default scope or under the subscription provided'
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a registration definition',
          options: [

            Option(
              name: '--definition',
              description: 'The identifier (guid) or the fully qualified resource id of the registration definition. When resource id is used, subscription id and resource group parameters are ignored',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
