// Auto-generated from TypeScript source: quota.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `quota` CLI
final FigSpec quotaSpec = FigSpec(
  name: 'quota',
  description: 'Manage Azure Quota Extension API',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create the quota limit for the specified resource with the requested value',
      options: [

        Option(
          name: '--resource-name',
          description: 'The resource name for a given resource provider',
          args: [
            Arg(
            name: 'resource-nam'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'The target Azure resource URI',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        ),
        Option(
          name: '--limit-object',
          description: 'The resource quota limit value',
          args: [
            Arg(
            name: 'limit-objec'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--properties',
          description: 'The additional properties for the specific resource provider',
          args: [
            Arg(
            name: 'propertie'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'The resource type name',
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
      description: 'Get a list of current quota limits of all resources for the specified scope. The response from this GET operation can be leveraged to submit requests to update a quota',
      options: [

        Option(
          name: '--scope',
          description: 'The target Azure resource URI',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the quota limit of a resource. The response can be used to determine the remaining quota to calculate a new quota limit that can be submitted with a PUT request',
      options: [

        Option(
          name: '--resource-name',
          description: 'The resource name for a given resource provider',
          args: [
            Arg(
            name: 'resource-nam'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'The target Azure resource URI',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update the quota limit for a specific resource to the specified value',
      options: [

        Option(
          name: '--resource-name',
          description: 'The resource name for a given resource provider',
          args: [
            Arg(
            name: 'resource-nam'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'The target Azure resource URI',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        ),
        Option(
          name: '--limit-object',
          description: 'The resource quota limit value',
          args: [
            Arg(
            name: 'limit-objec'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--properties',
          description: 'The additional properties for the specific resource provider',
          args: [
            Arg(
            name: 'propertie'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'Resource type name',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Place the CLI in a waiting state until a condition of the quota is met',
      options: [

        Option(
          name: '--resource-name',
          description: 'The resource name for a given resource provider',
          args: [
            Arg(
            name: 'resource-nam'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'The target Azure resource URI',
          args: [
            Arg(
            name: 'scop'
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
      description: 'Manage quota operation with quota',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all the operations supported by the Microsoft.Quota resource provider'
        )
      ]
    ),
    Subcommand(
      name: 'request',
      description: 'Manage quota request with quota',
      subcommands: [

        Subcommand(
          name: 'status',
          description: 'Manage quota request status with quota',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'For the specified scope, get the current quota requests for a one year period ending at the time is made. Use the oData filter to select quota requests',
              options: [

                Option(
                  name: '--scope',
                  description: 'The target Azure resource URI',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'The filter that is applied to packet capture request. Multiple filters can be applied',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--skip-token',
                  description: 'SkipToken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skipToken parameter that specifies a starting point to use for subsequent calls',
                  args: [
                    Arg(
                    name: 'skip-toke'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Number of records to return',
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
              description: 'Get the quota request details and status by quota request ID for the resources of the resource provider at a specific location. The quota request ID id is returned in the response of the PUT operation',
              options: [

                Option(
                  name: '--name',
                  description: 'Quota request ID',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'The target Azure resource URI',
                  args: [
                    Arg(
                    name: 'scop'
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
      name: 'usage',
      description: 'Manage usage with quota',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get a list of current usage for all resources for the scope specified',
          options: [

            Option(
              name: '--scope',
              description: 'The target Azure resource URI',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the current usage of a resource',
          options: [

            Option(
              name: '--resource-name',
              description: 'The resource name for a given resource provider',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The target Azure resource URI',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
