// Auto-generated from TypeScript source: ganache-cli.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ganache-cli` CLI
final FigSpec ganacheCliSpec = FigSpec(
  name: 'ganache-cli',
  description: 'Fast Ethereum RPC client',
  subcommands: [
    Subcommand(
      name: 'forkCacheSize',
      description: 'The maximum size, in bytes, of the in-memory cache for queries on a chain fork. Defaults to 1_073_741_824 bytes (1 gigabyte)',
      args: [
        Arg(
        name: 'numbe'
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['-a', '--accounts'],
      description: 'Specify the number of accounts to generate at startup',
      args: [
        Arg(
        name: 'numbe'
      )
      ]
    ),
    Option(
      name: ['-e', '--defaultBalanceEther'],
      description: 'Amount of ether to assign each test account. Default is 100',
      args: [
        Arg(
        name: 'number',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: ['-b', '--blockTime'],
      description: 'Specify blockTime in seconds for automatic mining. If you don\'t specify this flag, ganache will instantly mine a new block for every transaction',
      args: [
        Arg(
        name: 'second'
      )
      ]
    ),
    Option(
      name: ['-d', '--deterministic'],
      description: 'Generate deterministic addresses based on a pre-defined mnemonic'
    ),
    Option(
      name: ['-n', '--secure'],
      description: 'Lock available accounts by default (good for third party transaction signing)'
    ),
    Option(
      name: ['-m', '--mnemonic'],
      description: 'Use a bip39 mnemonic phrase for generating a PRNG seed, which is in turn used for hierarchical deterministic (HD) account generation'
    ),
    Option(
      name: ['-p', '--port'],
      description: 'Port number to listen on. Defaults to 8545',
      args: [
        Arg(
        name: 'port numbe'
      )
      ]
    ),
    Option(
      name: ['-h', '--host'],
      description: 'Hostname to listen on. Defaults to 127.0.0.1 (defaults to 0.0.0.0 for Docker instances of ganache-cli)',
      args: [
        Arg(
        name: 'Hostnam'
      )
      ]
    ),
    Option(
      name: ['-s', '--seed'],
      description: 'Use arbitrary data to generate the HD wallet mnemonic to be used'
    ),
    Option(
      name: ['-g', '--gasPrice'],
      description: 'The price of gas in wei (defaults to 20000000000)',
      args: [
        Arg(
        name: 'pric'
      )
      ]
    ),
    Option(
      name: ['-l', '--gasLimit'],
      description: 'The block gas limit (defaults to 0x6691b7)',
      args: [
        Arg(
        name: 'limi'
      )
      ]
    ),
    Option(
      name: '--callGasLimit',
      description: 'Sets the transaction gas limit for eth_call and eth_estimateGas calls',
      args: [
        Arg(
        name: 'limi'
      )
      ]
    ),
    Option(
      name: ['-k', '--hardfork'],
      description: 'Allows users to specify which hardfork should be used',
      args: [
        Arg(
        name: 'hardfork',
        suggestions: [
          FigSuggestion(name: 'byzantium'),
          FigSuggestion(name: 'constantinople'),
          FigSuggestion(name: 'petersburg'),
          FigSuggestion(name: 'istanbul'),
          FigSuggestion(name: 'muirGlacier')
        ]
      )
      ]
    ),
    Option(
      name: ['-f', '--fork'],
      description: 'Fork from another currently running Ethereum client at a given block. Input should be the HTTP location and port of the other client',
      args: [
        Arg(
        name: 'HTTP location & por'
      )
      ]
    ),
    Option(
      name: ['-i', '--networkId'],
      description: 'Specify the network id ganache-cli will use to identify itself (defaults to the current time or the network id of the forked blockchain if configured)',
      args: [
        Arg(
        name: 'Network I'
      )
      ]
    ),
    Option(
      name: '--chainId',
      description: 'Specify the Chain ID ganache-cli will use for eth_chainId RPC and the CHAINID opcode',
      args: [
        Arg(
        name: 'Chain I'
      )
      ]
    ),
    Option(
      name: '--db',
      description: 'Specify a path to a directory to save the chain database. If a database already exists, ganache-cli will initialize that chain instead of creating a new one',
      args: [
        Arg(
        name: 'folder',
        template: 'folder'
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Output VM opcodes for debugging'
    ),
    Option(
      name: '--mem',
      description: 'Output ganache-cli memory usage statistics. This replaces normal output'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Run ganache-cli without any logs'
    ),
    Option(
      name: ['-?', '--help'],
      description: 'Display help information'
    ),
    Option(
      name: '--version',
      description: 'Display the version of ganache-cli'
    ),
    Option(
      name: ['--account_keys_path', '--acctKeys'],
      description: 'Specifies a file to save accounts and private keys to, for testing',
      args: [
        Arg(
        name: 'file',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--noVMErrorsOnRPCResponse',
      description: 'Do not transmit transaction failures as RPC errors'
    ),
    Option(
      name: '--allowUnlimitedContractSize',
      description: 'Allows unlimited contract sizes while debugging'
    ),
    Option(
      name: '--keepAliveTimeout',
      description: 'Sets the HTTP server\'s keepAliveTimeout in milliseconds',
      args: [
        Arg(
        name: 'timeou'
      )
      ]
    ),
    Option(
      name: ['-t', '--time'],
      description: 'Date (ISO 8601) that the first block should start',
      args: [
        Arg(
        name: 'dat'
      )
      ]
    ),
    Option(
      name: '--account',
      description: 'Specify any number of times passing arbitrary private keys and their associated balances to generate initial addresses',
      args: [
        Arg(
        name: '<privatekey>, balance'
      )
      ]
    ),
    Option(
      name: ['-u', '--unlock'],
      description: 'Specify any number of times passing either an address or an account index to unlock specific accounts',
      args: [
        Arg(
        name: 'address or account index'
      )
      ]
    )
  ]
);
