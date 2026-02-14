import 'package:autocomplete/src/spec.dart';
import 'generators.dart';

final volumeSubcommand = FigSubcommand(
  name: 'volume',
  description: 'Manage volumes',
  subcommands: [
    FigSubcommand(
      name: 'create',
      description: 'Create a volume',
      args: [FigArg(name: 'VOLUME')],
      options: [
        FigOption(
          name: ['-d', '--driver'],
          description: 'Specify volume driver name (default "local")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--label'],
          description: 'Set metadata for a volume',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['-o', '--opt'],
          description: 'Set driver specific options (default map[])',
          args: [FigArg(name: 'map')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'inspect',
      description: 'Display detailed information on one or more volumes',
      args: [
        FigArg(
          name: 'VOLUME',
          generators: [dockerGenerators['listDockerVolumes']!],
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--format'],
          description: 'Format the output using the given Go template',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'ls',
      description: 'List volumes',
      options: [
        FigOption(
          name: ['-f', '--filter'],
          description: "Provide filter values (e.g. 'dangling=true')",
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Pretty-print volumes using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display volume names',
        ),
      ],
    ),
    FigSubcommand(
      name: 'prune',
      description: 'Remove all unused local volumes',
      options: [
        FigOption(
          name: ['--filter'],
          description: "Provide filter values (e.g. 'label=<label>')",
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['-f', '--force'],
          description: 'Do not prompt for confirmation',
        ),
      ],
    ),
  ],
);
