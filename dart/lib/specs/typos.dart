// AI-generated from TypeScript source: typos.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec typosSpec = FigSpec(
  name: 'typos',
  description: 'Source code spelling correction',
  args: [
    FigArg(
      name: 'path',
      template: ['filepaths', 'folders'],
      isVariadic: true,
      isOptional: true,
      suggestions: [
        FigSuggestion(
          name: '-',
          hidden: true,
          description: 'Read from stdin',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-c', '--config'],
      args: [
        FigArg(
          name: 'path',
          template: 'filepaths',
        ),
      ],
      description: 'Custom config file',
    ),
    FigOption(
      name: ['--isolated'],
      description: 'Ignore implicit configuration files',
    ),
    FigOption(
      name: ['--diff'],
      description: 'Print a diff of what would change',
    ),
    FigOption(
      name: ['-w', '--write-changes'],
      description: 'Write fixes out',
    ),
    FigOption(
      name: ['--files'],
      description: 'Debug: Print each file that would be spellchecked',
    ),
    FigOption(
      name: ['--identifiers'],
      description: 'Debug: Print each identifier that would be spellchecked',
    ),
    FigOption(
      name: ['--words'],
      description: 'Debug: Print each word that would be spellchecked',
    ),
    FigOption(
      name: ['--dump-config'],
      args: [
        FigArg(
          name: 'path',
          template: 'filepaths',
          suggestions: [
            FigSuggestion(
              name: '-',
              hidden: true,
              description: 'Print to stdout',
            ),
          ],
        ),
      ],
      description: 'Write the current configuration to file with `-` for stdout',
    ),
    FigOption(
      name: ['--type-list'],
      description: 'Show all supported file types',
    ),
    FigOption(
      name: ['--format'],
      args: [
        FigArg(
          name: 'format',
          suggestions: [
            FigSuggestion(name: 'silent'),
            FigSuggestion(name: 'brief'),
            FigSuggestion(name: 'long'),
            FigSuggestion(name: 'json'),
          ],
        ),
      ],
      description: 'Set the output format',
    ),
    FigOption(
      name: ['-j', '--threads'],
      args: [
        FigArg(
          name: 'number',
        ),
      ],
      description: 'The approximate number of threads to use',
    ),
    FigOption(
      name: ['--exclude'],
      args: [
        FigArg(
          name: 'glob',
        ),
      ],
      description: 'Ignore files & directories matching the glob',
    ),
    FigOption(
      name: ['--hidden'],
      description: 'Search hidden files and directories',
    ),
    FigOption(
      name: ['--no-ignore'],
      description: "Don't respect ignore files",
    ),
    FigOption(
      name: ['--no-ignore-dot'],
      description: "Don't respect .ignore files",
    ),
    FigOption(
      name: ['--no-ignore-global'],
      description: "Don't respect global ignore files",
    ),
    FigOption(
      name: ['--no-ignore-parent'],
      description: "Don't respect ignore files in parent directories",
    ),
    FigOption(
      name: ['--no-ignore-vcs'],
      description: "Don't respect ignore files in vcs directories",
    ),
    FigOption(
      name: ['--binary'],
      description: 'Search binary files',
    ),
    FigOption(
      name: ['--no-check-filenames'],
      description: 'Skip verifying spelling in file names',
    ),
    FigOption(
      name: ['--no-check-files'],
      description: 'Skip verifying spelling in files',
    ),
    FigOption(
      name: ['--no-unicode'],
      description: 'Only allow ASCII characters in identifiers',
    ),
    FigOption(
      name: ['--locale'],
      args: [
        FigArg(
          name: 'locale',
          suggestions: [
            FigSuggestion(name: 'en'),
            FigSuggestion(name: 'en-us'),
            FigSuggestion(name: 'en-gb'),
            FigSuggestion(name: 'en-ca'),
            FigSuggestion(name: 'en-au'),
          ],
        ),
      ],
      description: 'Set the locale to use',
    ),
    FigOption(
      name: ['--color'],
      args: [
        FigArg(
          name: 'when',
          suggestions: [
            FigSuggestion(name: 'auto'),
            FigSuggestion(name: 'always'),
            FigSuggestion(name: 'never'),
          ],
        ),
      ],
      description: 'Controls when to use color',
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'More output per occurrence',
    ),
    FigOption(
      name: ['-q', '--quiet'],
      description: 'Less output per occurrence',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Print help information',
    ),
    FigOption(
      name: ['-V', '--version'],
      description: 'Print version information',
    ),
  ],
);
