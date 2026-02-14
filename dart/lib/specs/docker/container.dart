import 'package:autocomplete/src/spec.dart';
import 'generators.dart';
import 'shared_commands.dart';

final containerSubcommand = FigSubcommand(
  name: 'container',
  description: 'Manage containers',
  subcommands: [
    sharedCommands['attach']!,
    sharedCommands['cp']!,
    sharedCommands['create']!,
    sharedCommands['diff']!,
    sharedCommands['exec']!,
    sharedCommands['export']!,
    FigSubcommand(
      name: 'inspect',
      description: 'Return low-level information on Docker objects',
      args: [containersArg],
      options: [
        FigOption(
          name: ['-f', '--format'],
          description: 'Format the output using the given Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-s', '--size'],
          description: 'Display total file sizes if the type is container',
        ),
      ],
    ),
    sharedCommands['kill']!,
    sharedCommands['logs']!,
    // 'ls' is alias for 'ps' but with name 'ls'
    FigSubcommand(
      name: 'ls',
      description: 'List containers',
      options: sharedCommands['ps']!.options,
    ),
    sharedCommands['pause']!,
    sharedCommands['port']!,
    FigSubcommand(
      name: 'prune',
      description: 'Remove all stopped containers',
      options: [
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
    sharedCommands['rename']!,
    sharedCommands['restart']!,
    sharedCommands['rm']!,
    sharedCommands['run']!,
    sharedCommands['start']!,
    sharedCommands['stats']!,
    sharedCommands['stop']!,
    sharedCommands['top']!,
    sharedCommands['unpause']!,
    sharedCommands['update']!,
    sharedCommands['wait']!,
  ],
);
