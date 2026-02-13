// Auto-generated from TypeScript source: tailwindcss.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> commonOptions = [

  Option(
    name: ['--help', '-h'],
    description: 'Display usage information'
  )
];

final List<Option> buildOptions = [

  Option(
    name: ['-i', '--input'],
    description: 'Specify input file',
    args: [
      Arg(
      name: 'input file',
      template: 'filepath'
    )
    ]
  ),
  Option(
    name: ['-o', '--output'],
    description: 'Specify output file',
    args: [
      Arg(
      name: 'output file',
      template: 'filepath'
    )
    ]
  ),
  Option(
    name: ['-c', '--config'],
    description: 'Specify config file to use',
    args: [
      Arg(
      name: 'config file',
      template: 'filepath'
    )
    ]
  ),
  Option(
    name: '--postcss',
    description: 'Load custom PostCSS configuration',
    args: [
      Arg(
      name: 'postcss config file',
      template: 'filepaths',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--purge',
    description: 'Content paths to use for removing unused classes. [Deprecated]: use `--content` instead'
  ),
  Option(
    name: '--content',
    description: 'Content paths to use for removing unused classes'
  ),
  Option(
    name: ['--watch', '-w'],
    description: 'Watch for changes and rebuild as needed'
  ),
  Option(
    name: ['--minify', '-m'],
    description: 'Minify the output'
  ),
  Option(
    name: '--no-autoprefixer',
    description: 'Disable autoprefixer'
  ),
  ...commonOptions
];

/// Completion spec for `tailwindcss` CLI
final FigSpec tailwindcssSpec = FigSpec(
  name: 'tailwindcss',
  description: 'Tailwindcss CLI tools',
  icon: 'https://tailwindcss.com/favicons/favicon-32x32.png',
  options: buildOptions,
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Creates Tailwind config file. Default: tailwind.config.js',
      args: [
        Arg(
        name: 'filename',
        isOptional: true
      )
      ],
      options: [

        Option(
          name: ['-p', '--postcss'],
          description: 'Initialize a \'postcss.config.js\' file'
        ),
        Option(
          name: ['-f', '--full'],
          description: 'Initialize a full \'tailwind.config.js\' file'
        ),
        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Build CSS file',
      options: buildOptions
    )
  ]
);
