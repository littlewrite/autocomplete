// Auto-generated from TypeScript source: starkli.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `starkli` CLI
final FigSpec starkliSpec = FigSpec(
  name: 'starkli',
  description: 'Starkli, a ⚡ blazing ⚡ fast ⚡ CLI tool for Starknet powered by 🦀 starknet-rs 🦀',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Account management commands',
      subcommands: [

        Subcommand(
          name: 'fetch',
          description: 'Fetch account config from an already deployed account contract',
          args: [
            Arg(
            name: 'ADDRESS',
            description: 'Contract address'
          )
          ],
          options: [

            Option(
              name: '--rpc',
              description: 'Starknet JSON-RPC endpoint',
              args: [
                Arg(
                name: 'RPC'
              )
              ]
            ),
            Option(
              name: '--network',
              description: 'Starknet network',
              args: [
                Arg(
                name: 'NETWORK',
                suggestions: [

                  FigSuggestion(name: 'mainnet'),
                  FigSuggestion(name: 'goerli-1'),
                  FigSuggestion(name: 'goerli-2'),
                  FigSuggestion(name: 'integration')
                ]
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Overwrite the file if it already exists'
            ),
            Option(
              name: '--output',
              description: 'Path to save the account config file',
              args: [
                Arg(
                name: 'OUTPUT',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--log-traffic',
              description: 'Log raw request/response traffic of providers'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help'
            )
          ]
        ),
        Subcommand(
          name: 'deploy',
          description: 'Deploy account contract with a DeployAccount transaction',
          args: [
            Arg(
            name: 'FILE',
            description: 'Path to the account config file',
            template: 'filepaths'
          )
          ],
          options: [

            Option(
              name: '--rpc',
              description: 'Starknet JSON-RPC endpoint',
              args: [
                Arg(
                name: 'RPC'
              )
              ]
            ),
            Option(
              name: '--network',
              description: 'Starknet network',
              args: [
                Arg(
                name: 'NETWORK',
                suggestions: [

                  FigSuggestion(name: 'mainnet'),
                  FigSuggestion(name: 'goerli-1'),
                  FigSuggestion(name: 'goerli-2'),
                  FigSuggestion(name: 'integration')
                ]
              )
              ]
            ),
            Option(
              name: '--keystore',
              description: 'Path to keystore JSON file',
              args: [
                Arg(
                name: 'KEYSTORE',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--keystore-password',
              description: 'Supply keystore password from command line option instead of prompt',
              args: [
                Arg(
                name: 'keystore password'
              )
              ]
            ),
            Option(
              name: '--private-key',
              description: 'Private key in hex in plain text',
              args: [
                Arg(
                name: 'PRIVATE_KEY'
              )
              ]
            ),
            Option(
              name: '--max-fee',
              description: 'Maximum transaction fee in Ether (18 decimals)',
              args: [
                Arg(
                name: 'MAX_FEE'
              )
              ]
            ),
            Option(
              name: '--max-fee-raw',
              description: 'Maximum transaction fee in Wei',
              args: [
                Arg(
                name: 'MAX_FEE_RAW'
              )
              ]
            ),
            Option(
              name: '--estimate-only',
              description: 'Only estimate transaction fee without sending transaction'
            ),
            Option(
              name: '--log-traffic',
              description: 'Log raw request/response traffic of providers'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help'
            )
          ]
        ),
        Subcommand(
          name: 'oz',
          description: 'Create and manage OpenZeppelin account contracts',
          subcommands: [

            Subcommand(
              name: 'init',
              description: 'Create a new account configuration without actually deploying'
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help'
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'block',
      description: 'Get Starknet block',
      args: [
        Arg(
        name: 'BLOCK_ID',
        description: 'Block number, hash, or tag (latest/pending)',
        isOptional: true,
        defaultValue: 'latest'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--full',
          description: 'Fetch full transactions instead of hashes only'
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'block-hash',
      description: 'Get latest block hash',
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'block-number',
      description: 'Get latest block number',
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'block-time',
      description: 'Get Starknet block timestamp only',
      args: [
        Arg(
        name: 'BLOCK_ID',
        description: 'Block number, hash, or tag (latest/pending)',
        isOptional: true,
        defaultValue: 'latest'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--unix',
          description: 'Show block time in Unix timestamp format'
        ),
        Option(
          name: '--rfc2822',
          description: 'Show block time in RFC 2822 format'
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'call',
      description: 'Call contract functions without sending transactions',
      args: [

        Arg(
          name: 'CONTRACT_ADDRESS',
          description: 'Contract address'
        ),
        Arg(
          name: 'SELECTOR',
          description: 'Name of the function being called'
        ),
        Arg(
          name: 'CALLDATA',
          description: 'Raw function call arguments'
        )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'chain-id',
      description: 'Get Starknet network ID',
      args: [
        Arg(
        name: 'BLOCK_ID',
        description: 'Block number, hash, or tag (latest/pending)',
        isOptional: true,
        defaultValue: 'latest'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--no-decode',
          description: 'Do not show the decoded text'
        ),
        Option(
          name: '--dec',
          description: 'Display the decimal instead of hexadecimal representation'
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'class-at',
      description: 'Get contract class deployed at a certain address',
      args: [
        Arg(
        name: 'ADDRESS',
        description: 'Contract address'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'class-by-hash',
      description: 'Get contract class by hash',
      args: [
        Arg(
        name: 'HASH',
        description: 'Class hash'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'class-hash',
      description: 'Calculate class hash from any contract artifacts (Sierra, casm, legacy)',
      args: [
        Arg(
        name: 'FILE',
        description: 'Path to contract artifact file',
        template: 'filepaths'
      )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'class-hash-at',
      description: 'Get contract class hash deployed at a certain address',
      args: [
        Arg(
        name: 'ADDRESS',
        description: 'Contract address'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'completions',
      description: 'Generate shell completions script'
    ),
    Subcommand(
      name: 'declare',
      description: 'Declare a contract class',
      args: [
        Arg(
        name: 'FILE',
        description: 'Path to contract artifact file',
        template: 'filepaths'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--keystore',
          description: 'Path to keystore JSON file',
          args: [
            Arg(
            name: 'KEYSTORE',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--keystore-password',
          description: 'Supply keystore password from command line option instead of prompt',
          args: [
            Arg(
            name: 'KEYSTORE_PASSWORD'
          )
          ]
        ),
        Option(
          name: '--private-key',
          description: 'Private key in hex in plain text',
          args: [
            Arg(
            name: 'PRIVATE_KEY'
          )
          ]
        ),
        Option(
          name: '--compiler-version',
          description: 'Statically-linked Sierra compiler version',
          args: [
            Arg(
            name: 'COMPILER_VERSION',
            suggestions: [

              FigSuggestion(name: '2.0.1')
            ]
          )
          ]
        ),
        Option(
          name: '--casm-hash',
          description: 'Override Sierra compilation and use CASM hash directly',
          args: [
            Arg(
            name: 'CASM_HASH'
          )
          ]
        ),
        Option(
          name: '--account',
          description: 'Path to account config JSON file',
          args: [
            Arg(
            name: 'ACCOUNT',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--max-fee',
          description: 'Maximum transaction fee in Ether (18 decimals)',
          args: [
            Arg(
            name: 'MAX_FEE'
          )
          ]
        ),
        Option(
          name: '--max-fee-raw',
          description: 'Maximum transaction fee in Wei',
          args: [
            Arg(
            name: 'MAX_FEE_RAW'
          )
          ]
        ),
        Option(
          name: '--estimate-only',
          description: 'Only estimate transaction fee without sending transaction'
        ),
        Option(
          name: '--watch',
          description: 'Wait for the transaction to confirm'
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploy contract via the Universal Deployer Contract',
      args: [

        Arg(
          name: 'CLASS_HASH',
          description: 'Class hash'
        ),
        Arg(
          name: 'CTOR_ARGS',
          description: 'Raw constructor arguments'
        )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--keystore',
          description: 'Path to keystore JSON file',
          args: [
            Arg(
            name: 'KEYSTORE',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--keystore-password',
          description: 'Supply keystore password from command line option instead of prompt',
          args: [
            Arg(
            name: 'KEYSTORE_PASSWORD'
          )
          ]
        ),
        Option(
          name: '--private-key',
          description: 'Private key in hex in plain text',
          args: [
            Arg(
            name: 'PRIVATE_KEY'
          )
          ]
        ),
        Option(
          name: '--not-unique',
          description: 'Do not derive contract address from deployer address'
        ),
        Option(
          name: '--account',
          description: 'Path to account config JSON file',
          args: [
            Arg(
            name: 'ACCOUNT',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--max-fee',
          description: 'Maximum transaction fee in Ether (18 decimals)',
          args: [
            Arg(
            name: 'MAX_FEE'
          )
          ]
        ),
        Option(
          name: '--max-fee-raw',
          description: 'Maximum transaction fee in Wei',
          args: [
            Arg(
            name: 'MAX_FEE_RAW'
          )
          ]
        ),
        Option(
          name: '--estimate-only',
          description: 'Only estimate transaction fee without sending transaction'
        ),
        Option(
          name: '--salt',
          description: 'Use the given salt to compute contract deploy address',
          args: [
            Arg(
            name: 'SALT'
          )
          ]
        ),
        Option(
          name: '--watch',
          description: 'Wait for the transaction to confirm'
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'invoke',
      description: 'Send an invoke transaction from an account contract',
      args: [
        Arg(
        name: 'CALLS',
        description: 'One or more contract calls. See documentation for more details'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--keystore',
          description: 'Path to keystore JSON file',
          args: [
            Arg(
            name: 'KEYSTORE',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--keystore-password',
          description: 'Supply keystore password from command line option instead of prompt',
          args: [
            Arg(
            name: 'KEYSTORE_PASSWORD'
          )
          ]
        ),
        Option(
          name: '--private-key',
          description: 'Private key in hex in plain text',
          args: [
            Arg(
            name: 'PRIVATE_KEY'
          )
          ]
        ),
        Option(
          name: '--account',
          description: 'Path to account config JSON file',
          args: [
            Arg(
            name: 'ACCOUNT',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--max-fee',
          description: 'Maximum transaction fee in Ether (18 decimals)',
          args: [
            Arg(
            name: 'MAX_FEE'
          )
          ]
        ),
        Option(
          name: '--max-fee-raw',
          description: 'Maximum transaction fee in Wei',
          args: [
            Arg(
            name: 'MAX_FEE_RAW'
          )
          ]
        ),
        Option(
          name: '--estimate-only',
          description: 'Only estimate transaction fee without sending transaction'
        ),
        Option(
          name: '--watch',
          description: 'Wait for the transaction to confirm'
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'mont',
      description: 'Print the montgomery representation of a field element',
      args: [
        Arg(
        name: 'FELT',
        description: 'Encoded string value in felt, in decimal or hexadecimal representation'
      )
      ],
      options: [

        Option(
          name: '--hex',
          description: 'Emit array elements in hexadecimal format'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'nonce',
      description: 'Get nonce for a certain contract',
      args: [
        Arg(
        name: 'ADDRESS',
        description: 'Contract address'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'parse-cairo-string',
      description: 'Decode string from felt with the Cairo short string representation',
      args: [
        Arg(
        name: 'FELT',
        description: 'Encoded string value in felt, in decimal or hexadecimal representation'
      )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'selector',
      description: 'Calculate selector from name',
      args: [
        Arg(
        name: 'NAME',
        description: 'Selector name'
      )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'signer',
      description: 'Signer management commands',
      subcommands: [

        Subcommand(
          name: 'keystore',
          description: 'Keystore management commands',
          subcommands: [

            Subcommand(
              name: 'new',
              description: 'Randomly generate a new keystore',
              args: [
                Arg(
                name: 'FILE',
                description: 'Path to save the JSON keystore',
                template: 'filepaths'
              )
              ],
              options: [

                Option(
                  name: '--password',
                  description: 'Supply password from command line option instead of prompt',
                  args: [
                    Arg(
                    name: 'PASSWORD'
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'Overwrite the file if it already exists'
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Print help'
                )
              ]
            ),
            Subcommand(
              name: 'from-key',
              description: 'Create a keystore file from an existing private key',
              args: [
                Arg(
                name: 'FILE',
                description: 'Path to save the JSON keystore',
                template: 'filepaths'
              )
              ],
              options: [

                Option(
                  name: '--force',
                  description: 'Overwrite the file if it already exists'
                ),
                Option(
                  name: '--private-key-stdin',
                  description: 'Take the private key from stdin instead of prompt'
                ),
                Option(
                  name: '--password',
                  description: 'Supply password from command line option instead of prompt',
                  args: [
                    Arg(
                    name: 'PASSWORD'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Print help'
                )
              ]
            ),
            Subcommand(
              name: 'inspect',
              description: 'Check the public key of an existing keystore file',
              args: [
                Arg(
                name: 'FILE',
                description: 'Path to the JSON keystore',
                template: 'filepaths'
              )
              ],
              options: [

                Option(
                  name: '--password',
                  description: 'Supply password from command line option instead of prompt',
                  args: [
                    Arg(
                    name: 'PASSWORD'
                  )
                  ]
                ),
                Option(
                  name: '--raw',
                  description: 'Print the public key only'
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Print help'
                )
              ]
            ),
            Subcommand(
              name: 'inspect-private',
              description: 'Check the private key of an existing keystore file',
              args: [
                Arg(
                name: 'FILE',
                description: 'Path to the JSON keystore',
                template: 'filepaths'
              )
              ],
              options: [

                Option(
                  name: '--password',
                  description: 'Supply password from command line option instead of prompt',
                  args: [
                    Arg(
                    name: 'PASSWORD'
                  )
                  ]
                ),
                Option(
                  name: '--raw',
                  description: 'Print the private key only'
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Print help'
                )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help'
            )
          ]
        ),
        Subcommand(
          name: 'gen-keypair',
          description: 'Randomly generate a new key pair'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'state-update',
      description: 'Get state update from a certain block',
      args: [
        Arg(
        name: 'BLOCK_ID',
        description: 'Block number, hash, or tag (latest/pending)',
        isOptional: true,
        defaultValue: 'latest'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'storage',
      description: 'Get storage value for a slot at a contract',
      args: [

        Arg(
          name: 'ADDRESS',
          description: 'Contract address'
        ),
        Arg(
          name: 'KEY',
          description: 'Storage key'
        )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'syncing',
      description: 'Get node syncing status',
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'to-cairo-string',
      description: 'Encode string into felt with the Cairo short string representation',
      args: [
        Arg(
        name: 'TEXT',
        description: 'Text to be encoded in felt'
      )
      ],
      options: [

        Option(
          name: '--dec',
          description: 'Display the encoded value in decimal representation'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'transaction',
      description: 'Get Starknet transaction by hash',
      args: [
        Arg(
        name: 'HASH',
        description: 'Transaction hash'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'transaction-receipt',
      description: 'Get transaction receipt by hash',
      args: [
        Arg(
        name: 'HASH',
        description: 'Transaction hash'
      )
      ],
      options: [

        Option(
          name: '--rpc',
          description: 'Starknet JSON-RPC endpoint',
          args: [
            Arg(
            name: 'RPC'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Starknet network',
          args: [
            Arg(
            name: 'NETWORK',
            suggestions: [

              FigSuggestion(name: 'mainnet'),
              FigSuggestion(name: 'goerli-1'),
              FigSuggestion(name: 'goerli-2'),
              FigSuggestion(name: 'integration')
            ]
          )
          ]
        ),
        Option(
          name: '--log-traffic',
          description: 'Log raw request/response traffic of providers'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    )
  ]
);
