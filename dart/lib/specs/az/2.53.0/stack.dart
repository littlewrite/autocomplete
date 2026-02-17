// Auto-generated from TypeScript source: stack.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `stack` CLI
final FigSpec stackSpec = FigSpec(
  name: 'stack',
  description: 'A deployment stack is a native Azure resource type that enables you to perform operations on a resource collection as an atomic unit',
  subcommands: [

    Subcommand(
      name: 'group',
      description: 'Manage Deployment Stacks at resource group',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create or update a deployment stack at resource group scope',
          options: [

            Option(
              name: ['--deny-settings-mode', '--dm'],
              description: 'Define which operations are denied on resources managed by the stack',
              args: [
                Arg(
                name: 'deny-settings-mode',
                suggestions: [

                  FigSuggestion(name: 'denyDelete'),
                  FigSuggestion(name: 'denyWriteAndDelete'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the deployment stack',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the deployment stack will be created',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--deny-settings-apply-to-child-scopes', '--cs'],
              description: 'DenySettings will be applied to child scopes'
            ),
            Option(
              name: '--delete-all',
              description: 'Flag to indicate delete rather than detach for the resources and resource groups'
            ),
            Option(
              name: '--delete-resource-groups',
              description: 'Flag to indicate delete rather than detach for the resource groups'
            ),
            Option(
              name: '--delete-resources',
              description: 'Flag to indicate delete rather than detach for the resources'
            ),
            Option(
              name: ['--deny-settings-excluded-actions', '--ea'],
              description: 'List of role-based management operations that are excluded from the denySettings. Up to 200 actions are permitted',
              args: [
                Arg(
                name: 'deny-settings-excluded-action'
              )
              ]
            ),
            Option(
              name: ['--deny-settings-excluded-principals', '--ep'],
              description: 'List of AAD principal IDs excluded from the lock. Up to 5 principals are permitted',
              args: [
                Arg(
                name: 'deny-settings-excluded-principal'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of deployment stack',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--parameters', '-p'],
              description: 'Parameters may be supplied from a file using the @{path} syntax, a JSON string, or as <KEY=VALUE> pairs. Parameters are evaluated in order, so when a value is assigned twice, the latter value will be used. It is recommended that you supply your parameters file first, and then override selectively using KEY=VALUE syntax',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--query-string', '-q'],
              description: 'The query string (a SAS token) to be used with the template-uri in the case of linked templates',
              args: [
                Arg(
                name: 'query-strin'
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
              name: ['--template-file', '-f'],
              description: 'A path to a template file or Bicep file in the file system',
              args: [
                Arg(
                name: 'template-fil'
              )
              ]
            ),
            Option(
              name: ['--template-spec', '-s'],
              description: 'The template spec resource id',
              args: [
                Arg(
                name: 'template-spe'
              )
              ]
            ),
            Option(
              name: ['--template-uri', '-u'],
              description: 'A uri to a remote template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete specified deployment stack from resource group scope',
          options: [

            Option(
              name: '--delete-all',
              description: 'Flag to indicate delete rather than detach for the resources and resource groups'
            ),
            Option(
              name: '--delete-resource-groups',
              description: 'Flag to indicate delete rather than detach for the resource groups'
            ),
            Option(
              name: '--delete-resources',
              description: 'Flag to indicate delete rather than detach for the resources'
            ),
            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the deployment stack exists',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export the template used to create the deployment stack from resource group scope',
          options: [

            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the deployment stack exists',
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
          description: 'List all deployment stacks in resource group',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the deployment stack exists',
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
          description: 'Get specified deployment stack from resource group scope',
          options: [

            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the deployment stack exists',
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
      name: 'mg',
      description: 'Manage Deployment Stacks at management group',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create or update a deployment stack at management group scope',
          options: [

            Option(
              name: ['--deny-settings-mode', '--dm'],
              description: 'Define which operations are denied on resources managed by the stack',
              args: [
                Arg(
                name: 'deny-settings-mode',
                suggestions: [

                  FigSuggestion(name: 'denyDelete'),
                  FigSuggestion(name: 'denyWriteAndDelete'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The location to store deployment stack',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id to create stack at',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the deployment stack',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--deny-settings-apply-to-child-scopes', '--cs'],
              description: 'DenySettings will be applied to child scopes'
            ),
            Option(
              name: '--delete-all',
              description: 'Flag to indicate delete rather than detach for the resources and resource groups'
            ),
            Option(
              name: '--delete-resource-groups',
              description: 'Flag to indicate delete rather than detach for the resource groups'
            ),
            Option(
              name: '--delete-resources',
              description: 'Flag to indicate delete rather than detach for the resources'
            ),
            Option(
              name: ['--deny-settings-excluded-actions', '--ea'],
              description: 'List of role-based management operations that are excluded from the denySettings. Up to 200 actions are permitted',
              args: [
                Arg(
                name: 'deny-settings-excluded-action'
              )
              ]
            ),
            Option(
              name: ['--deny-settings-excluded-principals', '--ep'],
              description: 'List of AAD principal IDs excluded from the lock. Up to 5 principals are permitted',
              args: [
                Arg(
                name: 'deny-settings-excluded-principal'
              )
              ]
            ),
            Option(
              name: ['--deployment-subscription', '--ds'],
              description: 'The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack',
              args: [
                Arg(
                name: 'deployment-subscriptio'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of deployment stack',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--parameters', '-p'],
              description: 'Parameters may be supplied from a file using the @{path} syntax, a JSON string, or as <KEY=VALUE> pairs. Parameters are evaluated in order, so when a value is assigned twice, the latter value will be used. It is recommended that you supply your parameters file first, and then override selectively using KEY=VALUE syntax',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--query-string', '-q'],
              description: 'The query string (a SAS token) to be used with the template-uri in the case of linked templates',
              args: [
                Arg(
                name: 'query-strin'
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
              name: ['--template-file', '-f'],
              description: 'A path to a template file or Bicep file in the file system',
              args: [
                Arg(
                name: 'template-fil'
              )
              ]
            ),
            Option(
              name: ['--template-spec', '-s'],
              description: 'The template spec resource id',
              args: [
                Arg(
                name: 'template-spe'
              )
              ]
            ),
            Option(
              name: ['--template-uri', '-u'],
              description: 'A uri to a remote template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete specified deployment stack from management group scope',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id to create stack at',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: '--delete-all',
              description: 'Flag to indicate delete rather than detach for the resources and resource groups'
            ),
            Option(
              name: '--delete-resource-groups',
              description: 'Flag to indicate delete rather than detach for the resource groups'
            ),
            Option(
              name: '--delete-resources',
              description: 'Flag to indicate delete rather than detach for the resources'
            ),
            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export the template used to create the deployment stack',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id to create stack at',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
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
          description: 'List all deployment stacks in management group',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id to create stack at',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get specified deployment stack from management group scope',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id to create stack at',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sub',
      description: 'Manage Deployment Stacks at subscription',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create or update a deployment stack at subscription scope',
          options: [

            Option(
              name: ['--deny-settings-mode', '--dm'],
              description: 'Define which operations are denied on resources managed by the stack',
              args: [
                Arg(
                name: 'deny-settings-mode',
                suggestions: [

                  FigSuggestion(name: 'denyDelete'),
                  FigSuggestion(name: 'denyWriteAndDelete'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The location to store deployment stack',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the deployment stack',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--deny-settings-apply-to-child-scopes', '--cs'],
              description: 'DenySettings will be applied to child scopes'
            ),
            Option(
              name: '--delete-all',
              description: 'Flag to indicate delete rather than detach for the resources and resource groups'
            ),
            Option(
              name: '--delete-resource-groups',
              description: 'Flag to indicate delete rather than detach for the resource groups'
            ),
            Option(
              name: '--delete-resources',
              description: 'Flag to indicate delete rather than detach for the resources'
            ),
            Option(
              name: ['--deny-settings-excluded-actions', '--ea'],
              description: 'List of role-based management operations that are excluded from the denySettings. Up to 200 actions are permitted',
              args: [
                Arg(
                name: 'deny-settings-excluded-action'
              )
              ]
            ),
            Option(
              name: ['--deny-settings-excluded-principals', '--ep'],
              description: 'List of AAD principal IDs excluded from the lock. Up to 5 principals are permitted',
              args: [
                Arg(
                name: 'deny-settings-excluded-principal'
              )
              ]
            ),
            Option(
              name: ['--deployment-resource-group', '--dr'],
              description: 'The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack',
              args: [
                Arg(
                name: 'deployment-resource-grou'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of deployment stack',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--parameters', '-p'],
              description: 'Parameters may be supplied from a file using the @{path} syntax, a JSON string, or as <KEY=VALUE> pairs. Parameters are evaluated in order, so when a value is assigned twice, the latter value will be used. It is recommended that you supply your parameters file first, and then override selectively using KEY=VALUE syntax',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--query-string', '-q'],
              description: 'The query string (a SAS token) to be used with the template-uri in the case of linked templates',
              args: [
                Arg(
                name: 'query-strin'
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
              name: ['--template-file', '-f'],
              description: 'A path to a template file or Bicep file in the file system',
              args: [
                Arg(
                name: 'template-fil'
              )
              ]
            ),
            Option(
              name: ['--template-spec', '-s'],
              description: 'The template spec resource id',
              args: [
                Arg(
                name: 'template-spe'
              )
              ]
            ),
            Option(
              name: ['--template-uri', '-u'],
              description: 'A uri to a remote template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete specified deployment stack from subscription scope',
          options: [

            Option(
              name: '--delete-all',
              description: 'Flag to indicate delete rather than detach for the resources and resource groups'
            ),
            Option(
              name: '--delete-resource-groups',
              description: 'Flag to indicate delete rather than detach for the resource groups'
            ),
            Option(
              name: '--delete-resources',
              description: 'Flag to indicate delete rather than detach for the resources'
            ),
            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export the template used to create the deployment stack',
          options: [

            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
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
          description: 'List all deployment stacks in subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'Get specified deployment stack from subscription scope',
          options: [

            Option(
              name: '--id',
              description: 'The deployment stack resource id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment stack name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
