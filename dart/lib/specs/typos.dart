// Auto-generated from TypeScript source: typos.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `typos` CLI
final FigSpec typosSpec = FigSpec(
  name: 'typos',
  description: 'Source code spelling correction',
  args: [
    Arg(
    name: 'path',
    template: ['filepaths', 'folders'],
    isVariadic: true,
    isOptional: true,
    suggestions: [
      FigSuggestion(
        name: '-',
        hidden: true,
        description: 'Read from stdin'
      )
    ]
  )
  ],
  options: [
    Option(
      name: ['-c', '--config'],
      args: [
        Arg(
        name: 'path',
        template: 'filepath'
      )
      ],
      description: 'Custom config file'
    ),
    Option(
      name: '--isolated',
      description: 'Ignore implicit configuration files'
    ),
    Option(
      name: '--diff',
      description: 'Print a diff of what would change'
    ),
    Option(
      name: ['-w', '--write-changes'],
      description: 'Write fixes out'
    ),
    Option(
      name: '--files',
      description: 'Debug: Print each file that would be spellchecked'
    ),
    Option(
      name: '--identifiers',
      description: 'Debug: Print each identifier that would be spellchecked'
    ),
    Option(
      name: '--words',
      description: 'Debug: Print each word that would be spellchecked'
    ),
    Option(
      name: '--dump-config',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths',
        suggestions: [
          FigSuggestion(
            name: '-',
            hidden: true,
            description: 'Print to stdout'
          )
        ]
      )
      ],
      description: 'Write the current configuration to file with `-` for stdout'
    ),
    Option(
      name: '--type-list',
      description: 'Show all supported file types'
    ),
    Option(
      name: '--format',
      args: [
        Arg(
        name: 'format',
        suggestions: [
          FigSuggestion(name: 'silent'),
          FigSuggestion(name: 'brief'),
          FigSuggestion(name: 'long'),
          FigSuggestion(name: 'json')
        ]
      )
      ],
      description: 'Set the output format'
    ),
    Option(
      name: ['-j', '--threads'],
      args: [
        Arg(
        name: 'numbe'
      )
      ],
      description: 'The approximate number of threads to use'
    ),
    Option(
      name: '--exclude',
      args: [
        Arg(
        name: 'glo'
      )
      ],
      description: 'Ignore files & directories matching the glob'
    ),
    Option(
      name: '--hidden',
      description: 'Search hidden files and directories'
    ),
    Option(
      name: '--no-ignore',
      description: 'Don\'t respect ignore files'
    ),
    Option(
      name: '--no-ignore-dot',
      description: 'Don\'t respect .ignore files'
    ),
    Option(
      name: '--no-ignore-global',
      description: 'Don\'t respect global ignore files'
    ),
    Option(
      name: '--no-ignore-parent',
      description: 'Don\'t respect ignore files in parent directories'
    ),
    Option(
      name: '--no-ignore-vcs',
      description: 'Don\'t respect ignore files in vcs directories'
    ),
    Option(
      name: '--binary',
      description: 'Search binary files'
    ),
    Option(
      name: '--no-check-filenames',
      description: 'Skip verifying spelling in file names'
    ),
    Option(
      name: '--no-check-files',
      description: 'Skip verifying spelling in files'
    ),
    Option(
      name: '--no-unicode',
      description: 'Only allow ASCII characters in identifiers'
    ),
    Option(
      name: '--locale',
      args: [
        Arg(
        name: 'locale',
        suggestions: [
          FigSuggestion(name: 'en'),
          FigSuggestion(name: 'en-us'),
          FigSuggestion(name: 'en-gb'),
          FigSuggestion(name: 'en-ca'),
          FigSuggestion(name: 'en-au')
        ]
      )
      ],
      description: 'Set the locale to use'
    ),
    Option(
      name: '--color',
      args: [
        Arg(
        name: 'when',
        suggestions: [
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'always'),

        ]
      )
      ],
      description: 'Controls when to use color'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'More output per occurrence'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Less output per occurrence'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help information'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version information'
    )
  ]
);
