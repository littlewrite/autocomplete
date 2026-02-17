// Auto-generated from TypeScript source: taplo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `taplo` CLI
final FigSpec taploSpec = FigSpec(
  name: 'taplo',
  description: 'Tool for validation, formatting, and querying TOML documents with a jq-like fashion',
  subcommands: [

    Subcommand(
      name: ['config', 'cfg'],
      description: 'Operations with the Taplo config file',
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Print help information for config'
        )
      ],
      subcommands: [

        Subcommand(
          name: 'default',
          description: 'Print the default `.taplo.toml` configuration file'
        ),
        Subcommand(
          name: 'help',
          description: 'Print this message or the help of the given subcommand(s)',
          args: [
            Arg(
            template: 'help'
          )
          ]
        ),
        Subcommand(
          name: 'schema',
          description: 'Print the JSON schema of the `.taplo.toml` configuration file'
        )
      ]
    ),
    Subcommand(
      name: ['format', 'fmt'],
      description: 'Format TOML documents',
      args: [
        Arg(
        name: 'FILES ...',
        description: 'Paths or glob patterns to TOML documents',
        template: 'filepaths',
        isOptional: true,
        isVariadic: true
      )
      ],
      options: [

        Option(
          name: ['--config', '-c'],
          description: 'Path to the Taplo configuration file',
          args: [
            Arg(
            name: 'CONFIG',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cache-path',
          description: 'Set a cache path',
          args: [
            Arg(
            name: 'CACHE_PATH',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Report any files that are not correctly formatted',
          args: [
            Arg(
            name: 'CACHE_PATH',
            template: 'filepaths',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--diff',
          description: 'Print the differences in patch formatting to `stdout`'
        ),
        Option(
          name: ['f', '--force'],
          description: 'Force formatting of files',
          args: [
            Arg(
            name: 'FILES ...',
            template: 'filepaths',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Print help information for format'
        ),
        Option(
          name: '--no-auto-config',
          description: 'Do not search for a configuration file'
        ),
        Option(
          name: ['--option', '-o'],
          description: 'A formatter option given as a \'key=value\', can be set multiple times',
          args: [
            Arg(
            name: 'OPTIONS',
            suggestions: [

              FigSuggestion(name: 'indent_tables=true'),
              FigSuggestion(name: 'indent_tables=false')
            ]
          )
          ]
        ),
        Option(
          name: '--stdin-filepath',
          description: 'A path to the file that the taplo will treat like stdin',
          args: [
            Arg(
            name: 'STDIN_FILEPATH',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Extract a value from the given TOML document',
      options: [

        Option(
          name: ['--file-path', '-f'],
          description: 'Path to the TOML document',
          args: [
            Arg(
            name: 'FILE_PATH',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Print help information for get'
        ),
        Option(
          name: ['-o', '--output-format'],
          description: 'The format specifying how the output is printed',
          args: [
            Arg(
            name: 'OUTPUT_FORMAT',
            defaultValue: 'value',
            suggestions: [

              FigSuggestion(name: 'value'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'toml')
            ]
          )
          ]
        ),
        Option(
          name: ['--strip-newline', '-s'],
          description: 'Strip the trailing newline from the output'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Print help information for taplo'
    ),
    Subcommand(
      name: ['lint', 'check', 'validate'],
      description: 'Lint a TOML documents',
      args: [
        Arg(
        name: 'FILES ...',
        template: 'filepaths',
        isVariadic: true,
        isOptional: true
      )
      ],
      options: [

        Option(
          name: ['--config', '-c'],
          description: 'Path to the Taplo configuration file',
          args: [
            Arg(
            name: 'CONFIG',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cache-path',
          description: 'Set a cache path',
          args: [
            Arg(
            name: 'CACHE_PATH',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--default-schema-catalogs',
          description: 'Use the default online catalogs for schemas'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Print help information for lint'
        ),
        Option(
          name: '--no-schema',
          description: 'Disable all schema validation'
        ),
        Option(
          name: '--schema',
          description: 'URL to the schema to be used for validation',
          args: [
            Arg(
            name: 'SCHEMA',
            template: 'history'
          )
          ]
        ),
        Option(
          name: '--schema-catalog',
          description: 'URL to the schema catalog to be used for validation',
          isRepeatable: true,
          args: [
            Arg(
            name: 'SCHEMA_CATALOG',
            template: 'history'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'lsp',
      description: 'Language server operations',
      subcommands: [

        Subcommand(
          name: 'help',
          description: 'Print help information for lsp'
        ),
        Subcommand(
          name: 'stdio',
          description: 'Run the language server over the standard input and output'
        ),
        Subcommand(
          name: 'tcp',
          description: 'Run the language server and listen on a TCP address'
        )
      ],
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Print help information for lsp'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Print help information for taplo'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Print version information for taplo'
    ),
    Option(
      name: '--colors',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never')
        ]
      )
      ]
    )
  ]
);
