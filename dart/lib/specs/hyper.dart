// AI-generated from TypeScript source: hyper.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec hyperSpec = FigSpec(
  name: 'hyper',
  description: 'Hyper is an Electron-based terminal',
  args: [
    FigArg(template: 'folders'),
  ],
  subcommands: [
    FigSubcommand(
      name: ['install', 'i'],
      description: 'Install a plugin',
      args: [FigArg(name: 'plugin')],
    ),
    FigSubcommand(
      name: ['docs', 'd', 'h', 'home'],
      description: 'Open the npm page of a plugin',
      args: [FigArg(name: 'plugin')],
    ),
    FigSubcommand(
      name: 'help',
      description: 'Display help',
    ),
    FigSubcommand(
      name: ['list', 'ls'],
      description: 'List installed plugins',
    ),
    FigSubcommand(
      name: ['list-remote', 'lsr', ' ls-remote'],
      description: 'List plugins available on npm',
    ),
    FigSubcommand(
      name: ['search', 's'],
      description: 'Search for plugins on npm',
      args: [
        FigArg(
          name: 'query',
          description: 'Your search query',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['uninstall', 'u', 'rm', 'remove'],
      description: 'Uninstall plugin',
      args: [
        FigArg(
          name: 'plugin',
          description: 'Plugin to uninstall',
          generators: [
            FigGenerator(
              script: ['hyper', 'list'],
              postProcess: (String out, [List<String>? tokens]) {
                return out.split('\n').map((p) {
                  return FigSuggestion(
                    name: p,
                    description: 'Plugin name',
                  );
                }).toList();
              },
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'version',
      description: 'Show version',
    ),
  ],
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Output usage information',
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Verbose mode (disabled by default)',
    ),
  ],
);
