// Auto-generated from TypeScript source: typst.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `typst` CLI
final FigSpec typstSpec = FigSpec(
  name: 'typst',
  description: 'The Typst compiler',
  icon: '📄',
  subcommands: [

    Subcommand(
      name: ['compile', 'c'],
      description: 'Compiles an input file into a supported output format',
      icon: '📄',
      options: [

        Option(
          name: '--root',
          description: 'Configures the project root (for absolute paths)',
          args: [
            Arg(
            name: 'root',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--font-path',
          description: 'Adds additional directories to search for fonts',
          isRepeatable: true,
          args: [
            Arg(
            name: 'font_paths',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--diagnostic-format',
          description: 'The format to emit diagnostics in',
          args: [
            Arg(
            name: 'diagnostic_format',
            suggestions: [

              FigSuggestion(name: 'human'),
              FigSuggestion(name: 'short')
            ],
            defaultValue: 'human'
          )
          ]
        ),
        Option(
          name: ['-f', '--format'],
          description: 'The format of the output file, inferred from the extension by default',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(name: 'pdf'),
              FigSuggestion(name: 'png'),
              FigSuggestion(name: 'svg')
            ]
          )
          ]
        ),
        Option(
          name: '--open',
          description: 'Opens the output file using the default viewer after compilation',
          args: [
            Arg(
            name: 'open',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--ppi',
          description: 'The PPI (pixels per inch) to use for PNG export',
          args: [
            Arg(
            name: 'ppi',
            defaultValue: '144.0'
          )
          ]
        ),
        Option(
          name: '--flamegraph',
          description: 'Produces a flamegraph of the compilation process',
          args: [
            Arg(
            name: 'flamegraph',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [

        Arg(
          name: 'input',
          description: 'Path to input Typst file'
        ),
        Arg(
          name: 'output',
          description: 'Path to output file (PDF, PNG, or SVG)',
          isOptional: true,
          template: 'filepaths'
        )
      ]
    ),
    Subcommand(
      name: ['watch', 'w'],
      description: 'Watches an input file and recompiles on changes',
      icon: '🔄',
      options: [

        Option(
          name: '--root',
          description: 'Configures the project root (for absolute paths)',
          args: [
            Arg(
            name: 'root',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--font-path',
          description: 'Adds additional directories to search for fonts',
          isRepeatable: true,
          args: [
            Arg(
            name: 'font_paths',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--diagnostic-format',
          description: 'The format to emit diagnostics in',
          args: [
            Arg(
            name: 'diagnostic_format',
            suggestions: [

              FigSuggestion(name: 'human'),
              FigSuggestion(name: 'short')
            ],
            defaultValue: 'human'
          )
          ]
        ),
        Option(
          name: ['-f', '--format'],
          description: 'The format of the output file, inferred from the extension by default',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(name: 'pdf'),
              FigSuggestion(name: 'png'),
              FigSuggestion(name: 'svg')
            ]
          )
          ]
        ),
        Option(
          name: '--open',
          description: 'Opens the output file using the default viewer after compilation',
          args: [
            Arg(
            name: 'open',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--ppi',
          description: 'The PPI (pixels per inch) to use for PNG export',
          args: [
            Arg(
            name: 'ppi',
            defaultValue: '144.0'
          )
          ]
        ),
        Option(
          name: '--flamegraph',
          description: 'Produces a flamegraph of the compilation process',
          args: [
            Arg(
            name: 'flamegraph',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [

        Arg(
          name: 'input',
          description: 'Path to input Typst file'
        ),
        Arg(
          name: 'output',
          description: 'Path to output file (PDF, PNG, or SVG)',
          isOptional: true,
          template: 'filepaths'
        )
      ]
    ),
    Subcommand(
      name: 'query',
      description: 'Processes an input file to extract provided metadata',
      icon: '🔍',
      options: [

        Option(
          name: '--root',
          description: 'Configures the project root (for absolute paths)',
          args: [
            Arg(
            name: 'root',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--font-path',
          description: 'Adds additional directories to search for fonts',
          isRepeatable: true,
          args: [
            Arg(
            name: 'font_paths',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--diagnostic-format',
          description: 'The format to emit diagnostics in',
          args: [
            Arg(
            name: 'diagnostic_format',
            suggestions: [

              FigSuggestion(name: 'human'),
              FigSuggestion(name: 'short')
            ],
            defaultValue: 'human'
          )
          ]
        ),
        Option(
          name: '--field',
          description: 'Extracts just one field from all retrieved elements',
          args: [
            Arg(
            name: 'field'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'The format to serialize in',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml')
            ],
            defaultValue: 'json'
          )
          ]
        ),
        Option(
          name: '--one',
          description: 'Expects and retrieves exactly one element'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [

        Arg(
          name: 'input',
          description: 'Path to input Typst file'
        ),
        Arg(
          name: 'selector',
          description: 'Defines which elements to retrieve'
        )
      ]
    ),
    Subcommand(
      name: 'fonts',
      description: 'Lists all discovered fonts in system and custom font paths',
      icon: '🔤',
      options: [

        Option(
          name: '--font-path',
          description: 'Adds additional directories to search for fonts',
          isRepeatable: true,
          args: [
            Arg(
            name: 'font_paths',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--variants',
          description: 'Also lists style variants of each font family'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Self update the Typst CLI (disabled)',
      icon: '🆙',
      options: [

        Option(
          name: '--force',
          description: 'Forces a downgrade to an older version (required for downgrading)',
          exclusiveOn: ['--revert']
        ),
        Option(
          name: '--revert',
          description: 'Reverts to the version from before the last update (only possible if `typst update` has previously ran)',
          exclusiveOn: ['--force']
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [
        Arg(
        name: 'version',
        description: 'Which version to update to (defaults to latest)',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Print this message or the help of the given subcommand(s)',
      icon: 'ℹ️',
      subcommands: [

        Subcommand(
          name: 'compile',
          description: 'Compiles an input file into a supported output format',
          icon: '📄'
        ),
        Subcommand(
          name: 'watch',
          description: 'Watches an input file and recompiles on changes',
          icon: '🔄'
        ),
        Subcommand(
          name: 'query',
          description: 'Processes an input file to extract provided metadata',
          icon: '🔍'
        ),
        Subcommand(
          name: 'fonts',
          description: 'Lists all discovered fonts in system and custom font paths',
          icon: '🔤'
        ),
        Subcommand(
          name: 'update',
          description: 'Self update the Typst CLI (disabled)',
          icon: '🆙'
        ),
        Subcommand(
          name: 'help',
          description: 'Print this message or the help of the given subcommand(s)',
          icon: 'ℹ️'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--cert',
      description: 'Path to a custom CA certificate to use when making network requests',
      args: [
        Arg(
        name: 'cert',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-v', '--verbosity'],
      description: 'Sets the level of logging verbosity: -v = warning & error, -vv = info, -vvv = debug, -vvvv = trace',
      isRepeatable: 4
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version'
    )
  ]
);
