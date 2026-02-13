// Auto-generated from TypeScript source: zoxide.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `zoxide` CLI
final FigSpec zoxideSpec = FigSpec(
  name: 'zoxide',
  description: 'A smarter cd command for your terminal',
  subcommands: [

    Subcommand(
      name: 'add',
      description: 'Add a new directory or increment its rank',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: ['-V', '--version'],
          description: 'Print version information'
        )
      ],
      args: [
        Arg(
        name: 'paths',
        isVariadic: true,
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Import entries from another application',
      options: [

        Option(
          name: '--from',
          description: 'Application to import from',
          args: [
            Arg(
            name: 'from',
            suggestions: [

              FigSuggestion(name: 'autojump'),
              FigSuggestion(name: 'z')
            ]
          )
          ]
        ),
        Option(
          name: '--merge',
          description: 'Merge into existing database'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: ['-V', '--version'],
          description: 'Print version information'
        )
      ],
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Generate shell configuration',
      options: [

        Option(
          name: '--cmd',
          description: 'Changes the prefix of the `z` and `zi` commands',
          args: [
            Arg(
            name: 'cmd',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--hook',
          description: 'Changes how often zoxide increments a directory\'s score',
          args: [
            Arg(
            name: 'hook',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'none'),
              FigSuggestion(name: 'prompt'),
              FigSuggestion(name: 'pwd')
            ]
          )
          ]
        ),
        Option(
          name: '--no-cmd',
          description: 'Prevents zoxide from defining the `z` and `zi` commands'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: ['-V', '--version'],
          description: 'Print version information'
        )
      ],
      args: [
        Arg(
        name: 'shell',
        suggestions: [

          FigSuggestion(name: 'bash'),
          FigSuggestion(name: 'elvish'),
          FigSuggestion(name: 'fish'),
          FigSuggestion(name: 'nushell'),
          FigSuggestion(name: 'posix'),
          FigSuggestion(name: 'powershell'),
          FigSuggestion(name: 'xonsh'),
          FigSuggestion(name: 'zsh')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'query',
      description: 'Search for a directory in the database',
      options: [

        Option(
          name: '--exclude',
          description: 'Exclude a path from results',
          args: [
            Arg(
            name: 'exclude',
            isOptional: true,
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--all',
          description: 'Show deleted directories'
        ),
        Option(
          name: ['-i', '--interactive'],
          description: 'Use interactive selection',
          exclusiveOn: ['-l', '--list']
        ),
        Option(
          name: ['-l', '--list'],
          description: 'List all matching directories',
          exclusiveOn: ['-i', '--interactive']
        ),
        Option(
          name: ['-s', '--score'],
          description: 'Print score with results'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: ['-V', '--version'],
          description: 'Print version information'
        )
      ],
      args: [
        Arg(
        name: 'keywords',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'remove',
      description: 'Remove a directory from the database',
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Use interactive selection'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: ['-V', '--version'],
          description: 'Print version information'
        )
      ],
      args: [
        Arg(
        name: 'paths',
        isOptional: true,
        template: 'folders'
      )
      ]
    )
  ],
  options: [

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
