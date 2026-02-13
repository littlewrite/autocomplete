// Auto-generated from TypeScript source: rome.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rome` CLI
final FigSpec romeSpec = FigSpec(
  name: 'rome',
  description: 'Rome CLI',
  options: [

    Option(
      name: '--colors',
      description: 'Set the formatting mode for markup',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(name: 'off'),
          FigSuggestion(name: 'force')
        ]
      )
      ]
    ),
    Option(
      name: '--use-server',
      description: 'Connect to a running instance of the Rome daemon server'
    ),
    Option(
      name: '--version',
      description: 'Show the Rome version information and quit'
    ),
    Option(
      name: '--files-max-size',
      description: 'The maximum allowed size for source code files in bytes',
      args: [
        Arg(
        name: 'BYTES'
      )
      ]
    )
  ],
  subcommands: [

    Subcommand(
      name: 'check',
      description: 'Run the linter on a set of files',
      args: [
        Arg(
        name: 'file, dir',
        template: ['filepaths', 'folders'],
        isVariadic: true
      )
      ],
      options: [

        Option(
          name: '--apply',
          description: 'Apply safe fixes'
        ),
        Option(
          name: '--apply-unsafe',
          description: 'Apply safe and unsafe fixes'
        ),
        Option(
          name: '--max-diagnostics',
          description: 'Cap the amount of diagnostics displayed',
          args: [
            Arg(
            name: 'NUMBER'
          )
          ]
        ),
        Option(
          name: '--config-path',
          description: 'Set the filesystem path to the config dir of the rome.json file',
          args: [
            Arg(
            name: 'dir',
            template: ['folders'],
            isVariadic: true
          )
          ]
        ),
        Option(
          name: '--verbose',
          description: 'Print additional verbose advices on diagnostics'
        )
      ]
    ),
    Subcommand(
      name: 'ci',
      description: 'Run the linter and formatter check on a set of files',
      args: [
        Arg(
        name: 'file, dir',
        template: ['filepaths', 'folders'],
        isVariadic: true
      )
      ],
      options: [

        Option(
          name: '--formatter-enabled',
          description: 'Allow to enable or disable the formatter check'
        ),
        Option(
          name: '--linter-enabled',
          description: 'Allow to enable or disable the linter check'
        ),
        Option(
          name: '--organize-imports-enabled',
          description: 'Allow to enable or disable the organize imports'
        ),
        Option(
          name: '--max-diagnostics',
          description: 'Cap the amount of diagnostics displayed',
          args: [
            Arg(
            name: 'NUMBER'
          )
          ]
        ),
        Option(
          name: '--config-path',
          description: 'Set the filesystem path to the config dir of the rome.json file',
          args: [
            Arg(
            name: 'dir',
            template: ['folders'],
            isVariadic: true
          )
          ]
        ),
        Option(
          name: '--verbose',
          description: 'Print additional verbose advices on diagnostics'
        ),
        Option(
          name: '--indent-style',
          description: 'Change the indention character',
          args: [
            Arg(
            name: 'style',
            suggestions: [

              FigSuggestion(name: 'tabs'),
              FigSuggestion(name: 'space')
            ]
          )
          ]
        ),
        Option(
          name: '--indent-size',
          description: 'How many spaces should be used for indentation',
          args: [
            Arg(
            name: 'SIZE'
          )
          ]
        ),
        Option(
          name: '--line-width',
          description: 'How many characters the formatter is allowed to print in a single line',
          args: [
            Arg(
            name: 'width'
          )
          ]
        ),
        Option(
          name: '--quote-style',
          description: 'Changes the quotation character for strings',
          args: [
            Arg(
            name: 'style',
            suggestions: [

              FigSuggestion(name: 'single'),
              FigSuggestion(name: 'double')
            ]
          )
          ]
        ),
        Option(
          name: '--quote-properties',
          description: 'Changes when properties in object should be quoted',
          args: [
            Arg(
            name: 'property',
            suggestions: [

              FigSuggestion(name: 'as-needed'),
              FigSuggestion(name: 'preserve')
            ]
          )
          ]
        ),
        Option(
          name: '--trailing-comma',
          description: 'Changes trailing commas in multi-line comma-separated syntactic structures',
          args: [
            Arg(
            name: 'trailing',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'es5'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        ),
        Option(
          name: '--semicolons',
          description: 'Changes when to print semicolons for statements',
          args: [
            Arg(
            name: 'rule',
            suggestions: [

              FigSuggestion(name: 'always'),
              FigSuggestion(name: 'as-needed')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'format',
      description: 'Run the formatter on a set of files',
      args: [
        Arg(
        name: 'file, dir',
        template: ['filepaths', 'folders'],
        isVariadic: true
      )
      ],
      options: [

        Option(
          name: '--write',
          description: 'Edit the files in place (beware!) instead of printing the diff to the console'
        ),
        Option(
          name: '--skip-errors',
          description: 'Skip over files containing syntax errors instead of emitting an error diagnostic'
        ),
        Option(
          name: '--max-diagnostics',
          description: 'Cap the amount of diagnostics displayed',
          args: [
            Arg(
            name: 'NUMBER'
          )
          ]
        ),
        Option(
          name: '--config-path',
          description: 'Set the filesystem path to the config dir of the rome.json file',
          args: [
            Arg(
            name: 'dir',
            template: ['folders'],
            isVariadic: true
          )
          ]
        ),
        Option(
          name: '--verbose',
          description: 'Print additional verbose advices on diagnostics'
        ),
        Option(
          name: '--indent-style',
          description: 'Change the indention character',
          args: [
            Arg(
            name: 'style',
            suggestions: [

              FigSuggestion(name: 'tabs'),
              FigSuggestion(name: 'space')
            ]
          )
          ]
        ),
        Option(
          name: '--indent-size',
          description: 'How many spaces should be used for indentation',
          args: [
            Arg(
            name: 'SIZE'
          )
          ]
        ),
        Option(
          name: '--line-width',
          description: 'How many characters the formatter is allowed to print in a single line',
          args: [
            Arg(
            name: 'width'
          )
          ]
        ),
        Option(
          name: '--quote-style',
          description: 'Changes the quotation character for strings',
          args: [
            Arg(
            name: 'style',
            suggestions: [

              FigSuggestion(name: 'single'),
              FigSuggestion(name: 'double')
            ]
          )
          ]
        ),
        Option(
          name: '--quote-properties',
          description: 'Changes when properties in object should be quoted',
          args: [
            Arg(
            name: 'property',
            suggestions: [

              FigSuggestion(name: 'as-needed'),
              FigSuggestion(name: 'preserve')
            ]
          )
          ]
        ),
        Option(
          name: '--trailing-comma',
          description: 'Changes trailing commas in multi-line comma-separated syntactic structures',
          args: [
            Arg(
            name: 'trailing',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'es5'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        ),
        Option(
          name: '--semicolons',
          description: 'Changes when to print semicolons for statements',
          args: [
            Arg(
            name: 'rule',
            suggestions: [

              FigSuggestion(name: 'always'),
              FigSuggestion(name: 'as-needed')
            ]
          )
          ]
        ),
        Option(
          name: '--stdin-file-path',
          description: 'A file name with its extension to pass when reading from standard in',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Bootstraps a new rome project'
    ),
    Subcommand(
      name: 'start',
      description: 'Start the Rome daemon server process'
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop the Rome daemon server process'
    ),
    Subcommand(
      name: 'lsp-proxy',
      description: 'Acts as a server for the Language Server Protocol over stdin/stdout'
    ),
    Subcommand(
      name: 'rage',
      description: 'Prints information for debugging'
    ),
    Subcommand(
      name: 'version',
      description: 'Shows the Rome version information and quit'
    ),
    Subcommand(
      name: 'help',
      description: 'Prints help message'
    )
  ]
);
