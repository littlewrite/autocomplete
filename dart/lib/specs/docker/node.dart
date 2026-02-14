import 'package:autocomplete/src/spec.dart';
import 'generators.dart';

final nodeSubcommand = FigSubcommand(
  name: 'node',
  description: 'Manage Swarm nodes',
  subcommands: [
    FigSubcommand(
      name: 'demote',
      description: 'Demote one or more nodes from manager in the swarm',
      args: [
        FigArg(
          name: 'NODE',
          generators: [dockerGenerators['listDockerSwarmNodes']!],
          isVariadic: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'inspect',
      description: 'Display detailed information on one or more nodes',
      args: [
        FigArg(
          name: 'NODE',
          generators: [dockerGenerators['listDockerSwarmNodes']!],
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--format'],
          description: 'Format the output using the given Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--pretty'],
          description: 'Print the information in a human friendly format',
        ),
      ],
    ),
    FigSubcommand(
      name: 'ls',
      description: 'List nodes in the swarm',
      options: [
        FigOption(
          name: ['-f', '--filter'],
          description: 'Filter output based on conditions provided',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Pretty-print nodes using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display IDs',
        ),
      ],
    ),
    FigSubcommand(
      name: 'promote',
      description: 'Promote one or more nodes to manager in the swarm',
      args: [
        FigArg(
          name: 'NODE',
          generators: [dockerGenerators['listDockerSwarmNodes']!],
          isVariadic: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'ps',
      description:
          'List tasks running on one or more nodes, defaults to current node',
      args: [
        FigArg(
          name: 'NODE',
          generators: [dockerGenerators['listDockerSwarmNodes']!],
          isVariadic: true,
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
          name: ['-q', '--quiet'],
          description: 'Only display task IDs',
        ),
      ],
    ),
    FigSubcommand(
      name: 'rm',
      description: 'Remove one or more nodes from the swarm',
      args: [
        FigArg(
          name: 'NODE',
          generators: [dockerGenerators['listDockerSwarmNodes']!],
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--force'],
          description: 'Force remove a node from the swarm',
        ),
      ],
    ),
    FigSubcommand(
      name: 'update',
      description: 'Update a node',
      args: [
        FigArg(
          name: 'NODE',
          generators: [dockerGenerators['listDockerSwarmNodes']!],
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['--availability'],
          description: 'Availability of the node ("active"|"pause"|"drain")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--label-add'],
          description: 'Add or update a node label (key=value)',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--label-rm'],
          description: 'Remove a node label if exists',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--role'],
          description: 'Role of the node ("worker"|"manager")',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
  ],
);
