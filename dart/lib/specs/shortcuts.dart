// AI-generated from TypeScript source: shortcuts.ts
import 'package:autocomplete/src/spec.dart';

final FigArg shortcutArg = FigArg(
  generators: [
    FigGenerator(
      script: ['shortcuts', 'list'],
      postProcess: (String out, [List<String>? tokens]) {
        return out
            .split('\n')
            .map((shortcut) => FigSuggestion(
                  name: shortcut,
                  icon: 'fig:///System/Applications/Shortcuts.app',
                ))
            .toList();
      },
    ),
  ],
);

final List<FigSubcommand> subcommands = [
  FigSubcommand(
    name: ['run'],
    description: 'Run a shortcut',
    icon: '▶️',
    args: [
      FigArg(
        name: 'shortcut-name',
        description: 'The name of the shortcut to run',
        generators: shortcutArg.generators,
      ),
    ],
    options: [
      FigOption(
        name: ['-i', '--input-path'],
        description: 'The input to provide to the shortcut',
        args: [
          FigArg(
            name: 'input-path',
            template: 'filepaths',
          ),
        ],
      ),
      FigOption(
        name: ['-o', '--output-path'],
        description: 'Where to write the shortcut output, if applicable',
        args: [
          FigArg(
            name: 'output-path',
            template: 'filepaths',
          ),
        ],
      ),
      FigOption(
        name: ['--output-type'],
        description:
            'What type to output data in, in Universal Type Identifier format',
        args: [
          FigArg(
            name: 'output-type',
            suggestions: [
              FigSuggestion(
                name: 'public.json',
                description: 'JavaScript Object Notation (JSON)',
              ),
              FigSuggestion(
                name: 'public.plain-text',
                description: 'Plain text',
              ),
              FigSuggestion(
                name: 'public.html',
                description: 'HTML',
              ),
              FigSuggestion(
                name: 'public.xml',
                description: 'XML',
              ),
              FigSuggestion(
                name: 'com.adobe.pdf',
                description: 'Adobe PDF',
              ),
              FigSuggestion(
                name: 'public.vcard',
                description: 'VCard',
              ),
            ],
          ),
        ],
      ),
    ],
  ),
  FigSubcommand(
    name: ['list'],
    description: 'List your shortcuts',
    icon: '📂',
    options: [
      FigOption(
        name: ['--folder-name', '-f'],
        description: 'The name of the folder to list',
        args: [
          FigArg(
            name: 'folder-name',
            generators: [
              FigGenerator(
                script: ['shortcuts', 'list', '--folders'],
                postProcess: (String out, [List<String>? tokens]) {
                  return out
                      .split('\n')
                      .map((folder) => FigSuggestion(
                            name: folder,
                            icon: '📂',
                          ))
                      .toList();
                },
              ),
            ],
          ),
        ],
      ),
      FigOption(
        name: ['--folders'],
        description: 'List folders instead of shortcuts',
        icon: '📂',
      ),
    ],
  ),
  FigSubcommand(
    name: ['view'],
    description: 'View a shortcut in Shortcuts',
    icon: '🔍',
    args: [
      FigArg(
        name: 'shortcut-name',
        description: 'The name of the shortcut to view',
        generators: shortcutArg.generators,
      ),
    ],
  ),
  FigSubcommand(
    name: ['sign'],
    description: 'Sign a shortcut file',
    icon: '🔏',
    options: [
      FigOption(
        name: ['--input', '-i'],
        description: 'The shortcut file to sign',
        args: [
          FigArg(
            name: 'input',
            // filepaths with extensions not fully supported in simple string template, using generic filepaths
            template: 'filepaths',
          ),
        ],
      ),
      FigOption(
        name: ['--output', '-o'],
        description: 'Output path for the signed shortcut file',
        args: [
          FigArg(
            name: 'output',
            template: 'filepaths',
          ),
        ],
      ),
      FigOption(
        name: ['--mode', '-m'],
        description: 'The signing mode. (default: people-who-know-me)',
        args: [
          FigArg(
            name: 'mode',
            suggestions: [
              FigSuggestion(name: 'people-who-know-me'),
              FigSuggestion(name: 'anyone'),
            ],
          ),
        ],
      ),
    ],
  ),
];

final FigSpec shortcutsSpec = FigSpec(
  name: 'shortcuts',
  description: 'Command-line utility for running shortcuts',
  subcommands: [
    ...subcommands,
    FigSubcommand(
      name: ['help'],
      description: 'Show help information',
      subcommands: subcommands
          .map((s) => FigSubcommand(
                name: s.name,
                description: s.description,
                icon: s.icon,
              ))
          .toList(),
    ),
  ],
);
