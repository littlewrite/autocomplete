// Auto-generated from TypeScript source: account.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `account` CLI
final FigSpec accountSpec = FigSpec(
  name: 'account',
  description: 'Manage Azure subscription information',
  subcommands: [

    Subcommand(
      name: 'accept-ownership-status',
      description: 'Accept subscription ownership status',
      options: [

        Option(
          name: '--subscription-id',
          description: 'Subscription Id. Required',
          args: [
            Arg(
            name: 'subscription-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'clear',
      description: 'Clear all subscriptions from the CLI\'s local cache'
    ),
    Subcommand(
      name: 'create',
      description: 'Create a subscription',
      options: [

        Option(
          name: ['--enrollment-account-object-id', '--enrollment-account-name'],
          description: 'The name of the enrollment account which should be used to create a subscription',
          args: [
            Arg(
            name: 'enrollment-account-object-i'
          )
          ]
        ),
        Option(
          name: '--offer-type',
          description: 'The offer type of the subscription. For example, MS-AZR-0017P (EnterpriseAgreement) and MS-AZR-0148P (EnterpriseAgreement devTest) are available',
          args: [
            Arg(
            name: 'offer-type',
            suggestions: [

              FigSuggestion(name: 'MS-AZR-0017P'),
              FigSuggestion(name: 'MS-AZR-0148P'),
              FigSuggestion(name: 'MS-AZR-USGOV-0015P'),
              FigSuggestion(name: 'MS-AZR-USGOV-0017P'),
              FigSuggestion(name: 'MS-AZR-USGOV-0148P')
            ]
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the subscription',
          args: [
            Arg(
            name: 'display-nam'
          )
          ]
        ),
        Option(
          name: '--owner-object-id',
          description: 'The object id(s) of the owner(s) which should be granted access to the new subscription',
          args: [
            Arg(
            name: 'owner-object-i'
          )
          ]
        ),
        Option(
          name: '--owner-spn',
          description: 'The service principal name(s) of the owner(s) which should be granted access to the new subscription',
          args: [
            Arg(
            name: 'owner-sp'
          )
          ]
        ),
        Option(
          name: '--owner-upn',
          description: 'The user principal name(s) of owner(s) who should be granted access to the new subscription',
          args: [
            Arg(
            name: 'owner-up'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-access-token',
      description: 'Get a token for utilities to access Azure',
      options: [

        Option(
          name: ['--subscription', '--name', '-n', '-s'],
          description: 'Name or ID of subscription',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: '--resource',
          description: 'Azure resource endpoints in AAD v1.0',
          args: [
            Arg(
            name: 'resourc'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'Type of well-known resource',
          args: [
            Arg(
            name: 'resource-type',
            suggestions: [

              FigSuggestion(name: 'aad-graph'),
              FigSuggestion(name: 'arm'),
              FigSuggestion(name: 'batch'),
              FigSuggestion(name: 'data-lake'),
              FigSuggestion(name: 'media'),
              FigSuggestion(name: 'ms-graph'),
              FigSuggestion(name: 'oss-rdbms')
            ]
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Space-separated AAD scopes in AAD v2.0. Default to Azure Resource Manager',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        ),
        Option(
          name: ['--tenant', '-t'],
          description: 'Tenant ID for which the token is acquired. Only available for user and service principal account, not for MSI or Cloud Shell account',
          args: [
            Arg(
            name: 'tenan'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Get a list of subscriptions for the logged in account. By default, only \'Enabled\' subscriptions from the current cloud is shown',
      options: [

        Option(
          name: '--all',
          description: 'List all subscriptions from all clouds, rather than just \'Enabled\' ones'
        ),
        Option(
          name: '--refresh',
          description: 'Retrieve up-to-date subscriptions from server'
        )
      ]
    ),
    Subcommand(
      name: 'list-locations',
      description: 'List supported regions for the current subscription',
      options: [

        Option(
          name: '--include-extended-locations',
          description: 'Whether to include extended locations',
          args: [
            Arg(
            name: 'include-extended-locations',
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
        )
      ]
    ),
    Subcommand(
      name: 'set',
      description: 'Set a subscription to be the current active subscription',
      options: [

        Option(
          name: ['--subscription', '--name', '-n', '-s'],
          description: 'Name or ID of subscription',
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
      description: 'Get the details of a subscription',
      options: [

        Option(
          name: ['--subscription', '--name', '-n', '-s'],
          description: 'Name or ID of subscription',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'alias',
      description: 'Manage subscription alias',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create Alias Subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Alias Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--billing-scope',
              description: 'Billing scope. It determines whether the subscription is Field-Led, Partner-Led or LegacyEA',
              args: [
                Arg(
                name: 'billing-scop'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The friendly name of the subscription',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--reseller-id',
              description: 'Reseller ID, basically MPN Id',
              args: [
                Arg(
                name: 'reseller-i'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'This parameter can be used to create alias for existing subscription ID',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--workload',
              description: 'The workload type of the subscription. It can be either Production or DevTest',
              args: [
                Arg(
                name: 'workload',
                suggestions: [

                  FigSuggestion(name: 'DevTest'),
                  FigSuggestion(name: 'Production')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete Alias',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Alias Name',
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
          description: 'List Alias Subscriptions'
        ),
        Subcommand(
          name: 'show',
          description: 'Get Alias Subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Alias Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the account alias is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Alias Name',
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
        )
      ]
    ),
    Subcommand(
      name: 'lock',
      description: 'Manage Azure subscription level locks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a subscription lock',
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
          description: 'Delete a subscription lock',
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List lock information in the subscription',
          options: [

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
          description: 'Show the details of a subscription lock',
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
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a subscription lock',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'management-group',
      description: 'Manage Azure Management Groups',
      subcommands: [

        Subcommand(
          name: 'check-name-availability',
          description: 'Check if a Management Group Name is Valid',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the management group',
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
          description: 'Create a new management group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the management group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--display-name', '-d'],
              description: 'Sets the display name of the management group. If null, the group name is set as the display name',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--no-register',
              description: 'Skip registration for resource provider Microsoft.Management'
            ),
            Option(
              name: ['--parent', '-p'],
              description: 'Sets the parent of the management group. Can be the fully qualified id or the name of the management group. If null, the root tenant group is set as the parent',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing management group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the management group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-register',
              description: 'Skip registration for resource provider Microsoft.Management'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all management groups',
          options: [

            Option(
              name: '--no-register',
              description: 'Skip registration for resource provider Microsoft.Management'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a specific management group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the management group (the last segment of the resource ID). Do not use display name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--expand', '-e'],
              description: 'If given, lists the children in the first level of hierarchy'
            ),
            Option(
              name: '--no-register',
              description: 'Skip registration for resource provider Microsoft.Management'
            ),
            Option(
              name: ['--recurse', '-r'],
              description: 'If given, lists the children in all levels of hierarchy'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing management group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the management group',
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
              name: ['--display-name', '-d'],
              description: 'Updates the display name of the management group. If null, no change is made',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: ['--parent', '-p'],
              description: 'Update the parent of the management group. Can be the fully qualified id or the name of the management group. If null, no change is made',
              args: [
                Arg(
                name: 'paren'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'entities',
          description: 'Entity operations (Management Group and Subscriptions) for Management Groups',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all entities for the authenticated user'
            )
          ]
        ),
        Subcommand(
          name: 'hierarchy-settings',
          description: 'Provide operations for hierarchy settings defined at the management group level. Settings can only be set on the root Management Group of the hierarchy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create hierarchy settings defined at the Management Group level',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the management group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--default-management-group', '-m'],
                  description: 'Set the default Management Group under which new subscriptions get added in this tenant. Default setting is the Root Management Group',
                  args: [
                    Arg(
                    name: 'default-management-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--require-authorization-for-group-creation', '-r'],
                  description: 'Indicate whether RBAC access is required upon group creation under the root Management Group. True means user will require Microsoft.Management/managementGroups/write action on the root Management Group. Default setting is false',
                  args: [
                    Arg(
                    name: 'require-authorization-for-group-creatio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the hierarchy settings defined at the Management Group level',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the management group',
                  args: [
                    Arg(
                    name: 'nam'
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
              description: 'Get all the hierarchy settings defined at the Management Group level',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the management group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the hierarchy settings defined at the Management Group level',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the management group',
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
                  name: ['--default-management-group', '-m'],
                  description: 'Set the default Management Group under which new subscriptions get added in this tenant. Default setting is the Root Management Group',
                  args: [
                    Arg(
                    name: 'default-management-grou'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
                  name: ['--require-authorization-for-group-creation', '-r'],
                  description: 'Indicate whether RBAC access is required upon group creation under the root Management Group. True means user will require Microsoft.Management/managementGroups/write action on the root Management Group. Default setting is false',
                  args: [
                    Arg(
                    name: 'require-authorization-for-group-creatio'
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'subscription',
          description: 'Subscription operations for Management Groups',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a subscription to a management group',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the management group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Subscription Id or Name',
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
              description: 'Remove an existing subscription from a management group',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the management group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Subscription Id or Name',
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
              description: 'Show the details of a subscription under a known management group',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the management group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--subscription', '-s'],
                  description: 'Subscription Id or Name',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-sub-under-mg',
              description: 'Get the subscription under a management group',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the management group',
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
          name: 'tenant-backfill',
          description: 'Backfill Tenant Subscription Operations for Management Groups',
          subcommands: [

            Subcommand(
              name: 'get',
              description: 'Get the backfill status for a tenant'
            ),
            Subcommand(
              name: 'start',
              description: 'Start backfilling subscriptions for a tenant'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'subscription',
      description: 'Manage subscriptions',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel subscription',
          options: [

            Option(
              name: ['--subscription-id', '--id'],
              description: 'Subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
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
          name: 'enable',
          description: 'Enable subscription',
          options: [

            Option(
              name: ['--subscription-id', '--id'],
              description: 'Subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get all subscriptions for a tenant'
        ),
        Subcommand(
          name: 'list-location',
          description: 'This operation provides all the locations that are available for resource providers; however, each resource provider may support a subset of this list',
          options: [

            Option(
              name: ['--subscription-id', '--id'],
              description: 'The ID of the target subscription',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rename',
          description: 'Rename subscription',
          options: [

            Option(
              name: ['--subscription-id', '--id'],
              description: 'Subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--subscription-name', '--name', '-n'],
              description: 'New subscription name',
              args: [
                Arg(
                name: 'subscription-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details about a specified subscription',
          options: [

            Option(
              name: ['--subscription-id', '--id'],
              description: 'The ID of the target subscription',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tenant',
      description: 'Manage tenant',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get the tenants for your account'
        )
      ]
    )
  ]
);
