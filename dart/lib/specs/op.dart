// Auto-generated from TypeScript source: op.ts
// Generated at: 2026-02-17
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

const icon = 'asset://icons/op.png';

/// Completion spec for `op` CLI
final FigSpec opSpec = FigSpec(
    name: 'op',
    icon: icon,
    description: 'Official 1Password CLI',
    subcommands: [
      Subcommand(
          name: 'account',
          icon: icon,
          description: 'Manage your locally configured 1Password accounts',
          subcommands: [
            Subcommand(
                name: 'add',
                description: 'Add an account to sign in to for the first time',
                options: [
                  Option(
                      name: '--address',
                      description: 'The sign-in address for your account',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--email',
                      description:
                          'The email address associated with your account',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--raw',
                      description: 'Only return the session token'),
                  Option(
                      name: '--shorthand',
                      description: 'Set the short account name',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'get', description: 'Get details about your account'),
            Subcommand(
                name: ['list', 'ls'],
                description: 'List users and accounts set up on this device'),
            Subcommand(
                name: 'forget',
                description: 'Remove a 1Password account from this device',
                options: [
                  Option(
                      name: '--all',
                      description: 'Forget all authenticated accounts')
                ],
                args: [
                  Arg(name: 'account')
                ])
          ]),
      Subcommand(
          name: 'connect',
          icon: icon,
          description:
              'Manage Connect instances and Connect tokens in your 1Password account',
          subcommands: [
            Subcommand(
                name: 'group',
                description: 'Manage group access to Secrets Automation',
                subcommands: [
                  Subcommand(
                      description:
                          'Grant a group access to manage Secrets Automation',
                      name: 'grant',
                      options: [
                        Option(
                            name: '--all-servers',
                            description:
                                'Grant access to all current and future servers in the authenticated account'),
                        Option(
                            name: '--group',
                            description: 'The group to receive access',
                            args: [Arg(name: 'group')])
                      ]),
                  Subcommand(
                      name: 'revoke',
                      description:
                          'Revoke a group\'s access to manage Secrets Automation',
                      options: [
                        Option(
                            name: '--all-servers',
                            description:
                                'Revoke access to all current and future servers in the authenticated account'),
                        Option(
                            name: '--group',
                            description: 'The group to revoke access from',
                            args: [Arg(name: 'group')])
                      ])
                ]),
            Subcommand(
                name: 'server',
                description: 'Manage Connect servers',
                subcommands: [
                  Subcommand(
                      name: 'create', description: 'Set up a Connect server'),
                  Subcommand(
                      name: 'get',
                      description: 'Get a Connect server',
                      args: [
                        Arg(name: 'serverName | serverID', suggestions: [
                          FigSuggestion(
                              name: '-',
                              description: 'Read from stdin',
                              hidden: true)
                        ])
                      ]),
                  Subcommand(
                      description: 'Rename a Connect server',
                      name: 'edit',
                      args: [Arg(name: 'serverName | serverID')]),
                  Subcommand(description: 'Remove a Connect server', name: [
                    'delete',
                    'remove',
                    'rm'
                  ], args: [
                    Arg(name: 'serverName | serverID', suggestions: [
                      FigSuggestion(
                          name: '-',
                          description: 'Read from stdin',
                          hidden: true)
                    ])
                  ]),
                  Subcommand(
                      description: 'List Connect servers', name: ['list', 'ls'])
                ]),
            Subcommand(
                name: 'token',
                description: 'Manage Connect tokens',
                subcommands: [
                  Subcommand(
                      description:
                          'Issue a token for a 1Password Connect server',
                      name: 'create',
                      options: [
                        Option(
                            name: '--expires-in',
                            description:
                                'Set how long the Connect token is valid for in (s)econds, (m)inutes, or (h)ours',
                            args: [Arg(name: 'duration')]),
                        Option(
                            name: '--server',
                            description: 'Issue a token for this server',
                            args: [Arg(name: 'string')])
                      ]),
                  Subcommand(
                      description: 'Rename a Connect token',
                      name: 'edit',
                      options: [
                        Option(
                            name: '--name',
                            description: 'Change the token\'s name',
                            args: [Arg(name: 'string')])
                      ]),
                  Subcommand(
                      description: 'Revoke a token for a Connect server',
                      name: ['delete', 'remove', 'rm'],
                      args: [Arg(name: 'token')]),
                  Subcommand(
                      description: 'Get a list of tokens', name: ['list', 'ls'])
                ]),
            Subcommand(
                name: 'vault',
                description: 'Manage connect server vault access',
                subcommands: [
                  Subcommand(
                      description: 'Grant a Connect server access to a vault',
                      name: 'grant',
                      options: [
                        Option(
                            name: '--server',
                            description: 'The server to be granted access',
                            args: [Arg(name: 'string')])
                      ]),
                  Subcommand(
                      description:
                          'Revoke a Connect server\'s access to a vault',
                      name: 'revoke',
                      options: [
                        Option(
                            name: '--server',
                            description: 'The server to revoke access from',
                            args: [Arg(name: 'server')])
                      ])
                ])
          ]),
      Subcommand(
          name: 'document',
          icon: icon,
          description:
              'Perform CRUD operations on Document items in your vaults',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Create a document item',
                options: [
                  Option(
                      name: '--file-name',
                      description: 'Set the file\'s name',
                      args: [Arg(name: 'name')]),
                  Option(
                      name: '--tags',
                      description:
                          'Set the tags to the specified (comma-separated) values',
                      args: [Arg(name: 'tags')]),
                  Option(
                      name: '--title',
                      description: 'Set the document item\'s title',
                      args: [Arg(name: 'title')])
                ],
                args: [
                  Arg(name: 'file', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: 'get',
                description: 'Download a document',
                options: [
                  Option(
                      name: '--include-archive',
                      description:
                          'Include document items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable'),
                  Option(
                      name: '--output',
                      description:
                          'Save the document to the file path instead of stdout',
                      args: [Arg(name: 'path')])
                ],
                args: [
                  Arg(name: 'itemName | itemID')
                ]),
            Subcommand(
                name: 'edit',
                description: 'Edit a document item',
                options: [
                  Option(
                      name: '--file-name',
                      description: 'Set the file\'s name',
                      args: [Arg(name: 'name')]),
                  Option(
                      name: '--tags',
                      description:
                          'Set the tags to the specified (comma-separated) values. An empty value will remove all tags',
                      args: [Arg(name: 'tags')]),
                  Option(
                      name: '--title',
                      description: 'Set the document item\'s title',
                      args: [Arg(name: 'title')])
                ],
                args: [
                  Arg(name: 'itemName | itemID'),
                  Arg(name: 'file', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['delete', 'remove', 'rm'],
                description: 'Delete or archive a document item',
                options: [
                  Option(
                      name: '--archive',
                      description: 'Move the document to the Archive')
                ],
                args: [
                  Arg(name: 'itemName | itemID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['list', 'ls'],
                description: 'Get a list of documents',
                options: [
                  Option(
                      name: '--include-archive',
                      description:
                          'Include document items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable')
                ])
          ]),
      Subcommand(
          name: 'events-api',
          icon: icon,
          description:
              'Manage Events API integrations in your 1Password account',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Set up an integration with the Events API')
          ]),
      Subcommand(
          name: 'group',
          description:
              'Perform CRUD operations on the groups of users in your 1Password account',
          subcommands: [
            Subcommand(
                name: 'user',
                description: 'Manage users in groups',
                subcommands: [
                  Subcommand(
                      description: 'Grant a user access to a group',
                      name: 'grant',
                      options: [
                        Option(
                            name: '--group',
                            description:
                                'Specify the group to grant the user access to',
                            args: [Arg(name: 'string')]),
                        Option(
                            name: '--role',
                            description:
                                'Specify the user\'s role as a member or manager. Default: member',
                            args: [Arg(name: 'string')])
                      ]),
                  Subcommand(
                      description:
                          'Revoke a user\'s access to a vault or group',
                      name: 'revoke',
                      options: [
                        Option(
                            name: '--group',
                            description:
                                'Specify the group to revoke the user\'s access to',
                            args: [Arg(name: 'string')])
                      ]),
                  Subcommand(
                      description: 'Retrieve users that belong to a group',
                      name: ['list', 'ls'])
                ]),
            Subcommand(name: 'create', description: 'Create a group', options: [
              Option(
                  name: '--description',
                  description: 'Set the group\'s description',
                  args: [Arg(name: 'string')])
            ]),
            Subcommand(
                name: 'get',
                description: 'Get details about a group',
                args: [
                  Arg(name: 'groupName | groupID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: 'edit',
                description: 'Edit a group\'s name or description',
                options: [
                  Option(
                      name: '--description',
                      description: 'Change the group\'s description',
                      args: [Arg(name: 'description')])
                ],
                args: [
                  Arg(name: 'groupName | groupID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['delete', 'remove', 'rm'],
                description: 'Remove a group',
                args: [
                  Arg(name: 'groupName | groupID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['list', 'ls'],
                description: 'List groups',
                options: [
                  Option(
                      name: '--user',
                      description: 'List groups that a user belongs to',
                      args: [Arg(name: 'user')])
                ])
          ]),
      Subcommand(
          name: 'item',
          icon: icon,
          description:
              'Perform CRUD operations on the 1Password items in your vaults',
          subcommands: [
            Subcommand(
                description: 'Manage templates',
                name: 'template',
                icon: '📕',
                subcommands: [
                  Subcommand(
                      name: 'get',
                      description: 'Get an item template',
                      options: [
                        Option(
                            name: ['-f', '--force'],
                            description: 'Do not prompt for confirmation')
                      ],
                      args: [
                        Arg(name: 'category', suggestions: [
                          FigSuggestion(
                              name: '-',
                              description: 'Read from stdin',
                              hidden: true)
                        ])
                      ]),
                  Subcommand(
                      name: ['list', 'ls'],
                      description: 'Get a list of templates')
                ]),
            Subcommand(
                name: 'create',
                description: 'Create an item',
                icon: '🪄',
                options: [
                  Option(
                      name: '--category',
                      description: 'Set the item\'s category',
                      args: [Arg(name: 'category')]),
                  Option(
                      name: '--dry-run',
                      description:
                          'Perform a dry run of the command and output a preview of the resulting item'),
                  Option(
                      name: '--generate-password',
                      description:
                          'Give the item a randomly generated password',
                      args: [Arg(name: 'recipe')]),
                  Option(
                      name: '--tags',
                      description:
                          'Set the tags to the specified (comma-separated) values',
                      args: [Arg(name: 'tags')]),
                  Option(
                      name: '--template',
                      description:
                          'Specify the filepath to read an item template from',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--title',
                      description: 'Set the item\'s title',
                      args: [Arg(name: 'title')]),
                  Option(
                      name: '--url',
                      description: 'Set the URL associated with the item',
                      args: [Arg(name: 'URL')])
                ],
                args: [
                  Arg(name: 'assignment...')
                ]),
            Subcommand(
                name: 'get',
                description: 'Get an item\'s details',
                icon: '📑',
                options: [
                  Option(
                      name: '--fields',
                      description:
                          'Only return data from these fields. Use \'label=\' to get the field by name or \'type=\' to filter fields by type',
                      args: [Arg(name: 'fields')]),
                  Option(
                      name: '--include-archive',
                      description:
                          'Include items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable'),
                  Option(
                      name: '--otp',
                      description:
                          'Output the primary one-time password for this item'),
                  Option(
                      name: '--share-link',
                      description: 'Get a shareable link for the item')
                ],
                args: [
                  Arg(name: 'itemName | itemID | shareLink', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: 'edit',
                description: 'Edit an item\'s details',
                icon: '🔏',
                args: [
                  Arg(name: 'itemName | itemID | shareLink'),
                  Arg(name: 'assignment ...')
                ]),
            Subcommand(
                name: ['delete', 'remove', 'rm'],
                description: 'Delete or archive an item',
                icon: '🗑️',
                options: [
                  Option(
                      name: '--archive',
                      description: 'Move the item to the Archive')
                ],
                args: [
                  Arg(name: 'itemName | itemID | shareLink', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['list', 'ls'],
                description: 'List items',
                icon: '📖',
                options: [
                  Option(
                      name: '--categories',
                      description:
                          'Only list items in these categories (comma-separated)',
                      args: [Arg(name: 'categories')]),
                  Option(
                      name: '--include-archive',
                      description:
                          'Include items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable'),
                  Option(
                      name: '--long',
                      description: 'Output a more detailed item list'),
                  Option(
                      name: '--tags',
                      description:
                          'Only list items with these tags (comma-separated)',
                      args: [Arg(name: 'tags')])
                ]),
            Subcommand(
                name: 'share',
                description: 'Share an item',
                icon: '👥',
                options: [
                  Option(
                      name: '--emails',
                      description: 'Email addresses to share with',
                      args: [Arg(name: 'strings')]),
                  Option(
                      name: '--expiry',
                      description:
                          'Link expiring after the specified duration in (s)econds, (m)inutes, or (h)ours (default 7h)',
                      args: [Arg(name: 'duration')]),
                  Option(
                      name: '--vault',
                      description: 'Look for the item in this vault',
                      args: [Arg(name: 'string')])
                ],
                args: [
                  Arg(name: 'itemName | itemID')
                ])
          ]),
      Subcommand(
          name: 'user',
          description: 'Manage users within this 1Password account',
          subcommands: [
            Subcommand(
                name: 'provision',
                description: 'Provision a user in the authenticated account',
                options: [
                  Option(
                      name: '--email',
                      description: 'Provide the user\'s email address',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--language',
                      description:
                          'Provide the user\'s account language. (default "en")',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'confirm',
                description: 'Confirm a user',
                options: [
                  Option(
                      name: '--all',
                      description: 'Confirm all unconfirmed users')
                ],
                args: [
                  Arg(name: 'email | name | userID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: 'get',
                description: 'Get details about a user',
                options: [
                  Option(
                      name: '--fingerprint',
                      description: 'Get the user\'s public key fingerprint')
                ],
                args: [
                  Arg(name: 'email | name | userID | --me', suggestions: [
                    FigSuggestion(
                        name: '-',
                        description: 'Read from stdin',
                        hidden: true),
                    FigSuggestion(
                        name: '--me',
                        description: 'Get the authenticated user\'s details',
                        type: SuggestionType.option)
                  ])
                ]),
            Subcommand(
                name: 'edit',
                description: 'Edit a user\'s name or Travel Mode status',
                options: [
                  Option(
                      name: '--name',
                      description: 'Set the user\'s name',
                      args: [Arg(name: 'string')])
                ],
                args: [
                  Arg(name: 'email | name | userID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: 'suspend',
                description: 'Suspend a user',
                options: [
                  Option(
                      name: '--deauthorize-devices-after',
                      description:
                          'Deauthorize the user\'s devices after a time (rounded down to seconds)',
                      args: [Arg(name: 'duration')])
                ],
                args: [
                  Arg(name: 'email | name | userID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: 'reactivate',
                description: 'Reactivate a suspended user',
                args: [
                  Arg(name: 'email | name | userID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['delete', 'remove', 'rm'],
                description:
                    'Remove a user and all their data from the account',
                args: [
                  Arg(name: 'email | name | userID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['list', 'ls'],
                description: 'List users',
                options: [
                  Option(
                      name: '--group',
                      description: 'List users who belong to a group',
                      args: [Arg(name: 'group')])
                ])
          ]),
      Subcommand(
          name: 'vault',
          description:
              'Manage permissions and perform CRUD operations on your 1Password vaults',
          subcommands: [
            Subcommand(
                name: 'group',
                description: 'Manage group vault access',
                icon: '👥',
                subcommands: [
                  Subcommand(
                      name: 'grant',
                      description: 'Grant a group permissions to a vault',
                      options: [
                        Option(
                            name: '--group',
                            description: 'The group to receive access',
                            args: [Arg(name: 'group')]),
                        Option(
                            name: '--no-input',
                            description:
                                'Do not prompt for input on interactive terminal',
                            args: [Arg(name: 'input')]),
                        Option(
                            name: '--permissions',
                            description:
                                'The permissions to grant to the group',
                            args: [Arg(name: 'permissions')])
                      ]),
                  Subcommand(
                      name: 'revoke',
                      description:
                          'Revoke a portion or the entire access of a group to a vault',
                      options: [
                        Option(
                            name: '--group',
                            description: 'The group to revoke access from',
                            args: [Arg(name: 'group')]),
                        Option(
                            name: '--no-input',
                            description:
                                'Do not prompt for input on interactive terminal',
                            args: [Arg(name: 'input')]),
                        Option(
                            name: '--permissions',
                            description:
                                'The permissions to revoke from the group',
                            args: [Arg(name: 'permissions')])
                      ]),
                  Subcommand(
                      name: ['list', 'ls'],
                      description:
                          'List all the groups that have access to the given vault',
                      args: [
                        Arg(name: 'vault', suggestions: [
                          FigSuggestion(
                              name: '-',
                              description: 'Read from stdin',
                              hidden: true)
                        ])
                      ])
                ]),
            Subcommand(
                name: 'user',
                description: 'Manage user vault access',
                icon: '📈',
                subcommands: [
                  Subcommand(
                      description: 'Grant a user access to a vault',
                      name: 'grant',
                      options: [
                        Option(
                            name: '--no-input',
                            description:
                                'Do not prompt for input on interactive terminal',
                            args: [Arg(name: 'input')]),
                        Option(
                            name: '--permissions',
                            description: 'The permissions to grant to the user',
                            args: [Arg(name: 'permissions')]),
                        Option(
                            name: '--user',
                            description: 'The user to receive access',
                            args: [Arg(name: 'user')])
                      ]),
                  Subcommand(
                      description:
                          'Revoke a portion or the entire access of a user to a vault',
                      name: 'revoke',
                      options: [
                        Option(
                            name: '--no-input',
                            description:
                                'Do not prompt for input on interactive terminal',
                            args: [Arg(name: 'input')]),
                        Option(
                            name: '--permissions',
                            description:
                                'The permissions to revoke from the user',
                            args: [Arg(name: 'permissions')]),
                        Option(
                            name: '--user',
                            description: 'The user to revoke access from',
                            args: [Arg(name: 'user')])
                      ]),
                  Subcommand(
                      description:
                          'List all users with access to the vault and their permissions',
                      name: ['list', 'ls'])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a new vault',
                icon: '🪄',
                options: [
                  Option(
                      name: '--allow-admins-to-manage',
                      description:
                          'Set whether admins can manage the vault. Default: false',
                      args: [Arg(name: 'true|false')]),
                  Option(
                      name: '--description',
                      description: 'Set the group\'s description',
                      args: [Arg(name: 'description')])
                ]),
            Subcommand(
                name: 'get',
                description: 'Get details about a vault',
                icon: '📑',
                args: [
                  Arg(name: 'vaultName | vaultID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: 'edit',
                description:
                    'Edit a vault\'s name, description, icon or Travel Mode status',
                icon: '🔏',
                options: [
                  Option(
                      name: '--description',
                      description: 'Change the vault\'s description',
                      args: [Arg(name: 'description')]),
                  Option(
                      name: '--icon',
                      description: 'Change the vault\'s icon',
                      args: [Arg(name: 'icon')]),
                  Option(
                      name: '--name',
                      description: 'Change the vault\'s name',
                      args: [Arg(name: 'name')]),
                  Option(
                      name: '--travel-mode',
                      description:
                          'Turn Travel Mode on or off for the vault. Only vaults with Travel Mode enabled will be accessible while a user has Travel Mode turned on. (default off)',
                      args: [Arg(name: 'on|off')])
                ],
                args: [
                  Arg(name: 'vaultName | vaultID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['delete', 'remove', 'rm'],
                description: 'Remove a vault',
                icon: '🗑️',
                args: [
                  Arg(name: 'vaultName | vaultID', suggestions: [
                    FigSuggestion(
                        name: '-', description: 'Read from stdin', hidden: true)
                  ])
                ]),
            Subcommand(
                name: ['list', 'ls'],
                description: 'List all vaults in the account',
                icon: '📖',
                options: [
                  Option(
                      name: '--group',
                      description: 'List vaults a group has access to',
                      args: [Arg(name: 'string')])
                ])
          ]),
      Subcommand(
          name: 'completion',
          description: 'Generate shell completion information'),
      Subcommand(
          name: 'inject', description: 'Inject secrets into a config file'),
      Subcommand(
          name: 'read',
          description: 'Read a secret using the secrets reference syntax',
          options: [
            Option(
                name: '--file-mode',
                description:
                    'Set filemode for the output file if it does not yet exist. It is ignored without the --out-file flag. (default 0600)',
                args: [Arg(name: 'filemode')]),
            Option(
                name: ['-f', '--force'],
                description: 'Do not prompt for confirmation'),
            Option(
                name: ['-n', '--no-newline'],
                description: 'Do not print a new line after the secret')
          ]),
      Subcommand(
          name: 'run',
          description: 'Pass secrets as environment variables to a process',
          args: [
            Arg(name: 'command')
          ],
          options: [
            Option(
                name: '--env-file',
                description:
                    'Enable Dotenv integration with specific Dotenv files to parse. For example: --env-file=.env',
                args: [Arg(name: 'stringArray')]),
            Option(
                name: '--no-masking',
                description: 'Disable masking of secrets on stdout and stderr')
          ]),
      Subcommand(
          name: 'signin',
          description: 'Sign in to a 1Password account',
          options: [
            Option(
                name: ['-f', '--force'],
                description:
                    'Ignore warnings and print raw output from this command')
          ]),
      Subcommand(
          name: 'signout',
          description: 'Sign out of a 1Password account',
          options: [
            Option(
                name: '--all',
                description: 'Sign out of all signed-in accounts'),
            Option(
                name: '--forget',
                description:
                    'Remove the details for a 1Password account from this device')
          ]),
      Subcommand(
          name: 'update',
          description: 'Check for and download updates',
          options: [
            Option(
                name: '--directory',
                description: 'Download the update to this \'\'path\'\'',
                args: [Arg(name: 'string', template: 'folders')])
          ]),
      Subcommand(
          name: 'whoami',
          description: 'Get information about a signed-in account')
    ],
    options: [
      Option(
          name: '--account',
          description:
              'Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run \'op account list\'. Can be set as the OP_ACCOUNT environment variable',
          isPersistent: true,
          args: [
            Arg(
              name: 'account',
              //  generators: suggestAccounts
            )
          ]),
      Option(
          name: '--cache',
          description: 'Store and use cached information',
          isPersistent: true),
      Option(
          name: '--config',
          description: 'Use this configuration directory',
          isPersistent: true,
          args: [Arg(name: 'directory', template: 'folders')]),
      Option(
          name: '--debug',
          description:
              'Output debug logs. Can also be set using \$OP_DEBUG environment variable',
          isPersistent: true),
      Option(
          name: '--encoding',
          description:
              'Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk',
          isPersistent: true,
          args: [
            Arg(name: 'type', suggestions: [
              FigSuggestion(name: 'UTF-8'),
              FigSuggestion(name: 'SHIFT_JIS'),
              FigSuggestion(name: 'gbk')
            ])
          ]),
      Option(
          name: '--format',
          description:
              'Use this output format. Can be \'human-readable\' or \'json\'. Can be set as the OP_FORMAT environment variable. (default "human-readable")',
          isPersistent: true,
          args: [
            Arg(name: 'string', suggestions: [
              FigSuggestion(name: 'human-readable'),
              FigSuggestion(name: 'json')
            ])
          ]),
      Option(
          name: ['-h', '--help'],
          description: 'Get help for op',
          isPersistent: true),
      Option(
          name: '--iso-timestamps',
          description:
              'Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable',
          isPersistent: true),
      Option(
          name: '--no-color',
          isPersistent: true,
          description: 'Print output without color'),
      Option(
          name: '--session',
          description:
              'Authenticate with this session token. 1Password CLI outputs session tokens for successful \'op signin\' commands when biometric unlock is disabled',
          isPersistent: true,
          args: [Arg(name: 'token')]),
      Option(name: ['-v', '--version'], description: 'Version for op')
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (suggestAccounts)
// const suggestAccounts: Fig.Generator = {
//   script: ["op", "account", "list", "--format", "json"],
//   postProcess: (out) => {
//     const json = JSON.parse(out) as Account[];
//     return json.map((account) => ({
//       name: account.email,
//       description: account.url,
//       insertValue: account.account_uuid,
//       icon,
//     }));
//   },
// };
// TS_GENERATOR_BLOCK_END
