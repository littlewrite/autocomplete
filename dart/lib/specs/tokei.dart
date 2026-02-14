// AI-generated from TypeScript source: tokei.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator languageGenerator = FigGenerator(
  script: ['tokei', '--languages'],
  splitOn: '\n',
);

final FigSpec tokeiSpec = FigSpec(
  name: 'tokei',
  description: 'Count your code, quickly',
  options: [
    FigOption(
      name: ['-f', '--files'],
      description: 'Will print out statistics on individual files',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Prints help information',
    ),
    FigOption(
      name: ['--hidden'],
      description: 'Count hidden files',
    ),
    FigOption(
      name: ['-l', '--languages'],
      description: 'Prints out supported languages and their extensions',
    ),
    FigOption(
      name: ['--no-ignore'],
      description: 'Don\'t respect ignore files (.gitignore, .ignore, etc.)',
    ),
    FigOption(
      name: ['--no-ignore-dot'],
      description:
          'Don\'t respect .ignore and .tokeignore files, including those in parent directories',
    ),
    FigOption(
      name: ['--no-ignore-parent'],
      description:
          'Don\'t respect ignore files (.gitignore, .ignore, etc.) in parent directories',
    ),
    FigOption(
      name: ['--no-ignore-vcs'],
      description:
          'Don\'t respect VCS ignore files (.gitignore, .hgignore, etc.), including those in parent directories',
    ),
    FigOption(
      name: ['-V', '--version'],
      description: 'Prints version information',
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Set log output level:',
      isRepeatable: true,
    ),
    FigOption(
      name: ['-c', '--columns'],
      description:
          'Sets a strict column width of the output, only available for terminal output',
      args: [FigArg(name: 'columns')],
    ),
    FigOption(
      name: ['-e', '--exclude'],
      description: 'Ignore all files & directories matching the pattern',
      isRepeatable: true,
      args: [
        FigArg(
          name: 'exclude',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['-i', '--input'],
      description:
          'Gives statistics from a previous tokei run. Can be given a file path, or "stdin" to read from stdin',
      args: [
        FigArg(
          name: 'input',
          suggestions: ['stdin'],
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['-o', '--output'],
      description: 'Outputs Tokei in a specific format',
      args: [
        FigArg(
          name: 'output',
          suggestions: ['cbor', 'json', 'yaml'],
        ),
      ],
    ),
    FigOption(
      name: ['-s', '--sort'],
      description: 'Sort languages based on column',
      args: [
        FigArg(
          name: 'sort',
          suggestions: ['files', 'lines', 'blanks', 'code', 'comments'],
        ),
      ],
    ),
    FigOption(
      name: ['-t', '--type'],
      description:
          'Filters output by language type, seperated by a comma. i.e. -t=Rust,Markdown',
      args: [
        FigArg(
          name: 'type',
          generators: [languageGenerator],
        ),
      ],
    ),
  ],
);
