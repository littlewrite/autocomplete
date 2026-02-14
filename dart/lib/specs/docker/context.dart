import 'package:autocomplete/src/spec.dart';
import 'generators.dart';

final contextSubcommand = FigSubcommand(
  name: 'context',
  description: 'Manage contexts',
  subcommands: [
    FigSubcommand(
      name: 'create',
      description: 'Create new context',
      subcommands: [
        FigSubcommand(
          name: 'aci',
          description: 'Create a context for Azure Container Instances',
          args: [FigArg(name: 'CONTEXT')],
          options: [
            FigOption(
              name: ['--description'],
              description: 'Description of the context',
              args: [FigArg(name: 'string')],
            ),
            FigOption(
              name: ['-h', '--help'],
              description: 'Help for aci',
            ),
            FigOption(
              name: ['--location'],
              description: 'Location (default "eastus")',
              args: [FigArg(name: 'string')],
            ),
            FigOption(
              name: ['--resource-group'],
              description: 'Resource group',
              args: [FigArg(name: 'string')],
            ),
            FigOption(
              name: ['--subscription-id'],
              description: 'Location',
              args: [FigArg(name: 'string')],
            ),
          ],
        ),
        FigSubcommand(
          name: 'ecs',
          description: 'Create a context for Amazon ECS',
          args: [FigArg(name: 'CONTEXT')],
          options: [
            FigOption(
              name: ['--access-keys'],
              description: 'Use AWS access keys from file',
              args: [FigArg(name: 'string')],
            ),
            FigOption(
              name: ['--description'],
              description: 'Description of the context',
              args: [FigArg(name: 'string')],
            ),
            FigOption(
              name: ['--from-env'],
              description:
                  'Use AWS environment variables for profile, or credentials and region',
            ),
            FigOption(
              name: ['-h', '--help'],
              description: 'Help for ecs',
            ),
            FigOption(
              name: ['--local-simulation'],
              description: 'Create context for ECS local simulation endpoints',
            ),
            FigOption(
              name: ['--profile'],
              description: 'Use an existing AWS profile',
              args: [FigArg(name: 'string')],
            ),
          ],
        ),
      ],
      options: [
        FigOption(
          name: ['--default-stack-orchestrator'],
          description:
              'Default orchestrator for stack operations to use with this context (swarm|kubernetes|all)',
          args: [
            FigArg(
              name: 'string',
              suggestions: [
                FigSuggestion(name: 'swarm'),
                FigSuggestion(name: 'kubernetes'),
                FigSuggestion(name: 'all'),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--description'],
          description: 'Description of the context',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--docker'],
          description: 'Set the docker endpoint (default [])',
          args: [FigArg(name: 'stringToString')],
        ),
        FigOption(
          name: ['--from'],
          description: 'Create context from a named context',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for create',
        ),
        FigOption(
          name: ['--kubernetes'],
          description: 'Set the kubernetes endpoint (default [])',
          args: [FigArg(name: 'stringToString')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'export',
      description: 'Export a context to a tar or kubeconfig file',
      args: [
        contextsArg,
        FigArg(
          name: 'FILE',
          template: ['filepaths'],
        ),
      ],
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for export',
        ),
        FigOption(
          name: ['--kubeconfig'],
          description: 'Export as a kubeconfig file',
        ),
      ],
    ),
    FigSubcommand(
      name: 'import',
      description: 'Import a context from a tar or zip file',
      args: [
        FigArg(name: 'CONTEXT'),
        FigArg(
          name: 'FILE',
          template: ['filepaths'],
        ),
      ],
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for export',
        ),
      ],
    ),
    FigSubcommand(
      name: 'inspect',
      description: 'Display detailed information on one or more contexts',
      args: [
        FigArg(
          name: contextsArg.name,
          generators: contextsArg.generators,
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-f'],
          description: 'Format the output using the given Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for inspect',
        ),
      ],
    ),
    FigSubcommand(
      name: 'list',
      description: 'List available contexts',
      options: [
        FigOption(
          name: ['--format'],
          description:
              'Format the output. Values: [pretty | json]. (Default: pretty)',
          args: [
            FigArg(
              name: 'string',
              suggestions: [
                FigSuggestion(name: 'pretty'),
                FigSuggestion(name: 'json'),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for list',
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only show context names',
        ),
      ],
    ),
    FigSubcommand(
      name: 'rm',
      description: 'Remove one or more contexts',
      args: [
        FigArg(
          name: contextsArg.name,
          generators: contextsArg.generators,
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--force'],
          description: 'Force removing current context',
        ),
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for rm',
        ),
      ],
    ),
    FigSubcommand(
      name: 'show',
      description: 'Print the current context',
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for show',
        ),
      ],
    ),
    FigSubcommand(
      name: 'update',
      description: 'Update a context',
      args: [contextsArg],
      options: [
        FigOption(
          name: ['--default-stack-orchestrator'],
          description:
              'Default orchestrator for stack operations to use with this context (swarm|kubernetes|all)',
          args: [
            FigArg(
              name: 'string',
              suggestions: [
                FigSuggestion(name: 'swarm'),
                FigSuggestion(name: 'kubernetes'),
                FigSuggestion(name: 'all'),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--description'],
          description: 'Description of the context',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--docker'],
          description: 'Set the docker endpoint (default [])',
          args: [FigArg(name: 'stringToString')],
        ),
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for update',
        ),
        FigOption(
          name: ['--kubernetes'],
          description: 'Set the kubernetes endpoint (default [])',
          args: [FigArg(name: 'stringToString')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'use',
      description: 'Set the default context',
      args: [contextsArg],
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Help for use',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Help for context',
    ),
  ],
);
