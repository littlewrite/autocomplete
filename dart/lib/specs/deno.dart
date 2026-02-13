// Auto-generated from TypeScript source: deno.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `deno` CLI
final FigSpec denoSpec = FigSpec(
  name: 'deno',
  description: 'A modern JavaScript and TypeScript runtime',
  subcommands: [

    Subcommand(
      name: 'bench',
      description: 'Run benchmarks',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-read',
          description: 'Allow file system read access',
          args: [
            Arg(
            name: 'allow-read',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-write',
          description: 'Allow file system write access',
          args: [
            Arg(
            name: 'allow-write',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-net',
          description: 'Allow network access',
          args: [
            Arg(
            name: 'allow-net',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--unsafely-ignore-certificate-errors',
          description: 'DANGER: Disables verification of TLS certificates',
          args: [
            Arg(
            name: 'unsafely-ignore-certificate-errors',
            isVariadic: true,
            isOptional: true,
            description: 'Scope ignoring certificate errors to these hosts'
          )
          ]
        ),
        Option(
          name: '--allow-env',
          description: 'Allow environment access',
          args: [
            Arg(
            name: 'allow-env',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-run',
          description: 'Allow running subprocesses',
          args: [
            Arg(
            name: 'allow-run',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-ffi',
          description: 'Allow loading dynamic libraries',
          args: [
            Arg(
            name: 'allow-ffi',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Value of \'globalThis.location\' used by some web APIs',
          args: [
            Arg(
            name: 'location',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--v8-flags',
          description: 'Set V8 command line options',
          args: [
            Arg(
            name: 'v8-flags',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Set the random number generator seed',
          args: [
            Arg(
            name: 'seed',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Ignore files',
          args: [
            Arg(
            name: 'ignore',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Run benchmarks with this string or pattern in the bench name',
          args: [
            Arg(
            name: 'filter',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--allow-hrtime',
          description: 'Allow high resolution time measurement'
        ),
        Option(
          name: ['-A', '--allow-all'],
          description: 'Allow all permissions'
        ),
        Option(
          name: '--prompt',
          description: 'Deprecated: Fallback to prompt if required permission wasn\'t passed'
        ),
        Option(
          name: '--no-prompt',
          description: 'Always throw if required permission wasn\'t passed'
        ),
        Option(
          name: '--cached-only',
          description: 'Require that remote dependencies are already cached'
        ),
        Option(
          name: '--enable-testing-features-do-not-use',
          description: 'INTERNAL: Enable internal features used during integration testing'
        ),
        Option(
          name: '--compat',
          description: 'UNSTABLE: Node compatibility mode'
        ),
        Option(
          name: '--watch',
          description: 'Watch for file changes and restart automatically'
        ),
        Option(
          name: '--no-clear-screen',
          description: 'Do not clear terminal screen when under watch mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [

        Arg(
          name: 'files',
          isVariadic: true,
          isOptional: true,
          template: 'filepaths'
        ),
        Arg(
          name: 'script_arg',
          isVariadic: true,
          isOptional: true,
          template: 'filepaths'
        )
      ]
    ),
    Subcommand(
      name: 'bundle',
      description: 'Bundle module and dependencies into single file',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--watch',
          description: 'Watch for file changes and restart automatically'
        ),
        Option(
          name: '--no-clear-screen',
          description: 'Do not clear terminal screen when under watch mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [

        Arg(
          name: 'source_file',
          template: 'filepaths'
        ),
        Arg(
          name: 'out_file',
          isOptional: true,
          template: 'filepaths'
        )
      ]
    ),
    Subcommand(
      name: 'cache',
      description: 'Cache the dependencies',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'file',
        isVariadic: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Type-check the dependencies',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--remote',
          description: 'Type-check all modules, including remote'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'file',
        isVariadic: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'compile',
      description: 'UNSTABLE: Compile the script into a self contained executable',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-read',
          description: 'Allow file system read access',
          args: [
            Arg(
            name: 'allow-read',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-write',
          description: 'Allow file system write access',
          args: [
            Arg(
            name: 'allow-write',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-net',
          description: 'Allow network access',
          args: [
            Arg(
            name: 'allow-net',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--unsafely-ignore-certificate-errors',
          description: 'DANGER: Disables verification of TLS certificates',
          args: [
            Arg(
            name: 'unsafely-ignore-certificate-errors',
            isVariadic: true,
            isOptional: true,
            description: 'Scope ignoring certificate errors to these hosts'
          )
          ]
        ),
        Option(
          name: '--allow-env',
          description: 'Allow environment access',
          args: [
            Arg(
            name: 'allow-env',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-run',
          description: 'Allow running subprocesses',
          args: [
            Arg(
            name: 'allow-run',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-ffi',
          description: 'Allow loading dynamic libraries',
          args: [
            Arg(
            name: 'allow-ffi',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Value of \'globalThis.location\' used by some web APIs',
          args: [
            Arg(
            name: 'location',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--v8-flags',
          description: 'Set V8 command line options',
          args: [
            Arg(
            name: 'v8-flags',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Set the random number generator seed',
          args: [
            Arg(
            name: 'seed',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-o', '--output'],
          description: 'Output file (defaults to \$PWD/<inferred-name>)',
          args: [
            Arg(
            name: 'output',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--target',
          description: 'Target OS architecture',
          args: [
            Arg(
            name: 'target',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'x86_64-unknown-linux-gnu'),
              FigSuggestion(name: 'x86_64-pc-windows-msvc'),
              FigSuggestion(name: 'x86_64-apple-darwin'),
              FigSuggestion(name: 'aarch64-apple-darwin')
            ]
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--allow-hrtime',
          description: 'Allow high resolution time measurement'
        ),
        Option(
          name: ['-A', '--allow-all'],
          description: 'Allow all permissions'
        ),
        Option(
          name: '--prompt',
          description: 'Deprecated: Fallback to prompt if required permission wasn\'t passed'
        ),
        Option(
          name: '--no-prompt',
          description: 'Always throw if required permission wasn\'t passed'
        ),
        Option(
          name: '--cached-only',
          description: 'Require that remote dependencies are already cached'
        ),
        Option(
          name: '--enable-testing-features-do-not-use',
          description: 'INTERNAL: Enable internal features used during integration testing'
        ),
        Option(
          name: '--compat',
          description: 'UNSTABLE: Node compatibility mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'script_arg',
        isVariadic: true,
        generators: [

          Generator(
            template: 'filepaths'
          )
        ]
      )
      ],
      parserDirectives: ParserDirectives(
        optionsMustPrecedeArguments: true
      )
    ),
    Subcommand(
      name: 'completions',
      description: 'Generate shell completions',
      options: [

        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'shell',
        suggestions: [

          FigSuggestion(name: 'bash'),
          FigSuggestion(name: 'fish'),
          FigSuggestion(name: 'powershell'),
          FigSuggestion(name: 'zsh'),
          FigSuggestion(name: 'fig')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'coverage',
      description: 'Print coverage reports',
      options: [

        Option(
          name: '--ignore',
          description: 'Ignore coverage files',
          args: [
            Arg(
            name: 'ignore',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--include',
          description: 'Include source files in the report',
          isRepeatable: true,
          args: [
            Arg(
            name: 'include',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Exclude source files from the report',
          isRepeatable: true,
          args: [
            Arg(
            name: 'exclude',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--output',
          description: 'Output file (defaults to stdout) for lcov',
          args: [
            Arg(
            name: 'output',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--lcov',
          description: 'Output coverage report in lcov format'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'files',
        isVariadic: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'doc',
      description: 'Show documentation for a module',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output documentation in JSON format'
        ),
        Option(
          name: '--private',
          description: 'Output private documentation'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [

        Arg(
          name: 'source_file',
          isOptional: true,
          generators: [

            Generator(
              template: 'filepaths'
            )
          ],
          suggestions: [

            FigSuggestion(
              name: '--builtin',
              description: 'Get documentation for built-in symbols',
              icon: 'fig://icon?type=option'
            )
          ]
        ),
        Arg(
          name: 'filter',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'eval',
      description: 'Eval script',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--inspect',
          description: 'Activate inspector on host:port (default: 127.0.0.1:9229)',
          args: [
            Arg(
            name: 'inspect',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--inspect-brk',
          description: 'Activate inspector on host:port and break at start of user script',
          args: [
            Arg(
            name: 'inspect-brk',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Value of \'globalThis.location\' used by some web APIs',
          args: [
            Arg(
            name: 'location',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--v8-flags',
          description: 'Set V8 command line options',
          args: [
            Arg(
            name: 'v8-flags',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Set the random number generator seed',
          args: [
            Arg(
            name: 'seed',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--ext',
          description: 'Set standard input (stdin) content type',
          args: [
            Arg(
            name: 'ext',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'ts'),
              FigSuggestion(name: 'tsx'),
              FigSuggestion(name: 'js'),
              FigSuggestion(name: 'jsx')
            ]
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--cached-only',
          description: 'Require that remote dependencies are already cached'
        ),
        Option(
          name: '--enable-testing-features-do-not-use',
          description: 'INTERNAL: Enable internal features used during integration testing'
        ),
        Option(
          name: '--compat',
          description: 'UNSTABLE: Node compatibility mode'
        ),
        Option(
          name: ['-T', '--ts'],
          description: 'Treat eval input as TypeScript'
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print result to stdout'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'code_arg',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'fmt',
      description: 'Format source files',
      options: [

        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--ext',
          description: 'Set standard input (stdin) content type',
          args: [
            Arg(
            name: 'ext',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'ts'),
              FigSuggestion(name: 'tsx'),
              FigSuggestion(name: 'js'),
              FigSuggestion(name: 'jsx'),
              FigSuggestion(name: 'md'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'jsonc')
            ]
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Ignore formatting particular source files',
          args: [
            Arg(
            name: 'ignore',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--options-line-width',
          description: 'Define maximum line width. Defaults to 80',
          args: [
            Arg(
            name: 'options-line-width',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--options-indent-width',
          description: 'Define indentation width. Defaults to 2',
          args: [
            Arg(
            name: 'options-indent-width',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--options-prose-wrap',
          description: 'Define how prose should be wrapped. Defaults to always',
          args: [
            Arg(
            name: 'options-prose-wrap',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'always'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'preserve')
            ]
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--check',
          description: 'Check if the source files are formatted'
        ),
        Option(
          name: '--watch',
          description: 'Watch for file changes and restart automatically'
        ),
        Option(
          name: '--no-clear-screen',
          description: 'Do not clear terminal screen when under watch mode'
        ),
        Option(
          name: '--options-use-tabs',
          description: 'Use tabs instead of spaces for indentation. Defaults to false'
        ),
        Option(
          name: '--options-single-quote',
          description: 'Use single quotes. Defaults to false'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'files',
        isVariadic: true,
        isOptional: true,
        template: 'filepaths',
        suggestions: [

          FigSuggestion(
            name: '-',
            description: 'Read from standard input',
            hidden: true
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize a new project',
      options: [

        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'dir',
        isOptional: true,
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'info',
      description: 'Show info about cache or info related to source file',
      options: [

        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Show files used for origin bound APIs like the Web Storage API when running a script with \'--location=<HREF>\'',
          args: [
            Arg(
            name: 'location',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--json',
          description: 'UNSTABLE: Outputs the information in JSON format'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'file',
        isOptional: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install script as an executable',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-read',
          description: 'Allow file system read access',
          args: [
            Arg(
            name: 'allow-read',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-write',
          description: 'Allow file system write access',
          args: [
            Arg(
            name: 'allow-write',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-net',
          description: 'Allow network access',
          args: [
            Arg(
            name: 'allow-net',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--unsafely-ignore-certificate-errors',
          description: 'DANGER: Disables verification of TLS certificates',
          args: [
            Arg(
            name: 'unsafely-ignore-certificate-errors',
            isVariadic: true,
            isOptional: true,
            description: 'Scope ignoring certificate errors to these hosts'
          )
          ]
        ),
        Option(
          name: '--allow-env',
          description: 'Allow environment access',
          args: [
            Arg(
            name: 'allow-env',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-run',
          description: 'Allow running subprocesses',
          args: [
            Arg(
            name: 'allow-run',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-ffi',
          description: 'Allow loading dynamic libraries',
          args: [
            Arg(
            name: 'allow-ffi',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--inspect',
          description: 'Activate inspector on host:port (default: 127.0.0.1:9229)',
          args: [
            Arg(
            name: 'inspect',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--inspect-brk',
          description: 'Activate inspector on host:port and break at start of user script',
          args: [
            Arg(
            name: 'inspect-brk',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Value of \'globalThis.location\' used by some web APIs',
          args: [
            Arg(
            name: 'location',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--v8-flags',
          description: 'Set V8 command line options',
          args: [
            Arg(
            name: 'v8-flags',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Set the random number generator seed',
          args: [
            Arg(
            name: 'seed',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Executable file name',
          args: [
            Arg(
            name: 'name',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--root',
          description: 'Installation root',
          args: [
            Arg(
            name: 'root',
            isOptional: true,
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--allow-hrtime',
          description: 'Allow high resolution time measurement'
        ),
        Option(
          name: ['-A', '--allow-all'],
          description: 'Allow all permissions'
        ),
        Option(
          name: '--prompt',
          description: 'Deprecated: Fallback to prompt if required permission wasn\'t passed'
        ),
        Option(
          name: '--no-prompt',
          description: 'Always throw if required permission wasn\'t passed'
        ),
        Option(
          name: '--cached-only',
          description: 'Require that remote dependencies are already cached'
        ),
        Option(
          name: '--enable-testing-features-do-not-use',
          description: 'INTERNAL: Enable internal features used during integration testing'
        ),
        Option(
          name: '--compat',
          description: 'UNSTABLE: Node compatibility mode'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Forcefully overwrite existing installation'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'cmd',
        isVariadic: true,
        generators: [

          Generator(
            template: 'filepaths'
          )
        ]
      )
      ],
      parserDirectives: ParserDirectives(
        optionsMustPrecedeArguments: true
      )
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstall a script previously installed with deno install',
      options: [

        Option(
          name: '--root',
          description: 'Installation root',
          args: [
            Arg(
            name: 'root',
            isOptional: true,
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Subcommand(
      name: 'lsp',
      description: 'Start the language server',
      options: [

        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ]
    ),
    Subcommand(
      name: 'lint',
      description: 'Lint source files',
      options: [

        Option(
          name: '--rules-tags',
          description: 'Use set of rules with a tag',
          exclusiveOn: ['--rules'],
          args: [
            Arg(
            name: 'rules-tags',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--rules-include',
          description: 'Include lint rules',
          exclusiveOn: ['--rules'],
          args: [
            Arg(
            name: 'rules-include',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--rules-exclude',
          description: 'Exclude lint rules',
          exclusiveOn: ['--rules'],
          args: [
            Arg(
            name: 'rules-exclude',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Ignore linting particular source files',
          args: [
            Arg(
            name: 'ignore',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--rules',
          description: 'List available rules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--json',
          description: 'Output lint result in JSON format'
        ),
        Option(
          name: '--watch',
          description: 'Watch for file changes and restart automatically'
        ),
        Option(
          name: '--no-clear-screen',
          description: 'Do not clear terminal screen when under watch mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'files',
        isVariadic: true,
        isOptional: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'repl',
      description: 'Read Eval Print Loop',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--inspect',
          description: 'Activate inspector on host:port (default: 127.0.0.1:9229)',
          args: [
            Arg(
            name: 'inspect',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--inspect-brk',
          description: 'Activate inspector on host:port and break at start of user script',
          args: [
            Arg(
            name: 'inspect-brk',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Value of \'globalThis.location\' used by some web APIs',
          args: [
            Arg(
            name: 'location',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--v8-flags',
          description: 'Set V8 command line options',
          args: [
            Arg(
            name: 'v8-flags',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Set the random number generator seed',
          args: [
            Arg(
            name: 'seed',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--eval-file',
          description: 'Evaluates the provided file(s) as scripts when the REPL starts. Accepts file paths and URLs',
          args: [
            Arg(
            name: 'eval-file',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--eval',
          description: 'Evaluates the provided code when the REPL starts',
          args: [
            Arg(
            name: 'eval',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--unsafely-ignore-certificate-errors',
          description: 'DANGER: Disables verification of TLS certificates',
          args: [
            Arg(
            name: 'unsafely-ignore-certificate-errors',
            isVariadic: true,
            isOptional: true,
            description: 'Scope ignoring certificate errors to these hosts'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--cached-only',
          description: 'Require that remote dependencies are already cached'
        ),
        Option(
          name: '--enable-testing-features-do-not-use',
          description: 'INTERNAL: Enable internal features used during integration testing'
        ),
        Option(
          name: '--compat',
          description: 'UNSTABLE: Node compatibility mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run a JavaScript or TypeScript program',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-read',
          description: 'Allow file system read access',
          args: [
            Arg(
            name: 'allow-read',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-write',
          description: 'Allow file system write access',
          args: [
            Arg(
            name: 'allow-write',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-net',
          description: 'Allow network access',
          args: [
            Arg(
            name: 'allow-net',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--unsafely-ignore-certificate-errors',
          description: 'DANGER: Disables verification of TLS certificates',
          args: [
            Arg(
            name: 'unsafely-ignore-certificate-errors',
            isVariadic: true,
            isOptional: true,
            description: 'Scope ignoring certificate errors to these hosts'
          )
          ]
        ),
        Option(
          name: '--allow-env',
          description: 'Allow environment access',
          args: [
            Arg(
            name: 'allow-env',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-run',
          description: 'Allow running subprocesses',
          args: [
            Arg(
            name: 'allow-run',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-ffi',
          description: 'Allow loading dynamic libraries',
          args: [
            Arg(
            name: 'allow-ffi',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--inspect',
          description: 'Activate inspector on host:port (default: 127.0.0.1:9229)',
          args: [
            Arg(
            name: 'inspect',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--inspect-brk',
          description: 'Activate inspector on host:port and break at start of user script',
          args: [
            Arg(
            name: 'inspect-brk',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Value of \'globalThis.location\' used by some web APIs',
          args: [
            Arg(
            name: 'location',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--v8-flags',
          description: 'Set V8 command line options',
          args: [
            Arg(
            name: 'v8-flags',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Set the random number generator seed',
          args: [
            Arg(
            name: 'seed',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--watch',
          description: 'Watch for file changes and restart automatically',
          exclusiveOn: ['--inspect', '--inspect-brk'],
          args: [
            Arg(
            name: 'watch',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths',
            generators: Generator(
              template: 'filepaths',
              getQueryTerm: ','
            )
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--allow-hrtime',
          description: 'Allow high resolution time measurement'
        ),
        Option(
          name: ['-A', '--allow-all'],
          description: 'Allow all permissions'
        ),
        Option(
          name: '--prompt',
          description: 'Deprecated: Fallback to prompt if required permission wasn\'t passed'
        ),
        Option(
          name: '--no-prompt',
          description: 'Always throw if required permission wasn\'t passed'
        ),
        Option(
          name: '--cached-only',
          description: 'Require that remote dependencies are already cached'
        ),
        Option(
          name: '--enable-testing-features-do-not-use',
          description: 'INTERNAL: Enable internal features used during integration testing'
        ),
        Option(
          name: '--compat',
          description: 'UNSTABLE: Node compatibility mode'
        ),
        Option(
          name: '--no-clear-screen',
          description: 'Do not clear terminal screen when under watch mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'script_arg',
        isVariadic: true,
        suggestions: [

          FigSuggestion(
            name: '-',
            description: 'Read from standard input',
            hidden: true
          )
        ],
        generators: [

          Generator(
            template: 'filepaths'
          )
        ]
      )
      ],
      parserDirectives: ParserDirectives(
        optionsMustPrecedeArguments: true
      )
    ),
    Subcommand(
      name: 'task',
      description: 'Run a task defined in the configuration file',
      options: [

        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cwd',
          description: 'Specify the directory to run the task in',
          args: [
            Arg(
            name: 'cwd',
            isOptional: true,
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [

        Arg(
          name: 'task_name'
        ),
        Arg(
          name: 'task_args',
          isVariadic: true,
          isOptional: true
        )
      ],
      parserDirectives: ParserDirectives(
        optionsMustPrecedeArguments: true
      )
    ),
    Subcommand(
      name: 'test',
      description: 'Run tests',
      options: [

        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--no-check',
          description: 'Skip type-checking modules',
          args: [
            Arg(
            name: 'no-check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'remote')
            ]
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Type-check modules',
          exclusiveOn: ['--no-check'],
          args: [
            Arg(
            name: 'check',
            isVariadic: true,
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-read',
          description: 'Allow file system read access',
          args: [
            Arg(
            name: 'allow-read',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-write',
          description: 'Allow file system write access',
          args: [
            Arg(
            name: 'allow-write',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--allow-net',
          description: 'Allow network access',
          args: [
            Arg(
            name: 'allow-net',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--unsafely-ignore-certificate-errors',
          description: 'DANGER: Disables verification of TLS certificates',
          args: [
            Arg(
            name: 'unsafely-ignore-certificate-errors',
            isVariadic: true,
            isOptional: true,
            description: 'Scope ignoring certificate errors to these hosts'
          )
          ]
        ),
        Option(
          name: '--allow-env',
          description: 'Allow environment access',
          args: [
            Arg(
            name: 'allow-env',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-run',
          description: 'Allow running subprocesses',
          args: [
            Arg(
            name: 'allow-run',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--allow-ffi',
          description: 'Allow loading dynamic libraries',
          args: [
            Arg(
            name: 'allow-ffi',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--inspect',
          description: 'Activate inspector on host:port (default: 127.0.0.1:9229)',
          args: [
            Arg(
            name: 'inspect',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--inspect-brk',
          description: 'Activate inspector on host:port and break at start of user script',
          args: [
            Arg(
            name: 'inspect-brk',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Value of \'globalThis.location\' used by some web APIs',
          args: [
            Arg(
            name: 'location',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--v8-flags',
          description: 'Set V8 command line options',
          args: [
            Arg(
            name: 'v8-flags',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Set the random number generator seed',
          args: [
            Arg(
            name: 'seed',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Ignore files',
          args: [
            Arg(
            name: 'ignore',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--fail-fast',
          description: 'Stop after N errors. Defaults to stopping after first failure',
          args: [
            Arg(
            name: 'fail-fast',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Run tests with this string or pattern in the test name',
          args: [
            Arg(
            name: 'filter',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--shuffle',
          description: '(UNSTABLE): Shuffle the order in which the tests are run',
          args: [
            Arg(
            name: 'shuffle',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--coverage',
          description: 'UNSTABLE: Collect coverage profile data into DIR',
          exclusiveOn: ['--inspect', '--inspect-brk'],
          args: [
            Arg(
            name: 'coverage',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-j', '--jobs'],
          description: 'Deprecated: Number of parallel workers, defaults to number of available CPUs when no value is provided. Defaults to 1 when the option is not present',
          args: [
            Arg(
            name: 'jobs',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--no-remote',
          description: 'Do not resolve remote modules'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: '--lock-write',
          description: 'Write lock file (use with --lock)'
        ),
        Option(
          name: '--allow-hrtime',
          description: 'Allow high resolution time measurement'
        ),
        Option(
          name: ['-A', '--allow-all'],
          description: 'Allow all permissions'
        ),
        Option(
          name: '--prompt',
          description: 'Deprecated: Fallback to prompt if required permission wasn\'t passed'
        ),
        Option(
          name: '--no-prompt',
          description: 'Always throw if required permission wasn\'t passed'
        ),
        Option(
          name: '--cached-only',
          description: 'Require that remote dependencies are already cached'
        ),
        Option(
          name: '--enable-testing-features-do-not-use',
          description: 'INTERNAL: Enable internal features used during integration testing'
        ),
        Option(
          name: '--compat',
          description: 'UNSTABLE: Node compatibility mode'
        ),
        Option(
          name: '--no-run',
          description: 'Cache test modules, but don\'t run tests'
        ),
        Option(
          name: '--trace-ops',
          description: 'Enable tracing of async ops. Useful when debugging leaking ops in test, but impacts test execution time'
        ),
        Option(
          name: '--doc',
          description: 'UNSTABLE: type-check code blocks'
        ),
        Option(
          name: '--allow-none',
          description: 'Don\'t return error code if no test files are found'
        ),
        Option(
          name: '--parallel',
          description: 'Run test modules in parallel. Parallelism defaults to the number of available CPUs or the value in the DENO_JOBS environment variable',
          exclusiveOn: ['-j', '--jobs']
        ),
        Option(
          name: '--watch',
          description: 'Watch for file changes and restart automatically',
          exclusiveOn: ['--no-run', '--coverage']
        ),
        Option(
          name: '--no-clear-screen',
          description: 'Do not clear terminal screen when under watch mode'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [

        Arg(
          name: 'files',
          isVariadic: true,
          isOptional: true,
          template: 'filepaths'
        ),
        Arg(
          name: 'script_arg',
          isVariadic: true,
          isOptional: true,
          template: 'filepaths'
        )
      ]
    ),
    Subcommand(
      name: 'types',
      description: 'Print runtime TypeScript declarations',
      options: [

        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade deno executable to given version',
      options: [

        Option(
          name: '--version',
          description: 'The version to upgrade to',
          args: [
            Arg(
            name: 'version',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--output',
          description: 'The path to output the updated version to',
          args: [
            Arg(
            name: 'output',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--dry-run',
          description: 'Perform all checks without replacing old exe'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Replace current exe even if not out-of-date'
        ),
        Option(
          name: '--canary',
          description: 'Upgrade to canary builds'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ]
    ),
    Subcommand(
      name: 'vendor',
      description: 'Vendor remote modules into a local directory',
      options: [

        Option(
          name: '--output',
          description: 'The directory to output the vendored modules to',
          args: [
            Arg(
            name: 'output',
            isOptional: true,
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['-c', '--config'],
          description: 'Specify the configuration file',
          args: [
            Arg(
            name: 'config',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--import-map',
          description: 'Load import map file',
          args: [
            Arg(
            name: 'import-map',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--lock',
          description: 'Check the specified lock file',
          args: [
            Arg(
            name: 'lock',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-r', '--reload'],
          description: 'Reload source code cache (recompile TypeScript)',
          args: [
            Arg(
            name: 'reload',
            isVariadic: true,
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Load certificate authority from PEM encoded file',
          args: [
            Arg(
            name: 'cert',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Forcefully overwrite conflicting files in existing output directory'
        ),
        Option(
          name: '--no-config',
          description: 'Disable automatic loading of the configuration file',
          exclusiveOn: ['-c', '--config']
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'specifiers',
        isVariadic: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Print this message or the help of the given subcommand(s)',
      options: [

        Option(
          name: ['-L', '--log-level'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info')
            ]
          )
          ]
        ),
        Option(
          name: '--unstable',
          description: 'Enable unstable features and APIs'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Suppress diagnostic output'
        )
      ],
      args: [
        Arg(
        name: 'subcommand',
        isOptional: true,
        template: 'help'
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['-L', '--log-level'],
      description: 'Set log level',
      args: [
        Arg(
        name: 'log-level',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'debug'),
          FigSuggestion(name: 'info')
        ]
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help information'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version information'
    ),
    Option(
      name: '--unstable',
      description: 'Enable unstable features and APIs'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Suppress diagnostic output'
    )
  ]
);
