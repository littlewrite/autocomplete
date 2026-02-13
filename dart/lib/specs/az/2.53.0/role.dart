// Auto-generated from TypeScript source: role.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `role` CLI
final FigSpec roleSpec = FigSpec(
  name: 'role',
  description: 'Manage user roles for access control with Azure Active Directory and service principals',
  subcommands: [

    Subcommand(
      name: 'assignment',
      description: 'Manage role assignments',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new role assignment for a user, group, or service principal',
          options: [

            Option(
              name: '--role',
              description: 'Role name or id',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--assignee',
              description: 'Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name',
              args: [
                Arg(
                name: 'assigne'
              )
              ]
            ),
            Option(
              name: '--assignee-object-id',
              description: 'Use this parameter instead of \'--assignee\' to bypass Graph API invocation in case of insufficient privileges. This parameter only works with object ids for users, groups, service principals, and managed identities. For managed identities use the principal id. For service principals, use the object id and not the app id',
              args: [
                Arg(
                name: 'assignee-object-i'
              )
              ]
            ),
            Option(
              name: '--assignee-principal-type',
              description: 'Use with --assignee-object-id to avoid errors caused by propagation latency in AAD Graph',
              args: [
                Arg(
                name: 'assignee-principal-type',
                suggestions: [

                  FigSuggestion(name: 'ForeignGroup'),
                  FigSuggestion(name: 'Group'),
                  FigSuggestion(name: 'ServicePrincipal'),
                  FigSuggestion(name: 'User')
                ]
              )
              ]
            ),
            Option(
              name: '--condition',
              description: 'Condition under which the user can be granted permission',
              args: [
                Arg(
                name: 'conditio'
              )
              ]
            ),
            Option(
              name: '--condition-version',
              description: 'Version of the condition syntax. If --condition is specified without --condition-version, default to 2.0',
              args: [
                Arg(
                name: 'condition-versio'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of role assignment',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'A GUID for the role assignment. It must be unique and different for each role assignment. If omitted, a new GUID is generetd',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Use it only if the role or assignment was added at the level of a resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which the role assignment or definition applies to, e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM',
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
          description: 'Delete role assignments',
          options: [

            Option(
              name: '--assignee',
              description: 'Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name',
              args: [
                Arg(
                name: 'assigne'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'Space-separated role assignment ids',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--include-inherited',
              description: 'Include assignments applied on parent scopes'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Use it only if the role or assignment was added at the level of a resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Role name or id',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which the role assignment or definition applies to, e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Continue to delete all assignments under the subscription'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List role assignments',
          options: [

            Option(
              name: '--all',
              description: 'Show all assignments under the current subscription'
            ),
            Option(
              name: '--assignee',
              description: 'Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name',
              args: [
                Arg(
                name: 'assigne'
              )
              ]
            ),
            Option(
              name: '--include-classic-administrators',
              description: 'List default role assignments for subscription classic administrators, aka co-admins'
            ),
            Option(
              name: '--include-groups',
              description: 'Include extra assignments to the groups of which the user is a member(transitively)'
            ),
            Option(
              name: '--include-inherited',
              description: 'Include assignments applied on parent scopes'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Use it only if the role or assignment was added at the level of a resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Role name or id',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which the role assignment or definition applies to, e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-changelogs',
          description: 'List changelogs for role assignments',
          options: [

            Option(
              name: '--end-time',
              description: 'The end time of the query in the format of %Y-%m-%dT%H:%M:%SZ, e.g. 2000-12-31T12:59:59Z. Defaults to the current time',
              args: [
                Arg(
                name: 'end-tim'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'The start time of the query in the format of %Y-%m-%dT%H:%M:%SZ, e.g. 2000-12-31T12:59:59Z. Defaults to 1 Hour prior to the current time',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing role assignment for a user, group, or service principal',
          options: [

            Option(
              name: '--role-assignment',
              description: 'Description of an existing role assignment as JSON, or a path to a file containing a JSON description',
              args: [
                Arg(
                name: 'role-assignmen'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'definition',
      description: 'Manage role definitions',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a custom role definition',
          options: [

            Option(
              name: '--role-definition',
              description: 'Description of a role as JSON, or a path to a file containing a JSON description',
              args: [
                Arg(
                name: 'role-definitio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a role definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The role\'s name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--custom-role-only',
              description: 'Custom roles only(vs. build-in ones)'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Use it only if the role or assignment was added at the level of a resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which the role assignment or definition applies to, e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM',
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
          description: 'List role definitions',
          options: [

            Option(
              name: '--custom-role-only',
              description: 'Custom roles only(vs. build-in ones)'
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The role\'s name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Use it only if the role or assignment was added at the level of a resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope at which the role assignment or definition applies to, e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM',
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
          description: 'Update a role definition',
          options: [

            Option(
              name: '--role-definition',
              description: 'Description of an existing role as JSON, or a path to a file containing a JSON description',
              args: [
                Arg(
                name: 'role-definitio'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
