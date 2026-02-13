// Auto-generated from TypeScript source: volta.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> defaultOptions = [

  Option(
    name: '--verbose',
    description: 'Enables verbose diagnostics'
  ),
  Option(
    name: '--quiet',
    description: 'Prevents unnecessary output'
  ),
  Option(
    name: ['-h', '--help'],
    description: 'Prints help information'
  )
];

/// Completion spec for `volta` CLI
final FigSpec voltaSpec = FigSpec(
  name: 'volta',
  description: 'The JavaScript Launcher',
  subcommands: [

    Subcommand(
      name: 'fetch',
      description: 'Fetches a tool to the local machine',
      args: [
        Arg(
        isVariadic: true,
        name: 'tool | tool@version'
      )
      ],
      options: [

        ...defaultOptions
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Installs a tool in your toolchain',
      args: [
        Arg(
      )
      ],
      options: [

        ...defaultOptions
      ]
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstalls a tool from your toolchain',
      args: [
        Arg(
        name: 'tool'
      )
      ],
      options: [

        ...defaultOptions
      ]
    ),
    Subcommand(
      name: 'pin',
      description: 'Pins your project\'s runtime or package manager',
      args: [
        Arg(
      )
      ],
      options: [

        ...defaultOptions
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Displays the current toolchain',
      args: [
        Arg(
        name: 'tool'
      )
      ],
      options: [

        Option(
          name: ['-c', '--current'],
          description: 'Show the currently-active tool(s)'
        ),
        Option(
          name: ['-d', '--default'],
          description: 'Show your default tool(s)'
        ),
        ...defaultOptions,
        Option(
          name: '--format',
          description: 'Specify output format',
          args: [
            Arg(
            name: 'output format',
            suggestions: [

              FigSuggestion(name: 'human'),
              FigSuggestion(name: 'plain')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'completions',
      description: 'Generates Volta completions',
      args: [
        Arg(
        name: 'shell',
        description: 'Shell to generate completions for',
        suggestions: [

          FigSuggestion(name: 'zsh'),
          FigSuggestion(name: 'bash'),
          FigSuggestion(name: 'fish'),
          FigSuggestion(name: 'powershell'),
          FigSuggestion(name: 'elivsh')
        ]
      )
      ],
      options: [

        Option(
          name: ['-f', '--force'],
          description: 'Write over an existing file, if any'
        ),
        ...defaultOptions,
        Option(
          name: ['-o', '--output'],
          description: 'File to write generated completions to',
          args: [
            Arg(
            name: 'file'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'which',
      description: 'Locates the actual binary that will be called by Volta',
      args: [
        Arg(
        isVariadic: true,
        name: 'binary',
        template: 'filepaths'
      )
      ],
      options: [

        ...defaultOptions
      ]
    ),
    Subcommand(
      name: 'setup',
      description: 'Enables Volta for the current user',
      options: [

        ...defaultOptions
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run a command with custom Node, npm, and/or Yarn versions',
      args: [
        Arg(
        name: 'command'
      )
      ],
      options: [

        Option(
          name: '--bundle',
          description: 'Forces npm to be the version bundled with Node'
        ),
        Option(
          name: '--no-yarn',
          description: 'Disables Yarn'
        ),
        Option(
          name: '--verbose',
          description: 'Enables verbose diagnostics'
        ),
        Option(
          name: '--quiet',
          description: 'Prevents unnecessary output'
        ),
        Option(
          name: '--node',
          description: 'Set the custom Node version',
          args: [
            Arg(
            name: 'version'
          )
          ]
        ),
        Option(
          name: '--npm',
          description: 'Set the custom npm version',
          args: [
            Arg(
            name: 'version'
          )
          ]
        ),
        Option(
          name: '--yarn',
          description: 'Set the custom Yarn version',
          args: [
            Arg(
            name: 'version'
          )
          ]
        ),
        Option(
          name: '--env',
          description: 'Set an environment variable (can be used multiple times)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'NAME=value'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Prints this message or the help of the given subcommand(s)',
      args: [
        Arg(
        name: 'subcommand'
      )
      ]
    )
  ],
  options: [

    ...defaultOptions,
    Option(
      name: ['-v', '--version'],
      description: 'Prints the current version of Volta'
    )
  ]
);
