// Auto-generated from TypeScript source: blueprint.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `blueprint` CLI
final FigSpec blueprintSpec = FigSpec(
  name: 'blueprint',
  description: 'Commands to manage blueprint',
  subcommands: [

    Subcommand(
      name: 'artifact',
      description: 'Commands to manage blueprint artifact',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a blueprint artifact',
          options: [

            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the blueprint artifact',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
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
          description: 'List artifacts for a given blueprint definition',
          options: [

            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--max-items',
              description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
              args: [
                Arg(
                name: 'max-item'
              )
              ]
            ),
            Option(
              name: '--next-token',
              description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
              args: [
                Arg(
                name: 'next-toke'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a blueprint artifact',
          options: [

            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the blueprint artifact',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'policy',
          description: 'Commands to manage blueprint policy assignment artifact',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create blueprint policy artifact',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--blueprint-name',
                  description: 'Name of the blueprint definition',
                  args: [
                    Arg(
                    name: 'blueprint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--policy-definition-id',
                  description: 'The full policy definition id',
                  args: [
                    Arg(
                    name: 'policy-definition-i'
                  )
                  ]
                ),
                Option(
                  name: '--depends-on',
                  description: 'Artifacts which need to be deployed before the specified artifact',
                  args: [
                    Arg(
                    name: 'depends-o'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'DisplayName of this artifact',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Use management group for the scope of the blueprint',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--parameters', '-p'],
                  description: 'Parameters for policy assignment artifact. It can be a JSON string or JSON file path',
                  args: [
                    Arg(
                    name: 'parameter'
                  )
                  ]
                ),
                Option(
                  name: '--resource-group-art',
                  description: 'Name of the resource group artifact to which the policy will be assigned',
                  args: [
                    Arg(
                    name: 'resource-group-ar'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update blueprint policy artifact',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--blueprint-name',
                  description: 'Name of the blueprint definition',
                  args: [
                    Arg(
                    name: 'blueprint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--depends-on',
                  description: 'Artifacts which need to be deployed before the specified artifact. Use \'--depends-on\' with no values to remove dependencies',
                  args: [
                    Arg(
                    name: 'depends-o'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'DisplayName of this artifact',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Use management group for the scope of the blueprint',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--parameters', '-p'],
                  description: 'Parameters for policy assignment artifact. It can be a JSON string or JSON file path',
                  args: [
                    Arg(
                    name: 'parameter'
                  )
                  ]
                ),
                Option(
                  name: '--resource-group-art',
                  description: 'Name of the resource group artifact to which the policy will be assigned',
                  args: [
                    Arg(
                    name: 'resource-group-ar'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'role',
          description: 'Commands to manage blueprint role assignment artifact',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create blueprint role artifact',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--blueprint-name',
                  description: 'Name of the blueprint definition',
                  args: [
                    Arg(
                    name: 'blueprint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--principal-ids',
                  description: 'Array of user or group identities in Azure Active Directory or a reference to the corresponding parameter in blueprint definiton. The roleDefinition will apply to each identity',
                  args: [
                    Arg(
                    name: 'principal-id'
                  )
                  ]
                ),
                Option(
                  name: '--role-definition-id',
                  description: 'The full role definition id. Only built-in roles are supported',
                  args: [
                    Arg(
                    name: 'role-definition-i'
                  )
                  ]
                ),
                Option(
                  name: '--depends-on',
                  description: 'Artifacts which need to be deployed before the specified artifact',
                  args: [
                    Arg(
                    name: 'depends-o'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'DisplayName of this artifact',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Use management group for the scope of the blueprint',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: '--resource-group-art',
                  description: 'Name of the resource group artifact to which the policy will be assigned',
                  args: [
                    Arg(
                    name: 'resource-group-ar'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update blueprint role artifact',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--blueprint-name',
                  description: 'Name of the blueprint definition',
                  args: [
                    Arg(
                    name: 'blueprint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--depends-on',
                  description: 'Artifacts which need to be deployed before the specified artifact. Use \'--depends-on\' with no values to remove dependencies',
                  args: [
                    Arg(
                    name: 'depends-o'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'DisplayName of this artifact',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Use management group for the scope of the blueprint',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: '--resource-group-art',
                  description: 'Name of the resource group artifact to which the policy will be assigned',
                  args: [
                    Arg(
                    name: 'resource-group-ar'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'template',
          description: 'Commands to manage blueprint ARM template artifact',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create blueprint arm artifact',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--blueprint-name',
                  description: 'Name of the blueprint definition',
                  args: [
                    Arg(
                    name: 'blueprint-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--template', '-t'],
                  description: 'ARM template in JSON string or path to JSON file',
                  args: [
                    Arg(
                    name: 'templat'
                  )
                  ]
                ),
                Option(
                  name: '--depends-on',
                  description: 'Artifacts which need to be deployed before the specified artifact',
                  args: [
                    Arg(
                    name: 'depends-o'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'DisplayName of this artifact',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Use management group for the scope of the blueprint',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--parameters', '-p'],
                  description: 'Parameters for ARM template artifact. It can be a JSON string or JSON file path',
                  args: [
                    Arg(
                    name: 'parameter'
                  )
                  ]
                ),
                Option(
                  name: '--resource-group-art',
                  description: 'Name of the resource group artifact to which the policy will be assigned',
                  args: [
                    Arg(
                    name: 'resource-group-ar'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update blueprint arm artifact',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--blueprint-name',
                  description: 'Name of the blueprint definition',
                  args: [
                    Arg(
                    name: 'blueprint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--depends-on',
                  description: 'Artifacts which need to be deployed before the specified artifact. Use \'--depends-on\' with no values to remove dependencies',
                  args: [
                    Arg(
                    name: 'depends-o'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'DisplayName of this artifact',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Use management group for the scope of the blueprint',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--parameters', '-p'],
                  description: 'Parameters for ARM template artifact. It can be a JSON string or JSON file path',
                  args: [
                    Arg(
                    name: 'parameter'
                  )
                  ]
                ),
                Option(
                  name: '--resource-group-art',
                  description: 'Name of the resource group artifact to which the policy will be assigned',
                  args: [
                    Arg(
                    name: 'resource-group-ar'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--template', '-t'],
                  description: 'ARM template in JSON string or path to JSON file',
                  args: [
                    Arg(
                    name: 'templat'
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
      name: 'assignment',
      description: 'Commands to manage blueprint assignment',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a blueprint assignment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the blueprint assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--blueprint-version',
              description: 'Resource ID of the published version of a blueprint definition',
              args: [
                Arg(
                name: 'blueprint-versio'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Multi-line explain this resource',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'One-liner string explain this resource',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--identity-type',
              description: 'Type of the managed identity',
              args: [
                Arg(
                name: 'identity-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'UserAssigned')
                ]
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
              name: '--locks-excluded-principals',
              description: 'List of AAD principals excluded from blueprint locks. Up to 5 principals are permitted',
              args: [
                Arg(
                name: 'locks-excluded-principal'
              )
              ]
            ),
            Option(
              name: '--locks-mode',
              description: 'Lock mode',
              args: [
                Arg(
                name: 'locks-mode',
                suggestions: [

                  FigSuggestion(name: 'AllResourcesDoNotDelete'),
                  FigSuggestion(name: 'AllResourcesReadOnly'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the target scope of the blueprint assignment. It is reserved for future use. Use --subscription instead',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--parameters', '-p'],
              description: 'Blueprint assignment parameter values. It can be a JSON string or JSON file path',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--resource-group-value',
              description: 'Key=Value pairs for a resource group. Keys include \'artifact_name\'(required), \'name\', \'location\'',
              args: [
                Arg(
                name: 'resource-group-valu'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the target scope of the blueprint assignment. Default susbcription will be used if option not specified',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--user-assigned-identity',
              description: 'The user-assigned managed identity associated with the resource',
              args: [
                Arg(
                name: 'user-assigned-identit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a blueprint assignment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the blueprint assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--delete-behavior',
              description: 'When deleteBehavior=all, the resources that were created by the blueprint assignment will be deleted',
              args: [
                Arg(
                name: 'delete-behavior',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
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
          description: 'List blueprint assignments within a subscription',
          options: [

            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--max-items',
              description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
              args: [
                Arg(
                name: 'max-item'
              )
              ]
            ),
            Option(
              name: '--next-token',
              description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
              args: [
                Arg(
                name: 'next-toke'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a blueprint assignment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the blueprint assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a blueprint assignment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the blueprint assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--blueprint-version',
              description: 'Resource ID of the published version of a blueprint definition',
              args: [
                Arg(
                name: 'blueprint-versio'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Multi-line explain this resource',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'One-liner string explain this resource',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--identity-type',
              description: 'Type of the managed identity',
              args: [
                Arg(
                name: 'identity-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'UserAssigned')
                ]
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
              name: '--locks-excluded-principals',
              description: 'List of AAD principals excluded from blueprint locks. Up to 5 principals are permitted',
              args: [
                Arg(
                name: 'locks-excluded-principal'
              )
              ]
            ),
            Option(
              name: '--locks-mode',
              description: 'Lock mode',
              args: [
                Arg(
                name: 'locks-mode',
                suggestions: [

                  FigSuggestion(name: 'AllResourcesDoNotDelete'),
                  FigSuggestion(name: 'AllResourcesReadOnly'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the target scope of the blueprint assignment. It is reserved for future use. Use --subscription instead',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--parameters', '-p'],
              description: 'Blueprint assignment parameter values. It can be a JSON string or JSON file path',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--resource-group-value',
              description: 'Key=Value pairs for a resource group. Keys include \'artifact_name\'(required), \'name\', \'location\'',
              args: [
                Arg(
                name: 'resource-group-valu'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the target scope of the blueprint assignment. Default susbcription will be used if option not specified',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--user-assigned-identity',
              description: 'The user-assigned managed identity associated with the resource',
              args: [
                Arg(
                name: 'user-assigned-identit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the Blueprint Assignment is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the blueprint assignment',
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
              name: ['--management-group', '-m'],
              description: 'Use management group for the target scope of the blueprint assignment. It is reserved for future use. Use --subscription instead',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the target scope of the blueprint assignment. Default susbcription will be used if option not specified',
              args: [
                Arg(
                name: 'subscriptio'
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
          name: 'who',
          description: 'Get Blueprint Servie Principal Name objectId',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the blueprint assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a blueprint definition',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the blueprint definition',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--target-scope',
          description: 'The scope where this blueprint definition can be assigned',
          args: [
            Arg(
            name: 'target-scope',
            suggestions: [

              FigSuggestion(name: 'managementGroup'),
              FigSuggestion(name: 'subscription')
            ]
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Multi-line explain this resource',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'One-liner string explain this resource',
          args: [
            Arg(
            name: 'display-nam'
          )
          ]
        ),
        Option(
          name: ['--management-group', '-m'],
          description: 'Use management group for the scope of the blueprint',
          args: [
            Arg(
            name: 'management-grou'
          )
          ]
        ),
        Option(
          name: ['--parameters', '-p'],
          description: 'Parameters required by this blueprint definition. It can be a JSON string or JSON file path. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'parameter'
          )
          ]
        ),
        Option(
          name: '--resource-groups',
          description: 'Resource group placeholders defined by this blueprint definition. Expected value: json-string/@json-file. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'resource-group'
          )
          ]
        ),
        Option(
          name: ['--subscription', '-s'],
          description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a blueprint definition',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the blueprint definition',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--management-group', '-m'],
          description: 'Use management group for the scope of the blueprint',
          args: [
            Arg(
            name: 'management-grou'
          )
          ]
        ),
        Option(
          name: ['--subscription', '-s'],
          description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
          args: [
            Arg(
            name: 'subscriptio'
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
      name: 'export',
      description: 'Export a blueprint definition and artifacts to json file(s)',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the blueprint definition to export',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--output-path',
          description: 'The directory path for json definitions of the blueprint and artifacts. The blueprint definition file will be named blueprint.json. Artifacts json files will be in a subdirectory named artifacts',
          args: [
            Arg(
            name: 'output-pat'
          )
          ]
        ),
        Option(
          name: ['--management-group', '-m'],
          description: 'Use management group for the scope of the blueprint',
          args: [
            Arg(
            name: 'management-grou'
          )
          ]
        ),
        Option(
          name: ['--subscription', '-s'],
          description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Skip user confirmation. When set, if directory does not exist, it will be created. If the directory exists and has contents, they will be overwritten. If not set, user will be prompted for permission to proceed'
        )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Import a blueprint definition and artifacts from a directoy of json files',
      options: [

        Option(
          name: '--input-path',
          description: 'The directory path for json definitions of the blueprint and artifacts. The blueprint definition file should be named blueprint.json. Artifacts json files should be in a subdirectory named artifacts',
          args: [
            Arg(
            name: 'input-pat'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the blueprint definition',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--management-group', '-m'],
          description: 'Use management group for the scope of the blueprint',
          args: [
            Arg(
            name: 'management-grou'
          )
          ]
        ),
        Option(
          name: ['--subscription', '-s'],
          description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
          args: [
            Arg(
            name: 'subscriptio'
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
      description: 'List blueprint definitions',
      options: [

        Option(
          name: ['--management-group', '-m'],
          description: 'Use management group for the scope of the blueprint',
          args: [
            Arg(
            name: 'management-grou'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
          args: [
            Arg(
            name: 'max-item'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
          args: [
            Arg(
            name: 'next-toke'
          )
          ]
        ),
        Option(
          name: ['--subscription', '-s'],
          description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'publish',
      description: 'Publish a new version of the blueprint definition with the latest artifacts. Published blueprint definitions are immutable',
      options: [

        Option(
          name: '--blueprint-name',
          description: 'Name of the blueprint definition',
          args: [
            Arg(
            name: 'blueprint-nam'
          )
          ]
        ),
        Option(
          name: '--version',
          description: 'Version of the published blueprint definition',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--change-notes',
          description: 'Version-specific change notes',
          args: [
            Arg(
            name: 'change-note'
          )
          ]
        ),
        Option(
          name: ['--management-group', '-m'],
          description: 'Use management group for the scope of the blueprint',
          args: [
            Arg(
            name: 'management-grou'
          )
          ]
        ),
        Option(
          name: ['--subscription', '-s'],
          description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get a blueprint definition',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the blueprint definition',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--management-group', '-m'],
          description: 'Use management group for the scope of the blueprint',
          args: [
            Arg(
            name: 'management-grou'
          )
          ]
        ),
        Option(
          name: ['--subscription', '-s'],
          description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a blueprint definition',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the blueprint definition',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--add',
          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
          args: [
            Arg(
            name: 'ad'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Multi-line explain this resource',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'One-liner string explain this resource',
          args: [
            Arg(
            name: 'display-nam'
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
          args: [
            Arg(
            name: 'force-string',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
            ]
          )
          ]
        ),
        Option(
          name: ['--management-group', '-m'],
          description: 'Use management group for the scope of the blueprint',
          args: [
            Arg(
            name: 'management-grou'
          )
          ]
        ),
        Option(
          name: ['--parameters', '-p'],
          description: 'Parameters required by this blueprint definition. It can be a JSON string or JSON file path. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'parameter'
          )
          ]
        ),
        Option(
          name: '--remove',
          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
          args: [
            Arg(
            name: 'remov'
          )
          ]
        ),
        Option(
          name: '--resource-groups',
          description: 'Resource group placeholders defined by this blueprint definition. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'resource-group'
          )
          ]
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
          name: ['--subscription', '-s'],
          description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: '--target-scope',
          description: 'The scope where this blueprint definition can be assigned',
          args: [
            Arg(
            name: 'target-scope',
            suggestions: [

              FigSuggestion(name: 'managementGroup'),
              FigSuggestion(name: 'subscription')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'resource-group',
      description: 'Commands to manage blueprint resource group artifact',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a resource group artifact to the blueprint',
          options: [

            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: '--artifact-name',
              description: 'A unique name of this resource group artifact',
              args: [
                Arg(
                name: 'artifact-nam'
              )
              ]
            ),
            Option(
              name: '--depends-on',
              description: 'Artifacts which need to be deployed before the specified artifact',
              args: [
                Arg(
                name: 'depends-o'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the blueprint artifact',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of this resource group artifact',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--rg-location',
              description: 'Location of this resource group. Leave empty if the resource group location will be specified during the blueprint assignment',
              args: [
                Arg(
                name: 'rg-locatio'
              )
              ]
            ),
            Option(
              name: '--rg-name',
              description: 'Name of this resource group. Leave empty if the resource group name will be specified during the blueprint assignment',
              args: [
                Arg(
                name: 'rg-nam'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Tags to be assigned to this resource group',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List blueprint resource group artifact',
          options: [

            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a blueprint resource group artifact',
          options: [

            Option(
              name: '--artifact-name',
              description: 'A unique name of this resource group artifact',
              args: [
                Arg(
                name: 'artifact-nam'
              )
              ]
            ),
            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
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
          name: 'show',
          description: 'Show blueprint resource group artifact',
          options: [

            Option(
              name: '--artifact-name',
              description: 'A unique name of this resource group artifact',
              args: [
                Arg(
                name: 'artifact-nam'
              )
              ]
            ),
            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update blueprint resource group artifact',
          options: [

            Option(
              name: '--artifact-name',
              description: 'A unique name of this resource group artifact',
              args: [
                Arg(
                name: 'artifact-nam'
              )
              ]
            ),
            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: '--depends-on',
              description: 'Artifacts which need to be deployed before the specified artifact. Use \'--depends-on\' with no values to remove dependencies',
              args: [
                Arg(
                name: 'depends-o'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the blueprint artifact',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of this resource group artifact',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--rg-location',
              description: 'Location of this resource group. Leave empty if the resource group location will be specified during the blueprint assignment',
              args: [
                Arg(
                name: 'rg-locatio'
              )
              ]
            ),
            Option(
              name: '--rg-name',
              description: 'Name of this resource group. Leave empty if the resource group name will be specified during the blueprint assignment',
              args: [
                Arg(
                name: 'rg-nam'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Tags to be assigned to this resource group',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Commands to manage published blueprint versions',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a published version of a blueprint',
          options: [

            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of the published blueprint definition',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
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
          description: 'List published versions of given blueprint definition',
          options: [

            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--max-items',
              description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
              args: [
                Arg(
                name: 'max-item'
              )
              ]
            ),
            Option(
              name: '--next-token',
              description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
              args: [
                Arg(
                name: 'next-toke'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a published version of a blueprint',
          options: [

            Option(
              name: '--blueprint-name',
              description: 'Name of the blueprint definition',
              args: [
                Arg(
                name: 'blueprint-nam'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of the published blueprint definition',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Use management group for the scope of the blueprint',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: ['--subscription', '-s'],
              description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'artifact',
          description: 'Commands to manage published blueprint artifacts',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List artifacts for a version of a published blueprint',
              options: [

                Option(
                  name: '--blueprint-name',
                  description: 'Name of the blueprint definition',
                  args: [
                    Arg(
                    name: 'blueprint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: 'Version of the published blueprint definition',
                  args: [
                    Arg(
                    name: 'versio'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Use management group for the scope of the blueprint',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: '--max-items',
                  description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                  args: [
                    Arg(
                    name: 'max-item'
                  )
                  ]
                ),
                Option(
                  name: '--next-token',
                  description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                  args: [
                    Arg(
                    name: 'next-toke'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show an artifact for a published blueprint',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the blueprint artifact',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--blueprint-name',
                  description: 'Name of the blueprint definition',
                  args: [
                    Arg(
                    name: 'blueprint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: 'Version of the published blueprint definition',
                  args: [
                    Arg(
                    name: 'versio'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Use management group for the scope of the blueprint',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Use subscription for the scope of the blueprint. If --management-group is not specified, --subscription value or the default subscription will be used as the scope',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    )
  ]
);
