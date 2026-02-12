// Auto-generated from TypeScript source: meroxa.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `meroxa` CLI
final FigSpec meroxaSpec = FigSpec(
  name: 'meroxa',
  description: 'The Meroxa CLI',
  subcommands: [
    Subcommand(
      name: ['accounts', 'account'],
      description: 'Manage Meroxa Accounts',
      subcommands: [
        Subcommand(
          name: ['ls', 'list'],
          description: 'List Meroxa Accounts',
          options: [
            Option(
              name: '--no-headers',
              description: 'Display output without headers'
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set active account'
        )
      ]
    ),
    Subcommand(
      name: 'api',
      description: 'Invoke Meroxa API'
    ),
    Subcommand(
      name: ['app', 'apps'],
      description: 'Manage Turbine Data Applications',
      subcommands: [
        Subcommand(
          name: 'deploy',
          description: 'Deploy a Turbine Data Application',
          options: [
            Option(
              name: '--docker-hub-access-token',
              description: 'DockerHub access token to use to build and deploy the app',
              args: [
                Arg(
                name: 'docker-hub-access-toke'
              )
              ]
            ),
            Option(
              name: '--docker-hub-username',
              description: 'DockerHub username to use to build and deploy the app',
              args: [
                Arg(
                name: 'docker-hub-usernam'
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'Environment (name or UUID) where application will be deployed to',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to the app directory (default is local directory)',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--skip-collection-validation',
              description: 'Skips unique destination collection and looping validations'
            ),
            Option(
              name: '--spec',
              description: 'Deployment specification version to use to build and deploy the app',
              args: [
                Arg(
                name: 'spe'
              )
              ]
            ),
            Option(
              name: '--verbose',
              description: 'Prints more logging messages'
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describe a Turbine Data Application',
          options: [
            Option(
              name: '--path',
              description: 'Path to the app directory (default is local directory)',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize a Turbine Data Application',
          options: [
            Option(
              name: ['--lang', '-l'],
              description: 'Language to use (js|go|py) (required)',
              args: [
                Arg(
                name: 'lang',
                suggestions: [
                  FigSuggestion(name: 'js'),
                  FigSuggestion(name: 'go'),

                ]
              )
              ]
            ),
            Option(
              name: '--mod-vendor',
              description: 'Whether to download modules to vendor or globally while initializing a Go application'
            ),
            Option(
              name: '--path',
              description: 'Path where application will be initialized (current directory as default)',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--skip-mod-init',
              description: 'Whether to run \'go mod init\' while initializing a Go application'
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'List Turbine Data Applications',
          options: [
            Option(
              name: '--no-headers',
              description: 'Display output without headers'
            )
          ]
        ),
        Subcommand(
          name: ['log', 'logs'],
          description: 'View relevant logs to the state of the given Turbine Data Application',
          options: [
            Option(
              name: '--path',
              description: 'Path to the app directory (default is local directory)',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'open',
          description: 'Open the link to a Turbine Data Application in the Dashboard',
          options: [
            Option(
              name: '--path',
              description: 'Path to the app directory (default is local directory)',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['rm', 'delete', 'remove'],
          description: 'Remove a Turbine Data Application',
          options: [
            Option(
              name: ['--force', '-f'],
              description: 'Skip confirmation'
            ),
            Option(
              name: '--path',
              description: 'Path to the app directory (default is local directory)',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'run',
          description: 'Execute a Turbine Data Application locally',
          options: [
            Option(
              name: '--path',
              description: 'Path of application to run',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade a Turbine Data Application',
          options: [
            Option(
              name: '--path',
              description: 'Path where application exists (current directory as default)',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'auth',
      description: 'Authentication commands for Meroxa',
      subcommands: [
        Subcommand(
          name: 'login',
          description: 'Login or Sign up to the Meroxa Platform'
        ),
        Subcommand(
          name: 'logout',
          description: 'Clears local login credentials of the Meroxa Platform'
        ),
        Subcommand(
          name: 'whoami',
          description: 'Display the current logged in user'
        )
      ]
    ),
    Subcommand(
      name: 'billing',
      description: 'Open your billing page in a web browser'
    ),
    Subcommand(
      name: ['build', 'builds'],
      description: 'Inspect Process Builds on Meroxa',
      subcommands: [
        Subcommand(
          name: 'describe',
          description: 'Describe a Meroxa Process Build'
        ),
        Subcommand(
          name: ['log', 'logs'],
          description: 'List a Meroxa Process Build\'s Logs'
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate completion script'
    ),
    Subcommand(
      name: ['cfg', 'config'],
      description: 'Manage your Meroxa CLI configuration',
      subcommands: [
        Subcommand(
          name: 'describe',
          description: 'Show Meroxa CLI configuration details'
        ),
        Subcommand(
          name: 'set',
          description: 'Update your Meroxa CLI configuration file with a specific key=value'
        )
      ]
    ),
    Subcommand(
      name: ['env', 'environment', 'environments'],
      description: 'Manage environments on Meroxa',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create an environment',
          options: [
            Option(
              name: ['--config', '-c'],
              description: 'Environment configuration based on type and provider (e.g.: --config aws_access_key_id=my_access_key --config aws_secret_access_key=my_access_secret)',
              isRepeatable: true,
              args: [
                Arg(
                name: 'confi'
              )
              ]
            ),
            Option(
              name: '--provider',
              description: 'Environment cloud provider to use',
              args: [
                Arg(
                name: 'provide'
              )
              ]
            ),
            Option(
              name: '--region',
              description: 'Environment region',
              args: [
                Arg(
                name: 'regio'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Environment type, when not specified',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Skip confirmation prompt'
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describe environment'
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'List environments',
          options: [
            Option(
              name: '--no-headers',
              description: 'Display output without headers'
            )
          ]
        ),
        Subcommand(
          name: ['rm', 'delete', 'remove'],
          description: 'Remove environment',
          options: [
            Option(
              name: ['--force', '-f'],
              description: 'Skip confirmation'
            ),
            Option(
              name: '--yolo',
              description: 'Skip confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'repair',
          description: 'Repair environment'
        ),
        Subcommand(
          name: 'update',
          description: 'Update an environment',
          options: [
            Option(
              name: ['--config', '-c'],
              description: 'Updated environment configuration based on type and provider (e.g.: --config aws_access_key_id=my_access_key --config aws_secret_access_key=my_access_secret)',
              isRepeatable: true,
              args: [
                Arg(
                name: 'confi'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Updated environment name, when specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Skip confirmation prompt'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Login or Sign up to the Meroxa Platform'
    ),
    Subcommand(
      name: 'logout',
      description: 'Clears local login credentials of the Meroxa Platform'
    ),
    Subcommand(
      name: 'open',
      description: 'Open in a web browser',
      subcommands: [
        Subcommand(
          name: 'billing',
          description: 'Open your billing page in a web browser'
        )
      ]
    ),
    Subcommand(
      name: ['resource', 'resources'],
      description: 'Manage resources on Meroxa',
      subcommands: [
        Subcommand(
          name: ['add', 'create'],
          description: 'Add a resource to your Meroxa resource catalog',
          options: [
            Option(
              name: '--ca-cert',
              description: 'Trusted certificates for verifying resource',
              args: [
                Arg(
                name: 'ca-cer'
              )
              ]
            ),
            Option(
              name: '--client-cert',
              description: 'Client certificate for authenticating to the resource',
              args: [
                Arg(
                name: 'client-cer'
              )
              ]
            ),
            Option(
              name: '--client-key',
              description: 'Client private key for authenticating to the resource',
              args: [
                Arg(
                name: 'client-ke'
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'Environment (name or UUID) where resource will be created',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: ['--metadata', '-m'],
              description: 'Resource metadata',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'Password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--private-key-file',
              description: 'Path to private key file',
              args: [
                Arg(
                name: 'private-key-fil'
              )
              ]
            ),
            Option(
              name: '--ssh-private-key',
              description: 'SSH tunneling private key',
              args: [
                Arg(
                name: 'ssh-private-ke'
              )
              ]
            ),
            Option(
              name: '--ssh-url',
              description: 'SSH tunneling address',
              args: [
                Arg(
                name: 'ssh-ur'
              )
              ]
            ),
            Option(
              name: '--ssl',
              description: 'Use SSL'
            ),
            Option(
              name: '--token',
              description: 'API Token',
              args: [
                Arg(
                name: 'toke'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Resource type (required)',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: ['--url', '-u'],
              description: 'Resource url',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Username',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describe resource'
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'List resources and resource types',
          options: [
            Option(
              name: '--no-headers',
              description: 'Display output without headers'
            ),
            Option(
              name: '--type',
              description: 'Alias to --types'
            ),
            Option(
              name: '--types',
              description: 'List resource types'
            )
          ]
        ),
        Subcommand(
          name: ['rm', 'delete', 'remove'],
          description: 'Remove resource',
          options: [
            Option(
              name: ['--force', '-f'],
              description: 'Skip confirmation'
            ),
            Option(
              name: '--yolo',
              description: 'Skip confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'rotate-tunnel-key',
          description: 'Rotate the tunnel key for a resource',
          options: [
            Option(
              name: ['--force', '-f'],
              description: 'Skip confirmation'
            ),
            Option(
              name: '--yolo',
              description: 'Skip confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a resource',
          options: [
            Option(
              name: '--ca-cert',
              description: 'Trusted certificates for verifying resource',
              args: [
                Arg(
                name: 'ca-cer'
              )
              ]
            ),
            Option(
              name: '--client-cert',
              description: 'Client certificate for authenticating to the resource',
              args: [
                Arg(
                name: 'client-cer'
              )
              ]
            ),
            Option(
              name: '--client-key',
              description: 'Client private key for authenticating to the resource',
              args: [
                Arg(
                name: 'client-ke'
              )
              ]
            ),
            Option(
              name: ['--metadata', '-m'],
              description: 'New resource metadata',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'New resource name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'Password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--ssh-url',
              description: 'SSH tunneling address',
              args: [
                Arg(
                name: 'ssh-ur'
              )
              ]
            ),
            Option(
              name: '--ssl',
              description: 'Use SSL'
            ),
            Option(
              name: ['--url', '-u'],
              description: 'New resource url',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Username',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate a resource'
        )
      ]
    ),
    Subcommand(
      name: ['transform', 'transforms'],
      description: 'Manage transforms on Meroxa',
      subcommands: [
        Subcommand(
          name: ['ls', 'list'],
          description: 'List transforms',
          options: [
            Option(
              name: '--no-headers',
              description: 'Display output without headers'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Display the Meroxa CLI version'
    ),
    Subcommand(
      name: 'whoami',
      description: 'Display the current logged in user'
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [
        Subcommand(
          name: ['accounts', 'account'],
          description: 'Manage Meroxa Accounts',
          subcommands: [
            Subcommand(
              name: ['ls', 'list'],
              description: 'List Meroxa Accounts'
            ),
            Subcommand(
              name: 'set',
              description: 'Set active account'
            )
          ]
        ),
        Subcommand(
          name: 'api',
          description: 'Invoke Meroxa API'
        ),
        Subcommand(
          name: ['app', 'apps'],
          description: 'Manage Turbine Data Applications',
          subcommands: [
            Subcommand(
              name: 'deploy',
              description: 'Deploy a Turbine Data Application'
            ),
            Subcommand(
              name: 'describe',
              description: 'Describe a Turbine Data Application'
            ),
            Subcommand(
              name: 'init',
              description: 'Initialize a Turbine Data Application'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'List Turbine Data Applications'
            ),
            Subcommand(
              name: ['log', 'logs'],
              description: 'View relevant logs to the state of the given Turbine Data Application'
            ),
            Subcommand(
              name: 'open',
              description: 'Open the link to a Turbine Data Application in the Dashboard'
            ),
            Subcommand(
              name: ['rm', 'delete', 'remove'],
              description: 'Remove a Turbine Data Application'
            ),
            Subcommand(
              name: 'run',
              description: 'Execute a Turbine Data Application locally'
            ),
            Subcommand(
              name: 'upgrade',
              description: 'Upgrade a Turbine Data Application'
            )
          ]
        ),
        Subcommand(
          name: 'auth',
          description: 'Authentication commands for Meroxa',
          subcommands: [
            Subcommand(
              name: 'login',
              description: 'Login or Sign up to the Meroxa Platform'
            ),
            Subcommand(
              name: 'logout',
              description: 'Clears local login credentials of the Meroxa Platform'
            ),
            Subcommand(
              name: 'whoami',
              description: 'Display the current logged in user'
            )
          ]
        ),
        Subcommand(
          name: 'billing',
          description: 'Open your billing page in a web browser'
        ),
        Subcommand(
          name: ['build', 'builds'],
          description: 'Inspect Process Builds on Meroxa',
          subcommands: [
            Subcommand(
              name: 'describe',
              description: 'Describe a Meroxa Process Build'
            ),
            Subcommand(
              name: ['log', 'logs'],
              description: 'List a Meroxa Process Build\'s Logs'
            )
          ]
        ),
        Subcommand(
          name: 'completion',
          description: 'Generate completion script'
        ),
        Subcommand(
          name: ['cfg', 'config'],
          description: 'Manage your Meroxa CLI configuration',
          subcommands: [
            Subcommand(
              name: 'describe',
              description: 'Show Meroxa CLI configuration details'
            ),
            Subcommand(
              name: 'set',
              description: 'Update your Meroxa CLI configuration file with a specific key=value'
            )
          ]
        ),
        Subcommand(
          name: ['env', 'environment', 'environments'],
          description: 'Manage environments on Meroxa',
          subcommands: [
            Subcommand(
              name: 'create',
              description: 'Create an environment'
            ),
            Subcommand(
              name: 'describe',
              description: 'Describe environment'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'List environments'
            ),
            Subcommand(
              name: ['rm', 'delete', 'remove'],
              description: 'Remove environment'
            ),
            Subcommand(
              name: 'repair',
              description: 'Repair environment'
            ),
            Subcommand(
              name: 'update',
              description: 'Update an environment'
            )
          ]
        ),
        Subcommand(
          name: 'login',
          description: 'Login or Sign up to the Meroxa Platform'
        ),
        Subcommand(
          name: 'logout',
          description: 'Clears local login credentials of the Meroxa Platform'
        ),
        Subcommand(
          name: 'open',
          description: 'Open in a web browser',
          subcommands: [
            Subcommand(
              name: 'billing',
              description: 'Open your billing page in a web browser'
            )
          ]
        ),
        Subcommand(
          name: ['resource', 'resources'],
          description: 'Manage resources on Meroxa',
          subcommands: [
            Subcommand(
              name: ['add', 'create'],
              description: 'Add a resource to your Meroxa resource catalog'
            ),
            Subcommand(
              name: 'describe',
              description: 'Describe resource'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'List resources and resource types'
            ),
            Subcommand(
              name: ['rm', 'delete', 'remove'],
              description: 'Remove resource'
            ),
            Subcommand(
              name: 'rotate-tunnel-key',
              description: 'Rotate the tunnel key for a resource'
            ),
            Subcommand(
              name: 'update',
              description: 'Update a resource'
            ),
            Subcommand(
              name: 'validate',
              description: 'Validate a resource'
            )
          ]
        ),
        Subcommand(
          name: ['transform', 'transforms'],
          description: 'Manage transforms on Meroxa',
          subcommands: [
            Subcommand(
              name: ['ls', 'list'],
              description: 'List transforms'
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Display the Meroxa CLI version'
        ),
        Subcommand(
          name: 'whoami',
          description: 'Display the current logged in user'
        )
      ]
    )
  ],
  options: [
    Option(
      name: '--api-url',
      description: 'API url',
      isPersistent: true,
      args: [
        Arg(
        name: 'api-ur'
      )
      ]
    ),
    Option(
      name: '--cli-config-file',
      description: 'Meroxa configuration file',
      isPersistent: true,
      args: [
        Arg(
        name: 'cli-config-file',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Display any debugging information',
      isPersistent: true
    ),
    Option(
      name: '--json',
      description: 'Output json',
      isPersistent: true
    ),
    Option(
      name: '--timeout',
      description: 'Set the duration of the client timeout in seconds',
      isPersistent: true,
      args: [
        Arg(
        name: 'timeout',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
