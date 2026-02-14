import 'package:autocomplete/src/spec.dart';

final configSubcommand = FigSubcommand(
  name: 'config',
  description: 'Manage Docker configs',
  subcommands: [
    FigSubcommand(
      name: 'create',
      description: 'Create a config from a file or STDIN',
      args: [
        FigArg(
          name: 'file',
          template: ['filepaths'],
        ),
      ],
      options: [
        FigOption(
          name: ['-l'],
          description: 'Config labels',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--template-driver'],
          description: 'Template driver',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'inspect',
      description: 'Display detailed information on one or more configs',
      args: [
        FigArg(
          name: 'CONFIG',
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
          name: ['--pretty'],
          description: 'Print the information in a human friendly format',
        ),
      ],
    ),
    FigSubcommand(
      name: 'ls',
      description: 'List configs',
      options: [
        FigOption(
          name: ['-f'],
          description: 'Filter output based on conditions provided',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Pretty-print configs using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display IDs',
        ),
      ],
    ),
    FigSubcommand(
      name: 'rm',
      description: 'Remove one or more configs',
      args: [
        FigArg(
          name: 'CONFIG',
          isVariadic: true,
        ),
      ],
    ),
  ],
);
