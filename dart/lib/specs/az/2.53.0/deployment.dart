// Auto-generated from TypeScript source: deployment.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `deployment` CLI
final FigSpec deploymentSpec = FigSpec(
  name: 'deployment',
  description: 'Manage Azure Resource Manager template deployment at subscription scope',
  subcommands: [

    Subcommand(
      name: 'cancel',
      description: 'Cancel a deployment at subscription scope',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The deployment name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Start a deployment at subscription scope',
      options: [

        Option(
          name: ['--location', '-l'],
          description: 'The location to store the deployment metadata',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--confirm-with-what-if', '-c'],
          description: 'Instruct the command to run deployment What-If before executing the deployment. It then prompts you to acknowledge resource changes before it continues',
          args: [
            Arg(
            name: 'confirm-with-what-i'
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
          name: ['--name', '-n'],
          description: 'The deployment name',
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
          name: '--proceed-if-no-change',
          description: 'Instruct the command to execute the deployment if the What-If result contains no resource changes. Applicable when --confirm-with-what-if is set',
          args: [
            Arg(
            name: 'proceed-if-no-chang'
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
          name: ['--template-file', '-f'],
          description: 'The path to the template file or Bicep file',
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
          description: 'The URI to the template file',
          args: [
            Arg(
            name: 'template-ur'
          )
          ]
        ),
        Option(
          name: ['--what-if', '-w'],
          description: 'Instruct the command to run deployment What-If',
          args: [
            Arg(
            name: 'what-i'
          )
          ]
        ),
        Option(
          name: ['--what-if-exclude-change-types', '-x'],
          description: 'Space-separated list of resource change types to be excluded from What-If results. Applicable when --confirm-with-what-if is set',
          args: [
            Arg(
            name: 'what-if-exclude-change-types',
            suggestions: [

              FigSuggestion(name: 'Create'),
              FigSuggestion(name: 'Delete'),
              FigSuggestion(name: 'Deploy'),
              FigSuggestion(name: 'Ignore'),
              FigSuggestion(name: 'Modify'),
              FigSuggestion(name: 'NoChange'),
              FigSuggestion(name: 'Unsupported')
            ]
          )
          ]
        ),
        Option(
          name: ['--what-if-result-format', '-r'],
          description: 'The format of What-If results. Applicable when --confirm-with-what-if is set',
          args: [
            Arg(
            name: 'what-if-result-format',
            suggestions: [

              FigSuggestion(name: 'FullResourcePayloads'),
              FigSuggestion(name: 'ResourceIdOnly')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a deployment at subscription scope',
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
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List deployments at subscription scope',
      options: [

        Option(
          name: '--filter',
          description: 'Filter expression using OData notation. You can use --filter "provisioningState eq \'{state}\'" to filter provisioningState. To get more information, please visit https://docs.microsoft.com/rest/api/resources/deployments/listatsubscriptionscope#uri-parameters',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show a deployment at subscription scope',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The deployment name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'validate',
      description: 'Validate whether a template is valid at subscription scope',
      options: [

        Option(
          name: ['--location', '-l'],
          description: 'The location to store the deployment metadata',
          args: [
            Arg(
            name: 'locatio'
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
          name: ['--name', '-n'],
          description: 'The deployment name',
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
          name: ['--parameters', '-p'],
          description: 'Supply deployment parameter values',
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
          name: ['--template-file', '-f'],
          description: 'The path to the template file or Bicep file',
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
          description: 'The URI to the template file',
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
      name: 'group',
      description: 'Manage Azure Resource Manager template deployment at resource group',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a deployment at resource group',
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
          description: 'Start a deployment at resource group',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group to create deployment at',
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
              name: ['--confirm-with-what-if', '-c'],
              description: 'Instruct the command to run deployment What-If before executing the deployment. It then prompts you to acknowledge resource changes before it continues',
              args: [
                Arg(
                name: 'confirm-with-what-i'
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
              description: 'The deployment mode',
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
              description: 'The deployment name',
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
              name: '--proceed-if-no-change',
              description: 'Instruct the command to execute the deployment if the What-If result contains no resource changes. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'proceed-if-no-chang'
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
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            ),
            Option(
              name: ['--what-if', '-w'],
              description: 'Instruct the command to run deployment What-If',
              args: [
                Arg(
                name: 'what-i'
              )
              ]
            ),
            Option(
              name: ['--what-if-exclude-change-types', '-x'],
              description: 'Space-separated list of resource change types to be excluded from What-If results. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'what-if-exclude-change-types',
                suggestions: [

                  FigSuggestion(name: 'Create'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Deploy'),
                  FigSuggestion(name: 'Ignore'),
                  FigSuggestion(name: 'Modify'),
                  FigSuggestion(name: 'NoChange'),
                  FigSuggestion(name: 'Unsupported')
                ]
              )
              ]
            ),
            Option(
              name: ['--what-if-result-format', '-r'],
              description: 'The format of What-If results. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'what-if-result-format',
                suggestions: [

                  FigSuggestion(name: 'FullResourcePayloads'),
                  FigSuggestion(name: 'ResourceIdOnly')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a deployment at resource group',
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
          description: 'List deployments at resource group',
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
              description: 'Filter expression using OData notation. You can use --filter "provisioningState eq \'{state}\'" to filter provisioningState. To get more information, please visit https://docs.microsoft.com/rest/api/resources/deployments/listatsubscriptionscope#uri-parameters',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a deployment at resource group',
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
          description: 'Validate whether a template is valid at resource group',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group to create deployment at',
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
              description: 'The deployment mode',
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
              description: 'The deployment name',
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
              name: ['--parameters', '-p'],
              description: 'Supply deployment parameter values',
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
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
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
          name: 'what-if',
          description: 'Execute a deployment What-If operation at resource group scope',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group to execute deployment What-If operation at',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: ['--exclude-change-types', '-x'],
              description: 'Space-separated list of resource change types to be excluded from What-If results',
              args: [
                Arg(
                name: 'exclude-change-types',
                suggestions: [

                  FigSuggestion(name: 'Create'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Deploy'),
                  FigSuggestion(name: 'Ignore'),
                  FigSuggestion(name: 'Modify'),
                  FigSuggestion(name: 'NoChange'),
                  FigSuggestion(name: 'Unsupported')
                ]
              )
              ]
            ),
            Option(
              name: '--mode',
              description: 'The deployment mode',
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
              description: 'The deployment name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-pretty-print',
              description: 'Disable pretty-print for What-If results. When set, the output format type will be used',
              args: [
                Arg(
                name: 'no-pretty-prin'
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
              name: ['--query-string', '-q'],
              description: 'The query string (a SAS token) to be used with the template-uri in the case of linked templates',
              args: [
                Arg(
                name: 'query-strin'
              )
              ]
            ),
            Option(
              name: ['--result-format', '-r'],
              description: 'The format of What-If results',
              args: [
                Arg(
                name: 'result-format',
                suggestions: [

                  FigSuggestion(name: 'FullResourcePayloads'),
                  FigSuggestion(name: 'ResourceIdOnly')
                ]
              )
              ]
            ),
            Option(
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'mg',
      description: 'Manage Azure Resource Manager template deployment at management group',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a deployment at management group',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Start a deployment at management group',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment metadata',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id to create deployment at',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--confirm-with-what-if', '-c'],
              description: 'Instruct the command to run deployment What-If before executing the deployment. It then prompts you to acknowledge resource changes before it continues',
              args: [
                Arg(
                name: 'confirm-with-what-i'
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
              description: 'The mode that is used to deploy resources. This value can be either Incremental or Complete. In Incremental mode, resources are deployed without deleting existing resources that are not included in the template. In Complete mode, resources are deployed and existing resources in the resource group that are not included in the template are deleted. Be careful when using Complete mode as you may unintentionally delete resources',
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
              description: 'The deployment name',
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
              name: '--proceed-if-no-change',
              description: 'Instruct the command to execute the deployment if the What-If result contains no resource changes. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'proceed-if-no-chang'
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
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            ),
            Option(
              name: ['--what-if', '-w'],
              description: 'Instruct the command to run deployment What-If',
              args: [
                Arg(
                name: 'what-i'
              )
              ]
            ),
            Option(
              name: ['--what-if-exclude-change-types', '-x'],
              description: 'Space-separated list of resource change types to be excluded from What-If results. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'what-if-exclude-change-types',
                suggestions: [

                  FigSuggestion(name: 'Create'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Deploy'),
                  FigSuggestion(name: 'Ignore'),
                  FigSuggestion(name: 'Modify'),
                  FigSuggestion(name: 'NoChange'),
                  FigSuggestion(name: 'Unsupported')
                ]
              )
              ]
            ),
            Option(
              name: ['--what-if-result-format', '-r'],
              description: 'The format of What-If results. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'what-if-result-format',
                suggestions: [

                  FigSuggestion(name: 'FullResourcePayloads'),
                  FigSuggestion(name: 'ResourceIdOnly')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a deployment at management group',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
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
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
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
          description: 'List deployments at management group',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filter expression using OData notation. You can use --filter "provisioningState eq \'{state}\'" to filter provisioningState. To get more information, please visit https://docs.microsoft.com/rest/api/resources/deployments/listatsubscriptionscope#uri-parameters',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a deployment at management group',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate whether a template is valid at management group',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment metadata',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id to create deployment at',
              args: [
                Arg(
                name: 'management-group-i'
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
              name: ['--name', '-n'],
              description: 'The deployment name',
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
              name: ['--parameters', '-p'],
              description: 'Supply deployment parameter values',
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
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
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
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
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
          name: 'what-if',
          description: 'Execute a deployment What-If operation at management group scope',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment metadata',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id to create deployment at',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--exclude-change-types', '-x'],
              description: 'Space-separated list of resource change types to be excluded from What-If results',
              args: [
                Arg(
                name: 'exclude-change-types',
                suggestions: [

                  FigSuggestion(name: 'Create'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Deploy'),
                  FigSuggestion(name: 'Ignore'),
                  FigSuggestion(name: 'Modify'),
                  FigSuggestion(name: 'NoChange'),
                  FigSuggestion(name: 'Unsupported')
                ]
              )
              ]
            ),
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
              name: '--no-pretty-print',
              description: 'Disable pretty-print for What-If results. When set, the output format type will be used',
              args: [
                Arg(
                name: 'no-pretty-prin'
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
              name: ['--query-string', '-q'],
              description: 'The query string (a SAS token) to be used with the template-uri in the case of linked templates',
              args: [
                Arg(
                name: 'query-strin'
              )
              ]
            ),
            Option(
              name: ['--result-format', '-r'],
              description: 'The format of What-If results',
              args: [
                Arg(
                name: 'result-format',
                suggestions: [

                  FigSuggestion(name: 'FullResourcePayloads'),
                  FigSuggestion(name: 'ResourceIdOnly')
                ]
              )
              ]
            ),
            Option(
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'operation',
      description: 'Manage deployment operations at subscription scope',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List deployment operations at subscription scope',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a deployment operation at subscription scope',
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
            )
          ]
        ),
        Subcommand(
          name: 'group',
          description: 'Manage deployment operations at resource group',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List deployment operations at resource group',
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
              name: 'show',
              description: 'Show a deployment operation at resource group',
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
        ),
        Subcommand(
          name: 'mg',
          description: 'Manage deployment operations at management group',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List deployment operations at management group',
              options: [

                Option(
                  name: ['--management-group-id', '-m'],
                  description: 'The management group id',
                  args: [
                    Arg(
                    name: 'management-group-i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The deployment name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a deployment operation at management group',
              options: [

                Option(
                  name: ['--management-group-id', '-m'],
                  description: 'The management group id',
                  args: [
                    Arg(
                    name: 'management-group-i'
                  )
                  ]
                ),
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sub',
          description: 'Manage deployment operations at subscription scope',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List deployment operations at subscription scope',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The deployment name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a deployment operation at subscription scope',
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'tenant',
          description: 'Manage deployment operations at tenant scope',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List deployment operations at tenant scope',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The deployment name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a deployment operation at tenant scope',
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
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sub',
      description: 'Manage Azure Resource Manager template deployment at subscription scope',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a deployment at subscription scope',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Start a deployment at subscription scope',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment metadata',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--confirm-with-what-if', '-c'],
              description: 'Instruct the command to run deployment What-If before executing the deployment. It then prompts you to acknowledge resource changes before it continues',
              args: [
                Arg(
                name: 'confirm-with-what-i'
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
              name: ['--name', '-n'],
              description: 'The deployment name',
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
              name: '--proceed-if-no-change',
              description: 'Instruct the command to execute the deployment if the What-If result contains no resource changes. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'proceed-if-no-chang'
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
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            ),
            Option(
              name: ['--what-if', '-w'],
              description: 'Instruct the command to run deployment What-If',
              args: [
                Arg(
                name: 'what-i'
              )
              ]
            ),
            Option(
              name: ['--what-if-exclude-change-types', '-x'],
              description: 'Space-separated list of resource change types to be excluded from What-If results. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'what-if-exclude-change-types',
                suggestions: [

                  FigSuggestion(name: 'Create'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Deploy'),
                  FigSuggestion(name: 'Ignore'),
                  FigSuggestion(name: 'Modify'),
                  FigSuggestion(name: 'NoChange'),
                  FigSuggestion(name: 'Unsupported')
                ]
              )
              ]
            ),
            Option(
              name: ['--what-if-result-format', '-r'],
              description: 'The format of What-If results. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'what-if-result-format',
                suggestions: [

                  FigSuggestion(name: 'FullResourcePayloads'),
                  FigSuggestion(name: 'ResourceIdOnly')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a deployment at subscription scope',
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List deployments at subscription scope',
          options: [

            Option(
              name: '--filter',
              description: 'Filter expression using OData notation. You can use --filter "provisioningState eq \'{state}\'" to filter provisioningState. To get more information, please visit https://docs.microsoft.com/rest/api/resources/deployments/listatsubscriptionscope#uri-parameters',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a deployment at subscription scope',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate whether a template is valid at subscription scope',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment metadata',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--name', '-n'],
              description: 'The deployment name',
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
              name: ['--parameters', '-p'],
              description: 'Supply deployment parameter values',
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
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
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
          name: 'what-if',
          description: 'Execute a deployment What-If operation at subscription scope',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment What-If operation metadata',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--exclude-change-types', '-x'],
              description: 'Space-separated list of resource change types to be excluded from What-If results',
              args: [
                Arg(
                name: 'exclude-change-types',
                suggestions: [

                  FigSuggestion(name: 'Create'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Deploy'),
                  FigSuggestion(name: 'Ignore'),
                  FigSuggestion(name: 'Modify'),
                  FigSuggestion(name: 'NoChange'),
                  FigSuggestion(name: 'Unsupported')
                ]
              )
              ]
            ),
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
              name: '--no-pretty-print',
              description: 'Disable pretty-print for What-If results. When set, the output format type will be used',
              args: [
                Arg(
                name: 'no-pretty-prin'
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
              name: ['--query-string', '-q'],
              description: 'The query string (a SAS token) to be used with the template-uri in the case of linked templates',
              args: [
                Arg(
                name: 'query-strin'
              )
              ]
            ),
            Option(
              name: ['--result-format', '-r'],
              description: 'The format of What-If results',
              args: [
                Arg(
                name: 'result-format',
                suggestions: [

                  FigSuggestion(name: 'FullResourcePayloads'),
                  FigSuggestion(name: 'ResourceIdOnly')
                ]
              )
              ]
            ),
            Option(
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tenant',
      description: 'Manage Azure Resource Manager template deployment at tenant scope',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a deployment at tenant scope',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Start a deployment at tenant scope',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment metadata',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--confirm-with-what-if', '-c'],
              description: 'Instruct the command to run deployment What-If before executing the deployment. It then prompts you to acknowledge resource changes before it continues',
              args: [
                Arg(
                name: 'confirm-with-what-i'
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
              name: ['--name', '-n'],
              description: 'The deployment name',
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
              name: '--proceed-if-no-change',
              description: 'Instruct the command to execute the deployment if the What-If result contains no resource changes. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'proceed-if-no-chang'
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
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            ),
            Option(
              name: ['--what-if', '-w'],
              description: 'Instruct the command to run deployment What-If',
              args: [
                Arg(
                name: 'what-i'
              )
              ]
            ),
            Option(
              name: ['--what-if-exclude-change-types', '-x'],
              description: 'Space-separated list of resource change types to be excluded from What-If results. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'what-if-exclude-change-types',
                suggestions: [

                  FigSuggestion(name: 'Create'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Deploy'),
                  FigSuggestion(name: 'Ignore'),
                  FigSuggestion(name: 'Modify'),
                  FigSuggestion(name: 'NoChange'),
                  FigSuggestion(name: 'Unsupported')
                ]
              )
              ]
            ),
            Option(
              name: ['--what-if-result-format', '-r'],
              description: 'The format of What-If results. Applicable when --confirm-with-what-if is set',
              args: [
                Arg(
                name: 'what-if-result-format',
                suggestions: [

                  FigSuggestion(name: 'FullResourcePayloads'),
                  FigSuggestion(name: 'ResourceIdOnly')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a deployment at tenant scope',
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List deployments at tenant scope',
          options: [

            Option(
              name: '--filter',
              description: 'Filter expression using OData notation. You can use --filter "provisioningState eq \'{state}\'" to filter provisioningState. To get more information, please visit https://docs.microsoft.com/rest/api/resources/deployments/listatsubscriptionscope#uri-parameters',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a deployment at tenant scope',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The deployment name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate whether a template is valid at tenant scope',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment metadata',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--name', '-n'],
              description: 'The deployment name',
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
              name: ['--parameters', '-p'],
              description: 'Supply deployment parameter values',
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
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
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
          name: 'what-if',
          description: 'Execute a deployment What-If operation at tenant scope',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location to store the deployment What-If operation metadata',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--exclude-change-types', '-x'],
              description: 'Space-separated list of resource change types to be excluded from What-If results',
              args: [
                Arg(
                name: 'exclude-change-types',
                suggestions: [

                  FigSuggestion(name: 'Create'),
                  FigSuggestion(name: 'Delete'),
                  FigSuggestion(name: 'Deploy'),
                  FigSuggestion(name: 'Ignore'),
                  FigSuggestion(name: 'Modify'),
                  FigSuggestion(name: 'NoChange'),
                  FigSuggestion(name: 'Unsupported')
                ]
              )
              ]
            ),
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
              name: '--no-pretty-print',
              description: 'Disable pretty-print for What-If results. When set, the output format type will be used',
              args: [
                Arg(
                name: 'no-pretty-prin'
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
              name: ['--query-string', '-q'],
              description: 'The query string (a SAS token) to be used with the template-uri in the case of linked templates',
              args: [
                Arg(
                name: 'query-strin'
              )
              ]
            ),
            Option(
              name: ['--result-format', '-r'],
              description: 'The format of What-If results',
              args: [
                Arg(
                name: 'result-format',
                suggestions: [

                  FigSuggestion(name: 'FullResourcePayloads'),
                  FigSuggestion(name: 'ResourceIdOnly')
                ]
              )
              ]
            ),
            Option(
              name: ['--template-file', '-f'],
              description: 'The path to the template file or Bicep file',
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
              description: 'The URI to the template file',
              args: [
                Arg(
                name: 'template-ur'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
