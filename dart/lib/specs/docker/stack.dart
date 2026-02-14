import 'package:autocomplete/src/spec.dart';
import 'generators.dart';

final stackSubcommand = FigSubcommand(
  name: 'stack',
  description: 'Manage Docker stacks',
  subcommands: [
    FigSubcommand(
      name: 'deploy',
      description: 'Deploy a new stack or update an existing stack',
      args: [FigArg(name: 'STACK')],
      options: [
        FigOption(
          name: ['-c', '--compose-file'],
          description: 'Path to a Compose file, or "-" to read from stdin',
          args: [
            FigArg(
              name: 'strings',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--orchestrator'],
          description: 'Orchestrator to use (swarm|kubernetes|all)',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--prune'],
          description: 'Prune services that are no longer referenced',
        ),
        FigOption(
          name: ['--resolve-image'],
          description:
              'Query the registry to resolve image digest and supported platforms ("always"|"changed"|"never") (default "always")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--with-registry-auth'],
          description: 'Send registry authentication details to Swarm agents',
        ),
      ],
    ),
    FigSubcommand(
      name: 'ls',
      description: 'List stacks',
      options: [
        FigOption(
          name: ['--format'],
          description: 'Pretty-print stacks using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--orchestrator'],
          description: 'Orchestrator to use (swarm|kubernetes|all)',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'ps',
      description: 'List the tasks in the stack',
      args: [
        FigArg(
          name: 'STACK',
          generators: [dockerGenerators['listDockerStacks']!],
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--filter'],
          description: 'Filter output based on conditions provided',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Pretty-print tasks using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--no-resolve'],
          description: 'Do not map IDs to Names',
        ),
        FigOption(
          name: ['--no-trunc'],
          description: 'Do not truncate output',
        ),
        FigOption(
          name: ['--orchestrator'],
          description: 'Orchestrator to use (swarm|kubernetes|all)',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display task IDs',
        ),
      ],
    ),
    FigSubcommand(
      name: 'rm',
      description: 'Remove one or more stacks',
      args: [
        FigArg(
          name: 'STACK',
          generators: [dockerGenerators['listDockerStacks']!],
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['--orchestrator'],
          description: 'Orchestrator to use (swarm|kubernetes|all)',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'services',
      description: 'List the services in the stack',
      args: [
        FigArg(
          name: 'STACK',
          generators: [dockerGenerators['listDockerStacks']!],
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--filter'],
          description: 'Filter output based on conditions provided',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Pretty-print services using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--orchestrator'],
          description: 'Orchestrator to use (swarm|kubernetes|all)',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display IDs',
        ),
      ],
    ),
  ],
);
