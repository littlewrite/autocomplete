// Auto-generated from TypeScript source: hardhat.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hardhat` CLI
final FigSpec hardhatSpec = FigSpec(
  name: 'hardhat',
  description: 'Ethereum development environment',
  options: [
    Option(
      name: 'config',
      description: 'A Hardhat config file'
    ),
    Option(
      name: '--emoji',
      description: 'Use emoji in messages'
    ),
    Option(
      name: '--max-memory',
      description: 'The maximum amount of memory that Hardhat can use'
    ),
    Option(
      name: '--help',
      description: 'Shows the help text or task\'s help if name is provided',
      args: [
        Arg(
        isOptional: true,
        name: 'tas'
      )
      ]
    ),
    Option(
      name: '--network',
      description: 'The network to connect to'
    ),
    Option(
      name: '---show-stack-traces',
      description: 'Show stack traces'
    ),
    Option(
      name: '--verbose',
      description: 'Enables Hardhat verbose logging'
    ),
    Option(
      name: '--version',
      description: 'Shows hardhat\'s version'
    )
  ],
  subcommands: [
    Subcommand(
      name: 'accounts',
      description: 'Prints the list of accounts'
    ),
    Subcommand(
      name: 'check',
      description: 'Check whatever you need'
    ),
    Subcommand(
      name: 'clean',
      description: 'Clears the cache and deletes all artifacts',
      options: [
        Option(
          name: '--global',
          description: 'Clear the global cache'
        )
      ]
    ),
    Subcommand(
      name: 'compile',
      description: 'Compiles the entire project, building all artifacts',
      options: [
        Option(
          name: '--force',
          description: 'Force compilation ignoring cache'
        ),
        Option(
          name: '--quiet',
          description: 'Makes the compilation process less verbose'
        )
      ]
    ),
    Subcommand(
      name: 'console',
      description: 'Opens a hardhat console',
      options: [
        Option(
          name: '--no-compile',
          description: 'Don\'t compile before running this task'
        )
      ]
    ),
    Subcommand(
      name: 'flatten',
      description: 'Flattens and prints contracts and their dependencies'
    ),
    Subcommand(
      name: 'help',
      description: 'Prints this message'
    ),
    Subcommand(
      name: 'node',
      description: 'Starts a JSON-RPC server on top of Hardhat Network',
      options: [
        Option(
          name: '--fork',
          description: 'The URL of the JSON-RPC server to fork from'
        ),
        Option(
          name: '--fork-block-number',
          description: 'The block number to fork from'
        ),
        Option(
          name: '--hostname',
          description: 'The host to which to bind to for new connections'
        ),
        Option(
          name: '--port',
          description: 'The port on which to listen for new connections (default: 8545)'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Runs a user-defined script after compiling the project',
      options: [
        Option(
          name: '--no-compile',
          description: 'Don\'t compile before running this task'
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Runs mocha tests',
      options: [
        Option(
          name: '--no-compile',
          description: 'Don\'t compile before running this task'
        )
      ]
    )
  ]
);
