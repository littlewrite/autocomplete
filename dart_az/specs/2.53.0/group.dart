// Auto-generated from TypeScript source: group.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `group` CLI
final FigSpec groupSpec = FigSpec(
  name: 'group',
  description: 'Manage resource groups and template deployments',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a new resource group',
      options: [

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
          name: ['--resource-group', '--name', '-g', '-n'],
          description: 'Name of the new resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--managed-by',
          description: 'The ID of the resource that manages this resource group',
          args: [
            Arg(
            name: 'managed-b'
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
      description: 'Delete a resource group',
      options: [

        Option(
          name: ['--resource-group', '--name', '-g', '-n'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--force-deletion-types', '-f'],
          description: 'The resource types you want to force delete',
          args: [
            Arg(
            name: 'force-deletion-types',
            suggestions: [

              FigSuggestion(name: 'Microsoft.Compute/virtualMachineScaleSets'),
              FigSuggestion(name: 'Microsoft.Compute/virtualMachines')
            ]
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
      name: 'exists',
      description: 'Check if a resource group exists',
      options: [

        Option(
          name: ['--resource-group', '--name', '-g', '-n'],
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
      name: 'export',
      description: 'Captures a resource group as a template',
      options: [

        Option(
          name: ['--resource-group', '--name', '-g', '-n'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--include-comments',
          description: 'Export template with comments'
        ),
        Option(
          name: '--include-parameter-default-value',
          description: 'Export template parameter with default value'
        ),
        Option(
          name: '--resource-ids',
          description: 'Space-separated resource ids to filter the export by. To export all resources, do not specify this argument or supply "*"',
          args: [
            Arg(
            name: 'resource-id'
          )
          ]
        ),
        Option(
          name: '--skip-all-params',
          description: 'Export template parameter and skip all parameterization'
        ),
        Option(
          name: '--skip-resource-name-params',
          description: 'Export template and skip resource name parameterization'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List resource groups',
      options: [

        Option(
          name: '--tag',
          description: 'A single tag in \'key[=value]\' format. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'ta'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Gets a resource group',
      options: [

        Option(
          name: ['--resource-group', '--name', '-g', '-n'],
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
      description: 'Update a resource group',
      options: [

        Option(
          name: ['--resource-group', '--name', '-g', '-n'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
      description: 'Place the CLI in a waiting state until a condition of the resource group is met',
      options: [

        Option(
          name: ['--resource-group', '--name', '-g', '-n'],
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
      name: 'deployment',
      description: 'Manage Azure Resource Manager deployments',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancels a currently running template deployment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
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
          name: 'create',
          description: 'Start a deployment',
          options: [

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
              name: '--aux-subs',
              description: 'Option \'--aux-subs\' has been deprecated and will be removed in a future release. Use \'--aux-tenants\' instead. Auxiliary subscriptions which will be used during deployment across tenants',
              args: [
                Arg(
                name: 'aux-sub'
              )
              ]
            ),
            Option(
              name: '--aux-tenants',
              description: 'Auxiliary tenants which will be used during deployment across tenants',
              args: [
                Arg(
                name: 'aux-tenant'
              )
              ]
            ),
            Option(
              name: ['--handle-extended-json-format', '-j'],
              description: 'Option \'--handle-extended-json-format/-j\' has been deprecated and will be removed in a future release. Support to handle extended template content including multiline and comments in deployment',
              args: [
                Arg(
                name: 'handle-extended-json-forma'
              )
              ]
            ),
            Option(
              name: '--mode',
              description: 'Incremental (only add resources to resource group) or Complete (remove extra resources from resource group)',
              args: [
                Arg(
                name: 'mode',
                suggestions: [

                  FigSuggestion(name: 'Complete'),
                  FigSuggestion(name: 'Incremental')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment name. Default to template file base name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-prompt',
              description: 'The option to disable the prompt of missing parameters for ARM template. When the value is true, the prompt requiring users to provide missing parameter will be ignored. The default value is false'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--parameters', '-p'],
              description: 'Supply deployment parameter values',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--rollback-on-error',
              description: 'The name of a deployment to roll back to on error, or use as a flag to roll back to the last successful deployment',
              args: [
                Arg(
                name: 'rollback-on-erro'
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
              name: ['--template-uri', '-u'],
              description: 'A uri to a remote template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a deployment from the deployment history',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
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
          name: 'export',
          description: 'Export the template used for a deployment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
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
          description: 'Get all the deployments for a resource group',
          options: [

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
              name: '--filter',
              description: 'The filter to apply on the operation. For example, you can use \$filter=provisioningState eq \'{state}\'. Default value is None',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The number of results to get. If null is passed, returns all deployments. Default value is None',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a deployment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
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
          name: 'validate',
          description: 'Validate whether a template is syntactically correct',
          options: [

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
              name: ['--handle-extended-json-format', '-j'],
              description: 'Option \'--handle-extended-json-format/-j\' has been deprecated and will be removed in a future release. Support to handle extended template content including multiline and comments in deployment',
              args: [
                Arg(
                name: 'handle-extended-json-forma'
              )
              ]
            ),
            Option(
              name: '--mode',
              description: 'Incremental (only add resources to resource group) or Complete (remove extra resources from resource group)',
              args: [
                Arg(
                name: 'mode',
                suggestions: [

                  FigSuggestion(name: 'Complete'),
                  FigSuggestion(name: 'Incremental')
                ]
              )
              ]
            ),
            Option(
              name: '--no-prompt',
              description: 'The option to disable the prompt of missing parameters for ARM template. When the value is true, the prompt requiring users to provide missing parameter will be ignored. The default value is false'
            ),
            Option(
              name: ['--parameters', '-p'],
              description: 'Supply deployment parameter values',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--rollback-on-error',
              description: 'The name of a deployment to roll back to on error, or use as a flag to roll back to the last successful deployment',
              args: [
                Arg(
                name: 'rollback-on-erro'
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
              name: ['--template-uri', '-u'],
              description: 'A uri to a remote template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a deployment condition is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
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
          name: 'operation',
          description: 'Manage deployment operations',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Gets all deployments operations for a deployment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The deployment name',
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
                  name: '--top',
                  description: 'The number of results to return. Default value is None',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a deployment\'s operation',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The deployment name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--operation-ids',
                  description: 'A list of operation ids to show',
                  args: [
                    Arg(
                    name: 'operation-id'
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
    ),
    Subcommand(
      name: 'lock',
      description: 'Manage Azure resource group locks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a resource group lock',
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a resource group lock',
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
          description: 'List lock information in the resource-group',
          options: [

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
              name: '--filter-string',
              description: 'A query filter to use to restrict the results',
              args: [
                Arg(
                name: 'filter-strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of a resource group lock',
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
          description: 'Update a resource group lock',
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
              name: '--notes',
              description: 'Notes about this lock',
              args: [
                Arg(
                name: 'note'
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
