import 'package:autocomplete/src/spec.dart';
import 'generators.dart';
import 'shared_commands.dart';

final imageSubcommand = FigSubcommand(
  name: 'image',
  description: 'Manage images',
  subcommands: [
    sharedCommands['build']!,
    sharedCommands['history']!,
    sharedCommands['import']!,
    FigSubcommand(
      name: 'inspect',
      description: 'Display detailed information on one or more images',
      args: [
        FigArg(
          name: imagesArg.name,
          generators: imagesArg.generators,
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
    sharedCommands['load']!,
    // ls is alias for images
    FigSubcommand(
      name: 'ls',
      description: 'List images',
      args: sharedCommands['images']!.args,
      options: sharedCommands['images']!.options,
    ),
    FigSubcommand(
      name: 'prune',
      description: 'Remove unused images',
      options: [
        FigOption(
          name: ['-a', '--all'],
          description: 'Remove all unused images, not just dangling ones',
        ),
        FigOption(
          name: ['--filter'],
          description: 'Provide filter values (e.g. \'until=<timestamp>\')',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['-f', '--force'],
          description: 'Do not prompt for confirmation',
        ),
      ],
    ),
    sharedCommands['pull']!,
    sharedCommands['push']!,
    // rm is alias for rmi
    FigSubcommand(
      name: 'rm',
      description: 'Remove one or more images',
      args: sharedCommands['rmi']!.args,
      options: sharedCommands['rmi']!.options,
    ),
    sharedCommands['save']!,
    sharedCommands['tag']!,
  ],
);
