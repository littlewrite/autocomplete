import 'package:autocomplete/src/spec.dart';

final systemSubcommand = FigSubcommand(
  name: 'system',
  description: 'Manage Docker',
  subcommands: [
    FigSubcommand(
      name: 'prune',
      description: 'Remove unused data',
      options: [
        FigOption(
          name: ['-a', '--all'],
          description: 'Remove all unused images not just dangling ones',
        ),
        FigOption(
          name: ['--filter'],
          description: "Provide filter values (e.g. 'label=<key>=<value')",
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['-f', '--force'],
          description: 'Do not prompt for confirmation',
        ),
        FigOption(
          name: ['--volumes'],
          description: 'Prune volumes',
        ),
      ],
    ),
    FigSubcommand(
      name: 'df',
      description: 'Show docker disk usage',
      options: [
        FigOption(
          name: ['--format'],
          description: 'Pretty-print images using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-v', '--verbose'],
          description: 'Show detailed information on space usage',
        ),
      ],
    ),
    FigSubcommand(
      name: 'events',
      description: 'Get real time events from the server',
      options: [
        FigOption(
          name: ['-f', '--filter'],
          description: 'Filter output based on conditions provided',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Format the output using the given Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--since'],
          description: 'Show all events created since timestamp',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--until'],
          description: 'Stream events until this timestamp',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'info',
      description: 'Display system-wide information',
      options: [
        FigOption(
          name: ['-f', '--format'],
          description: 'Format the output using the given Go template',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
  ],
);
