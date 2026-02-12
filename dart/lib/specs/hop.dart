// Auto-generated from TypeScript source: hop.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hop` CLI
final FigSpec hopSpec = FigSpec(
  name: 'hop',
  description: 'Interact with Hop in your terminal',
  subcommands: [
    Subcommand(
      name: 'auth',
      description: 'Authenticate with Hop',
      subcommands: [
        Subcommand(
          name: 'help',
          description: 'Prints this message or the help of the given subcommand(s)'
        ),
        Subcommand(
          name: 'login',
          description: 'Login to Hop'
        ),
        Subcommand(
          name: 'logout',
          description: 'Logout the current user'
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploy a new container',
      args: [
        Arg(
        name: 'dir',
        isOptional: true,
        description: 'Directory to deploy, defaults to current directory'
      )
      ],
      options: [
        Option(
          name: ['--type', '-t'],
          description: 'Type of the container, defaults to `ephemeral`',
          args: [
            Arg(
            name: 'container type',
            suggestions: [
              FigSuggestion(name: 'ephemeral'),
              FigSuggestion(name: 'persistent')
            ]
          )
          ]
        ),
        Option(
          name: ['--containers', '-i'],
          description: 'Number of containers to use, defaults to 1 if `scaling` is manual',
          args: [
            Arg(
            name: 'container amount',
            suggestions: [
              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '4'),
              FigSuggestion(name: '8'),
              FigSuggestion(name: '10')
            ]
          )
          ]
        ),
        Option(
          name: ['--cpu', '-c'],
          description: 'The number of CPUs to use, defaults to 1',
          args: [
            Arg(
            name: 'cpu amount',
            suggestions: [
              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '4'),
              FigSuggestion(name: '8')
            ]
          )
          ]
        ),
        Option(
          name: ['--env', '-e'],
          description: 'Environment variables to set, in the form of KEY=VALUE',
          args: [
            Arg(
            name: 'environment variable',
            suggestions: [
              FigSuggestion(name: 'port=')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the deployment, defaults to the directory name',
          args: [
            Arg(
            name: 'deployment name'
          )
          ]
        ),
        Option(
          name: ['--project', '-p'],
          description: 'Namespace or ID of the project to use',
          args: [
            Arg(
            name: 'project',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['--ram', '-m'],
          description: 'Amount of RAM to use, defaults to 512MB',
          args: [
            Arg(
            name: 'ram amount',
            suggestions: [
              FigSuggestion(name: '128MB'),
              FigSuggestion(name: '256MB'),
              FigSuggestion(name: '512MB'),
              FigSuggestion(name: '1G'),
              FigSuggestion(name: '2G'),
              FigSuggestion(name: '4G')
            ]
          )
          ]
        ),
        Option(
          name: ['--scaling', '-s'],
          description: 'Scaling strategy, defaults to `manual`',
          args: [
            Arg(
            name: 'scaling strategy',
            suggestions: [
              FigSuggestion(name: 'manual'),
              FigSuggestion(name: 'autoscale')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Prints this message or the help of the given subcommand(s)',
      args: [
        Arg(
        name: 'command',
        template: 'help'
      )
      ]
    ),
    Subcommand(
      name: 'ignite',
      description: 'Interact with Ignite containers',
      subcommands: [
        Subcommand(
          name: 'ls',
          description: 'List all deployments',
          options: [
            Option(
              name: ['--project', '-p'],
              description: 'Namespace or ID of the project to use'
            )
          ]
        ),
        Subcommand(
          name: 'rm',
          description: 'Delete a deployment',
          options: [
            Option(
              name: ['--project', '-p'],
              description: 'Namespace or ID of the project to use'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'link',
      description: 'Link an existing deployment to a hopfile'
    ),
    Subcommand(
      name: 'projects',
      description: 'Interact with projects',
      subcommands: [
        Subcommand(
          name: 'info',
          description: 'Get information about a project'
        ),
        Subcommand(
          name: 'ls',
          description: 'List all projects that you\'re authorized to'
        ),
        Subcommand(
          name: 'new',
          description: 'Create a new project'
        ),
        Subcommand(
          name: 'rm',
          description: 'Delete a project'
        ),
        Subcommand(
          name: 'switch',
          description: 'Switch to a different project'
        )
      ]
    ),
    Subcommand(
      name: 'whoami',
      description: 'Get information about the current user'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Prints help information'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Prints version information'
    ),
    Option(
      name: ['--project', '-p'],
      description: 'Namespace or ID of the project to use'
    )
  ]
);
