// Auto-generated from TypeScript source: railway.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `railway` CLI
final FigSpec railwaySpec = FigSpec(
  name: 'railway',
  description: 'CLI for managing Railway Apps',
  subcommands: [
    Subcommand(
      name: 'add',
      description: 'Add a plugin to your project'
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate shell-completions',
      args: [
        Arg(
        name: 'shell',
        description: 'The shell to generate completions for',
        suggestions: [
          FigSuggestion(name: 'bash'),
          FigSuggestion(name: 'zsh'),
          FigSuggestion(name: 'fish'),
          FigSuggestion(name: 'powershell')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'connect',
      description: 'Connect to a plugin',
      args: [
        Arg(
        name: 'plugin',
        description: 'The plugin to connect to',
        isOptional: true,
        suggestions: [
          FigSuggestion(name: 'postgresql'),
          FigSuggestion(name: 'mysql'),
          FigSuggestion(name: 'redis'),
          FigSuggestion(name: 'mongodb')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a project',
      args: [
        Arg(
        name: 'project-id',
        description: 'The project to delete',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'docs',
      description: 'Open Railway Documentation in default browser'
    ),
    Subcommand(
      name: 'down',
      description: 'Remove the most recent deployment',
      options: [
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to delete from',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'environment',
      description: 'Change your environment',
      args: [
        Arg(
        name: 'environment',
        description: 'The environment to change to',
        isOptional: true,
        suggestions: [
          FigSuggestion(name: 'production'),
          FigSuggestion(name: 'preview')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Get help about any command',
      args: [
        Arg(
        name: 'command',
        description: 'The command to get help about',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Create a new railway project'
    ),
    Subcommand(
      name: 'link',
      description: 'Connect to an existing railway project',
      args: [
        Arg(
        name: 'project-id',
        description: 'The project to link to',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all railway projects'
    ),
    Subcommand(
      name: 'login',
      description: 'Login to railway',
      options: [
        Option(
          name: '--browserless',
          description: 'Login without opening a browser'
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Logout of railway'
    ),
    Subcommand(
      name: 'logs',
      description: 'Show logs for the most-recent deployment',
      options: [
        Option(
          name: ['-n', '--lines'],
          description: 'Output a specific number of lines',
          args: [
            Arg(
            name: 'Number of lines',
            description: 'The number of lines to output'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'Open the project',
      subcommands: [
        Subcommand(
          name: 'live',
          description: 'Open the live project'
        ),
        Subcommand(
          name: 'metrics',
          description: 'Open project metrics'
        ),
        Subcommand(
          name: 'settings',
          description: 'Open project settings'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run a local command using variables from the active environment',
      options: [
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to run in',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--service'],
          description: 'Define specific service',
          args: [
            Arg(
            name: 'Service nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'shell',
      description: 'Open a subshell with Railway variables available',
      options: [
        Option(
          name: ['-s', '--service'],
          description: 'Deploy app to specific service',
          args: [
            Arg(
            name: 'Service nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'View the status of railway project'
    ),
    Subcommand(
      name: 'unlink',
      description: 'Disconnects the current directory from a Railway project'
    ),
    Subcommand(
      name: 'up',
      description: 'Deploy to railway',
      args: [
        Arg(
        name: 'path',
        description: 'Path to deploy to',
        isOptional: true,
        template: 'folders'
      )
      ],
      options: [
        Option(
          name: ['-d', '--detach'],
          description: 'Detach from build logs'
        ),
        Option(
          name: ['-e', '--environment'],
          description: 'Environment to run in'
        ),
        Option(
          name: ['-s', '--service'],
          description: 'Deploy app to specific service',
          args: [
            Arg(
            name: 'Service nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'variables',
      description: 'Work with environment variables',
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete variable',
          args: [
            Arg(
            name: 'variable',
            description: 'The name of the variable you want to delete'
          )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get variable value',
          args: [
            Arg(
            name: 'variable',
            description: 'The name of the variable you want to get'
          )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set variable value',
          args: [
            Arg(
              name: 'variable',
              description: 'The name of the variable you want to set'
            ),
            Arg(
              name: 'value',
              description: 'Value of the variable'
            )
          ]
        )
      ],
      options: [
        Option(
          name: ['-e', '--environment'],
          description: 'Environment'
        ),
        Option(
          name: ['-s', '--service'],
          description: 'Deploy app to specific service',
          args: [
            Arg(
            name: 'Service nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Get the version of railway\'s CLI'
    ),
    Subcommand(
      name: 'whoami',
      description: 'Get the logged in user'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for railway'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Show railway version'
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Enable verbose output'
    )
  ]
);
