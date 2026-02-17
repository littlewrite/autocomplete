// Auto-generated from TypeScript source: forge.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `@forge/cli` CLI
final FigSpec forgeCliSpec = FigSpec(
  name: '@forge/cli',
  description: 'A command line interface for managing Atlassian-hosted apps',
  subcommands: [

    Subcommand(
      name: 'autocomplete',
      description: 'Configures autocomplete for the Forge CLI',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'install|uninstall',
        suggestions: [

          FigSuggestion(name: 'install'),
          FigSuggestion(name: 'uninstall')
        ]
      )
      ],
      priority: 10
    ),
    Subcommand(
      name: 'create',
      description: 'Create an app',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-t', '--template'],
          description: 'Specify the template to use',
          args: [
            Arg(
            name: 'template name'
          )
          ]
        ),
        Option(
          name: ['-d', '--directory'],
          description: 'Specify the directory to create (uses the template name by default)',
          args: [
            Arg(
            name: 'directory name'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'name',
        isOptional: true
      )
      ],
      icon: '🆕',
      priority: 60
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploy your app to an environment',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-f', '--no-verify'],
          description: 'Disable pre-deployment checks'
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Specify the environment from options: development, staging, production (default: development)',
          args: [
            Arg(
            name: 'environment',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--non-interactive',
          description: 'Run the command without input prompts'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '🚀',
      priority: 60
    ),
    Subcommand(
      name: 'feedback',
      description: 'Let us know what you think about Forge',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '📢'
    ),
    Subcommand(
      name: 'install',
      description: 'Manage app installations',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List app installations',
          options: [

            Option(
              name: '--verbose',
              description: 'Enable verbose mode'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true
          )
          ]
        )
      ],
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Specify the environment from options: development, staging, production (default: development)',
          args: [
            Arg(
            name: 'environment',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-s', '--site'],
          description: 'Site URL (example.atlassian.net)',
          args: [
            Arg(
            name: 'site',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-p', '--product'],
          description: 'Product (Jira, Confluence, Compass)',
          args: [
            Arg(
            name: 'product',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--upgrade',
          description: 'Upgrade an existing installation'
        ),
        Option(
          name: '--confirm-scopes',
          description: 'Skip confirmation of scopes for the app before installing or upgrading the app'
        ),
        Option(
          name: '--non-interactive',
          description: 'Run the command without input prompts'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '💿',
      priority: 60
    ),
    Subcommand(
      name: 'lint',
      description: 'Check the source files for common errors',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: '--fix',
          description: 'Attempt to automatically fix any issues encountered'
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Specify the environment from options: development, staging, production (default: development)',
          args: [
            Arg(
            name: 'environment',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '🧹'
    ),
    Subcommand(
      name: 'login',
      description: 'Log in to your Atlassian account',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-u', '--email'],
          description: 'Specify the email to use',
          args: [
            Arg(
            name: 'user email'
          )
          ]
        ),
        Option(
          name: ['-t', '--token'],
          description: 'Specify the API token to use',
          args: [
            Arg(
            name: 'api token'
          )
          ]
        ),
        Option(
          name: '--non-interactive',
          description: 'Run the command without input prompts'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '🔐'
    ),
    Subcommand(
      name: 'logout',
      description: 'Log out of your Atlassian account',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '🔓'
    ),
    Subcommand(
      name: 'logs',
      description: 'View app logs',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Specify the environment from options: development, staging, production (default: development)',
          args: [
            Arg(
            name: 'environment',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-i', '--invocation'],
          description: 'View logs for a given invocation ID',
          args: [
            Arg(
            name: 'invocation'
          )
          ]
        ),
        Option(
          name: ['-n', '--limit'],
          description: 'Number of invocations to return',
          args: [
            Arg(
            name: 'limit',
            defaultValue: '20'
          )
          ]
        ),
        Option(
          name: ['-s', '--since'],
          description: 'View logs since the specified time. valid formats: YYYY-MM-DD, ISO 8061 timestamp or a relative time (e.g: 5m, 10h, 2d)',
          args: [
            Arg(
            name: 'since'
          )
          ]
        ),
        Option(
          name: ['-g', '--grouped'],
          description: 'Group logs by invocation ID'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '📃'
    ),
    Subcommand(
      name: 'providers',
      description: 'Manage external providers',
      subcommands: [

        Subcommand(
          name: 'configure',
          description: 'Configure provider credentials',
          options: [

            Option(
              name: '--verbose',
              description: 'Enable verbose mode'
            ),
            Option(
              name: ['-s', '--oauth-client-secret'],
              description: 'Client secret',
              args: [
                Arg(
                name: 'oauthClientSecret',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['-e', '--environment'],
              description: 'Specify the environment from options: development, staging, production (default: development)',
              args: [
                Arg(
                name: 'environment',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'providerKey',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true
          )
          ]
        )
      ],
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '👥'
    ),
    Subcommand(
      name: 'register',
      description: 'Register an app you didn\'t create so you can run commands for it',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'name',
        isOptional: true
      )
      ],
      icon: '📝'
    ),
    Subcommand(
      name: 'settings',
      description: 'Manage Forge CLI settings',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List Forge CLI settings',
          options: [

            Option(
              name: '--verbose',
              description: 'Enable verbose mode'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Update Forge CLI setting (choices: usage-analytics)',
          options: [

            Option(
              name: '--verbose',
              description: 'Enable verbose mode'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ],
          args: [

            Arg(
              name: 'setting'
            ),
            Arg(
              name: 'boolean'
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true
          )
          ]
        )
      ],
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '⚙️'
    ),
    Subcommand(
      name: 'tunnel',
      description: 'Start a tunnel to connect your local code with the app running in the development environment',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-d', '--debug'],
          description: 'Enable debugger mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '🔮',
      priority: 60
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstall the app from an Atlassian site',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'installationId',
        isOptional: true
      )
      ],
      icon: '❌'
    ),
    Subcommand(
      name: 'variables',
      description: 'Manage app environment variables',
      subcommands: [

        Subcommand(
          name: 'set',
          description: 'Set an environment variable',
          options: [

            Option(
              name: '--verbose',
              description: 'Enable verbose mode'
            ),
            Option(
              name: '--encrypt',
              description: 'Encrypt variable'
            ),
            Option(
              name: ['-e', '--environment'],
              description: 'Specify the environment from options: development, staging, production (default: development)',
              args: [
                Arg(
                name: 'environment',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ],
          args: [

            Arg(
              name: 'key',
              isOptional: true
            ),
            Arg(
              name: 'value',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'unset',
          description: 'Remove an environment variable',
          options: [

            Option(
              name: '--verbose',
              description: 'Enable verbose mode'
            ),
            Option(
              name: ['-e', '--environment'],
              description: 'Specify the environment from options: development, staging, production (default: development)',
              args: [
                Arg(
                name: 'environment',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'key'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the environment variables',
          options: [

            Option(
              name: '--verbose',
              description: 'Enable verbose mode'
            ),
            Option(
              name: ['-e', '--environment'],
              description: 'Specify the environment from options: development, staging, production (default: development)',
              args: [
                Arg(
                name: 'environment',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true
          )
          ]
        )
      ],
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '🅰️'
    ),
    Subcommand(
      name: 'webtrigger',
      description: 'Get a web trigger URL',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-f', '--functionKey'],
          description: 'Web trigger key from the manifest.yml file',
          args: [
            Arg(
            name: 'function',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'installationId',
        isOptional: true
      )
      ],
      icon: '🌐'
    ),
    Subcommand(
      name: 'whoami',
      description: 'Display the account information of the logged in user',
      options: [

        Option(
          name: '--verbose',
          description: 'Enable verbose mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      icon: '👤'
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      priority: 49,
      args: [
        Arg(
        name: 'command',
        isOptional: true
      )
      ],
      icon: '❓'
    )
  ],
  options: [

    Option(
      name: ['-V', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: '--verbose',
      description: 'Enable verbose mode'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ]
);
