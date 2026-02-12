// Auto-generated from TypeScript source: atlas.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `atlas` CLI
final FigSpec atlasSpec = FigSpec(
    name: 'atlas',
    description: 'CLI tool to manage MongoDB Atlas',
    subcommands: [
      Subcommand(
          name: 'config',
          description:
              'Manage your profile to store access settings for your MongoDB deployment',
          subcommands: [
            Subcommand(
                name: 'init',
                description:
                    'Configure a profile to store access settings for your MongoDB deployment',
                options: [
                  Option(
                      name: '--gov',
                      description: 'Create a default profile for atlas for gov')
                ]),
            Subcommand(
                name: 'set',
                description: 'Configure specific properties of a profile'),
            Subcommand(
                name: ['ls', 'list'],
                description: 'List available profiles',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description: 'Return a specific profile',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(name: ['mv', 'rename'], description: 'Rename a profile'),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a profile',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action')
                ])
          ]),
      Subcommand(
          name: 'auth',
          description: 'Manage the CLI\'s authentication state',
          subcommands: [
            Subcommand(
                name: 'login',
                description: 'Authenticate with MongoDB Atlas',
                options: [
                  Option(name: '--cm', description: 'Log in to Cloud Manager'),
                  Option(
                      name: '--gov',
                      description: 'Log in to Atlas for Government'),
                  Option(
                      name: '--loginOnly',
                      description: 'Skip profile configuration'),
                  Option(
                      name: '--noBrowser',
                      description: 'Don\'t try to open a browser session')
                ]),
            Subcommand(
                name: 'whoami',
                description:
                    'Verifies and displays information about your authentication state'),
            Subcommand(
                name: 'logout',
                description: 'Log out of the CLI',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action')
                ])
          ]),
      Subcommand(
          name: 'quickstart',
          description: 'Create and access an Atlas Cluster',
          options: [
            Option(
                name: '--accessListIp',
                description:
                    'IP address to be allowed to access the deployment',
                args: [Arg(name: 'accessListI')]),
            Option(
                name: '--clusterName',
                description: 'Name of the cluster',
                args: [Arg(name: 'clusterNam')]),
            Option(
                name: ['--default', '-Y'],
                description:
                    'Flag that indicates whether to run the Quickstart command with all the auto-generated values to deploy and access an Atlas cluster'),
            Option(
                name: '--force',
                description:
                    'If specified, skips asking for confirmation before proceeding with a requsted action'),
            Option(
                name: '--password',
                description: 'User\'s password',
                args: [Arg(name: 'passwor')]),
            Option(
                name: '--projectId',
                description:
                    'Project ID to use. Overrides the settings in the configuration file or environment variable',
                args: [Arg(name: 'projectI')]),
            Option(
                name: '--provider',
                description:
                    'Name of your cloud service provider. Valid values are AWS, AZURE, or GCP',
                args: [Arg(name: 'provide')]),
            Option(
                name: ['--region', '-r'],
                description:
                    'Physical location of your MongoDB cluster. For a complete list of supported AWS regions, see: https://docs.atlas.mongodb.com/reference/amazon-aws/#amazon-aws. For a complete list of supported Azure regions, see: https://docs.atlas.mongodb.com/reference/microsoft-azure/#microsoft-azure. For a complete list of supported GCP regions, see: https://docs.atlas.mongodb.com/reference/google-gcp/#google-gcp',
                args: [Arg(name: 'regio')]),
            Option(
                name: '--skipMongosh',
                description:
                    'Indicates whether to skip accessing your deployment with MongoDB Shell'),
            Option(
                name: '--skipSampleData',
                description:
                    'Indicates whether to skip loading sample data into your Atlas Cluster'),
            Option(
                name: '--tier',
                description: 'Tier for each data-bearing server in the cluster',
                args: [Arg(name: 'tier', defaultValue: 'M')]),
            Option(
                name: '--username',
                description: 'Username for authenticating to MongoDB',
                args: [Arg(name: 'usernam')])
          ]),
      Subcommand(
          name: ['project', 'projects'],
          description: 'Project operations',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'List projects',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: '--orgId',
                      description:
                          'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'orgI')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a project',
                options: [
                  Option(
                      name: '--govCloudRegionsOnly',
                      description:
                          'Only for AtlasGov projects. If specified, designates that the project uses only the AWS GovCloud region. If unspecified, the project uses only the AWS Standard region. You can\'t deploy clusters across AWS GovCloud and AWS Standard regions in the same project'),
                  Option(
                      name: '--orgId',
                      description:
                          'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'orgI')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--ownerId',
                      description:
                          'Unique 24-hexadecimal digit string that identifies the Atlas user account to be granted the Project Owner role on the specified project',
                      args: [Arg(name: 'ownerI')]),
                  Option(
                      name: '--withoutDefaultAlertSettings',
                      description:
                          'Flag that indicates whether to create the new project with the default alert settings enabled. This flag defaults to false. In this case, Atlas creates the project without the default alert settings. This is useful if you create projects programmatically and want to create your own alerts instead of using the default alert settings. To create a project that uses the default alert settings, set this flag to true')
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a project',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action')
                ]),
            Subcommand(
                name: ['show', 'get', 'describe'],
                description: 'Describe a project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(
                name: [
                  'apikeys',
                  'api-keys',
                  'apiKey',
                  'apikey',
                  'api-key',
                  'apiKeys',
                ],
                description: 'Manage API Keys for your project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List API Keys for your project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'create',
                      description: 'Create an API Key for your project',
                      options: [
                        Option(
                            name: '--desc',
                            description: 'Description of the API key',
                            args: [Arg(name: 'des')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--role',
                            description: 'List of roles for the API key',
                            args: [Arg(name: 'rol')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete an API Key for your project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['update', 'assign'],
                      description: 'Assign an API Key to a project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--role',
                            description: 'List of roles for the API key',
                            args: [Arg(name: 'rol')])
                      ])
                ]),
            Subcommand(
                name: ['user', 'users'],
                description: 'Manage users for a project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List all users for a project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete user from a project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ]),
            Subcommand(
                name: ['team', 'teams'],
                description: 'Teams operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'Get all teams in a project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'add',
                      description: 'Add team to a project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--role',
                            description:
                                'Project role you want to assign to the team',
                            args: [Arg(name: 'rol')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete team from a project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['updates', 'update'],
                      description: 'Update roles for a team in a project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--role',
                            description:
                                'Project role you want to assign to the team',
                            args: [Arg(name: 'rol')])
                      ])
                ]),
            Subcommand(
                name: ['invitation', 'invitations'],
                description: 'Invitation operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Retrieves all pending invitations to the specified project',
                      options: [
                        Option(
                            name: '--email',
                            description: 'User\'s email address',
                            args: [Arg(name: 'emai')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Retrieve details for one pending invitation to the specified project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Deletes one pending invitation to the specified project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['create', 'invite'],
                      description:
                          'Invites one user to the project that you specify',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--role',
                            description:
                                'User\'s roles  for the associated organization',
                            args: [Arg(name: 'rol')]),
                        Option(
                            name: '--teamId',
                            description: 'Unique identification of the team',
                            args: [Arg(name: 'teamI')])
                      ]),
                  Subcommand(
                      name: ['updates', 'update'],
                      description:
                          'Updates one pending invitation by invitationId or email to the project that you specify',
                      options: [
                        Option(
                            name: '--email',
                            description: 'User\'s email address',
                            args: [Arg(name: 'emai')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--role',
                            description:
                                'User\'s roles  for the associated organization',
                            args: [Arg(name: 'rol')])
                      ])
                ])
          ]),
      Subcommand(
          name: ['organization', 'orgs', 'org', 'organizations'],
          description: 'Organization operations',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'List organizations',
                options: [
                  Option(
                      name: '--includeDeleted',
                      description:
                          'If specified, Atlas includes the deleted organizations'),
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: '--name',
                      description:
                          'Performs a case-insensitive search for organizations which exactly match the specified name',
                      args: [Arg(name: 'nam')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')])
                ]),
            Subcommand(
                name: ['show', 'describe'],
                description: 'Describe an organizations',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create an organization',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete an organization',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action')
                ]),
            Subcommand(
                name: [
                  'apikeys',
                  'api-keys',
                  'apiKey',
                  'apikey',
                  'api-key',
                  'apiKeys',
                ],
                description: 'Organization API Keys operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List API Keys for your organization',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')])
                      ]),
                  Subcommand(
                      name: ['show', 'describe'],
                      description: 'Get a specific Organization API Key',
                      options: [
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')])
                      ]),
                  Subcommand(
                      name: ['updates', 'assign'],
                      description: 'Update an Organization API Key',
                      options: [
                        Option(
                            name: '--desc',
                            description: 'Description of the API key',
                            args: [Arg(name: 'des')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--role',
                            description: 'List of roles for the API key',
                            args: [Arg(name: 'rol')])
                      ]),
                  Subcommand(
                      name: 'create',
                      description: 'Create an Organization API Key',
                      options: [
                        Option(
                            name: '--desc',
                            description: 'Description of the API key',
                            args: [Arg(name: 'des')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--role',
                            description: 'List of roles for the API key',
                            args: [Arg(name: 'rol')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete an Organization API Key',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')])
                      ]),
                  Subcommand(
                      name: [
                        'accesslists',
                        'access-lists',
                        'accessList',
                        'accesslist',
                        'access-list',
                        'whitelists',
                        'whitelist',
                        'accessLists',
                      ],
                      description: 'Manage the IP access list for your API Key',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List IP access list entries for your API Key',
                            options: [
                              Option(
                                  name: '--limit',
                                  description: 'Number of items per page',
                                  args: [
                                    Arg(name: 'limit', defaultValue: '10')
                                  ]),
                              Option(
                                  name: '--orgId',
                                  description:
                                      'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'orgI')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--page',
                                  description: 'Page number',
                                  args: [Arg(name: 'page', defaultValue: '')])
                            ]),
                        Subcommand(
                            name: 'create',
                            description:
                                'Create an IP access list for your API Key',
                            options: [
                              Option(
                                  name: '--apiKey',
                                  description: 'API Key',
                                  args: [Arg(name: 'apiKe')]),
                              Option(
                                  name: '--cidr',
                                  description:
                                      'Whitelist entry in CIDR notation to be added for a given API key',
                                  args: [Arg(name: 'cid')]),
                              Option(
                                  name: '--ip',
                                  description:
                                      'IP address to be allowed for a given API key',
                                  args: [Arg(name: 'i')]),
                              Option(
                                  name: '--orgId',
                                  description:
                                      'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'orgI')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')])
                            ]),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete an IP access list from your API Key',
                            options: [
                              Option(
                                  name: '--apiKey',
                                  description: 'API Key',
                                  args: [Arg(name: 'apiKe')]),
                              Option(
                                  name: '--force',
                                  description:
                                      'If specified, skips asking for confirmation before proceeding with a requsted action'),
                              Option(
                                  name: '--orgId',
                                  description:
                                      'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'orgI')])
                            ])
                      ])
                ]),
            Subcommand(
                name: ['user', 'users'],
                description: 'Users operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List users in a organization',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')])
                      ])
                ]),
            Subcommand(
                name: ['invitation', 'invitations'],
                description: 'Invitation operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Retrieves all pending invitations to the specified organization',
                      options: [
                        Option(
                            name: '--email',
                            description: 'User\'s email address',
                            args: [Arg(name: 'emai')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Retrieve details for one pending invitation to the specified organization',
                      options: [
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Deletes one pending invitation to the specified organization',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')])
                      ]),
                  Subcommand(
                      name: ['updates', 'update'],
                      description:
                          'Updates one pending invitation by invitationId or email to the project that you specify',
                      options: [
                        Option(
                            name: '--email',
                            description: 'User\'s email address',
                            args: [Arg(name: 'emai')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--role',
                            description:
                                'User\'s roles  for the associated organization',
                            args: [Arg(name: 'rol')])
                      ]),
                  Subcommand(
                      name: ['create', 'invite'],
                      description:
                          'Invites one user to the organization that you specify',
                      options: [
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--role',
                            description:
                                'User\'s roles  for the associated organization',
                            args: [Arg(name: 'rol')]),
                        Option(
                            name: '--teamId',
                            description: 'Unique identification of the team',
                            args: [Arg(name: 'teamI')])
                      ])
                ])
          ]),
      Subcommand(
          name: [
            'globalapikeys',
            'global-api-keys',
            'globalApiKey',
            'globalapikey',
            'global-api-key',
            'globalApiKeys',
          ],
          description: 'Global API Keys operations',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'List Global API Keys',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')])
                ]),
            Subcommand(
                name: ['show', 'describe'],
                description: 'Get a specific Global API Key',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a Global API Key',
                options: [
                  Option(
                      name: '--desc',
                      description: 'Description of the API key',
                      args: [Arg(name: 'des')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--role',
                      description: 'List of roles for the API key',
                      args: [Arg(name: 'rol')])
                ]),
            Subcommand(
                name: 'update',
                description: 'Update a Global API Key',
                options: [
                  Option(
                      name: '--desc',
                      description: 'Description of the API key',
                      args: [Arg(name: 'des')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--role',
                      description: 'List of roles for the API key',
                      args: [Arg(name: 'rol')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a Global API Key',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action')
                ])
          ]),
      Subcommand(
          name: [
            'globalaccesslists',
            'global-access-lists',
            'globalAccessList',
            'globalaccesslist',
            'global-access-list',
            'globalWhitelists',
            'globalwhitelists',
            'global-whitelists',
            'globalWhitelist',
            'globalwhitelist',
            'global-whitelist',
            'globalAccessLists',
          ],
          description: 'Manage IP access list for Global API Key',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description:
                    'List Atlas IP access list entries for Global API Key',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')])
                ]),
            Subcommand(
                name: ['show', 'describe'],
                description: 'Return one Global IP access list entry',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create an IP access list for Global API Key',
                options: [
                  Option(
                      name: '--cidr',
                      description:
                          'Whitelist entry in CIDR notation to be added for a given API key',
                      args: [Arg(name: 'cid')]),
                  Option(
                      name: '--desc',
                      description:
                          'IP address to be allowed for a given API key',
                      args: [Arg(name: 'des')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete an IP access list from Global API Key',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action')
                ])
          ]),
      Subcommand(
          name: ['user', 'users'],
          description: 'Users operations',
          subcommands: [
            Subcommand(name: 'invite', description: 'Invite a user', options: [
              Option(
                  name: '--country',
                  description:
                      'The ISO 3166-1 alpha two-letter country code of the user\'s country of residence',
                  args: [Arg(name: 'countr')]),
              Option(
                  name: '--email',
                  description: 'User\'s email address',
                  args: [Arg(name: 'emai')]),
              Option(
                  name: '--firstName',
                  description: 'User\'s first name',
                  args: [Arg(name: 'firstNam')]),
              Option(
                  name: '--lastName',
                  description: 'User\'s last name',
                  args: [Arg(name: 'lastNam')]),
              Option(
                  name: '--mobile',
                  description: 'The user\'s mobile or cell phone number',
                  args: [Arg(name: 'mobil')]),
              Option(
                  name: '--orgRole',
                  description: 'User\'s roles  for the associated organization',
                  args: [Arg(name: 'orgRol')]),
              Option(
                  name: ['--output', '-o'],
                  description:
                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                  args: [Arg(name: 'outpu')]),
              Option(
                  name: '--password',
                  description: 'User\'s password',
                  args: [Arg(name: 'passwor')]),
              Option(
                  name: '--projectRole',
                  description: 'User\'s roles  for the associated project',
                  args: [Arg(name: 'projectRol')]),
              Option(
                  name: '--username',
                  description: 'Username of the user',
                  args: [Arg(name: 'usernam')])
            ]),
            Subcommand(
                name: ['get', 'describe'],
                description: 'Get a user by username or id',
                options: [
                  Option(
                      name: '--id',
                      description: 'Unique identifier of the user',
                      args: [Arg(name: 'i')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--username',
                      description: 'Username of the user',
                      args: [Arg(name: 'usernam')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete an Ops Manager user',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action')
                ])
          ]),
      Subcommand(
          name: ['team', 'teams'],
          description: 'Teams operations',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'Get all teams in an organization',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: '--orgId',
                      description:
                          'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'orgI')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description: 'Get a team in an organization',
                options: [
                  Option(
                      name: '--id',
                      description: 'Unique identification of the team',
                      args: [Arg(name: 'i')]),
                  Option(
                      name: '--name',
                      description: 'Name of the team',
                      args: [Arg(name: 'nam')]),
                  Option(
                      name: '--orgId',
                      description:
                          'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'orgI')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a team in an organization',
                options: [
                  Option(
                      name: '--orgId',
                      description:
                          'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'orgI')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--username',
                      description: 'List of usernames to add to the new team',
                      args: [Arg(name: 'usernam')])
                ]),
            Subcommand(
                name: ['user', 'users'],
                description: 'Users operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List users of a team',
                      options: [
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--teamId',
                            description: 'Unique identification of the team',
                            args: [Arg(name: 'teamI')])
                      ]),
                  Subcommand(
                      name: 'add',
                      description: 'Add a user to a team',
                      options: [
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--teamId',
                            description: 'Unique identification of the team',
                            args: [Arg(name: 'teamI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete user from a team',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: '--teamId',
                            description: 'Unique identification of the team',
                            args: [Arg(name: 'teamI')])
                      ])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a team from an organization',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--orgId',
                      description:
                          'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'orgI')])
                ])
          ]),
      Subcommand(
          name: ['cluster', 'clusters'],
          description: 'Manage clusters for your project',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'List clusters for your project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description: 'Describe a cluster',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create one cluster in the specified project',
                options: [
                  Option(
                      name: '--backup',
                      description:
                          'If true, enables Continuous Cloud Backup for your deployment'),
                  Option(
                      name: '--biConnector',
                      description:
                          'If true, enables BI Connector for Atlas on the deployment'),
                  Option(
                      name: '--diskSizeGB',
                      description:
                          'Capacity, in gigabytes, of the host\'s root volume',
                      args: [Arg(name: 'diskSizeGB', defaultValue: '')]),
                  Option(
                      name: ['--file', '-f'],
                      description:
                          'File name to use, optional file with a json cluster configuration',
                      args: [
                        Arg(name: 'file', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--mdbVersion',
                      description: 'MongoDB version of the cluster to deploy',
                      args: [Arg(name: 'mdbVersio')]),
                  Option(
                      name: ['--members', '-m'],
                      description: 'Number of members in the replica set',
                      args: [Arg(name: 'members', defaultValue: '')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--provider',
                      description:
                          'Name of your cloud service provider. Valid values are AWS, AZURE, or GCP',
                      args: [Arg(name: 'provide')]),
                  Option(
                      name: ['--region', '-r'],
                      description:
                          'Physical location of your MongoDB cluster. For a complete list of supported AWS regions, see: https://docs.atlas.mongodb.com/reference/amazon-aws/#amazon-aws. For a complete list of supported Azure regions, see: https://docs.atlas.mongodb.com/reference/microsoft-azure/#microsoft-azure. For a complete list of supported GCP regions, see: https://docs.atlas.mongodb.com/reference/google-gcp/#google-gcp',
                      args: [Arg(name: 'regio')]),
                  Option(
                      name: ['--shards', '-s'],
                      description: 'Number of shards in the cluster',
                      args: [Arg(name: 'shards', defaultValue: '')]),
                  Option(
                      name: '--tier',
                      description:
                          'Tier for each data-bearing server in the cluster',
                      args: [Arg(name: 'tier', defaultValue: 'M')]),
                  Option(
                      name: '--type',
                      description:
                          'Type of the cluster that you want to create. Valid values are REPLICASET or SHARDED',
                      args: [Arg(name: 'type', defaultValue: 'REPLICASE')])
                ]),
            Subcommand(
                name: 'watch',
                description: 'Watch for a cluster to be available',
                options: [
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'update',
                description: 'Update a MongoDB cluster',
                options: [
                  Option(
                      name: '--diskSizeGB',
                      description:
                          'Capacity, in gigabytes, of the host\'s root volume',
                      args: [Arg(name: 'diskSizeGB', defaultValue: '')]),
                  Option(
                      name: ['--file', '-f'],
                      description:
                          'File name to use, optional file with a json cluster configuration',
                      args: [
                        Arg(name: 'file', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--mdbVersion',
                      description: 'MongoDB version of the cluster to deploy',
                      args: [Arg(name: 'mdbVersio')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--tier',
                      description:
                          'Tier for each data-bearing server in the cluster',
                      args: [Arg(name: 'tie')])
                ]),
            Subcommand(
                name: 'pause',
                description: 'Pause a running MongoDB cluster in Atlas',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'start',
                description: 'Start a paused MongoDB cluster in Atlas',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a cluster from your project',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'loadSampleData',
                description: 'Load sample data into a MongoDB cluster in Atlas',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['index', 'indexes'],
                description: 'Manage cluster rolling indexes for your project',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description:
                          'Create a rolling index for your MongoDB cluster',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--collection',
                            description: 'Collection name',
                            args: [Arg(name: 'collectio')]),
                        Option(
                            name: '--db',
                            description: 'Database name',
                            args: [Arg(name: 'd')]),
                        Option(
                            name: '--key',
                            description:
                                'Field to be indexed and the type of index in the following format: field:type',
                            args: [Arg(name: 'ke')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--sparse',
                            description:
                                'Flag that indicates whether Atlas should create a sparse index')
                      ])
                ]),
            Subcommand(
                name: ['fts', 'search'],
                description: 'Manage Atlas Search for your cluster',
                subcommands: [
                  Subcommand(
                      name: ['index', 'indexes'],
                      description:
                          'Manage Atlas Search indexes for your cluster',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List Atlas search indexes for a cluster',
                            options: [
                              Option(
                                  name: '--clusterName',
                                  description: 'Name of the cluster',
                                  args: [Arg(name: 'clusterNam')]),
                              Option(
                                  name: '--collection',
                                  description: 'Collection name',
                                  args: [Arg(name: 'collectio')]),
                              Option(
                                  name: '--db',
                                  description: 'Database name',
                                  args: [Arg(name: 'd')]),
                              Option(
                                  name: '--limit',
                                  description: 'Number of items per page',
                                  args: [
                                    Arg(name: 'limit', defaultValue: '10')
                                  ]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--page',
                                  description: 'Page number',
                                  args: [Arg(name: 'page', defaultValue: '')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: 'create',
                            description: 'Create a search index for a cluster',
                            options: [
                              Option(
                                  name: '--analyzer',
                                  description:
                                      'Analyzer to use when creating the index',
                                  args: [
                                    Arg(
                                        name: 'analyzer',
                                        defaultValue: 'lucene.standar')
                                  ]),
                              Option(
                                  name: '--clusterName',
                                  description: 'Name of the cluster',
                                  args: [Arg(name: 'clusterNam')]),
                              Option(
                                  name: '--collection',
                                  description: 'Collection name',
                                  args: [Arg(name: 'collectio')]),
                              Option(
                                  name: '--db',
                                  description: 'Database name',
                                  args: [Arg(name: 'd')]),
                              Option(
                                  name: '--dynamic',
                                  description:
                                      'Indicates whether the index uses dynamic or static mappings'),
                              Option(
                                  name: '--field',
                                  description: 'Static field specifications',
                                  args: [Arg(name: 'fiel')]),
                              Option(
                                  name: ['--file', '-f'],
                                  description:
                                      'File name to use, file with a json index configuration',
                                  args: [
                                    Arg(name: 'file', template: ['filepaths'])
                                  ]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')]),
                              Option(
                                  name: '--searchAnalyzer',
                                  description:
                                      'Analyzer to use when searching the index',
                                  args: [
                                    Arg(
                                        name: 'searchAnalyzer',
                                        defaultValue: 'lucene.standard')
                                  ])
                            ]),
                        Subcommand(
                            name: 'describe',
                            description:
                                'Describe a search index for a cluster',
                            options: [
                              Option(
                                  name: '--clusterName',
                                  description: 'Name of the cluster',
                                  args: [Arg(name: 'clusterNam')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: 'update',
                            description: 'Update a search index for a cluster',
                            options: [
                              Option(
                                  name: '--analyzer',
                                  description:
                                      'Analyzer to use when creating the index',
                                  args: [
                                    Arg(
                                        name: 'analyzer',
                                        defaultValue: 'lucene.standar')
                                  ]),
                              Option(
                                  name: '--clusterName',
                                  description: 'Name of the cluster',
                                  args: [Arg(name: 'clusterNam')]),
                              Option(
                                  name: '--collection',
                                  description: 'Collection name',
                                  args: [Arg(name: 'collectio')]),
                              Option(
                                  name: '--db',
                                  description: 'Database name',
                                  args: [Arg(name: 'd')]),
                              Option(
                                  name: '--dynamic',
                                  description:
                                      'Indicates whether the index uses dynamic or static mappings'),
                              Option(
                                  name: '--field',
                                  description: 'Static field specifications',
                                  args: [Arg(name: 'fiel')]),
                              Option(
                                  name: ['--file', '-f'],
                                  description:
                                      'File name to use, file with a json index configuration',
                                  args: [
                                    Arg(name: 'file', template: ['filepaths'])
                                  ]),
                              Option(
                                  name: '--indexName',
                                  description: 'Name of the index',
                                  args: [Arg(name: 'indexNam')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')]),
                              Option(
                                  name: '--searchAnalyzer',
                                  description:
                                      'Analyzer to use when searching the index',
                                  args: [
                                    Arg(
                                        name: 'searchAnalyzer',
                                        defaultValue: 'lucene.standard')
                                  ])
                            ]),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description: 'Delete a search index from a cluster',
                            options: [
                              Option(
                                  name: '--clusterName',
                                  description: 'Name of the cluster',
                                  args: [Arg(name: 'clusterNam')]),
                              Option(
                                  name: '--force',
                                  description:
                                      'If specified, skips asking for confirmation before proceeding with a requsted action'),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ])
                      ])
                ]),
            Subcommand(
                name: [
                  'onlinearchives',
                  'online-archives',
                  'onlineArchive',
                  'onlinearchive',
                  'online-archive',
                  'onlineArchives',
                ],
                description: 'Manage online archives for your cluster',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List online archives for a cluster',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'describe',
                      description: 'Describe an online archive for a cluster',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'create',
                      description: 'Create an online archive for a cluster',
                      options: [
                        Option(
                            name: '--archiveAfter',
                            description:
                                'Number of days that specifies the age limit for the data in the live Atlas cluster',
                            args: [
                              Arg(name: 'archiveAfter', defaultValue: '')
                            ]),
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--collection',
                            description: 'Collection name',
                            args: [Arg(name: 'collectio')]),
                        Option(
                            name: '--dateField',
                            description:
                                'Name of an already indexed date field from the documents',
                            args: [Arg(name: 'dateFiel')]),
                        Option(
                            name: '--dateFormat',
                            description:
                                'Date format for the date field. Valid values are ISODATE, EPOCH_SECONDS, EPOCH_MILLIS, or EPOCH_NANOSECONDS',
                            args: [
                              Arg(name: 'dateFormat', defaultValue: 'ISODAT')
                            ]),
                        Option(
                            name: '--db',
                            description: 'Database name',
                            args: [Arg(name: 'd')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--partition',
                            description:
                                'Fields to use to partition data. You can specify up to two frequently queried fields to use for partitioning data',
                            args: [Arg(name: 'partitio')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'update',
                      description: 'Update an online archive for a cluster',
                      options: [
                        Option(
                            name: '--archiveAfter',
                            description:
                                'Number of days that specifies the age limit for the data in the live Atlas cluster',
                            args: [
                              Arg(name: 'archiveAfter', defaultValue: '')
                            ]),
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'start',
                      description:
                          'Start a paused online archive from a cluster',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'pause',
                      description: 'Pause an online archive from a cluster',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete an online archive from a cluster',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'watch',
                      description: 'Watch for an archive to be available',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ]),
            Subcommand(
                name: [
                  'connectionstrings',
                  'connection-strings',
                  'connectionString',
                  'connectionstring',
                  'connection-string',
                  'cs',
                  'connectionStrings',
                ],
                description: 'Manage MongoDB cluster connection string',
                subcommands: [
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Retrieve the SRV connection string of your MongoDB cluster',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--type',
                            description:
                                'When set to \'private\', retrieves the connection string for the network peering endpoint',
                            args: [Arg(name: 'type', defaultValue: 'standar')])
                      ])
                ]),
            Subcommand(
                name: [
                  'availableregions',
                  'available-regions',
                  'availableRegion',
                  'availableregion',
                  'available-region',
                  'availableRegions',
                ],
                description: 'Manage available regions for your project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List available regions for your project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--provider',
                            description:
                                'Name of your cloud service provider. Valid values are AWS, AZURE, or GCP',
                            args: [Arg(name: 'provide')]),
                        Option(
                            name: '--tier',
                            description:
                                'Tier for each data-bearing server in the cluster',
                            args: [Arg(name: 'tie')])
                      ])
                ])
          ]),
      Subcommand(
          name: ['dbuser', 'dbusers'],
          description: 'Manage database users for your project',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'List Atlas database users for your project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description:
                    'Return a single Atlas database user for your project',
                options: [
                  Option(
                      name: '--authDB',
                      description: 'Authentication database name',
                      args: [Arg(name: 'authDB', defaultValue: 'admi')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a database user for your project',
                options: [
                  Option(
                      name: '--awsIAMType',
                      description:
                          'AWS IAM method by which the provided username is authenticated. Valid values are NONE, USER, or ROLE',
                      args: [Arg(name: 'awsIAMType', defaultValue: 'NON')]),
                  Option(
                      name: '--deleteAfter',
                      description:
                          'Timestamp in ISO 8601 in UTC after which Atlas deletes the user',
                      args: [Arg(name: 'deleteAfte')]),
                  Option(
                      name: '--ldapType',
                      description:
                          'LDAP method by which the provided username is authenticated. Valid values are NONE, USER, or GROUP',
                      args: [Arg(name: 'ldapType', defaultValue: 'NON')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: ['--password', '-p'],
                      description: 'User\'s password',
                      args: [Arg(name: 'passwor')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--role',
                      description:
                          'User\'s roles and the databases or collections on which the roles apply',
                      args: [Arg(name: 'rol')]),
                  Option(
                      name: '--scope',
                      description:
                          'Array of clusters and Atlas Data Lakes that this user has access to',
                      args: [Arg(name: 'scop')]),
                  Option(
                      name: ['--username', '-u'],
                      description: 'Username for authenticating to MongoDB',
                      args: [Arg(name: 'usernam')]),
                  Option(
                      name: '--x509Type',
                      description:
                          'X.509 method by which the provided username is authenticated.  Valid values are NONE, MANAGED, or CUSTOMER',
                      args: [Arg(name: 'x509Type', defaultValue: 'NON')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a database user for your project',
                options: [
                  Option(
                      name: '--authDB',
                      description: 'Authentication database name',
                      args: [Arg(name: 'authDB', defaultValue: 'admi')]),
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'update',
                description: 'Update a database user for your project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: ['--password', '-p'],
                      description: 'User\'s password',
                      args: [Arg(name: 'passwor')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--role',
                      description:
                          'User\'s roles and the databases or collections on which the roles apply',
                      args: [Arg(name: 'rol')]),
                  Option(
                      name: '--scope',
                      description:
                          'Array of clusters and Atlas Data Lakes that this user has access to',
                      args: [Arg(name: 'scop')]),
                  Option(
                      name: ['--username', '-u'],
                      description: 'Username for authenticating to MongoDB',
                      args: [Arg(name: 'usernam')])
                ]),
            Subcommand(
                name: ['cert', 'certs'],
                description:
                    'Manage Atlas x509 certificates for your database users',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List of all Atlas-managed, unexpired certificates for a database user',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'create',
                      description:
                          'Create a new Atlas-managed X.509 certificate for the specified database user',
                      options: [
                        Option(
                            name: '--monthsUntilExpiration',
                            description:
                                'Number of months that the certificate is valid for',
                            args: [
                              Arg(
                                  name: 'monthsUntilExpiration',
                                  defaultValue: '')
                            ]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--username',
                            description: 'Username of a database user',
                            args: [Arg(name: 'usernam')])
                      ])
                ])
          ]),
      Subcommand(
          name: [
            'customdbroles',
            'custom-db-roles',
            'customDbRole',
            'customdbrole',
            'custom-db-role',
            'customDBRoles',
            'customDbRoles',
          ],
          description: 'Manage custom database roles for your project',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Create a custom database role for your project',
                options: [
                  Option(
                      name: '--inheritedRole',
                      description:
                          'List of inherited roles and the database on which the role is granted',
                      args: [Arg(name: 'inheritedRol')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--privilege',
                      description:
                          'List of actions per database and collection. If no database or collections are provided, cluster scope is assumed',
                      args: [Arg(name: 'privileg')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description:
                    'Return a single custom database role for your project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['ls', 'list'],
                description: 'List custom database roles for your project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a custom database role for your project',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'update',
                description: 'Update a custom database role for your project',
                options: [
                  Option(
                      name: '--append',
                      description:
                          'The input action and inheritedRoles that will be appended to the existing role'),
                  Option(
                      name: '--inheritedRole',
                      description:
                          'List of inherited roles and the database on which the role is granted',
                      args: [Arg(name: 'inheritedRol')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--privilege',
                      description:
                          'List of actions per database and collection. If no database or collections are provided, cluster scope is assumed',
                      args: [Arg(name: 'privileg')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ])
          ]),
      Subcommand(
          name: [
            'accesslists',
            'access-lists',
            'accessList',
            'accesslist',
            'access-list',
            'whitelists',
            'whitelist',
            'accessLists',
          ],
          description: 'Manage the access IP access list for your project',
          subcommands: [
            Subcommand(
                name: ['get', 'describe'],
                description: 'Describe an IP access list entry',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['ls', 'list'],
                description:
                    'List Atlas IP access list entries for your project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create an IP access list for your project',
                options: [
                  Option(
                      name: '--comment',
                      description:
                          'Optional description or comment for the entry',
                      args: [Arg(name: 'commen')]),
                  Option(
                      name: '--currentIp',
                      description:
                          'Flag that indicates whether to use the IP Address from the host that is currently executing the command. Only applicable for type ipAddress entries. To learn more, see: https://docs.mongodb.com/mongocli/master/command/mongocli-atlas-accessLists-create/'),
                  Option(
                      name: '--deleteAfter',
                      description:
                          'ISO-8601-formatted UTC date after which Atlas removes the value from the entry',
                      args: [Arg(name: 'deleteAfte')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--type',
                      description:
                          'Type of access list entry. Valid values are cidrBlock, ipAddress, or awsSecurityGroup',
                      args: [Arg(name: 'type', defaultValue: 'ipAddres')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete an IP access list from your project',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ])
          ]),
      Subcommand(
          name: [
            'datalakes',
            'data-lakes',
            'dataLake',
            'datalake',
            'data-lake',
            'dataLakes',
          ],
          description: 'Manage Atlas Data Lakes for your project',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'List Atlas Data Lakes for your project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'describe',
                description: 'Return a specific data lake',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a new data lake for your project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--role',
                      description:
                          'Amazon Resource Name (ARN) of the role which Atlas Data Lake uses for accessing the data stores',
                      args: [Arg(name: 'rol')]),
                  Option(
                      name: '--testBucket',
                      description:
                          'Name of an Amazon S3 data bucket which Atlas Data Lake uses to validate the provided role',
                      args: [Arg(name: 'testBucke')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a data lake from your project',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'update',
                description: 'Update a data lake for your project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--region',
                      description:
                          'Name of the region to which Atlas Data Lake routes client connections for data processing',
                      args: [Arg(name: 'regio')]),
                  Option(
                      name: '--role',
                      description:
                          'Amazon Resource Name (ARN) of the role which Atlas Data Lake uses for accessing the data stores',
                      args: [Arg(name: 'rol')]),
                  Option(
                      name: '--testBucket',
                      description:
                          'Name of an Amazon S3 data bucket which Atlas Data Lake uses to validate the provided role',
                      args: [Arg(name: 'testBucke')])
                ])
          ]),
      Subcommand(
          name: ['alert', 'alerts'],
          description: 'Manage alerts for your project',
          subcommands: [
            Subcommand(
                name: ['config', 'settings'],
                description: 'Manages alerts configuration for your project',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description:
                          'Creates one alert configuration in the specified project',
                      options: [
                        Option(
                            name: '--apiKey',
                            description:
                                'Datadog API Key, Opsgenie API Key, VictorOps API key',
                            args: [Arg(name: 'apiKe')]),
                        Option(
                            name: '--enabled',
                            description:
                                'If set to true, the alert configuration is enabled'),
                        Option(
                            name: '--event',
                            description:
                                'Type of the event that triggered the alert',
                            args: [Arg(name: 'even')]),
                        Option(
                            name: '--matcherFieldName',
                            description:
                                'Name of the field in the target object to match on',
                            args: [Arg(name: 'matcherFieldNam')]),
                        Option(
                            name: '--matcherOperator',
                            description: 'Operator to test the field\'s value',
                            args: [Arg(name: 'matcherOperato')]),
                        Option(
                            name: '--matcherValue',
                            description:
                                'Value to test with the specified operator',
                            args: [Arg(name: 'matcherValu')]),
                        Option(
                            name: '--metricMode',
                            description:
                                'If specified, Atlas computes the current metric value as an average',
                            args: [Arg(name: 'metricMod')]),
                        Option(
                            name: '--metricName',
                            description:
                                'Name of the metric against which Atlas checks the configured alert',
                            args: [Arg(name: 'metricNam')]),
                        Option(
                            name: '--metricOperator',
                            description:
                                'Operator to apply when checking the current metric value against the threshold value',
                            args: [Arg(name: 'metricOperato')]),
                        Option(
                            name: '--metricThreshold',
                            description:
                                'Threshold value outside of which an alert will be triggered',
                            args: [
                              Arg(name: 'metricThreshold', defaultValue: '')
                            ]),
                        Option(
                            name: '--metricUnits',
                            description: 'Units for the threshold value',
                            args: [Arg(name: 'metricUnit')]),
                        Option(
                            name: '--notificationChannelName',
                            description:
                                'Slack channel name. Required for the SLACK notifications type',
                            args: [Arg(name: 'notificationChannelNam')]),
                        Option(
                            name: '--notificationDelayMin',
                            description:
                                'Number of minutes to wait after an alert condition is detected before sending out the first notification',
                            args: [
                              Arg(
                                  name: 'notificationDelayMin',
                                  defaultValue: '')
                            ]),
                        Option(
                            name: '--notificationEmailAddress',
                            description:
                                'Email address to which alert notifications are sent',
                            args: [Arg(name: 'notificationEmailAddres')]),
                        Option(
                            name: '--notificationEmailEnabled',
                            description:
                                'Flag indicating whether email notifications should be sent'),
                        Option(
                            name: '--notificationFlowName',
                            description:
                                'Flowdock Flow name in lower-case letters for sending alert notifications',
                            args: [Arg(name: 'notificationFlowNam')]),
                        Option(
                            name: '--notificationIntervalMin',
                            description:
                                'Number of minutes to wait between successive notifications for unacknowledged alerts that are not resolved',
                            args: [
                              Arg(
                                  name: 'notificationIntervalMin',
                                  defaultValue: '')
                            ]),
                        Option(
                            name: '--notificationMobileNumber',
                            description:
                                'Mobile number to which alert notifications are sent',
                            args: [Arg(name: 'notificationMobileNumbe')]),
                        Option(
                            name: '--notificationOrgName',
                            description:
                                'Flowdock organization\'s name in lower-case letters',
                            args: [Arg(name: 'notificationOrgNam')]),
                        Option(
                            name: '--notificationRegion',
                            description:
                                'Region that indicates which API URL to use',
                            args: [Arg(name: 'notificationRegio')]),
                        Option(
                            name: '--notificationServiceKey',
                            description: 'PagerDuty service key',
                            args: [Arg(name: 'notificationServiceKe')]),
                        Option(
                            name: '--notificationSmsEnabled',
                            description:
                                'Flag indicating whether text message notifications should be sent'),
                        Option(
                            name: '--notificationTeamId',
                            description: 'Unique identifier of a team',
                            args: [Arg(name: 'notificationTeamI')]),
                        Option(
                            name: '--notificationToken',
                            description:
                                'Slack API token, Bot token, or Flowdock personal API token',
                            args: [Arg(name: 'notificationToke')]),
                        Option(
                            name: '--notificationType',
                            description:
                                'Type of alert notification. The values are DATADOG, EMAIL, FLOWDOCK, GROUP (Project), ORG, OPS_GENIE, PAGER_DUTY, SLACK, SMS, USER, or VICTOR_OPS',
                            args: [Arg(name: 'notificationTyp')]),
                        Option(
                            name: '--notificationUsername',
                            description:
                                'Name of the Atlas user to which to send notifications',
                            args: [Arg(name: 'notificationUsernam')]),
                        Option(
                            name: '--notificationVictorOpsRoutingKey',
                            description: 'VictorOps routing key',
                            args: [
                              Arg(name: 'notificationVictorOpsRoutingKe')
                            ]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Returns alert configurations for the specified project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Deletes the specified alert configuration in a specified project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['field', 'fields'],
                      description:
                          'Manages alert configuration fields for your project',
                      subcommands: [
                        Subcommand(
                            name: ['types', 'type'],
                            description:
                                'Lists available field types for your alert configurations',
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')])
                            ])
                      ]),
                  Subcommand(
                      name: 'update',
                      description:
                          'Updates one alert configuration in the specified project',
                      options: [
                        Option(
                            name: '--apiKey',
                            description:
                                'Datadog API Key, Opsgenie API Key, VictorOps API key',
                            args: [Arg(name: 'apiKe')]),
                        Option(
                            name: '--enabled',
                            description:
                                'If set to true, the alert configuration is enabled'),
                        Option(
                            name: '--event',
                            description:
                                'Type of the event that triggered the alert',
                            args: [Arg(name: 'even')]),
                        Option(
                            name: '--matcherFieldName',
                            description:
                                'Name of the field in the target object to match on',
                            args: [Arg(name: 'matcherFieldNam')]),
                        Option(
                            name: '--matcherOperator',
                            description: 'Operator to test the field\'s value',
                            args: [Arg(name: 'matcherOperato')]),
                        Option(
                            name: '--matcherValue',
                            description:
                                'Value to test with the specified operator',
                            args: [Arg(name: 'matcherValu')]),
                        Option(
                            name: '--metricMode',
                            description:
                                'If specified, Atlas computes the current metric value as an average',
                            args: [Arg(name: 'metricMod')]),
                        Option(
                            name: '--metricName',
                            description:
                                'Name of the metric against which Atlas checks the configured alert',
                            args: [Arg(name: 'metricNam')]),
                        Option(
                            name: '--metricOperator',
                            description:
                                'Operator to apply when checking the current metric value against the threshold value',
                            args: [Arg(name: 'metricOperato')]),
                        Option(
                            name: '--metricThreshold',
                            description:
                                'Threshold value outside of which an alert will be triggered',
                            args: [
                              Arg(name: 'metricThreshold', defaultValue: '')
                            ]),
                        Option(
                            name: '--metricUnits',
                            description: 'Units for the threshold value',
                            args: [Arg(name: 'metricUnit')]),
                        Option(
                            name: '--notificationChannelName',
                            description:
                                'Slack channel name. Required for the SLACK notifications type',
                            args: [Arg(name: 'notificationChannelNam')]),
                        Option(
                            name: '--notificationDelayMin',
                            description:
                                'Number of minutes to wait after an alert condition is detected before sending out the first notification',
                            args: [
                              Arg(
                                  name: 'notificationDelayMin',
                                  defaultValue: '')
                            ]),
                        Option(
                            name: '--notificationEmailAddress',
                            description:
                                'Email address to which alert notifications are sent',
                            args: [Arg(name: 'notificationEmailAddres')]),
                        Option(
                            name: '--notificationEmailEnabled',
                            description:
                                'Flag indicating whether email notifications should be sent'),
                        Option(
                            name: '--notificationFlowName',
                            description:
                                'Flowdock Flow name in lower-case letters for sending alert notifications',
                            args: [Arg(name: 'notificationFlowNam')]),
                        Option(
                            name: '--notificationIntervalMin',
                            description:
                                'Number of minutes to wait between successive notifications for unacknowledged alerts that are not resolved',
                            args: [
                              Arg(
                                  name: 'notificationIntervalMin',
                                  defaultValue: '')
                            ]),
                        Option(
                            name: '--notificationMobileNumber',
                            description:
                                'Mobile number to which alert notifications are sent',
                            args: [Arg(name: 'notificationMobileNumbe')]),
                        Option(
                            name: '--notificationOrgName',
                            description:
                                'Flowdock organization\'s name in lower-case letters',
                            args: [Arg(name: 'notificationOrgNam')]),
                        Option(
                            name: '--notificationRegion',
                            description:
                                'Region that indicates which API URL to use',
                            args: [Arg(name: 'notificationRegio')]),
                        Option(
                            name: '--notificationServiceKey',
                            description: 'PagerDuty service key',
                            args: [Arg(name: 'notificationServiceKe')]),
                        Option(
                            name: '--notificationSmsEnabled',
                            description:
                                'Flag indicating whether text message notifications should be sent'),
                        Option(
                            name: '--notificationTeamId',
                            description: 'Unique identifier of a team',
                            args: [Arg(name: 'notificationTeamI')]),
                        Option(
                            name: '--notificationToken',
                            description:
                                'Slack API token, Bot token, or Flowdock personal API token',
                            args: [Arg(name: 'notificationToke')]),
                        Option(
                            name: '--notificationType',
                            description:
                                'Type of alert notification. The values are DATADOG, EMAIL, FLOWDOCK, GROUP (Project), ORG, OPS_GENIE, PAGER_DUTY, SLACK, SMS, USER, or VICTOR_OPS',
                            args: [Arg(name: 'notificationTyp')]),
                        Option(
                            name: '--notificationUsername',
                            description:
                                'Name of the Atlas user to which to send notifications',
                            args: [Arg(name: 'notificationUsernam')]),
                        Option(
                            name: '--notificationVictorOpsRoutingKey',
                            description: 'VictorOps routing key',
                            args: [
                              Arg(name: 'notificationVictorOpsRoutingKe')
                            ]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description: 'Retrieves one alert for the specified project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['ls', 'list'],
                description:
                    'Retrieves all alerts for the specified Atlas project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--status',
                      description:
                          'Alert\'s status. The values are TRACKING, OPEN, CLOSED, and CANCELED',
                      args: [Arg(name: 'statu')])
                ]),
            Subcommand(
                name: ['ack', 'acknowledge'],
                description: 'Acknowledges one alert for the specified project',
                options: [
                  Option(
                      name: '--comment',
                      description:
                          'Optional description or comment for the entry',
                      args: [Arg(name: 'commen')]),
                  Option(
                      name: ['--forever', '-F'],
                      description: 'Acknowledges an alert \'forever\''),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--until',
                      description:
                          'Time, in ISO 8601 format, until which the alert has been acknowledged. mongocli returns this value after the alert has been acknowledged',
                      args: [Arg(name: 'unti')])
                ]),
            Subcommand(
                name: ['unack', 'unacknowledge'],
                description:
                    'Unacknowledges one alert for the specified project',
                options: [
                  Option(
                      name: '--comment',
                      description:
                          'Optional description or comment for the entry',
                      args: [Arg(name: 'commen')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'global',
                description:
                    'Retrieves all the global alerts for the specified Ops Manager project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Returns all global alerts for the specified Ops Manager project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--status',
                            description:
                                'Alert\'s status. The values are TRACKING, OPEN, CLOSED, and CANCELED',
                            args: [Arg(name: 'statu')])
                      ])
                ])
          ]),
      Subcommand(
          name: ['backup', 'backups'],
          description: 'Manage cloud backups for your project',
          subcommands: [
            Subcommand(
                name: ['snapshot', 'snapshots'],
                description: 'Manage cloud backup snapshots for your project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List cloud backup snapshots for your project and cluster',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['take', 'create'],
                      description:
                          'Create a backup snapshot for your project and cluster',
                      options: [
                        Option(
                            name: '--desc',
                            description:
                                'Description of the on-demand snapshot',
                            args: [Arg(name: 'des')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--retention',
                            description:
                                'Cloud provider region in which you want to create the private endpoint connection',
                            args: [Arg(name: 'retention', defaultValue: '')])
                      ]),
                  Subcommand(
                      name: 'describe',
                      description: 'Get a specific snapshot for your project',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'watch',
                      description: 'Watch for a snapshot to be available',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete a backup snapshot',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ]),
            Subcommand(
                name: ['restore', 'restores'],
                description:
                    'Manage cloud backup restore jobs for your project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List cloud backup restore jobs for your project and cluster',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'start',
                      description:
                          'Start a restore job for your project and cluster',
                      options: [
                        Option(
                            name: '--clusterName',
                            description: 'Name of the cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--oplogInc',
                            description:
                                '32-bit incrementing ordinal that represents operations within a given second. When paired with oplogTs, they represent the point in time to which your data will be restored',
                            args: [Arg(name: 'oplogInc', defaultValue: '')]),
                        Option(
                            name: '--oplogTs',
                            description:
                                'Oplog timestamp given as a timestamp in the number of seconds that have elapsed since the UNIX Epoch. When paired with oplogInc, they represent the point in time to which your data will be restored',
                            args: [Arg(name: 'oplogTs', defaultValue: '')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--pointInTimeUTCMillis',
                            description:
                                'Timestamp in the number of milliseconds that have elapsed since the UNIX epoch that represents the point in time to which your data will be restored. This timestamp must be within the last 24 hours of the current time',
                            args: [
                              Arg(
                                  name: 'pointInTimeUTCMillis',
                                  defaultValue: '')
                            ]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--snapshotId',
                            description:
                                'Unique identifier of the snapshot to restore',
                            args: [Arg(name: 'snapshotI')]),
                        Option(
                            name: '--targetClusterName',
                            description:
                                'Name of the target cluster. For use only with automated restore jobs',
                            args: [Arg(name: 'targetClusterNam')]),
                        Option(
                            name: '--targetProjectId',
                            description:
                                'Unique identifier of the project that contains the destination cluster for the restore job',
                            args: [Arg(name: 'targetProjectI')])
                      ])
                ])
          ]),
      Subcommand(
          name: ['event', 'events'],
          description: 'Manage events for your organization or project',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'Return all events for an organization or project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '')]),
                  Option(
                      name: '--maxDate',
                      description:
                          'Returns events whose created date is less than or equal to it',
                      args: [Arg(name: 'maxDat')]),
                  Option(
                      name: '--minDate',
                      description:
                          'Returns events whose created date is greater than or equal to it',
                      args: [Arg(name: 'minDat')]),
                  Option(
                      name: '--orgId',
                      description:
                          'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'orgI')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--type',
                      description: 'Type of the event that triggered the alert',
                      args: [Arg(name: 'typ')])
                ]),
            Subcommand(
                name: ['organization', 'orgs', 'org', 'organizations'],
                description: 'Organization operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'Return all events for an organization',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '')]),
                        Option(
                            name: '--maxDate',
                            description:
                                'Returns events whose created date is less than or equal to it',
                            args: [Arg(name: 'maxDat')]),
                        Option(
                            name: '--minDate',
                            description:
                                'Returns events whose created date is greater than or equal to it',
                            args: [Arg(name: 'minDat')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--type',
                            description:
                                'Type of the event that triggered the alert',
                            args: [Arg(name: 'typ')])
                      ])
                ]),
            Subcommand(
                name: ['project', 'projects'],
                description: 'Project operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'Return all events for a project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '')]),
                        Option(
                            name: '--maxDate',
                            description:
                                'Returns events whose created date is less than or equal to it',
                            args: [Arg(name: 'maxDat')]),
                        Option(
                            name: '--minDate',
                            description:
                                'Returns events whose created date is greater than or equal to it',
                            args: [Arg(name: 'minDat')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--type',
                            description:
                                'Type of the event that triggered the alert',
                            args: [Arg(name: 'typ')])
                      ])
                ])
          ]),
      Subcommand(
          name: ['metric', 'measurements', 'measurement', 'metrics'],
          description: 'Get metrics on the MongoDB process',
          subcommands: [
            Subcommand(
                name: ['process', 'processes'],
                description: 'Get MongoDB process metrics for a given host',
                options: [
                  Option(
                      name: '--end',
                      description:
                          'End of the period, in UNIX Epoch format, until which to retrieve measurements',
                      args: [Arg(name: 'en')]),
                  Option(
                      name: '--granularity',
                      description:
                          'Duration in ISO 8601 notation that specifies the interval between measurement data points. Only the following subset of ISO 8601-formatted time periods are supported: PT10S, PT1M, PT5M, PT1H, P1D',
                      args: [Arg(name: 'granularit')]),
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--period',
                      description:
                          'Duration in ISO 8601 that specifies how far back in the past to retrieve measurements',
                      args: [Arg(name: 'perio')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--start',
                      description:
                          'Beginning of the period, in UNIX Epoch format, from which to start retrieving measurements',
                      args: [Arg(name: 'star')]),
                  Option(
                      name: '--type',
                      description:
                          'Measurements to return. If it is not specified, all measurements are returned',
                      args: [Arg(name: 'typ')])
                ]),
            Subcommand(
                name: ['disk', 'disks'],
                description:
                    'List available disks or disk metrics for a given host',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List available disks or disk partitions for a given host',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'describe',
                      description:
                          'Describe disk partition metrics for a disk partition on a specified host',
                      options: [
                        Option(
                            name: '--end',
                            description:
                                'End of the period, in UNIX Epoch format, until which to retrieve measurements',
                            args: [Arg(name: 'en')]),
                        Option(
                            name: '--granularity',
                            description:
                                'Duration in ISO 8601 notation that specifies the interval between measurement data points. Only the following subset of ISO 8601-formatted time periods are supported: PT10S, PT1M, PT5M, PT1H, P1D',
                            args: [Arg(name: 'granularit')]),
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--period',
                            description:
                                'Duration in ISO 8601 that specifies how far back in the past to retrieve measurements',
                            args: [Arg(name: 'perio')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--start',
                            description:
                                'Beginning of the period, in UNIX Epoch format, from which to start retrieving measurements',
                            args: [Arg(name: 'star')]),
                        Option(
                            name: '--type',
                            description:
                                'Measurements to return. If it is not specified, all measurements are returned',
                            args: [Arg(name: 'typ')])
                      ])
                ]),
            Subcommand(
                name: ['database', 'databases'],
                description:
                    'List available databases or database metrics for a given host',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List available databases or database metrics for a given host',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'describe',
                      description:
                          'Describe database metrics for a database on a specific host',
                      options: [
                        Option(
                            name: '--end',
                            description:
                                'End of the period, in UNIX Epoch format, until which to retrieve measurements',
                            args: [Arg(name: 'en')]),
                        Option(
                            name: '--granularity',
                            description:
                                'Duration in ISO 8601 notation that specifies the interval between measurement data points. Only the following subset of ISO 8601-formatted time periods are supported: PT10S, PT1M, PT5M, PT1H, P1D',
                            args: [Arg(name: 'granularit')]),
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--period',
                            description:
                                'Duration in ISO 8601 that specifies how far back in the past to retrieve measurements',
                            args: [Arg(name: 'perio')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--start',
                            description:
                                'Beginning of the period, in UNIX Epoch format, from which to start retrieving measurements',
                            args: [Arg(name: 'star')]),
                        Option(
                            name: '--type',
                            description:
                                'Measurements to return. If it is not specified, all measurements are returned',
                            args: [Arg(name: 'typ')])
                      ])
                ])
          ]),
      Subcommand(
          name: [
            'performanceadvisor',
            'performance-advisor',
            'performanceAdvisor'
          ],
          description: 'Performance Advisor operations',
          subcommands: [
            Subcommand(
                name: ['namespace', 'namespaces'],
                description:
                    'Retrieve namespaces for collections experiencing slow queries',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Retrieve up to 20 namespaces for collections experiencing slow queries for a specified host',
                      options: [
                        Option(
                            name: '--duration',
                            description:
                                'Length of time from the since parameter, in milliseconds, for which you want to receive results',
                            args: [Arg(name: 'duration', defaultValue: '')]),
                        Option(
                            name: '--hostId',
                            description:
                                'Unique identifier for the host of a MongoDB process',
                            args: [Arg(name: 'hostI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--processName',
                            description:
                                'Unique identifier for the host of a MongoDB process in the following format: {hostname}:{port}',
                            args: [Arg(name: 'processNam')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--since',
                            description:
                                'Point in time, specified as milliseconds since the Unix Epoch, from which you want to receive results',
                            args: [Arg(name: 'since', defaultValue: '')])
                      ])
                ]),
            Subcommand(
                name: [
                  'slowquerylogs',
                  'slow-query-logs',
                  'slowQueryLog',
                  'slowquerylog',
                  'slow-query-log',
                  'slowQueryLogs',
                ],
                description:
                    'Get log lines for slow queries for a specified host',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Return log lines for slow queries that the Performance Advisor and Query Profiler identified',
                      options: [
                        Option(
                            name: '--duration',
                            description:
                                'Length of time from the since parameter, in milliseconds, for which you want to receive results',
                            args: [Arg(name: 'duration', defaultValue: '')]),
                        Option(
                            name: '--hostId',
                            description:
                                'Unique identifier for the host of a MongoDB process',
                            args: [Arg(name: 'hostI')]),
                        Option(
                            name: '--nLog',
                            description:
                                'Maximum number of log lines to return',
                            args: [Arg(name: 'nLog', defaultValue: '2000')]),
                        Option(
                            name: '--namespaces',
                            description:
                                'Namespaces from which to retrieve suggested slow query logs',
                            args: [Arg(name: 'namespace')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--processName',
                            description:
                                'Unique identifier for the host of a MongoDB process in the following format: {hostname}:{port}',
                            args: [Arg(name: 'processNam')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--since',
                            description:
                                'Point in time, specified as milliseconds since the Unix Epoch, from which you want to receive results',
                            args: [Arg(name: 'since', defaultValue: '')])
                      ])
                ]),
            Subcommand(
                name: [
                  'suggestedindexes',
                  'suggested-indexes',
                  'suggestedIndex',
                  'suggestedindex',
                  'suggested-index',
                  'suggestedIndexes',
                ],
                description:
                    'Get suggested indexes for collections experiencing slow queries',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Retrieve suggested indexes for collections experiencing slow queries',
                      options: [
                        Option(
                            name: '--duration',
                            description:
                                'Length of time from the since parameter, in milliseconds, for which you want to receive results',
                            args: [Arg(name: 'duration', defaultValue: '')]),
                        Option(
                            name: '--hostId',
                            description:
                                'Unique identifier for the host of a MongoDB process',
                            args: [Arg(name: 'hostI')]),
                        Option(
                            name: '--nExamples',
                            description:
                                'Maximum number of example queries to provide that will be improved by a suggested index',
                            args: [Arg(name: 'nExamples', defaultValue: '')]),
                        Option(
                            name: '--nIndexes',
                            description: 'Maximum number of indexes to suggest',
                            args: [Arg(name: 'nIndexes', defaultValue: '')]),
                        Option(
                            name: '--namespaces',
                            description:
                                'Namespaces from which to retrieve suggested indexes',
                            args: [Arg(name: 'namespace')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--processName',
                            description:
                                'Unique identifier for the host of a MongoDB process in the following format: {hostname}:{port}',
                            args: [Arg(name: 'processNam')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--since',
                            description:
                                'Point in time, specified as milliseconds since the Unix Epoch, from which you want to receive results',
                            args: [Arg(name: 'since', defaultValue: '')])
                      ])
                ]),
            Subcommand(
                name: ['slowOT', 'sot', 'slowMS', 'slowOperationThreshold'],
                description:
                    'Enable or disable management of the slow operation threshold for your cluster',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'enable'],
                      description:
                          'Enable the application-managed slow operation threshold for your project',
                      options: [
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'disable',
                      description:
                          'Disable the application-managed slow operation threshold for your project',
                      options: [
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ])
          ]),
      Subcommand(
          name: ['log', 'logs'],
          description: 'Download host logs for your project',
          subcommands: [
            Subcommand(
                name: 'download',
                description: 'Download a host mongodb logs',
                options: [
                  Option(
                      name: '--end',
                      description:
                          'End of the period, in UNIX Epoch format, until which to retrieve logs',
                      args: [Arg(name: 'en')]),
                  Option(
                      name: '--force',
                      description: 'Overwrites the destination file'),
                  Option(
                      name: '--out',
                      description:
                          'Optional output file name. Uses the log name if the output file\'s name is not specified',
                      args: [
                        Arg(name: 'out', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--start',
                      description:
                          'Beginning of the date and time, in UNIX Epoch format, from which to retrieve logs',
                      args: [Arg(name: 'star')])
                ])
          ]),
      Subcommand(
          name: ['process', 'processes'],
          description: 'Manage MongoDB processes for your project',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'List MongoDB processes for your project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ])
          ]),
      Subcommand(
          name: [
            'privateendpoints',
            'private-endpoints',
            'privateEndpoint',
            'privateendpoint',
            'private-endpoint',
            'privateEndpoints',
          ],
          description: 'Manage Atlas private endpoints',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description: 'List Atlas Private Endpoints for your project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description:
                    'Return a specific Private Endpoints for your project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a new private endpoint for your project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--provider',
                      description:
                          'Name of the cloud provider you want to create the private endpoint connection for',
                      args: [Arg(name: 'provider', defaultValue: 'AW')]),
                  Option(
                      name: '--region',
                      description:
                          'Cloud provider region in which you want to create the private endpoint connection',
                      args: [Arg(name: 'regio')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a private endpoint from your project',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'watch',
                description: 'Watch for a private endpoint to be available',
                options: [
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--provider',
                      description:
                          'Name of the cloud provider you want to create the private endpoint connection for',
                      args: [Arg(name: 'provider', defaultValue: 'AW')])
                ]),
            Subcommand(
                name: ['interface', 'interfaces'],
                description: 'Manage Atlas private endpoint interfaces',
                subcommands: [
                  Subcommand(
                      name: ['add', 'create'],
                      description: 'Add a new interface to a private endpoint',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--privateEndpointId',
                            description:
                                'Unique identifier of the AWS PrivateLink connection',
                            args: [Arg(name: 'privateEndpointI')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Return a specific private endpoint interface for your project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--privateEndpointId',
                            description:
                                'Unique identifier of the AWS PrivateLink connection',
                            args: [Arg(name: 'privateEndpointI')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete a private endpoint interface from your project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--privateEndpointId',
                            description:
                                'Unique identifier of the AWS PrivateLink connection',
                            args: [Arg(name: 'privateEndpointI')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ]),
            Subcommand(
                name: 'aws',
                description: 'Manage AWS Private Endpoints',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List AWS Private Endpoints for your project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Return a specific AWS Private Endpoints for your project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'create',
                      description:
                          'Create a new AWS Private Endpoint for your project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--region',
                            description:
                                'Cloud provider region in which you want to create the private endpoint connection',
                            args: [Arg(name: 'regio')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete a specific AWS Private Endpoint for your project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'watch',
                      description:
                          'Watch for a specific AWS Private Endpoint to be available',
                      options: [
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['interface', 'interfaces'],
                      description:
                          'Manage Atlas AWS private endpoint interfaces',
                      subcommands: [
                        Subcommand(
                            name: ['add', 'create'],
                            description:
                                'Add a new interface to a AWS private endpoint',
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--privateEndpointId',
                                  description:
                                      'Unique identifier of the AWS PrivateLink connection',
                                  args: [Arg(name: 'privateEndpointI')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific AWS private endpoint interface for your project',
                            options: [
                              Option(
                                  name: '--endpointServiceId',
                                  description:
                                      'Unique identifier of the private endpoint service for which you want to retrieve a private endpoint',
                                  args: [Arg(name: 'endpointServiceI')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a specific AWS private endpoint interface and the related endpoint service for your project',
                            options: [
                              Option(
                                  name: '--endpointServiceId',
                                  description:
                                      'Unique identifier of the private endpoint service for which you want to retrieve a private endpoint',
                                  args: [Arg(name: 'endpointServiceI')]),
                              Option(
                                  name: '--force',
                                  description:
                                      'If specified, skips asking for confirmation before proceeding with a requsted action'),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ])
                      ])
                ]),
            Subcommand(
                name: 'azure',
                description: 'Manage Azure Private Endpoints',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List Azure Private Endpoints for your project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Return a specific Azure Private Endpoints for your project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'create',
                      description:
                          'Create a new Azure Private Endpoint for your project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--region',
                            description:
                                'Cloud provider region in which you want to create the private endpoint connection',
                            args: [Arg(name: 'regio')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete a specific Azure Private Endpoint for your project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'watch',
                      description:
                          'Watch for a specific Azure Private Endpoint to be available',
                      options: [
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['interface', 'interfaces'],
                      description:
                          'Manage Atlas Azure private endpoint interfaces',
                      subcommands: [
                        Subcommand(
                            name: ['add', 'create'],
                            description:
                                'Add a new Azure interface to a private endpoint',
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--privateEndpointId',
                                  description:
                                      'Unique identifier of the Azure private endpoint resource',
                                  args: [Arg(name: 'privateEndpointI')]),
                              Option(
                                  name: '--privateEndpointIpAddress',
                                  description:
                                      'Private IP address of the private endpoint network interface you created in your Azure VNet',
                                  args: [Arg(name: 'privateEndpointIpAddres')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific Azure private endpoint interface for your project',
                            options: [
                              Option(
                                  name: '--endpointServiceId',
                                  description:
                                      'Unique identifier of the private endpoint service for which you want to retrieve a private endpoint',
                                  args: [Arg(name: 'endpointServiceI')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a specific Azure private endpoint interface and related service for your project',
                            options: [
                              Option(
                                  name: '--endpointServiceId',
                                  description:
                                      'Unique identifier of the private endpoint service for which you want to retrieve a private endpoint',
                                  args: [Arg(name: 'endpointServiceI')]),
                              Option(
                                  name: '--force',
                                  description:
                                      'If specified, skips asking for confirmation before proceeding with a requsted action'),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ])
                      ])
                ]),
            Subcommand(
                name: 'gcp',
                description: 'Manage GCP private endpoints',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description:
                          'Create a new GCP private endpoint for your project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--region',
                            description:
                                'Cloud provider region in which you want to create the private endpoint connection',
                            args: [Arg(name: 'regio')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete a GCP private endpoint for your project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List GCP private endpoints for your project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Return a specific GCP private endpoint for your project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'watch',
                      description:
                          'Watch the specified GCP private endpoint to detect changes in the endpoint\'s state',
                      options: [
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['interface', 'interfaces'],
                      description:
                          'Manage Atlas GCP private endpoint interfaces',
                      subcommands: [
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific GCP private endpoint interface for your project',
                            options: [
                              Option(
                                  name: '--endpointServiceId',
                                  description:
                                      'Unique identifier of the private endpoint service for which you want to retrieve a private endpoint',
                                  args: [Arg(name: 'endpointServiceI')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a specific GCP private endpoint interface for your project',
                            options: [
                              Option(
                                  name: '--endpointServiceId',
                                  description:
                                      'Unique identifier of the private endpoint service for which you want to retrieve a private endpoint',
                                  args: [Arg(name: 'endpointServiceI')]),
                              Option(
                                  name: '--force',
                                  description:
                                      'If specified, skips asking for confirmation before proceeding with a requsted action'),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['add', 'create'],
                            description:
                                'Create a GCP private endpoint interface',
                            options: [
                              Option(
                                  name: '--endpoint',
                                  description:
                                      'List of GCP endpoints in the group separated by commas, such as: endpointName1@ipAddress1,...,endpointNameN@ipAddressN',
                                  args: [Arg(name: 'endpoin')]),
                              Option(
                                  name: '--endpointServiceId',
                                  description:
                                      'Unique identifier of the private endpoint service for which you want to retrieve a private endpoint',
                                  args: [Arg(name: 'endpointServiceI')]),
                              Option(
                                  name: '--gcpProjectId',
                                  description:
                                      'Unique identifier of the GCP project in which the network peer resides',
                                  args: [Arg(name: 'gcpProjectI')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ])
                      ])
                ]),
            Subcommand(
                name: [
                  'regionalmodes',
                  'regional-modes',
                  'regionalMode',
                  'regionalmode',
                  'regional-mode',
                  'regionalModes',
                ],
                description:
                    'Manage regionalized private endpoint setting for your Atlas project',
                subcommands: [
                  Subcommand(
                      name: 'enable',
                      description:
                          'Enable the regionalized private endpoint setting for your Atlas project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'disable',
                      description:
                          'Disable the regionalized private endpoint setting for your Atlas project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Get the regionalized private endpoint setting for your Atlas project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ]),
            Subcommand(
                name: [
                  'datalakes',
                  'data-lakes',
                  'dataLake',
                  'datalake',
                  'data-lake',
                  'dataLakes',
                ],
                description: 'Manage Data Lake private endpoints',
                subcommands: [
                  Subcommand(
                      name: 'aws',
                      description: 'Manage AWS private endpoints',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description:
                                'Create a new Data Lake private endpoint for your project',
                            options: [
                              Option(
                                  name: '--comment',
                                  description:
                                      'Optional description or comment for the entry',
                                  args: [Arg(name: 'commen')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--privateEndpointId',
                                  description:
                                      'Unique identifier of the AWS PrivateLink connection',
                                  args: [Arg(name: 'privateEndpointI')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List Data Lake private endpoints for your project',
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific Data Lake private endpoint for your project',
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a specific Data Lake private endpoint for your project',
                            options: [
                              Option(
                                  name: '--force',
                                  description:
                                      'If specified, skips asking for confirmation before proceeding with a requsted action'),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ])
                      ])
                ]),
            Subcommand(
                name: ['onlinearchive', 'online-archive', 'onlineArchive'],
                description: 'Manage Online Archive private endpoints',
                subcommands: [
                  Subcommand(
                      name: 'aws',
                      description: 'Manage AWS private endpoints',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description:
                                'Create a new Data Lake private endpoint for your project',
                            options: [
                              Option(
                                  name: '--comment',
                                  description:
                                      'Optional description or comment for the entry',
                                  args: [Arg(name: 'commen')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--privateEndpointId',
                                  description:
                                      'Unique identifier of the AWS PrivateLink connection',
                                  args: [Arg(name: 'privateEndpointI')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List Data Lake private endpoints for your project',
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific Data Lake private endpoint for your project',
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a specific Data Lake private endpoint for your project',
                            options: [
                              Option(
                                  name: '--force',
                                  description:
                                      'If specified, skips asking for confirmation before proceeding with a requsted action'),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ])
                      ])
                ])
          ]),
      Subcommand(
          name: 'networking',
          description: 'Networking operations',
          subcommands: [
            Subcommand(
                name: ['container', 'containers'],
                description: 'Manage Network Peering containers',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List network peering containers in an Atlas project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--provider',
                            description:
                                'Name of your cloud service provider. Valid values are AWS, AZURE, or GCP',
                            args: [Arg(name: 'provide')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Remove one network peering container in an Atlas project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ]),
            Subcommand(
                name: 'peering',
                description: 'Manage Network Peering connections',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Retrieve details for all network peering connections in one Atlas project',
                      options: [
                        Option(
                            name: '--limit',
                            description: 'Number of items per page',
                            args: [Arg(name: 'limit', defaultValue: '10')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--page',
                            description: 'Page number',
                            args: [Arg(name: 'page', defaultValue: '')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--provider',
                            description:
                                'Name of your cloud service provider. Valid values are AWS, AZURE, or GCP',
                            args: [Arg(name: 'provider', defaultValue: 'AW')])
                      ]),
                  Subcommand(
                      name: 'create',
                      description:
                          'Create a connection with AWS, Azure and Google Cloud',
                      subcommands: [
                        Subcommand(
                            name: 'azure',
                            description: 'Create a connection with Azure',
                            options: [
                              Option(
                                  name: '--atlasCidrBlock',
                                  description:
                                      'CIDR block that Atlas uses for your clusters',
                                  args: [Arg(name: 'atlasCidrBloc')]),
                              Option(
                                  name: '--directoryId',
                                  description:
                                      'Unique identifier for an Azure AD directory',
                                  args: [Arg(name: 'directoryI')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')]),
                              Option(
                                  name: '--region',
                                  description:
                                      'Atlas region where the container resides',
                                  args: [Arg(name: 'regio')]),
                              Option(
                                  name: '--resourceGroup',
                                  description:
                                      'Name of your Azure resource group',
                                  args: [Arg(name: 'resourceGrou')]),
                              Option(
                                  name: '--subscriptionId',
                                  description:
                                      'Unique identifier of the Azure subscription in which the VNet resides',
                                  args: [Arg(name: 'subscriptionI')]),
                              Option(
                                  name: '--vnet',
                                  description: 'Name of your Azure VNet',
                                  args: [Arg(name: 'vne')])
                            ]),
                        Subcommand(
                            name: 'aws',
                            description: 'Create a connection with AWS',
                            options: [
                              Option(
                                  name: '--accountId',
                                  description:
                                      'Account ID of the owner of the peer VPC',
                                  args: [Arg(name: 'accountI')]),
                              Option(
                                  name: '--atlasCidrBlock',
                                  description:
                                      'CIDR block that Atlas uses for your clusters',
                                  args: [Arg(name: 'atlasCidrBloc')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')]),
                              Option(
                                  name: '--region',
                                  description:
                                      'Atlas region where the container resides',
                                  args: [Arg(name: 'regio')]),
                              Option(
                                  name: '--routeTableCidrBlock',
                                  description: 'Peer VPC CIDR block or subnet',
                                  args: [Arg(name: 'routeTableCidrBloc')]),
                              Option(
                                  name: '--vpcId',
                                  description:
                                      'Unique identifier of the peer VPC',
                                  args: [Arg(name: 'vpcI')])
                            ]),
                        Subcommand(
                            name: 'gcp',
                            description: 'Create a connection with GCP',
                            options: [
                              Option(
                                  name: '--atlasCidrBlock',
                                  description:
                                      'CIDR block that Atlas uses for your clusters',
                                  args: [Arg(name: 'atlasCidrBloc')]),
                              Option(
                                  name: '--gcpProjectId',
                                  description:
                                      'Unique identifier of the GCP project in which the network peer resides',
                                  args: [Arg(name: 'gcpProjectI')]),
                              Option(
                                  name: '--network',
                                  description:
                                      'Unique identifier of the Network Peering connection in the Atlas project',
                                  args: [Arg(name: 'networ')]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')]),
                              Option(
                                  name: '--region',
                                  description:
                                      'List of Atlas regions where the container resides',
                                  args: [Arg(name: 'regio')])
                            ])
                      ]),
                  Subcommand(
                      name: 'watch',
                      description:
                          'Watch for a peering connection to be available',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete a peering connection from an Atlas project',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ])
          ]),
      Subcommand(
          name: 'security',
          description: 'Manage security configuration for your project',
          subcommands: [
            Subcommand(
                name: [
                  'customercerts',
                  'customer-certs',
                  'customerCert',
                  'customercert',
                  'customer-cert',
                  'certs',
                  'customerCerts',
                ],
                description:
                    'Manage customer x509 certificates for your project',
                subcommands: [
                  Subcommand(
                      name: 'describe',
                      description:
                          'Get the current customer-managed X.509 configuration details for an Atlas project',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'create',
                      description:
                          'Saves a customer-managed X.509 configuration for an Atlas project',
                      options: [
                        Option(
                            name: '--casFile',
                            description:
                                'Path to a PEM file containing one or more CAs for database user authentication',
                            args: [Arg(name: 'casFil')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'disable',
                      description:
                          'Disables customer-managed X.509 for a project',
                      options: [
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ]),
            Subcommand(
                name: 'ldap',
                description: 'LDAP operations',
                subcommands: [
                  Subcommand(
                      name: 'verify',
                      description:
                          'Request verification of an LDAP configuration',
                      subcommands: [
                        Subcommand(
                            name: 'status',
                            description:
                                'Get the status of an LDAP configuration request',
                            subcommands: [
                              Subcommand(
                                  name: 'watch',
                                  description:
                                      'Watch for an LDAP configuration request to complete',
                                  options: [
                                    Option(
                                        name: '--projectId',
                                        description:
                                            'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                        args: [Arg(name: 'projectI')])
                                  ])
                            ],
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ])
                      ],
                      options: [
                        Option(
                            name: '--authzQueryTemplate',
                            description:
                                'An LDAP query template that Atlas executes to obtain the LDAP groups to which the authenticated user belongs',
                            args: [Arg(name: 'authzQueryTemplat')]),
                        Option(
                            name: '--bindPassword',
                            description:
                                'Password used to authenticate the bindUsername',
                            args: [Arg(name: 'bindPasswor')]),
                        Option(
                            name: '--bindUsername',
                            description:
                                'The user distinguished name (DN) that Atlas uses to connect to the LDAP server',
                            args: [Arg(name: 'bindUsernam')]),
                        Option(
                            name: '--caCertificate',
                            description:
                                'CA certificate used to verify the identify of the LDAP server',
                            args: [Arg(name: 'caCertificat')]),
                        Option(
                            name: '--hostname',
                            description:
                                'Hostname or IP address of the LDAP server',
                            args: [Arg(name: 'hostnam')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--port',
                            description:
                                'Port to which the LDAP server listens to for client connections',
                            args: [Arg(name: 'port', defaultValue: '63')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'save',
                      description: 'Save an LDAP configuration',
                      options: [
                        Option(
                            name: '--authenticationEnabled',
                            description:
                                'Specifies whether user authentication with LDAP is enabled'),
                        Option(
                            name: '--authorizationEnabled',
                            description:
                                'Specifies whether user authorization with LDAP is enabled'),
                        Option(
                            name: '--authzQueryTemplate',
                            description:
                                'An LDAP query template that Atlas executes to obtain the LDAP groups to which the authenticated user belongs',
                            args: [Arg(name: 'authzQueryTemplat')]),
                        Option(
                            name: '--bindPassword',
                            description:
                                'Password used to authenticate the bindUsername',
                            args: [Arg(name: 'bindPasswor')]),
                        Option(
                            name: '--bindUsername',
                            description:
                                'The user distinguished name (DN) that Atlas uses to connect to the LDAP server',
                            args: [Arg(name: 'bindUsernam')]),
                        Option(
                            name: '--caCertificate',
                            description:
                                'CA certificate used to verify the identify of the LDAP server',
                            args: [Arg(name: 'caCertificat')]),
                        Option(
                            name: '--hostname',
                            description:
                                'Hostname or IP address of the LDAP server',
                            args: [Arg(name: 'hostnam')]),
                        Option(
                            name: '--mappingLdapQuery',
                            description:
                                'An LDAP query formatting template that inserts the authentication name matched by the match regex into an LDAP query URI encoded respecting RFC4515 and RFC4516',
                            args: [Arg(name: 'mappingLdapQuer')]),
                        Option(
                            name: '--mappingMatch',
                            description:
                                'An ECMAScript-formatted regular expression (regex) to match against a provided username',
                            args: [Arg(name: 'mappingMatc')]),
                        Option(
                            name: '--mappingSubstitution',
                            description:
                                'An LDAP distinguished name (DN) formatting template that converts the authentication name matched by the match regex into a LDAP DN',
                            args: [Arg(name: 'mappingSubstitutio')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--port',
                            description:
                                'Port to which the LDAP server listens to for client connections',
                            args: [Arg(name: 'port', defaultValue: '63')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete an LDAP configuration userToDNMapping from an LDAP configuration',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'get',
                      description: 'Get an LDAP configuration',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ])
          ]),
      Subcommand(
          name: ['integration', 'integrations'],
          description: 'Third party integration operations',
          subcommands: [
            Subcommand(
                name: ['update', 'create'],
                description: 'Create operations',
                subcommands: [
                  Subcommand(
                      name: ['new_relic', 'newRelic', 'NEW_RELIC'],
                      description: 'Create or update the New Relic integration',
                      options: [
                        Option(
                            name: '--accountId',
                            description:
                                'Unique identifier of your New Relic account',
                            args: [Arg(name: 'accountI')]),
                        Option(
                            name: '--licenceKey',
                            description: 'Your License Key',
                            args: [Arg(name: 'licenceKe')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--readToken',
                            description: 'Your Insights Query Key',
                            args: [Arg(name: 'readToke')]),
                        Option(
                            name: '--writeToken',
                            description: 'Your Insights Insert Key',
                            args: [Arg(name: 'writeToke')])
                      ]),
                  Subcommand(
                      name: ['ops_genie', 'opsGenie', 'OPS_GENIE'],
                      description: 'Create or update the Ops Genie integration',
                      options: [
                        Option(
                            name: '--apiKey',
                            description: 'API Key',
                            args: [Arg(name: 'apiKe')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--region',
                            description:
                                'Indicates which API URL to use, either US or EU. The integration service will use US by default',
                            args: [Arg(name: 'region', defaultValue: 'U')])
                      ]),
                  Subcommand(
                      name: ['pager_duty', 'pagerDuty', 'PAGER_DUTY'],
                      description: 'Create or update the PagerDuty integration',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--serviceKey',
                            description: 'Your Service Key',
                            args: [Arg(name: 'serviceKe')])
                      ]),
                  Subcommand(
                      name: ['datadog', 'DATADOG'],
                      description: 'Create or update the Datadog integration',
                      options: [
                        Option(
                            name: '--apiKey',
                            description: 'API Key',
                            args: [Arg(name: 'apiKe')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--region',
                            description:
                                'Indicates which API URL to use, either US or EU. The integration service will use US by default',
                            args: [Arg(name: 'region', defaultValue: 'U')])
                      ]),
                  Subcommand(
                      name: ['victor_ops', 'victorOps', 'VICTOR_OPS'],
                      description:
                          'Create or update the VictorOps integrations',
                      options: [
                        Option(
                            name: '--apiKey',
                            description: 'API Key',
                            args: [Arg(name: 'apiKe')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--routingKey',
                            description:
                                'An optional field for your Routing Key',
                            args: [Arg(name: 'routingKe')])
                      ]),
                  Subcommand(
                      name: ['flowdock', 'FLOWDOCK'],
                      description: 'Create or update the Flowdock integration',
                      options: [
                        Option(
                            name: '--apiToken',
                            description: 'Your API Token',
                            args: [Arg(name: 'apiToke')]),
                        Option(
                            name: '--flowName',
                            description: 'Flowdock Flow name',
                            args: [Arg(name: 'flowNam')]),
                        Option(
                            name: '--orgName',
                            description: 'Your Flowdock organization\'s name',
                            args: [Arg(name: 'orgNam')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['webhook', 'WEBHOOK'],
                      description: 'Create or update the Webhook integration',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--secret',
                            description:
                                'An optional field for your webhook secret',
                            args: [Arg(name: 'secre')]),
                        Option(
                            name: '--url',
                            description: 'Your webhook URL',
                            args: [Arg(name: 'ur')])
                      ])
                ]),
            Subcommand(
                name: ['ls', 'list'],
                description: 'List third party integrations',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Delete a third party integration',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'describe',
                description: 'Get a third party integration',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ])
          ]),
      Subcommand(
          name: [
            'maintenancewindows',
            'maintenance-windows',
            'maintenanceWindow',
            'maintenancewindow',
            'maintenance-window',
            'maintenanceWindows',
          ],
          description: 'Manage Atlas maintenance windows',
          subcommands: [
            Subcommand(
                name: 'update',
                description: 'Update the maintenance window',
                options: [
                  Option(
                      name: '--dayOfWeek',
                      description:
                          'Day of the week that you want the maintenance window to start, as a 1-based integer',
                      args: [Arg(name: 'dayOfWeek', defaultValue: '')]),
                  Option(
                      name: '--hourOfDay',
                      description:
                          'Hour of the day that you want the maintenance window to start. This parameter uses the 24-hour clock, where midnight is 0 and noon is 12',
                      args: [Arg(name: 'hourOfDay', defaultValue: '')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--startASAP',
                      description:
                          'Flag that, if specified, indicates to start maintenance immediately upon receiving this request')
                ]),
            Subcommand(
                name: ['rm', 'delete', 'clear'],
                description: 'Clear the maintenance window',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'defer',
                description: 'Defer the maintenance window',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description: 'Get a maintenance window',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ])
          ]),
      Subcommand(
          name: [
            'customdns',
            'custom-dns',
            'customDn',
            'customdn',
            'custom-dn',
            'customDns',
          ],
          description:
              'Manage DNS configuration of Atlas project’s clusters deployed to AWS',
          subcommands: [
            Subcommand(
                name: ['aw', 'aws'],
                description:
                    'Manage DNS configuration of an Atlas project’s cluster deployed to AWS',
                subcommands: [
                  Subcommand(
                      name: 'enable',
                      description:
                          'Enable the custom DNS configuration of an Atlas project’s cluster deployed to AWS',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: 'disable',
                      description:
                          'Disable the custom DNS configuration of an Atlas project’s cluster deployed to AWS',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Describe the custom DNS configuration of an Atlas project’s cluster deployed to AWS',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ])
          ]),
      Subcommand(
          name: [
            'cloudproviders',
            'cloud-providers',
            'cloudProvider',
            'cloudprovider',
            'cloud-provider',
            'cloudProviders',
          ],
          description: 'Manage unified IAM role access in Atlas',
          subcommands: [
            Subcommand(
                name: [
                  'accessroles',
                  'access-roles',
                  'accessRole',
                  'accessrole',
                  'access-role',
                  'accessRoles',
                ],
                description: 'Manage AWS IAM role access in Atlas',
                subcommands: [
                  Subcommand(
                      name: 'aws',
                      description: 'Manage AWS IAM role access in Atlas',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description: 'Create an AWS IAM role',
                            options: [
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: 'authorize',
                            description: 'Authorize an AWS IAM role',
                            options: [
                              Option(
                                  name: '--iamAssumedRoleArn',
                                  description:
                                      'Role ARN that Atlas assumes to access your AWS account',
                                  args: [
                                    Arg(
                                        name: 'iamAssumedRoleArn',
                                        template: ['filepaths'])
                                  ]),
                              Option(
                                  name: ['--output', '-o'],
                                  description:
                                      'Output format. Valid values are json, json-path, go-template, or go-template-file',
                                  args: [Arg(name: 'outpu')]),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ]),
                        Subcommand(
                            name: 'deauthorize',
                            description: 'Deauthorize an AWS IAM role',
                            options: [
                              Option(
                                  name: '--force',
                                  description:
                                      'If specified, skips asking for confirmation before proceeding with a requsted action'),
                              Option(
                                  name: '--projectId',
                                  description:
                                      'Project ID to use. Overrides the settings in the configuration file or environment variable',
                                  args: [Arg(name: 'projectI')])
                            ])
                      ]),
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List AWS IAM role access in Atlas',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')])
                      ])
                ])
          ]),
      Subcommand(
          name: ['sl', 'serverless'],
          description: 'Manage serverless instances for your project',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description:
                    'Return all serverless instances in the specified project',
                options: [
                  Option(
                      name: '--limit',
                      description: 'Number of items per page',
                      args: [Arg(name: 'limit', defaultValue: '10')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--page',
                      description: 'Page number',
                      args: [Arg(name: 'page', defaultValue: '')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description:
                    'Return one serverless instance in the specified project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: ['rm', 'delete'],
                description: 'Remove a serverless instance from your project',
                options: [
                  Option(
                      name: '--force',
                      description:
                          'If specified, skips asking for confirmation before proceeding with a requsted action'),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ]),
            Subcommand(
                name: 'create',
                description:
                    'Creates one serverless instance in the specified project',
                options: [
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--provider',
                      description:
                          'Cloud service provider that applies to the provisioned serverless instance',
                      args: [Arg(name: 'provide')]),
                  Option(
                      name: '--region',
                      description:
                          'Human-readable label that identifies the physical location of your MongoDB serverless instance. The region you choose can affect network latency for clients accessing your databases',
                      args: [Arg(name: 'regio')])
                ]),
            Subcommand(
                name: 'watch',
                description: 'Monitor the status of serverless instance',
                options: [
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ])
          ]),
      Subcommand(
          name: [
            'livemigrations',
            'live-migrations',
            'liveMigration',
            'livemigration',
            'live-migration',
            'lm',
            'liveMigrations',
          ],
          description: 'Manage a Live Migration to Atlas for your organization',
          subcommands: [
            Subcommand(
                name: 'link',
                description: 'Manage the link-token for your organization',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description: 'Create one new link-token',
                      options: [
                        Option(
                            name: '--accessListIp',
                            description:
                                'IP address access list entries that are associated with the link-token',
                            args: [Arg(name: 'accessListI')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')])
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete one link-token',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'If specified, skips asking for confirmation before proceeding with a requsted action'),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')])
                      ])
                ]),
            Subcommand(
                name: 'validation',
                description:
                    'Manage a Live Migration validation job for your project',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description: 'Create one new validation request',
                      options: [
                        Option(
                            name: '--clusterName',
                            description:
                                'Human-readable label that identifies the Atlas destination cluster',
                            args: [Arg(name: 'clusterNam')]),
                        Option(
                            name: '--drop',
                            description:
                                'Flag that indicates whether this process should drop existing collections from the destination (Atlas) cluster given in --destinationClusterName before starting the migration of data from the source cluster'),
                        Option(
                            name: '--migrationHost',
                            description:
                                'List of hosts running the MongoDB Agent that can transfer your MongoDB data from the source (Cloud Manager or Ops Manager) to destination (Atlas) deployments. Each live migration process uses its own dedicated migration host',
                            args: [Arg(name: 'migrationHos')]),
                        Option(
                            name: '--orgId',
                            description:
                                'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'orgI')]),
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--sourceCACertificatePath',
                            description:
                                'Path to the CA certificate that signed TLS certificates use to authenticate to the source Cloud Manager or Ops Manager cluster. Omit this value if --sourceSSL is not passed',
                            args: [Arg(name: 'sourceCACertificatePat')]),
                        Option(
                            name: '--sourceClusterName',
                            description:
                                'Human-readable label that identifies the source Cloud Manager or Ops Manager cluster',
                            args: [Arg(name: 'sourceClusterNam')]),
                        Option(
                            name: '--sourceManagedAuthentication',
                            description:
                                'Flag that indicates whether MongoDB Automation manages authentication to the source Cloud Manager or Ops Manager cluster. If you set this to true, don\'t provide values for --sourceUsername and --sourcePassword'),
                        Option(
                            name: ['--sourcePassword', '-p'],
                            description:
                                'Password that authenticates the username to the source Cloud Manager or Ops Manager cluster. Omit this value if --sourceManagedAuthentication is passed',
                            args: [Arg(name: 'sourcePasswor')]),
                        Option(
                            name: '--sourceProjectId',
                            description:
                                'Unique 24-hexadecimal digit string that identifies the source project',
                            args: [Arg(name: 'sourceProjectI')]),
                        Option(
                            name: '--sourceSsl',
                            description:
                                'Flag that indicates whether data source has TLS enabled'),
                        Option(
                            name: ['--sourceUsername', '-u'],
                            description:
                                'Human-readable label that identifies the SCRAM-SHA user that connects to the source Cloud Manager or Ops Manager cluster. Omit this value if --sourceManagedAuthentication is set',
                            args: [Arg(name: 'sourceUsernam')])
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description: 'Return one validation job',
                      options: [
                        Option(
                            name: ['--output', '-o'],
                            description:
                                'Output format. Valid values are json, json-path, go-template, or go-template-file',
                            args: [Arg(name: 'outpu')]),
                        Option(
                            name: '--projectId',
                            description:
                                'Project ID to use. Overrides the settings in the configuration file or environment variable',
                            args: [Arg(name: 'projectI')]),
                        Option(
                            name: '--validationId',
                            description:
                                'Unique 24-hexadecimal digit string that identifies the validation job',
                            args: [Arg(name: 'validationI')])
                      ])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create one new migration',
                options: [
                  Option(
                      name: '--clusterName',
                      description:
                          'Human-readable label that identifies the Atlas destination cluster',
                      args: [Arg(name: 'clusterNam')]),
                  Option(
                      name: '--drop',
                      description:
                          'Flag that indicates whether this process should drop existing collections from the destination (Atlas) cluster given in --destinationClusterName before starting the migration of data from the source cluster'),
                  Option(
                      name: '--migrationHost',
                      description:
                          'List of hosts running the MongoDB Agent that can transfer your MongoDB data from the source (Cloud Manager or Ops Manager) to destination (Atlas) deployments. Each live migration process uses its own dedicated migration host',
                      args: [Arg(name: 'migrationHos')]),
                  Option(
                      name: '--orgId',
                      description:
                          'Organization ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'orgI')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--sourceCACertificatePath',
                      description:
                          'Path to the CA certificate that signed TLS certificates use to authenticate to the source Cloud Manager or Ops Manager cluster. Omit this value if --sourceSSL is not passed',
                      args: [Arg(name: 'sourceCACertificatePat')]),
                  Option(
                      name: '--sourceClusterName',
                      description:
                          'Human-readable label that identifies the source Cloud Manager or Ops Manager cluster',
                      args: [Arg(name: 'sourceClusterNam')]),
                  Option(
                      name: '--sourceManagedAuthentication',
                      description:
                          'Flag that indicates whether MongoDB Automation manages authentication to the source Cloud Manager or Ops Manager cluster. If you set this to true, don\'t provide values for --sourceUsername and --sourcePassword'),
                  Option(
                      name: ['--sourcePassword', '-p'],
                      description:
                          'Password that authenticates the username to the source Cloud Manager or Ops Manager cluster. Omit this value if --sourceManagedAuthentication is passed',
                      args: [Arg(name: 'sourcePasswor')]),
                  Option(
                      name: '--sourceProjectId',
                      description:
                          'Unique 24-hexadecimal digit string that identifies the source project',
                      args: [Arg(name: 'sourceProjectI')]),
                  Option(
                      name: '--sourceSsl',
                      description:
                          'Flag that indicates whether data source has TLS enabled'),
                  Option(
                      name: ['--sourceUsername', '-u'],
                      description:
                          'Human-readable label that identifies the SCRAM-SHA user that connects to the source Cloud Manager or Ops Manager cluster. Omit this value if --sourceManagedAuthentication is set',
                      args: [Arg(name: 'sourceUsernam')])
                ]),
            Subcommand(
                name: ['get', 'describe'],
                description: 'Return one migration job',
                options: [
                  Option(
                      name: '--liveMigrationId',
                      description:
                          'Unique 24-hexadecimal digit string that identifies the live migration job',
                      args: [Arg(name: 'liveMigrationI')])
                ]),
            Subcommand(
                name: 'cutover',
                description:
                    'Start the cutover and confirm when the cutover completes. When the cutover completes, the application completes the live migration process and stops synchronizing with the source cluster',
                options: [
                  Option(
                      name: '--liveMigrationId',
                      description:
                          'Unique 24-hexadecimal digit string that identifies the live migration job',
                      args: [Arg(name: 'liveMigrationI')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')])
                ])
          ]),
      Subcommand(
          name: [
            'accesslogs',
            'access-logs',
            'accessLog',
            'accesslog',
            'access-log',
            'accessLogs',
          ],
          description: 'Manage the access logs of a cluster',
          subcommands: [
            Subcommand(
                name: ['ls', 'list'],
                description:
                    'Retrieve the access logs of a cluster identified by the cluster\'s name or hostname',
                options: [
                  Option(
                      name: '--authResult',
                      description:
                          'Flag that indicates whether to return either successful or failed authentication attempts. When set to success, Atlas filters the log to return only successful authentication attempts. When set to fail, Atlas filters the log to return only failed authentication attempts',
                      args: [Arg(name: 'authResul')]),
                  Option(
                      name: '--clusterName',
                      description: 'Name of the cluster',
                      args: [Arg(name: 'clusterNam')]),
                  Option(
                      name: '--end',
                      description:
                          'Timestamp in the number of milliseconds that have elapsed, since the UNIX Epoch, for the first entry that Atlas returns from the database access logs',
                      args: [Arg(name: 'en')]),
                  Option(
                      name: '--hostname',
                      description:
                          'The fully qualified domain name (FQDN) of the target node that should receive the authentication attempt',
                      args: [Arg(name: 'hostnam')]),
                  Option(
                      name: '--ip',
                      description:
                          'IP address that attempted to authenticate with the database. Atlas filters the returned logs to include documents with only this IP address',
                      args: [Arg(name: 'i')]),
                  Option(
                      name: '--nLog',
                      description: 'Maximum number of log lines to return',
                      args: [Arg(name: 'nLog', defaultValue: '')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output format. Valid values are json, json-path, go-template, or go-template-file',
                      args: [Arg(name: 'outpu')]),
                  Option(
                      name: '--projectId',
                      description:
                          'Project ID to use. Overrides the settings in the configuration file or environment variable',
                      args: [Arg(name: 'projectI')]),
                  Option(
                      name: '--start',
                      description:
                          'Timestamp in the number of milliseconds that have elapsed, since the UNIX Epoch, for the first entry that Atlas returns from the database access logs',
                      args: [Arg(name: 'star')])
                ])
          ]),
      Subcommand(
          name: 'login',
          description: 'Authenticate with MongoDB Atlas',
          options: [
            Option(name: '--cm', description: 'Log in to Cloud Manager'),
            Option(
                name: '--gov', description: 'Log in to Atlas for Government'),
            Option(
                name: '--loginOnly', description: 'Skip profile configuration'),
            Option(
                name: '--noBrowser',
                description: 'Don\'t try to open a browser session')
          ]),
      Subcommand(name: 'logout', description: 'Log out of the CLI', options: [
        Option(
            name: '--force',
            description:
                'If specified, skips asking for confirmation before proceeding with a requsted action')
      ]),
      Subcommand(
          name: 'whoami',
          description:
              'Verifies and displays information about your authentication state'),
      Subcommand(
          name: 'completion',
          description:
              'Generate the autocompletion script for the specified shell',
          subcommands: [
            Subcommand(
                name: 'bash',
                description: 'Generate the autocompletion script for bash',
                options: [
                  Option(
                      name: '--no-descriptions',
                      description: 'Disable completion descriptions')
                ]),
            Subcommand(
                name: 'zsh',
                description: 'Generate the autocompletion script for zsh',
                options: [
                  Option(
                      name: '--no-descriptions',
                      description: 'Disable completion descriptions')
                ]),
            Subcommand(
                name: 'fish',
                description: 'Generate the autocompletion script for fish',
                options: [
                  Option(
                      name: '--no-descriptions',
                      description: 'Disable completion descriptions')
                ]),
            Subcommand(
                name: 'powershell',
                description:
                    'Generate the autocompletion script for powershell',
                options: [
                  Option(
                      name: '--no-descriptions',
                      description: 'Disable completion descriptions')
                ])
          ]),
      Subcommand(
          name: 'help',
          description: 'Help about any command',
          subcommands: [
            Subcommand(
                name: 'config',
                description:
                    'Manage your profile to store access settings for your MongoDB deployment',
                subcommands: [
                  Subcommand(
                      name: 'init',
                      description:
                          'Configure a profile to store access settings for your MongoDB deployment'),
                  Subcommand(
                      name: 'set',
                      description:
                          'Configure specific properties of a profile'),
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List available profiles'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description: 'Return a specific profile'),
                  Subcommand(
                      name: ['mv', 'rename'], description: 'Rename a profile'),
                  Subcommand(
                      name: ['rm', 'delete'], description: 'Delete a profile')
                ]),
            Subcommand(
                name: 'auth',
                description: 'Manage the CLI\'s authentication state',
                subcommands: [
                  Subcommand(
                      name: 'login',
                      description: 'Authenticate with MongoDB Atlas'),
                  Subcommand(
                      name: 'whoami',
                      description:
                          'Verifies and displays information about your authentication state'),
                  Subcommand(name: 'logout', description: 'Log out of the CLI')
                ]),
            Subcommand(
                name: 'quickstart',
                description: 'Create and access an Atlas Cluster'),
            Subcommand(
                name: ['project', 'projects'],
                description: 'Project operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'], description: 'List projects'),
                  Subcommand(name: 'create', description: 'Create a project'),
                  Subcommand(
                      name: ['rm', 'delete'], description: 'Delete a project'),
                  Subcommand(
                      name: ['show', 'get', 'describe'],
                      description: 'Describe a project'),
                  Subcommand(
                      name: [
                        'apikeys',
                        'api-keys',
                        'apiKey',
                        'apikey',
                        'api-key',
                        'apiKeys',
                      ],
                      description: 'Manage API Keys for your project',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'List API Keys for your project'),
                        Subcommand(
                            name: 'create',
                            description: 'Create an API Key for your project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description: 'Delete an API Key for your project'),
                        Subcommand(
                            name: ['update', 'assign'],
                            description: 'Assign an API Key to a project')
                      ]),
                  Subcommand(
                      name: ['user', 'users'],
                      description: 'Manage users for a project',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'List all users for a project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description: 'Delete user from a project')
                      ]),
                  Subcommand(
                      name: ['team', 'teams'],
                      description: 'Teams operations',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'Get all teams in a project'),
                        Subcommand(
                            name: 'add', description: 'Add team to a project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description: 'Delete team from a project'),
                        Subcommand(
                            name: ['updates', 'update'],
                            description: 'Update roles for a team in a project')
                      ]),
                  Subcommand(
                      name: ['invitation', 'invitations'],
                      description: 'Invitation operations',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'Retrieves all pending invitations to the specified project'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Retrieve details for one pending invitation to the specified project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Deletes one pending invitation to the specified project'),
                        Subcommand(
                            name: ['create', 'invite'],
                            description:
                                'Invites one user to the project that you specify'),
                        Subcommand(
                            name: ['updates', 'update'],
                            description:
                                'Updates one pending invitation by invitationId or email to the project that you specify')
                      ])
                ]),
            Subcommand(
                name: ['organization', 'orgs', 'org', 'organizations'],
                description: 'Organization operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'], description: 'List organizations'),
                  Subcommand(
                      name: ['show', 'describe'],
                      description: 'Describe an organizations'),
                  Subcommand(
                      name: 'create', description: 'Create an organization'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete an organization'),
                  Subcommand(
                      name: [
                        'apikeys',
                        'api-keys',
                        'apiKey',
                        'apikey',
                        'api-key',
                        'apiKeys',
                      ],
                      description: 'Organization API Keys operations',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'List API Keys for your organization'),
                        Subcommand(
                            name: ['show', 'describe'],
                            description: 'Get a specific Organization API Key'),
                        Subcommand(
                            name: ['updates', 'assign'],
                            description: 'Update an Organization API Key'),
                        Subcommand(
                            name: 'create',
                            description: 'Create an Organization API Key'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description: 'Delete an Organization API Key'),
                        Subcommand(
                            name: [
                              'accesslists',
                              'access-lists',
                              'accessList',
                              'accesslist',
                              'access-list',
                              'whitelists',
                              'whitelist',
                              'accessLists',
                            ],
                            description:
                                'Manage the IP access list for your API Key',
                            subcommands: [
                              Subcommand(
                                  name: ['ls', 'list'],
                                  description:
                                      'List IP access list entries for your API Key'),
                              Subcommand(
                                  name: 'create',
                                  description:
                                      'Create an IP access list for your API Key'),
                              Subcommand(
                                  name: ['rm', 'delete'],
                                  description:
                                      'Delete an IP access list from your API Key')
                            ])
                      ]),
                  Subcommand(
                      name: ['user', 'users'],
                      description: 'Users operations',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'List users in a organization')
                      ]),
                  Subcommand(
                      name: ['invitation', 'invitations'],
                      description: 'Invitation operations',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'Retrieves all pending invitations to the specified organization'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Retrieve details for one pending invitation to the specified organization'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Deletes one pending invitation to the specified organization'),
                        Subcommand(
                            name: ['updates', 'update'],
                            description:
                                'Updates one pending invitation by invitationId or email to the project that you specify'),
                        Subcommand(
                            name: ['create', 'invite'],
                            description:
                                'Invites one user to the organization that you specify')
                      ])
                ]),
            Subcommand(
                name: [
                  'globalapikeys',
                  'global-api-keys',
                  'globalApiKey',
                  'globalapikey',
                  'global-api-key',
                  'globalApiKeys',
                ],
                description: 'Global API Keys operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List Global API Keys'),
                  Subcommand(
                      name: ['show', 'describe'],
                      description: 'Get a specific Global API Key'),
                  Subcommand(
                      name: 'create', description: 'Create a Global API Key'),
                  Subcommand(
                      name: 'update', description: 'Update a Global API Key'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete a Global API Key')
                ]),
            Subcommand(
                name: [
                  'globalaccesslists',
                  'global-access-lists',
                  'globalAccessList',
                  'globalaccesslist',
                  'global-access-list',
                  'globalWhitelists',
                  'globalwhitelists',
                  'global-whitelists',
                  'globalWhitelist',
                  'globalwhitelist',
                  'global-whitelist',
                  'globalAccessLists',
                ],
                description: 'Manage IP access list for Global API Key',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List Atlas IP access list entries for Global API Key'),
                  Subcommand(
                      name: ['show', 'describe'],
                      description: 'Return one Global IP access list entry'),
                  Subcommand(
                      name: 'create',
                      description:
                          'Create an IP access list for Global API Key'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete an IP access list from Global API Key')
                ]),
            Subcommand(
                name: ['user', 'users'],
                description: 'Users operations',
                subcommands: [
                  Subcommand(name: 'invite', description: 'Invite a user'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description: 'Get a user by username or id'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete an Ops Manager user')
                ]),
            Subcommand(
                name: ['team', 'teams'],
                description: 'Teams operations',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'Get all teams in an organization'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description: 'Get a team in an organization'),
                  Subcommand(
                      name: 'create',
                      description: 'Create a team in an organization'),
                  Subcommand(
                      name: ['user', 'users'],
                      description: 'Users operations',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'List users of a team'),
                        Subcommand(
                            name: 'add', description: 'Add a user to a team'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description: 'Delete user from a team')
                      ]),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete a team from an organization')
                ]),
            Subcommand(
                name: ['cluster', 'clusters'],
                description: 'Manage clusters for your project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List clusters for your project'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description: 'Describe a cluster'),
                  Subcommand(
                      name: 'create',
                      description:
                          'Create one cluster in the specified project'),
                  Subcommand(
                      name: 'watch',
                      description: 'Watch for a cluster to be available'),
                  Subcommand(
                      name: 'update', description: 'Update a MongoDB cluster'),
                  Subcommand(
                      name: 'pause',
                      description: 'Pause a running MongoDB cluster in Atlas'),
                  Subcommand(
                      name: 'start',
                      description: 'Start a paused MongoDB cluster in Atlas'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete a cluster from your project'),
                  Subcommand(
                      name: 'loadSampleData',
                      description:
                          'Load sample data into a MongoDB cluster in Atlas'),
                  Subcommand(
                      name: ['index', 'indexes'],
                      description:
                          'Manage cluster rolling indexes for your project',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description:
                                'Create a rolling index for your MongoDB cluster')
                      ]),
                  Subcommand(
                      name: ['fts', 'search'],
                      description: 'Manage Atlas Search for your cluster',
                      subcommands: [
                        Subcommand(
                            name: ['index', 'indexes'],
                            description:
                                'Manage Atlas Search indexes for your cluster',
                            subcommands: [
                              Subcommand(
                                  name: ['ls', 'list'],
                                  description:
                                      'List Atlas search indexes for a cluster'),
                              Subcommand(
                                  name: 'create',
                                  description:
                                      'Create a search index for a cluster'),
                              Subcommand(
                                  name: 'describe',
                                  description:
                                      'Describe a search index for a cluster'),
                              Subcommand(
                                  name: 'update',
                                  description:
                                      'Update a search index for a cluster'),
                              Subcommand(
                                  name: ['rm', 'delete'],
                                  description:
                                      'Delete a search index from a cluster')
                            ])
                      ]),
                  Subcommand(
                      name: [
                        'onlinearchives',
                        'online-archives',
                        'onlineArchive',
                        'onlinearchive',
                        'online-archive',
                        'onlineArchives',
                      ],
                      description: 'Manage online archives for your cluster',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'List online archives for a cluster'),
                        Subcommand(
                            name: 'describe',
                            description:
                                'Describe an online archive for a cluster'),
                        Subcommand(
                            name: 'create',
                            description:
                                'Create an online archive for a cluster'),
                        Subcommand(
                            name: 'update',
                            description:
                                'Update an online archive for a cluster'),
                        Subcommand(
                            name: 'start',
                            description:
                                'Start a paused online archive from a cluster'),
                        Subcommand(
                            name: 'pause',
                            description:
                                'Pause an online archive from a cluster'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete an online archive from a cluster'),
                        Subcommand(
                            name: 'watch',
                            description: 'Watch for an archive to be available')
                      ]),
                  Subcommand(
                      name: [
                        'connectionstrings',
                        'connection-strings',
                        'connectionString',
                        'connectionstring',
                        'connection-string',
                        'cs',
                        'connectionStrings',
                      ],
                      description: 'Manage MongoDB cluster connection string',
                      subcommands: [
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Retrieve the SRV connection string of your MongoDB cluster')
                      ]),
                  Subcommand(
                      name: [
                        'availableregions',
                        'available-regions',
                        'availableRegion',
                        'availableregion',
                        'available-region',
                        'availableRegions',
                      ],
                      description: 'Manage available regions for your project',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List available regions for your project')
                      ])
                ]),
            Subcommand(
                name: ['dbuser', 'dbusers'],
                description: 'Manage database users for your project',
                subcommands: [
                  Subcommand(name: [
                    'ls',
                    'list'
                  ], description: 'List Atlas database users for your project'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Return a single Atlas database user for your project'),
                  Subcommand(
                      name: 'create',
                      description: 'Create a database user for your project'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete a database user for your project'),
                  Subcommand(
                      name: 'update',
                      description: 'Update a database user for your project'),
                  Subcommand(
                      name: ['cert', 'certs'],
                      description:
                          'Manage Atlas x509 certificates for your database users',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List of all Atlas-managed, unexpired certificates for a database user'),
                        Subcommand(
                            name: 'create',
                            description:
                                'Create a new Atlas-managed X.509 certificate for the specified database user')
                      ])
                ]),
            Subcommand(
                name: [
                  'customdbroles',
                  'custom-db-roles',
                  'customDbRole',
                  'customdbrole',
                  'custom-db-role',
                  'customDBRoles',
                  'customDbRoles',
                ],
                description: 'Manage custom database roles for your project',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description:
                          'Create a custom database role for your project'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Return a single custom database role for your project'),
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List custom database roles for your project'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete a custom database role for your project'),
                  Subcommand(
                      name: 'update',
                      description:
                          'Update a custom database role for your project')
                ]),
            Subcommand(
                name: [
                  'accesslists',
                  'access-lists',
                  'accessList',
                  'accesslist',
                  'access-list',
                  'whitelists',
                  'whitelist',
                  'accessLists',
                ],
                description:
                    'Manage the access IP access list for your project',
                subcommands: [
                  Subcommand(
                      name: ['get', 'describe'],
                      description: 'Describe an IP access list entry'),
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List Atlas IP access list entries for your project'),
                  Subcommand(
                      name: 'create',
                      description: 'Create an IP access list for your project'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete an IP access list from your project')
                ]),
            Subcommand(
                name: [
                  'datalakes',
                  'data-lakes',
                  'dataLake',
                  'datalake',
                  'data-lake',
                  'dataLakes',
                ],
                description: 'Manage Atlas Data Lakes for your project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List Atlas Data Lakes for your project'),
                  Subcommand(
                      name: 'describe',
                      description: 'Return a specific data lake'),
                  Subcommand(
                      name: 'create',
                      description: 'Create a new data lake for your project'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete a data lake from your project'),
                  Subcommand(
                      name: 'update',
                      description: 'Update a data lake for your project')
                ]),
            Subcommand(
                name: ['alert', 'alerts'],
                description: 'Manage alerts for your project',
                subcommands: [
                  Subcommand(
                      name: ['config', 'settings'],
                      description:
                          'Manages alerts configuration for your project',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description:
                                'Creates one alert configuration in the specified project'),
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'Returns alert configurations for the specified project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Deletes the specified alert configuration in a specified project'),
                        Subcommand(
                            name: ['field', 'fields'],
                            description:
                                'Manages alert configuration fields for your project',
                            subcommands: [
                              Subcommand(
                                  name: ['types', 'type'],
                                  description:
                                      'Lists available field types for your alert configurations')
                            ]),
                        Subcommand(
                            name: 'update',
                            description:
                                'Updates one alert configuration in the specified project')
                      ]),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Retrieves one alert for the specified project'),
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Retrieves all alerts for the specified Atlas project'),
                  Subcommand(
                      name: ['ack', 'acknowledge'],
                      description:
                          'Acknowledges one alert for the specified project'),
                  Subcommand(
                      name: ['unack', 'unacknowledge'],
                      description:
                          'Unacknowledges one alert for the specified project'),
                  Subcommand(
                      name: 'global',
                      description:
                          'Retrieves all the global alerts for the specified Ops Manager project',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'Returns all global alerts for the specified Ops Manager project')
                      ])
                ]),
            Subcommand(
                name: ['backup', 'backups'],
                description: 'Manage cloud backups for your project',
                subcommands: [
                  Subcommand(
                      name: ['snapshot', 'snapshots'],
                      description:
                          'Manage cloud backup snapshots for your project',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List cloud backup snapshots for your project and cluster'),
                        Subcommand(
                            name: ['take', 'create'],
                            description:
                                'Create a backup snapshot for your project and cluster'),
                        Subcommand(
                            name: 'describe',
                            description:
                                'Get a specific snapshot for your project'),
                        Subcommand(
                            name: 'watch',
                            description:
                                'Watch for a snapshot to be available'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description: 'Delete a backup snapshot')
                      ]),
                  Subcommand(
                      name: ['restore', 'restores'],
                      description:
                          'Manage cloud backup restore jobs for your project',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List cloud backup restore jobs for your project and cluster'),
                        Subcommand(
                            name: 'start',
                            description:
                                'Start a restore job for your project and cluster')
                      ])
                ]),
            Subcommand(
                name: ['event', 'events'],
                description: 'Manage events for your organization or project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Return all events for an organization or project'),
                  Subcommand(
                      name: ['organization', 'orgs', 'org', 'organizations'],
                      description: 'Organization operations',
                      subcommands: [
                        Subcommand(name: [
                          'ls',
                          'list'
                        ], description: 'Return all events for an organization')
                      ]),
                  Subcommand(
                      name: ['project', 'projects'],
                      description: 'Project operations',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'Return all events for a project')
                      ])
                ]),
            Subcommand(
                name: ['metric', 'measurements', 'measurement', 'metrics'],
                description: 'Get metrics on the MongoDB process',
                subcommands: [
                  Subcommand(
                      name: ['process', 'processes'],
                      description:
                          'Get MongoDB process metrics for a given host'),
                  Subcommand(
                      name: ['disk', 'disks'],
                      description:
                          'List available disks or disk metrics for a given host',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List available disks or disk partitions for a given host'),
                        Subcommand(
                            name: 'describe',
                            description:
                                'Describe disk partition metrics for a disk partition on a specified host')
                      ]),
                  Subcommand(
                      name: ['database', 'databases'],
                      description:
                          'List available databases or database metrics for a given host',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List available databases or database metrics for a given host'),
                        Subcommand(
                            name: 'describe',
                            description:
                                'Describe database metrics for a database on a specific host')
                      ])
                ]),
            Subcommand(
                name: [
                  'performanceadvisor',
                  'performance-advisor',
                  'performanceAdvisor',
                ],
                description: 'Performance Advisor operations',
                subcommands: [
                  Subcommand(
                      name: ['namespace', 'namespaces'],
                      description:
                          'Retrieve namespaces for collections experiencing slow queries',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'Retrieve up to 20 namespaces for collections experiencing slow queries for a specified host')
                      ]),
                  Subcommand(
                      name: [
                        'slowquerylogs',
                        'slow-query-logs',
                        'slowQueryLog',
                        'slowquerylog',
                        'slow-query-log',
                        'slowQueryLogs',
                      ],
                      description:
                          'Get log lines for slow queries for a specified host',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'Return log lines for slow queries that the Performance Advisor and Query Profiler identified')
                      ]),
                  Subcommand(
                      name: [
                        'suggestedindexes',
                        'suggested-indexes',
                        'suggestedIndex',
                        'suggestedindex',
                        'suggested-index',
                        'suggestedIndexes',
                      ],
                      description:
                          'Get suggested indexes for collections experiencing slow queries',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'Retrieve suggested indexes for collections experiencing slow queries')
                      ]),
                  Subcommand(
                      name: [
                        'slowOT',
                        'sot',
                        'slowMS',
                        'slowOperationThreshold'
                      ],
                      description:
                          'Enable or disable management of the slow operation threshold for your cluster',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'enable'],
                            description:
                                'Enable the application-managed slow operation threshold for your project'),
                        Subcommand(
                            name: 'disable',
                            description:
                                'Disable the application-managed slow operation threshold for your project')
                      ])
                ]),
            Subcommand(
                name: ['log', 'logs'],
                description: 'Download host logs for your project',
                subcommands: [
                  Subcommand(
                      name: 'download',
                      description: 'Download a host mongodb logs')
                ]),
            Subcommand(
                name: ['process', 'processes'],
                description: 'Manage MongoDB processes for your project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List MongoDB processes for your project')
                ]),
            Subcommand(
                name: [
                  'privateendpoints',
                  'private-endpoints',
                  'privateEndpoint',
                  'privateendpoint',
                  'private-endpoint',
                  'privateEndpoints',
                ],
                description: 'Manage Atlas private endpoints',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'List Atlas Private Endpoints for your project'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Return a specific Private Endpoints for your project'),
                  Subcommand(
                      name: 'create',
                      description:
                          'Create a new private endpoint for your project'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Delete a private endpoint from your project'),
                  Subcommand(
                      name: 'watch',
                      description:
                          'Watch for a private endpoint to be available'),
                  Subcommand(
                      name: ['interface', 'interfaces'],
                      description: 'Manage Atlas private endpoint interfaces',
                      subcommands: [
                        Subcommand(
                            name: ['add', 'create'],
                            description:
                                'Add a new interface to a private endpoint'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific private endpoint interface for your project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a private endpoint interface from your project')
                      ]),
                  Subcommand(
                      name: 'aws',
                      description: 'Manage AWS Private Endpoints',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List AWS Private Endpoints for your project'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific AWS Private Endpoints for your project'),
                        Subcommand(
                            name: 'create',
                            description:
                                'Create a new AWS Private Endpoint for your project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a specific AWS Private Endpoint for your project'),
                        Subcommand(
                            name: 'watch',
                            description:
                                'Watch for a specific AWS Private Endpoint to be available'),
                        Subcommand(
                            name: ['interface', 'interfaces'],
                            description:
                                'Manage Atlas AWS private endpoint interfaces',
                            subcommands: [
                              Subcommand(
                                  name: ['add', 'create'],
                                  description:
                                      'Add a new interface to a AWS private endpoint'),
                              Subcommand(
                                  name: ['get', 'describe'],
                                  description:
                                      'Return a specific AWS private endpoint interface for your project'),
                              Subcommand(
                                  name: ['rm', 'delete'],
                                  description:
                                      'Delete a specific AWS private endpoint interface and the related endpoint service for your project')
                            ])
                      ]),
                  Subcommand(
                      name: 'azure',
                      description: 'Manage Azure Private Endpoints',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List Azure Private Endpoints for your project'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific Azure Private Endpoints for your project'),
                        Subcommand(
                            name: 'create',
                            description:
                                'Create a new Azure Private Endpoint for your project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a specific Azure Private Endpoint for your project'),
                        Subcommand(
                            name: 'watch',
                            description:
                                'Watch for a specific Azure Private Endpoint to be available'),
                        Subcommand(
                            name: ['interface', 'interfaces'],
                            description:
                                'Manage Atlas Azure private endpoint interfaces',
                            subcommands: [
                              Subcommand(
                                  name: ['add', 'create'],
                                  description:
                                      'Add a new Azure interface to a private endpoint'),
                              Subcommand(
                                  name: ['get', 'describe'],
                                  description:
                                      'Return a specific Azure private endpoint interface for your project'),
                              Subcommand(
                                  name: ['rm', 'delete'],
                                  description:
                                      'Delete a specific Azure private endpoint interface and related service for your project')
                            ])
                      ]),
                  Subcommand(
                      name: 'gcp',
                      description: 'Manage GCP private endpoints',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description:
                                'Create a new GCP private endpoint for your project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a GCP private endpoint for your project'),
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List GCP private endpoints for your project'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Return a specific GCP private endpoint for your project'),
                        Subcommand(
                            name: 'watch',
                            description:
                                'Watch the specified GCP private endpoint to detect changes in the endpoint\'s state'),
                        Subcommand(
                            name: ['interface', 'interfaces'],
                            description:
                                'Manage Atlas GCP private endpoint interfaces',
                            subcommands: [
                              Subcommand(
                                  name: ['get', 'describe'],
                                  description:
                                      'Return a specific GCP private endpoint interface for your project'),
                              Subcommand(
                                  name: ['rm', 'delete'],
                                  description:
                                      'Delete a specific GCP private endpoint interface for your project'),
                              Subcommand(
                                  name: ['add', 'create'],
                                  description:
                                      'Create a GCP private endpoint interface')
                            ])
                      ]),
                  Subcommand(
                      name: [
                        'regionalmodes',
                        'regional-modes',
                        'regionalMode',
                        'regionalmode',
                        'regional-mode',
                        'regionalModes',
                      ],
                      description:
                          'Manage regionalized private endpoint setting for your Atlas project',
                      subcommands: [
                        Subcommand(
                            name: 'enable',
                            description:
                                'Enable the regionalized private endpoint setting for your Atlas project'),
                        Subcommand(
                            name: 'disable',
                            description:
                                'Disable the regionalized private endpoint setting for your Atlas project'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Get the regionalized private endpoint setting for your Atlas project')
                      ]),
                  Subcommand(
                      name: [
                        'datalakes',
                        'data-lakes',
                        'dataLake',
                        'datalake',
                        'data-lake',
                        'dataLakes',
                      ],
                      description: 'Manage Data Lake private endpoints',
                      subcommands: [
                        Subcommand(
                            name: 'aws',
                            description: 'Manage AWS private endpoints',
                            subcommands: [
                              Subcommand(
                                  name: 'create',
                                  description:
                                      'Create a new Data Lake private endpoint for your project'),
                              Subcommand(
                                  name: ['ls', 'list'],
                                  description:
                                      'List Data Lake private endpoints for your project'),
                              Subcommand(
                                  name: ['get', 'describe'],
                                  description:
                                      'Return a specific Data Lake private endpoint for your project'),
                              Subcommand(
                                  name: ['rm', 'delete'],
                                  description:
                                      'Delete a specific Data Lake private endpoint for your project')
                            ])
                      ]),
                  Subcommand(
                      name: [
                        'onlinearchive',
                        'online-archive',
                        'onlineArchive'
                      ],
                      description: 'Manage Online Archive private endpoints',
                      subcommands: [
                        Subcommand(
                            name: 'aws',
                            description: 'Manage AWS private endpoints',
                            subcommands: [
                              Subcommand(
                                  name: 'create',
                                  description:
                                      'Create a new Data Lake private endpoint for your project'),
                              Subcommand(
                                  name: ['ls', 'list'],
                                  description:
                                      'List Data Lake private endpoints for your project'),
                              Subcommand(
                                  name: ['get', 'describe'],
                                  description:
                                      'Return a specific Data Lake private endpoint for your project'),
                              Subcommand(
                                  name: ['rm', 'delete'],
                                  description:
                                      'Delete a specific Data Lake private endpoint for your project')
                            ])
                      ])
                ]),
            Subcommand(
                name: 'networking',
                description: 'Networking operations',
                subcommands: [
                  Subcommand(
                      name: ['container', 'containers'],
                      description: 'Manage Network Peering containers',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'List network peering containers in an Atlas project'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Remove one network peering container in an Atlas project')
                      ]),
                  Subcommand(
                      name: 'peering',
                      description: 'Manage Network Peering connections',
                      subcommands: [
                        Subcommand(
                            name: ['ls', 'list'],
                            description:
                                'Retrieve details for all network peering connections in one Atlas project'),
                        Subcommand(
                            name: 'create',
                            description:
                                'Create a connection with AWS, Azure and Google Cloud',
                            subcommands: [
                              Subcommand(
                                  name: 'azure',
                                  description:
                                      'Create a connection with Azure'),
                              Subcommand(
                                  name: 'aws',
                                  description: 'Create a connection with AWS'),
                              Subcommand(
                                  name: 'gcp',
                                  description: 'Create a connection with GCP')
                            ]),
                        Subcommand(
                            name: 'watch',
                            description:
                                'Watch for a peering connection to be available'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete a peering connection from an Atlas project')
                      ])
                ]),
            Subcommand(
                name: 'security',
                description: 'Manage security configuration for your project',
                subcommands: [
                  Subcommand(
                      name: [
                        'customercerts',
                        'customer-certs',
                        'customerCert',
                        'customercert',
                        'customer-cert',
                        'certs',
                        'customerCerts',
                      ],
                      description:
                          'Manage customer x509 certificates for your project',
                      subcommands: [
                        Subcommand(
                            name: 'describe',
                            description:
                                'Get the current customer-managed X.509 configuration details for an Atlas project'),
                        Subcommand(
                            name: 'create',
                            description:
                                'Saves a customer-managed X.509 configuration for an Atlas project'),
                        Subcommand(
                            name: 'disable',
                            description:
                                'Disables customer-managed X.509 for a project')
                      ]),
                  Subcommand(
                      name: 'ldap',
                      description: 'LDAP operations',
                      subcommands: [
                        Subcommand(
                            name: 'verify',
                            description:
                                'Request verification of an LDAP configuration',
                            subcommands: [
                              Subcommand(
                                  name: 'status',
                                  description:
                                      'Get the status of an LDAP configuration request',
                                  subcommands: [
                                    Subcommand(
                                        name: 'watch',
                                        description:
                                            'Watch for an LDAP configuration request to complete')
                                  ])
                            ]),
                        Subcommand(
                            name: 'save',
                            description: 'Save an LDAP configuration'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description:
                                'Delete an LDAP configuration userToDNMapping from an LDAP configuration'),
                        Subcommand(
                            name: 'get',
                            description: 'Get an LDAP configuration')
                      ])
                ]),
            Subcommand(
                name: ['integration', 'integrations'],
                description: 'Third party integration operations',
                subcommands: [
                  Subcommand(
                      name: ['update', 'create'],
                      description: 'Create operations',
                      subcommands: [
                        Subcommand(
                            name: ['new_relic', 'newRelic', 'NEW_RELIC'],
                            description:
                                'Create or update the New Relic integration'),
                        Subcommand(
                            name: ['ops_genie', 'opsGenie', 'OPS_GENIE'],
                            description:
                                'Create or update the Ops Genie integration'),
                        Subcommand(
                            name: ['pager_duty', 'pagerDuty', 'PAGER_DUTY'],
                            description:
                                'Create or update the PagerDuty integration'),
                        Subcommand(
                            name: ['datadog', 'DATADOG'],
                            description:
                                'Create or update the Datadog integration'),
                        Subcommand(
                            name: ['victor_ops', 'victorOps', 'VICTOR_OPS'],
                            description:
                                'Create or update the VictorOps integrations'),
                        Subcommand(
                            name: ['flowdock', 'FLOWDOCK'],
                            description:
                                'Create or update the Flowdock integration'),
                        Subcommand(
                            name: ['webhook', 'WEBHOOK'],
                            description:
                                'Create or update the Webhook integration')
                      ]),
                  Subcommand(
                      name: ['ls', 'list'],
                      description: 'List third party integrations'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description: 'Delete a third party integration'),
                  Subcommand(
                      name: 'describe',
                      description: 'Get a third party integration')
                ]),
            Subcommand(
                name: [
                  'maintenancewindows',
                  'maintenance-windows',
                  'maintenanceWindow',
                  'maintenancewindow',
                  'maintenance-window',
                  'maintenanceWindows',
                ],
                description: 'Manage Atlas maintenance windows',
                subcommands: [
                  Subcommand(
                      name: 'update',
                      description: 'Update the maintenance window'),
                  Subcommand(
                      name: ['rm', 'delete', 'clear'],
                      description: 'Clear the maintenance window'),
                  Subcommand(
                      name: 'defer',
                      description: 'Defer the maintenance window'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description: 'Get a maintenance window')
                ]),
            Subcommand(
                name: [
                  'customdns',
                  'custom-dns',
                  'customDn',
                  'customdn',
                  'custom-dn',
                  'customDns',
                ],
                description:
                    'Manage DNS configuration of Atlas project’s clusters deployed to AWS',
                subcommands: [
                  Subcommand(
                      name: ['aw', 'aws'],
                      description:
                          'Manage DNS configuration of an Atlas project’s cluster deployed to AWS',
                      subcommands: [
                        Subcommand(
                            name: 'enable',
                            description:
                                'Enable the custom DNS configuration of an Atlas project’s cluster deployed to AWS'),
                        Subcommand(
                            name: 'disable',
                            description:
                                'Disable the custom DNS configuration of an Atlas project’s cluster deployed to AWS'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description:
                                'Describe the custom DNS configuration of an Atlas project’s cluster deployed to AWS')
                      ])
                ]),
            Subcommand(
                name: [
                  'cloudproviders',
                  'cloud-providers',
                  'cloudProvider',
                  'cloudprovider',
                  'cloud-provider',
                  'cloudProviders',
                ],
                description: 'Manage unified IAM role access in Atlas',
                subcommands: [
                  Subcommand(
                      name: [
                        'accessroles',
                        'access-roles',
                        'accessRole',
                        'accessrole',
                        'access-role',
                        'accessRoles',
                      ],
                      description: 'Manage AWS IAM role access in Atlas',
                      subcommands: [
                        Subcommand(
                            name: 'aws',
                            description: 'Manage AWS IAM role access in Atlas',
                            subcommands: [
                              Subcommand(
                                  name: 'create',
                                  description: 'Create an AWS IAM role'),
                              Subcommand(
                                  name: 'authorize',
                                  description: 'Authorize an AWS IAM role'),
                              Subcommand(
                                  name: 'deauthorize',
                                  description: 'Deauthorize an AWS IAM role')
                            ]),
                        Subcommand(
                            name: ['ls', 'list'],
                            description: 'List AWS IAM role access in Atlas')
                      ])
                ]),
            Subcommand(
                name: ['sl', 'serverless'],
                description: 'Manage serverless instances for your project',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Return all serverless instances in the specified project'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description:
                          'Return one serverless instance in the specified project'),
                  Subcommand(
                      name: ['rm', 'delete'],
                      description:
                          'Remove a serverless instance from your project'),
                  Subcommand(
                      name: 'create',
                      description:
                          'Creates one serverless instance in the specified project'),
                  Subcommand(
                      name: 'watch',
                      description: 'Monitor the status of serverless instance')
                ]),
            Subcommand(
                name: [
                  'livemigrations',
                  'live-migrations',
                  'liveMigration',
                  'livemigration',
                  'live-migration',
                  'lm',
                  'liveMigrations',
                ],
                description:
                    'Manage a Live Migration to Atlas for your organization',
                subcommands: [
                  Subcommand(
                      name: 'link',
                      description:
                          'Manage the link-token for your organization',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description: 'Create one new link-token'),
                        Subcommand(
                            name: ['rm', 'delete'],
                            description: 'Delete one link-token')
                      ]),
                  Subcommand(
                      name: 'validation',
                      description:
                          'Manage a Live Migration validation job for your project',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description: 'Create one new validation request'),
                        Subcommand(
                            name: ['get', 'describe'],
                            description: 'Return one validation job')
                      ]),
                  Subcommand(
                      name: 'create', description: 'Create one new migration'),
                  Subcommand(
                      name: ['get', 'describe'],
                      description: 'Return one migration job'),
                  Subcommand(
                      name: 'cutover',
                      description:
                          'Start the cutover and confirm when the cutover completes. When the cutover completes, the application completes the live migration process and stops synchronizing with the source cluster')
                ]),
            Subcommand(
                name: [
                  'accesslogs',
                  'access-logs',
                  'accessLog',
                  'accesslog',
                  'access-log',
                  'accessLogs',
                ],
                description: 'Manage the access logs of a cluster',
                subcommands: [
                  Subcommand(
                      name: ['ls', 'list'],
                      description:
                          'Retrieve the access logs of a cluster identified by the cluster\'s name or hostname')
                ]),
            Subcommand(
                name: 'login', description: 'Authenticate with MongoDB Atlas'),
            Subcommand(name: 'logout', description: 'Log out of the CLI'),
            Subcommand(
                name: 'whoami',
                description:
                    'Verifies and displays information about your authentication state'),
            Subcommand(
                name: 'completion',
                description:
                    'Generate the autocompletion script for the specified shell',
                subcommands: [
                  Subcommand(
                      name: 'bash',
                      description:
                          'Generate the autocompletion script for bash'),
                  Subcommand(
                      name: 'zsh',
                      description:
                          'Generate the autocompletion script for zsh'),
                  Subcommand(
                      name: 'fish',
                      description:
                          'Generate the autocompletion script for fish'),
                  Subcommand(
                      name: 'powershell',
                      description:
                          'Generate the autocompletion script for powershell')
                ])
          ])
    ],
    options: [
      Option(
          name: ['--profile', '-P'],
          description: 'Profile to use from your configuration file',
          isPersistent: true,
          args: [Arg(name: 'profil')]),
      Option(
          name: ['--help', '-h'],
          description: 'Display help',
          isPersistent: true)
    ]);
