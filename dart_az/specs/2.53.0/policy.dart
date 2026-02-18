// Auto-generated from TypeScript source: policy.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `policy` CLI
final FigSpec policySpec = FigSpec(
  name: 'policy',
  description: 'Manage resource policies',
  subcommands: [

    Subcommand(
      name: 'assignment',
      description: 'Manage resource policy assignments',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a resource policy assignment',
          options: [

            Option(
              name: '--description',
              description: 'Description of the policy assignment',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of the policy assignment',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: ['--enforcement-mode', '-e'],
              description: 'Enforcement mode of the policy assignment, e.g. Default, DoNotEnforce. Please visit https://aka.ms/azure-policyAssignment-enforcement-mode for more information',
              args: [
                Arg(
                name: 'enforcement-mode',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'DoNotEnforce')
                ]
              )
              ]
            ),
            Option(
              name: '--identity-scope',
              description: 'Scope that the system assigned identity can access',
              args: [
                Arg(
                name: 'identity-scop'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The location of the policy assignment. Only required when utilizing managed identity',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Provide this flag to use system assigned identity for policy assignment. Check out help for more examples',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'UserAssigned Identity Id to be used for policy assignment. Check out help for more examples',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the new policy assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--not-scopes',
              description: 'Space-separated scopes where the policy assignment does not apply',
              args: [
                Arg(
                name: 'not-scope'
              )
              ]
            ),
            Option(
              name: ['--params', '-p'],
              description: 'JSON formatted string or a path to a file or uri with parameter values of the policy rule',
              args: [
                Arg(
                name: 'param'
              )
              ]
            ),
            Option(
              name: '--policy',
              description: 'Name or id of the policy definition. If not provided, a policy set definition parameter must be provided',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
              name: ['--policy-set-definition', '-d'],
              description: 'Name or id of the policy set definition. If not provided, a policy definition parameter must be provided',
              args: [
                Arg(
                name: 'policy-set-definitio'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Role name or id that will be assigned to the managed identity',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope to which this policy assignment applies',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a resource policy assignment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the policy assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List resource policy assignments',
          options: [

            Option(
              name: '--disable-scope-strict-match',
              description: 'Include policy assignments either inherited from parent scope or at child scope',
              args: [
                Arg(
                name: 'disable-scope-strict-matc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
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
          description: 'Show a resource policy assignment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the policy assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
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
          description: 'Update a resource policy assignment',
          options: [

            Option(
              name: '--description',
              description: 'Description of the policy assignment',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of the policy assignment',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: ['--enforcement-mode', '-e'],
              description: 'Enforcement mode of the policy assignment, e.g. Default, DoNotEnforce. Please visit https://aka.ms/azure-policyAssignment-enforcement-mode for more information',
              args: [
                Arg(
                name: 'enforcement-mode',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'DoNotEnforce')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the policy assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--not-scopes',
              description: 'Space-separated scopes where the policy assignment does not apply',
              args: [
                Arg(
                name: 'not-scope'
              )
              ]
            ),
            Option(
              name: ['--params', '-p'],
              description: 'JSON formatted string or a path to a file or uri with parameter values of the policy rule',
              args: [
                Arg(
                name: 'param'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'identity',
          description: 'Manage a policy assignment\'s managed identity',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Add a system assigned identity or a user assigned identity to a policy assignment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the policy assignment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--identity-scope',
                  description: 'Scope that the system assigned identity can access',
                  args: [
                    Arg(
                    name: 'identity-scop'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group where the policy will be applied',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'Role name or id that will be assigned to the managed identity',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Provide this flag to use system assigned identity for policy assignment. Check out help for more examples',
                  args: [
                    Arg(
                    name: 'system-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'UserAssigned Identity Id to be used for policy assignment. Check out help for more examples',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a managed identity from a policy assignment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the policy assignment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group where the policy will be applied',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
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
              description: 'Show a policy assignment\'s managed identity',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the policy assignment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group where the policy will be applied',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'non-compliance-message',
          description: 'Manage a policy assignment\'s non-compliance messages',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Add a non-compliance message to a policy assignment',
              options: [

                Option(
                  name: ['--message', '-m'],
                  description: 'Message that will be shown when a resource is denied by policy or evaluation details are inspected',
                  args: [
                    Arg(
                    name: 'messag'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the policy assignment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--policy-definition-reference-id', '-r'],
                  description: 'Policy definition reference ID within the assigned initiative (policy set) that the message applies to',
                  args: [
                    Arg(
                    name: 'policy-definition-reference-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group where the policy will be applied',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Remove one or more non-compliance messages from a policy assignment',
              options: [

                Option(
                  name: ['--message', '-m'],
                  description: 'Message that will be shown when a resource is denied by policy or evaluation details are inspected',
                  args: [
                    Arg(
                    name: 'messag'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the policy assignment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--policy-definition-reference-id', '-r'],
                  description: 'Policy definition reference ID within the assigned initiative (policy set) that the message applies to',
                  args: [
                    Arg(
                    name: 'policy-definition-reference-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group where the policy will be applied',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the non-compliance messages for a policy assignment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the policy assignment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group where the policy will be applied',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which this policy assignment subcommand applies. Defaults to current context subscription',
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
      name: 'attestation',
      description: 'Manage resource policy attestations',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a policy attestation',
          options: [

            Option(
              name: ['--attestation-name', '--name', '-n'],
              description: 'The name of the attestation',
              args: [
                Arg(
                name: 'attestation-nam'
              )
              ]
            ),
            Option(
              name: ['--policy-assignment-id', '--policy-assignment', '-a'],
              description: 'The resource ID of the policy assignment that the attestation is setting the state for',
              args: [
                Arg(
                name: 'policy-assignment-i'
              )
              ]
            ),
            Option(
              name: '--assessment-date',
              description: 'The time the evidence was assessed',
              args: [
                Arg(
                name: 'assessment-dat'
              )
              ]
            ),
            Option(
              name: '--comments',
              description: 'Comments describing why this attestation was created',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--compliance-state',
              description: 'The compliance state that should be set on the resource',
              args: [
                Arg(
                name: 'compliance-state',
                suggestions: [

                  FigSuggestion(name: 'Compliant'),
                  FigSuggestion(name: 'NonCompliant'),
                  FigSuggestion(name: 'Unknown')
                ]
              )
              ]
            ),
            Option(
              name: '--definition-reference-id',
              description: 'The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition',
              args: [
                Arg(
                name: 'definition-reference-i'
              )
              ]
            ),
            Option(
              name: '--evidence',
              description: 'The evidence supporting the compliance state set in this attestation',
              args: [
                Arg(
                name: 'evidenc'
              )
              ]
            ),
            Option(
              name: '--expires-on',
              description: 'The time the compliance state should expire',
              args: [
                Arg(
                name: 'expires-o'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Additional metadata in space-separated key=value pairs for an attestation. This overwrites any existing metadata for the attestation',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--owner',
              description: 'The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID',
              args: [
                Arg(
                name: 'owne'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--resource-id', '--resource'],
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resource-i'
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
              description: 'Resource type (Ex: resourceTypeC)',
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
          description: 'Delete an existing policy attestation',
          options: [

            Option(
              name: ['--attestation-name', '--name', '-n'],
              description: 'The name of the attestation',
              args: [
                Arg(
                name: 'attestation-nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--resource-id', '--resource'],
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resource-i'
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
              description: 'Resource type (Ex: resourceTypeC)',
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
          description: 'List all attestations for a resource',
          options: [

            Option(
              name: '--filter',
              description: 'OData filter expression',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: ['--resource-id', '--resource'],
              description: 'Resource ID',
              args: [
                Arg(
                name: 'resource-i'
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
              description: 'Maximum number of records to return',
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
          description: 'Get a policy attestation',
          options: [

            Option(
              name: ['--attestation-name', '--name', '-n'],
              description: 'The name of the attestation',
              args: [
                Arg(
                name: 'attestation-nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--resource-id', '--resource'],
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resource-i'
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
              description: 'Resource type (Ex: resourceTypeC)',
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
          description: 'Update an existing policy attestation',
          options: [

            Option(
              name: ['--attestation-name', '--name', '-n'],
              description: 'The name of the attestation',
              args: [
                Arg(
                name: 'attestation-nam'
              )
              ]
            ),
            Option(
              name: '--assessment-date',
              description: 'The time the evidence was assessed',
              args: [
                Arg(
                name: 'assessment-dat'
              )
              ]
            ),
            Option(
              name: '--comments',
              description: 'Comments describing why this attestation was created',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--compliance-state',
              description: 'The compliance state that should be set on the resource',
              args: [
                Arg(
                name: 'compliance-state',
                suggestions: [

                  FigSuggestion(name: 'Compliant'),
                  FigSuggestion(name: 'NonCompliant'),
                  FigSuggestion(name: 'Unknown')
                ]
              )
              ]
            ),
            Option(
              name: '--definition-reference-id',
              description: 'The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition',
              args: [
                Arg(
                name: 'definition-reference-i'
              )
              ]
            ),
            Option(
              name: '--evidence',
              description: 'The evidence supporting the compliance state set in this attestation',
              args: [
                Arg(
                name: 'evidenc'
              )
              ]
            ),
            Option(
              name: '--expires-on',
              description: 'The time the compliance state should expire',
              args: [
                Arg(
                name: 'expires-o'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Additional metadata in space-separated key=value pairs for an attestation. This overwrites any existing metadata for the attestation',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--owner',
              description: 'The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID',
              args: [
                Arg(
                name: 'owne'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--policy-assignment-id', '--policy-assignment', '-a'],
              description: 'The resource ID of the policy assignment that the attestation is setting the state for',
              args: [
                Arg(
                name: 'policy-assignment-i'
              )
              ]
            ),
            Option(
              name: ['--resource-id', '--resource'],
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resource-i'
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
              description: 'Resource type (Ex: resourceTypeC)',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'definition',
      description: 'Manage resource policy definitions',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a policy definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the new policy definition',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of policy definition',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of policy definition',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--management-group',
              description: 'Name of the management group the new policy definition can be assigned in',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Metadata in space-separated key=value pairs',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: ['--mode', '-m'],
              description: 'Mode of the policy definition, e.g. All, Indexed. Please visit https://aka.ms/azure-policy-mode for more information',
              args: [
                Arg(
                name: 'mod'
              )
              ]
            ),
            Option(
              name: '--params',
              description: 'JSON formatted string or a path to a file or uri with parameter definitions',
              args: [
                Arg(
                name: 'param'
              )
              ]
            ),
            Option(
              name: '--rules',
              description: 'Policy rules in JSON format, or a path to a file containing JSON rules',
              args: [
                Arg(
                name: 'rule'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or id of the subscription the new policy definition can be assigned in',
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
          description: 'Delete a policy definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The policy definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--management-group',
              description: 'The name of the management group of the policy [set] definition. This parameter is required if your policy set is scoped to a management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'The subscription id of the policy [set] definition',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List policy definitions',
          options: [

            Option(
              name: '--management-group',
              description: 'The name of the management group of the policy [set] definition. This parameter is required if your policy set is scoped to a management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'The subscription id of the policy [set] definition',
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
          description: 'Show a policy definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The policy definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--management-group',
              description: 'The name of the management group of the policy [set] definition. This parameter is required if your policy set is scoped to a management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'The subscription id of the policy [set] definition',
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
          description: 'Update a policy definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The policy definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of policy definition',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of policy definition',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--management-group',
              description: 'The name of the management group of the policy [set] definition. This parameter is required if your policy set is scoped to a management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Metadata in space-separated key=value pairs',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: ['--mode', '-m'],
              description: 'Mode of the policy definition, e.g. All, Indexed. Please visit https://aka.ms/azure-policy-mode for more information',
              args: [
                Arg(
                name: 'mod'
              )
              ]
            ),
            Option(
              name: '--params',
              description: 'JSON formatted string or a path to a file or uri with parameter definitions',
              args: [
                Arg(
                name: 'param'
              )
              ]
            ),
            Option(
              name: '--rules',
              description: 'JSON formatted string or a path to a file with such content',
              args: [
                Arg(
                name: 'rule'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'The subscription id of the policy [set] definition',
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
      name: 'event',
      description: 'Manage policy events',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List policy events',
          options: [

            Option(
              name: '--apply',
              description: 'Apply expression for aggregations using OData notation',
              args: [
                Arg(
                name: 'appl'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filter expression using OData notation',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'ISO 8601 formatted timestamp specifying the start time of the interval to query',
              args: [
                Arg(
                name: 'fro'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Name of management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--order-by',
              description: 'Ordering expression using OData notation',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--policy-assignment', '-a'],
              description: 'Name of policy assignment',
              args: [
                Arg(
                name: 'policy-assignmen'
              )
              ]
            ),
            Option(
              name: ['--policy-definition', '-d'],
              description: 'Name of policy definition',
              args: [
                Arg(
                name: 'policy-definitio'
              )
              ]
            ),
            Option(
              name: ['--policy-set-definition', '-s'],
              description: 'Name of policy set definition',
              args: [
                Arg(
                name: 'policy-set-definitio'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resourc'
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
              description: 'Resource type (Ex: resourceTypeC)',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'Select expression using OData notation',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            ),
            Option(
              name: '--to',
              description: 'ISO 8601 formatted timestamp specifying the end time of the interval to query',
              args: [
                Arg(
                name: 't'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of records to return',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'exemption',
      description: 'Manage resource policy exemptions',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a policy exemption',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the new policy exemption',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of policy exemption',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of the policy exemption',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: ['--exemption-category', '-e'],
              description: 'The policy exemption category of the policy exemption',
              args: [
                Arg(
                name: 'exemption-categor'
              )
              ]
            ),
            Option(
              name: '--expires-on',
              description: 'The expiration date and time (in UTC ISO 8601 format yyyy-MM-ddTHH:mm:ssZ) of the policy exemption',
              args: [
                Arg(
                name: 'expires-o'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Metadata in space-separated key=value pairs',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: ['--policy-assignment', '-a'],
              description: 'The referenced policy assignment Id for the policy exemption',
              args: [
                Arg(
                name: 'policy-assignmen'
              )
              ]
            ),
            Option(
              name: ['--policy-definition-reference-ids', '-r'],
              description: 'The policy definition reference ids to exempt in the initiative (policy set)',
              args: [
                Arg(
                name: 'policy-definition-reference-id'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope to which this policy exemption applies',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a policy exemption',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the policy exemption',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope to which this policy exemption applies',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List policy exemptions',
          options: [

            Option(
              name: ['--disable-scope-strict-match', '-i'],
              description: 'Include policy exemptions either inherited from parent scope or at child scope',
              args: [
                Arg(
                name: 'disable-scope-strict-matc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope to which this policy exemption applies',
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
          description: 'Show a policy exemption',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the policy exemption',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope to which this policy exemption applies',
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
          description: 'Update a policy exemption',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the policy exemption',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of policy exemption',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of the policy exemption',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: ['--exemption-category', '-e'],
              description: 'The policy exemption category of the policy exemption',
              args: [
                Arg(
                name: 'exemption-categor'
              )
              ]
            ),
            Option(
              name: '--expires-on',
              description: 'The expiration date and time (in UTC ISO 8601 format yyyy-MM-ddTHH:mm:ssZ) of the policy exemption',
              args: [
                Arg(
                name: 'expires-o'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Metadata in space-separated key=value pairs',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: ['--policy-definition-reference-ids', '-r'],
              description: 'The policy definition reference ids to exempt in the initiative (policy set)',
              args: [
                Arg(
                name: 'policy-definition-reference-id'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group where the policy will be applied',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope to which this policy exemption applies',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'metadata',
      description: 'Get policy metadata resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List policy metadata resources',
          options: [

            Option(
              name: '--top',
              description: 'Maximum number of records to return',
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
          description: 'Get a single policy metadata resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the metadata resource',
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
      name: 'remediation',
      description: 'Manage resource policy remediations',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a resource policy remediation',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the remediation',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Name of management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resourc'
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
              description: 'Resource type (Ex: resourceTypeC)',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a resource policy remediation',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the remediation',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--policy-assignment', '-a'],
              description: 'Name or resource ID of the policy assignment',
              args: [
                Arg(
                name: 'policy-assignmen'
              )
              ]
            ),
            Option(
              name: '--definition-reference-id',
              description: 'Policy definition reference ID inside the policy set definition. Only required when the policy assignment is assigning a policy set definition',
              args: [
                Arg(
                name: 'definition-reference-i'
              )
              ]
            ),
            Option(
              name: '--location-filters',
              description: 'Space separated list of resource locations that should be remediated (Ex: centralus westeurope)',
              args: [
                Arg(
                name: 'location-filter'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Name of management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resourc'
              )
              ]
            ),
            Option(
              name: '--resource-discovery-mode',
              description: 'The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified',
              args: [
                Arg(
                name: 'resource-discovery-mode',
                suggestions: [

                  FigSuggestion(name: 'ExistingNonCompliant'),
                  FigSuggestion(name: 'ReEvaluateCompliance')
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
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type (Ex: resourceTypeC)',
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
          description: 'Delete a resource policy remediation',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the remediation',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Name of management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resourc'
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
              description: 'Resource type (Ex: resourceTypeC)',
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
          description: 'List resource policy remediations',
          options: [

            Option(
              name: ['--management-group', '-m'],
              description: 'Name of management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resourc'
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
              description: 'Resource type (Ex: resourceTypeC)',
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
          description: 'Show a resource policy remediation',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the remediation',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Name of management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resourc'
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
              description: 'Resource type (Ex: resourceTypeC)',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deployment',
          description: 'Manage resource policy remediation deployments',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists deployments for a resource policy remediation',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the remediation',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--management-group', '-m'],
                  description: 'Name of management group',
                  args: [
                    Arg(
                    name: 'management-grou'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'Provider namespace (Ex: Microsoft.Provider)',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: '--parent',
                  description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
                  args: [
                    Arg(
                    name: 'paren'
                  )
                  ]
                ),
                Option(
                  name: '--resource',
                  description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
                  args: [
                    Arg(
                    name: 'resourc'
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
                  description: 'Resource type (Ex: resourceTypeC)',
                  args: [
                    Arg(
                    name: 'resource-typ'
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
      name: 'set-definition',
      description: 'Manage resource policy set definitions',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a policy set definition',
          options: [

            Option(
              name: '--definitions',
              description: 'Policy definitions in JSON format, or a path to a file or URI containing JSON rules',
              args: [
                Arg(
                name: 'definition'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the new policy set definition',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--definition-groups',
              description: 'JSON formatted string or a path to a file or uri containing policy definition groups. Groups are used to organize policy definitions within a policy set',
              args: [
                Arg(
                name: 'definition-group'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of policy set definition',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of policy set definition',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--management-group',
              description: 'Name of management group the new policy set definition can be assigned in',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Metadata in space-separated key=value pairs',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--params',
              description: 'JSON formatted string or a path to a file or uri with parameter definitions',
              args: [
                Arg(
                name: 'param'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or id of the subscription the new policy set definition can be assigned in',
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
          description: 'Delete a policy set definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The policy set definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--management-group',
              description: 'The name of the management group of the policy [set] definition. This parameter is required if your policy set is scoped to a management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'The subscription id of the policy [set] definition',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List policy set definitions',
          options: [

            Option(
              name: '--management-group',
              description: 'The name of the management group of the policy [set] definition. This parameter is required if your policy set is scoped to a management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'The subscription id of the policy [set] definition',
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
          description: 'Show a policy set definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The policy set definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--management-group',
              description: 'The name of the management group of the policy [set] definition. This parameter is required if your policy set is scoped to a management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'The subscription id of the policy [set] definition',
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
          description: 'Update a policy set definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The policy set definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--definition-groups',
              description: 'JSON formatted string or a path to a file or uri containing policy definition groups. Groups are used to organize policy definitions within a policy set',
              args: [
                Arg(
                name: 'definition-group'
              )
              ]
            ),
            Option(
              name: '--definitions',
              description: 'JSON formatted string or a path to a file or uri containing definitions',
              args: [
                Arg(
                name: 'definition'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of policy set definition',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of policy set definition',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--management-group',
              description: 'The name of the management group of the policy [set] definition. This parameter is required if your policy set is scoped to a management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Metadata in space-separated key=value pairs',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--params',
              description: 'JSON formatted string or a path to a file or uri with parameter definitions',
              args: [
                Arg(
                name: 'param'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'The subscription id of the policy [set] definition',
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
      name: 'state',
      description: 'Manage policy compliance states',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List policy compliance states',
          options: [

            Option(
              name: '--all',
              description: 'Within the specified time interval, get all policy states instead of the latest only'
            ),
            Option(
              name: '--apply',
              description: 'Apply expression for aggregations using OData notation',
              args: [
                Arg(
                name: 'appl'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Expand expression using OData notation',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Filter expression using OData notation',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'ISO 8601 formatted timestamp specifying the start time of the interval to query',
              args: [
                Arg(
                name: 'fro'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Name of management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--order-by',
              description: 'Ordering expression using OData notation',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--policy-assignment', '-a'],
              description: 'Name of policy assignment',
              args: [
                Arg(
                name: 'policy-assignmen'
              )
              ]
            ),
            Option(
              name: ['--policy-definition', '-d'],
              description: 'Name of policy definition',
              args: [
                Arg(
                name: 'policy-definitio'
              )
              ]
            ),
            Option(
              name: ['--policy-set-definition', '-s'],
              description: 'Name of policy set definition',
              args: [
                Arg(
                name: 'policy-set-definitio'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resourc'
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
              description: 'Resource type (Ex: resourceTypeC)',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'Select expression using OData notation',
              args: [
                Arg(
                name: 'selec'
              )
              ]
            ),
            Option(
              name: '--to',
              description: 'ISO 8601 formatted timestamp specifying the end time of the interval to query',
              args: [
                Arg(
                name: 't'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of records to return',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'summarize',
          description: 'Summarize policy compliance states',
          options: [

            Option(
              name: '--filter',
              description: 'Filter expression using OData notation',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'ISO 8601 formatted timestamp specifying the start time of the interval to query',
              args: [
                Arg(
                name: 'fro'
              )
              ]
            ),
            Option(
              name: ['--management-group', '-m'],
              description: 'Name of management group',
              args: [
                Arg(
                name: 'management-grou'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Provider namespace (Ex: Microsoft.Provider)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB)',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: ['--policy-assignment', '-a'],
              description: 'Name of policy assignment',
              args: [
                Arg(
                name: 'policy-assignmen'
              )
              ]
            ),
            Option(
              name: ['--policy-definition', '-d'],
              description: 'Name of policy definition',
              args: [
                Arg(
                name: 'policy-definitio'
              )
              ]
            ),
            Option(
              name: ['--policy-set-definition', '-s'],
              description: 'Name of policy set definition',
              args: [
                Arg(
                name: 'policy-set-definitio'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments',
              args: [
                Arg(
                name: 'resourc'
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
              description: 'Resource type (Ex: resourceTypeC)',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--to',
              description: 'ISO 8601 formatted timestamp specifying the end time of the interval to query',
              args: [
                Arg(
                name: 't'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of records to return',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'trigger-scan',
          description: 'Trigger a policy compliance evaluation for a scope',
          options: [

            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
