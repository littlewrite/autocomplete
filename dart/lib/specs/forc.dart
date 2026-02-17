// Auto-generated from TypeScript source: forc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `forc` CLI
final FigSpec forcSpec = FigSpec(
  name: 'forc',
  description: 'Fuel Orchestrator',
  subcommands: [

    Subcommand(
      name: 'addr2line',
      description: 'Show location and context of an opcode address in its source file',
      options: [

        Option(
          name: '-S',
          description: 'Where to search for the project root'
        ),
        Option(
          name: '-g',
          description: 'Source file mapping in JSON format'
        ),
        Option(
          name: '-c',
          description: 'How many lines of context to show'
        ),
        Option(
          name: '-i',
          description: 'Opcode index'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Compile the current or target project',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-t',
          description: 'Terse mode. Limited warning and error output'
        ),
        Option(
          name: '-o',
          description: 'If set, outputs a binary file representing the script bytes'
        ),
        Option(
          name: '-g',
          description: 'If set, outputs source file mapping in JSON format'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--offline',
          isOptional: true
        ),
        Arg(
          name: '--output-directory',
          isOptional: true
        ),
        Arg(
          name: '--locked',
          isOptional: true
        ),
        Arg(
          name: '--json-abi-with-callpaths',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        ),
        Arg(
          name: '--ast',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph-url-format',
          isOptional: true
        ),
        Arg(
          name: '--finalized-asm',
          isOptional: true
        ),
        Arg(
          name: '--intermediate-asm',
          isOptional: true
        ),
        Arg(
          name: '--ir',
          isOptional: true
        ),
        Arg(
          name: '--time-phases',
          isOptional: true
        ),
        Arg(
          name: '--reverse-order',
          isOptional: true
        ),
        Arg(
          name: '--metrics-outfile',
          isOptional: true
        ),
        Arg(
          name: '--json-abi',
          isOptional: true
        ),
        Arg(
          name: '--json-storage-slots',
          isOptional: true
        ),
        Arg(
          name: '--build-profile',
          isOptional: true
        ),
        Arg(
          name: '--release',
          isOptional: true
        ),
        Arg(
          name: '--error-on-warnings',
          isOptional: true
        ),
        Arg(
          name: '--build-target',
          isOptional: true,
          suggestions: [

            FigSuggestion(
              name: 'fuel',
              description: ''
            ),
            FigSuggestion(
              name: 'evm',
              description: ''
            ),
            FigSuggestion(
              name: 'midenvm',
              description: ''
            )
          ]
        ),
        Arg(
          name: '--tests',
          isOptional: true
        ),
        Arg(
          name: '--experimental-new-encoding',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Check the current or target project and all of its dependencies for errors',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-t',
          description: 'Terse mode. Limited warning and error output'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: 'build-target',
          isOptional: true,
          suggestions: [

            FigSuggestion(
              name: 'fuel',
              description: ''
            ),
            FigSuggestion(
              name: 'evm',
              description: ''
            ),
            FigSuggestion(
              name: 'midenvm',
              description: ''
            )
          ]
        ),
        Arg(
          name: '--offline-mode',
          isOptional: true
        ),
        Arg(
          name: '--locked',
          isOptional: true
        ),
        Arg(
          name: '--disable-tests',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'clean',
      description: 'Removes the default forc compiler output artifact directory, i.e. `<project-name>/out`',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'completions',
      description: 'Generate tab-completion scripts for your shell',
      options: [

        Option(
          name: '-T',
          description: 'Specify shell to enable tab-completion for',
          args: [
            Arg(
            name: '--target',
            isOptional: true,
            suggestions: [

              FigSuggestion(
                name: 'bash',
                description: 'Bourne Again SHell (bash)'
              ),
              FigSuggestion(
                name: 'elvish',
                description: 'Elvish shell'
              ),
              FigSuggestion(
                name: 'fish',
                description: 'Friendly Interactive SHell (fish)'
              ),
              FigSuggestion(
                name: 'power-shell',
                description: 'PowerShell'
              ),
              FigSuggestion(
                name: 'zsh',
                description: 'Z SHell (zsh)'
              ),
              FigSuggestion(
                name: 'fig',
                description: 'Fig'
              )
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'new',
      description: 'Create a new Forc project at `<path>`',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--contract',
          isOptional: true
        ),
        Arg(
          name: '--script',
          isOptional: true
        ),
        Arg(
          name: '--predicate',
          isOptional: true
        ),
        Arg(
          name: '--library',
          isOptional: true
        ),
        Arg(
          name: '--workspace',
          isOptional: true
        ),
        Arg(
          name: '--name',
          isOptional: true
        ),
        Arg(
          name: 'path',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Create a new Forc project in an existing directory',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--path',
          isOptional: true
        ),
        Arg(
          name: '--contract',
          isOptional: true
        ),
        Arg(
          name: '--script',
          isOptional: true
        ),
        Arg(
          name: '--predicate',
          isOptional: true
        ),
        Arg(
          name: '--library',
          isOptional: true
        ),
        Arg(
          name: '--workspace',
          isOptional: true
        ),
        Arg(
          name: '--name',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'parse-bytecode',
      description: 'Parse bytecode file into a debug format',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: 'file-path',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Run the Sway unit tests for the current project',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-t',
          description: 'Terse mode. Limited warning and error output'
        ),
        Option(
          name: '-o',
          description: 'If set, outputs a binary file representing the script bytes'
        ),
        Option(
          name: '-g',
          description: 'If set, outputs source file mapping in JSON format'
        ),
        Option(
          name: '-r',
          description: 'Pretty-print the logs emiited from tests'
        ),
        Option(
          name: '-l',
          description: 'Print `Log` and `LogData` receipts for tests'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--offline',
          isOptional: true
        ),
        Arg(
          name: '--output-directory',
          isOptional: true
        ),
        Arg(
          name: '--locked',
          isOptional: true
        ),
        Arg(
          name: '--json-abi-with-callpaths',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        ),
        Arg(
          name: '--ast',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph-url-format',
          isOptional: true
        ),
        Arg(
          name: '--finalized-asm',
          isOptional: true
        ),
        Arg(
          name: '--intermediate-asm',
          isOptional: true
        ),
        Arg(
          name: '--ir',
          isOptional: true
        ),
        Arg(
          name: '--time-phases',
          isOptional: true
        ),
        Arg(
          name: '--reverse-order',
          isOptional: true
        ),
        Arg(
          name: '--metrics-outfile',
          isOptional: true
        ),
        Arg(
          name: '--json-abi',
          isOptional: true
        ),
        Arg(
          name: '--json-storage-slots',
          isOptional: true
        ),
        Arg(
          name: '--build-profile',
          isOptional: true
        ),
        Arg(
          name: '--release',
          isOptional: true
        ),
        Arg(
          name: '--error-on-warnings',
          isOptional: true
        ),
        Arg(
          name: '--build-target',
          isOptional: true,
          suggestions: [

            FigSuggestion(
              name: 'fuel',
              description: ''
            ),
            FigSuggestion(
              name: 'evm',
              description: ''
            ),
            FigSuggestion(
              name: 'midenvm',
              description: ''
            )
          ]
        ),
        Arg(
          name: 'filter',
          isOptional: true
        ),
        Arg(
          name: '--filter-exact',
          isOptional: true
        ),
        Arg(
          name: '--test-threads',
          isOptional: true
        ),
        Arg(
          name: '--experimental-new-encoding',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update dependencies in the Forc dependencies directory',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-d',
          description: 'Dependency to be updated. If not set, all dependencies will be updated'
        ),
        Option(
          name: '-c',
          description: 'Checks if the dependencies have newer versions. Won\'t actually perform the update, will output which ones are up-to-date and outdated'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'plugins',
      description: 'List all forc plugins',
      options: [

        Option(
          name: '-p',
          description: 'Prints the absolute path to each discovered plugin'
        ),
        Option(
          name: '-d',
          description: 'Prints the long description associated with each listed plugin'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'template',
      description: 'Create a new Forc project from a git template',
      options: [

        Option(
          name: '-u',
          description: 'The template url, should be a git repo'
        ),
        Option(
          name: '-t',
          description: 'The name of the template that needs to be fetched and used from git repo provided'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: 'project-name',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'contract-id',
      description: 'Determine contract-id for a contract. For workspaces outputs all contract ids in the workspace',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-t',
          description: 'Terse mode. Limited warning and error output'
        ),
        Option(
          name: '-o',
          description: 'If set, outputs a binary file representing the script bytes'
        ),
        Option(
          name: '-g',
          description: 'If set, outputs source file mapping in JSON format'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--offline',
          isOptional: true
        ),
        Arg(
          name: '--output-directory',
          isOptional: true
        ),
        Arg(
          name: '--locked',
          isOptional: true
        ),
        Arg(
          name: '--json-abi-with-callpaths',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        ),
        Arg(
          name: '--json-abi',
          isOptional: true
        ),
        Arg(
          name: '--json-storage-slots',
          isOptional: true
        ),
        Arg(
          name: '--ast',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph-url-format',
          isOptional: true
        ),
        Arg(
          name: '--finalized-asm',
          isOptional: true
        ),
        Arg(
          name: '--intermediate-asm',
          isOptional: true
        ),
        Arg(
          name: '--ir',
          isOptional: true
        ),
        Arg(
          name: '--time-phases',
          isOptional: true
        ),
        Arg(
          name: '--reverse-order',
          isOptional: true
        ),
        Arg(
          name: '--metrics-outfile',
          isOptional: true
        ),
        Arg(
          name: '--build-profile',
          isOptional: true
        ),
        Arg(
          name: '--release',
          isOptional: true
        ),
        Arg(
          name: '--error-on-warnings',
          isOptional: true
        ),
        Arg(
          name: '--salt',
          isOptional: true
        ),
        Arg(
          name: '--experimental-new-encoding',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'predicate-root',
      description: 'Determine predicate-root for a predicate. For workspaces outputs all predicate roots in the workspace',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-t',
          description: 'Terse mode. Limited warning and error output'
        ),
        Option(
          name: '-o',
          description: 'If set, outputs a binary file representing the script bytes'
        ),
        Option(
          name: '-g',
          description: 'If set, outputs source file mapping in JSON format'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--offline',
          isOptional: true
        ),
        Arg(
          name: '--output-directory',
          isOptional: true
        ),
        Arg(
          name: '--locked',
          isOptional: true
        ),
        Arg(
          name: '--json-abi-with-callpaths',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        ),
        Arg(
          name: '--json-abi',
          isOptional: true
        ),
        Arg(
          name: '--json-storage-slots',
          isOptional: true
        ),
        Arg(
          name: '--ast',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph-url-format',
          isOptional: true
        ),
        Arg(
          name: '--finalized-asm',
          isOptional: true
        ),
        Arg(
          name: '--intermediate-asm',
          isOptional: true
        ),
        Arg(
          name: '--ir',
          isOptional: true
        ),
        Arg(
          name: '--time-phases',
          isOptional: true
        ),
        Arg(
          name: '--reverse-order',
          isOptional: true
        ),
        Arg(
          name: '--metrics-outfile',
          isOptional: true
        ),
        Arg(
          name: '--build-profile',
          isOptional: true
        ),
        Arg(
          name: '--release',
          isOptional: true
        ),
        Arg(
          name: '--error-on-warnings',
          isOptional: true
        ),
        Arg(
          name: '--experimental-new-encoding',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'debug',
      options: [

        Option(
          name: '-s',
          description: 'Start the DAP server'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: 'api-url',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run script project. Crafts a script transaction then sends it to a running node',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-t',
          description: 'Terse mode. Limited warning and error output'
        ),
        Option(
          name: '-o',
          description: 'If set, outputs a binary file representing the script bytes'
        ),
        Option(
          name: '-g',
          description: 'If set, outputs source file mapping in JSON format'
        ),
        Option(
          name: '-d',
          description: 'Hex string of data to input to script'
        ),
        Option(
          name: '-r',
          description: 'Pretty-print the outputs from the node'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--offline',
          isOptional: true
        ),
        Arg(
          name: '--output-directory',
          isOptional: true
        ),
        Arg(
          name: '--locked',
          isOptional: true
        ),
        Arg(
          name: '--json-abi-with-callpaths',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        ),
        Arg(
          name: '--json-abi',
          isOptional: true
        ),
        Arg(
          name: '--json-storage-slots',
          isOptional: true
        ),
        Arg(
          name: '--ast',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph-url-format',
          isOptional: true
        ),
        Arg(
          name: '--finalized-asm',
          isOptional: true
        ),
        Arg(
          name: '--intermediate-asm',
          isOptional: true
        ),
        Arg(
          name: '--ir',
          isOptional: true
        ),
        Arg(
          name: '--time-phases',
          isOptional: true
        ),
        Arg(
          name: '--reverse-order',
          isOptional: true
        ),
        Arg(
          name: '--metrics-outfile',
          isOptional: true
        ),
        Arg(
          name: '--price',
          isOptional: true
        ),
        Arg(
          name: '--script-gas-limit',
          isOptional: true
        ),
        Arg(
          name: '--maturity',
          isOptional: true
        ),
        Arg(
          name: '--build-profile',
          isOptional: true
        ),
        Arg(
          name: '--release',
          isOptional: true
        ),
        Arg(
          name: '--error-on-warnings',
          isOptional: true
        ),
        Arg(
          name: '--node-url',
          isOptional: true
        ),
        Arg(
          name: '--target',
          isOptional: true
        ),
        Arg(
          name: '--testnet',
          isOptional: true
        ),
        Arg(
          name: '--dry-run',
          isOptional: true
        ),
        Arg(
          name: '--contract',
          isOptional: true
        ),
        Arg(
          name: '--simulate',
          isOptional: true
        ),
        Arg(
          name: '--default-signer',
          isOptional: true
        ),
        Arg(
          name: '--unsigned',
          isOptional: true
        ),
        Arg(
          name: 'signing-key',
          isOptional: true
        ),
        Arg(
          name: '--manual-signing',
          isOptional: true
        ),
        Arg(
          name: '--args',
          isOptional: true
        ),
        Arg(
          name: '--experimental-new-encoding',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'crypto',
      description: 'Forc plugin for hashing arbitrary data',
      subcommands: [

        Subcommand(
          name: 'keccak256',
          description: 'Hashes the argument or file with this algorithm',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [

            Arg(
              name: '--help',
              isOptional: true
            ),
            Arg(
              name: '--version',
              isOptional: true
            ),
            Arg(
              name: 'content-or-filepath',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'sha256',
          description: 'Hashes the argument or file with this algorithm',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [

            Arg(
              name: '--help',
              isOptional: true
            ),
            Arg(
              name: '--version',
              isOptional: true
            ),
            Arg(
              name: 'content-or-filepath',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'address',
          description: 'Converts an address to another format',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [

            Arg(
              name: '--help',
              isOptional: true
            ),
            Arg(
              name: '--version',
              isOptional: true
            ),
            Arg(
              name: 'address',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'get-public-key',
          description: 'Get the public key from a message and its signature',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [

            Arg(
              name: '--help',
              isOptional: true
            ),
            Arg(
              name: '--version',
              isOptional: true
            ),
            Arg(
              name: 'signature',
              isOptional: true
            ),
            Arg(
              name: 'message',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'new-key',
          description: 'Creates a new key for use with fuel-core',
          options: [

            Option(
              name: '-k',
              description: 'Key type to generate. It can either be `block-production` or `peering`',
              args: [
                Arg(
                name: '--key-type',
                isOptional: true,
                suggestions: [

                  FigSuggestion(
                    name: 'block-production',
                    description: ''
                  ),
                  FigSuggestion(
                    name: 'peering',
                    description: ''
                  )
                ]
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [

            Arg(
              name: '--help',
              isOptional: true
            ),
            Arg(
              name: '--version',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'parse-secret',
          description: 'Parses a private key to view the associated public key',
          options: [

            Option(
              name: '-k',
              description: 'Key type to generate. It can either be `block-production` or `peering`',
              args: [
                Arg(
                name: '--key-type',
                isOptional: true,
                suggestions: [

                  FigSuggestion(
                    name: 'block-production',
                    description: ''
                  ),
                  FigSuggestion(
                    name: 'peering',
                    description: ''
                  )
                ]
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [

            Arg(
              name: '--help',
              isOptional: true
            ),
            Arg(
              name: '--version',
              isOptional: true
            ),
            Arg(
              name: 'secret',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Print this message or the help of the given subcommand(s)',
          args: [
            Arg(
            name: 'subcommand',
            isOptional: true
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'doc',
      description: 'Forc plugin for building a Sway package\'s documentation',
      options: [

        Option(
          name: '-s',
          description: 'Silent mode. Don\'t output any warnings or errors to the command line'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--manifest-path',
          isOptional: true
        ),
        Arg(
          name: '--document-private-items',
          isOptional: true
        ),
        Arg(
          name: '--open',
          isOptional: true
        ),
        Arg(
          name: '--offline',
          isOptional: true
        ),
        Arg(
          name: '--locked',
          isOptional: true
        ),
        Arg(
          name: '--no-deps',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'fmt',
      description: 'Forc plugin for running the Sway code formatter',
      options: [

        Option(
          name: '-c',
          description: 'Run in \'check\' mode'
        ),
        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-f',
          description: 'Formats a single .sw file with the default settings. If not specified, current working directory will be formatted using a Forc.toml configuration'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'submit',
      description: 'A `forc` plugin for interacting with a Fuel node',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--node-url',
          isOptional: true
        ),
        Arg(
          name: '--target',
          isOptional: true
        ),
        Arg(
          name: '--testnet',
          isOptional: true
        ),
        Arg(
          name: '--await',
          isOptional: true
        ),
        Arg(
          name: '--json',
          isOptional: true
        ),
        Arg(
          name: 'tx-path',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Build output file options',
      options: [

        Option(
          name: '-p',
          description: 'Path to the project, if not specified, current working directory will be used'
        ),
        Option(
          name: '-t',
          description: 'Terse mode. Limited warning and error output'
        ),
        Option(
          name: '-o',
          description: 'If set, outputs a binary file representing the script bytes'
        ),
        Option(
          name: '-g',
          description: 'If set, outputs source file mapping in JSON format'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: '--help',
          isOptional: true
        ),
        Arg(
          name: '--version',
          isOptional: true
        ),
        Arg(
          name: '--offline',
          isOptional: true
        ),
        Arg(
          name: '--output-directory',
          isOptional: true
        ),
        Arg(
          name: '--locked',
          isOptional: true
        ),
        Arg(
          name: '--json-abi-with-callpaths',
          isOptional: true
        ),
        Arg(
          name: '--ipfs-node',
          isOptional: true
        ),
        Arg(
          name: '--json-abi',
          isOptional: true
        ),
        Arg(
          name: '--json-storage-slots',
          isOptional: true
        ),
        Arg(
          name: '--ast',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph',
          isOptional: true
        ),
        Arg(
          name: '--dca-graph-url-format',
          isOptional: true
        ),
        Arg(
          name: '--finalized-asm',
          isOptional: true
        ),
        Arg(
          name: '--intermediate-asm',
          isOptional: true
        ),
        Arg(
          name: '--ir',
          isOptional: true
        ),
        Arg(
          name: '--time-phases',
          isOptional: true
        ),
        Arg(
          name: '--reverse-order',
          isOptional: true
        ),
        Arg(
          name: '--metrics-outfile',
          isOptional: true
        ),
        Arg(
          name: '--price',
          isOptional: true
        ),
        Arg(
          name: '--script-gas-limit',
          isOptional: true
        ),
        Arg(
          name: '--maturity',
          isOptional: true
        ),
        Arg(
          name: '--node-url',
          isOptional: true
        ),
        Arg(
          name: '--target',
          isOptional: true
        ),
        Arg(
          name: '--testnet',
          isOptional: true
        ),
        Arg(
          name: '--salt',
          isOptional: true
        ),
        Arg(
          name: '--default-salt',
          isOptional: true
        ),
        Arg(
          name: '--build-profile',
          isOptional: true
        ),
        Arg(
          name: '--default-signer',
          isOptional: true
        ),
        Arg(
          name: '--unsigned',
          isOptional: true
        ),
        Arg(
          name: 'signing-key',
          isOptional: true
        ),
        Arg(
          name: '--manual-signing',
          isOptional: true
        ),
        Arg(
          name: '--JSON_FILE_PATH',
          isOptional: true
        ),
        Arg(
          name: '--experimental-new-encoding',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Print this message or the help of the given subcommand(s)',
      args: [
        Arg(
        name: 'subcommand',
        isOptional: true
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
      name: '-v',
      description: 'Use verbose output'
    ),
    Option(
      name: '-s',
      description: 'Silence all output'
    ),
    Option(
      name: '-L',
      description: 'Set the log level'
    )
  ],
  args: [

    Arg(
      name: '--help',
      isOptional: true
    ),
    Arg(
      name: '--version',
      isOptional: true
    )
  ]
);
