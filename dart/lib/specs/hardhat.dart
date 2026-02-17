// AI-generated from TypeScript source: hardhat.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec hardhatSpec = FigSpec(
  name: 'hardhat',
  description: 'Ethereum development environment',
  options: [
    FigOption(name: ['config'], description: 'A Hardhat config file'),
    FigOption(name: ['--emoji'], description: 'Use emoji in messages'),
    FigOption(
      name: ['--max-memory'],
      description: 'The maximum amount of memory that Hardhat can use',
    ),
    FigOption(
      name: ['--help'],
      description: "Shows the help text or task's help if name is provided",
      args: [FigArg(name: 'task', isOptional: true)],
    ),
    FigOption(name: ['--network'], description: 'The network to connect to'),
    FigOption(name: ['---show-stack-traces'], description: 'Show stack traces'),
    FigOption(
        name: ['--verbose'], description: 'Enables Hardhat verbose logging'),
    FigOption(name: ['--version'], description: "Shows hardhat's version"),
  ],
  subcommands: [
    FigSubcommand(name: 'accounts', description: 'Prints the list of accounts'),
    FigSubcommand(name: 'check', description: 'Check whatever you need'),
    FigSubcommand(
      name: 'clean',
      description: 'Clears the cache and deletes all artifacts',
      options: [
        FigOption(name: ['--global'], description: 'Clear the global cache'),
      ],
    ),
    FigSubcommand(
      name: 'compile',
      description: 'Compiles the entire project, building all artifacts',
      options: [
        FigOption(
          name: ['--force'],
          description: 'Force compilation ignoring cache',
        ),
        FigOption(
          name: ['--quiet'],
          description: 'Makes the compilation process less verbose',
        ),
      ],
    ),
    FigSubcommand(
      name: 'console',
      description: 'Opens a hardhat console',
      options: [
        FigOption(
          name: ['--no-compile'],
          description: "Don't compile before running this task",
        ),
      ],
    ),
    FigSubcommand(
      name: 'flatten',
      description: 'Flattens and prints contracts and their dependencies',
    ),
    FigSubcommand(name: 'help', description: 'Prints this message'),
    FigSubcommand(
      name: 'node',
      description: 'Starts a JSON-RPC server on top of Hardhat Network',
      options: [
        FigOption(
          name: ['--fork'],
          description: 'The URL of the JSON-RPC server to fork from',
        ),
        FigOption(
          name: ['--fork-block-number'],
          description: 'The block number to fork from',
        ),
        FigOption(
          name: ['--hostname'],
          description: 'The host to which to bind to for new connections',
        ),
        FigOption(
          name: ['--port'],
          description:
              'The port on which to listen for new connections (default: 8545)',
        ),
      ],
    ),
    FigSubcommand(
      name: 'run',
      description: 'Runs a user-defined script after compiling the project',
      options: [
        FigOption(
          name: ['--no-compile'],
          description: "Don't compile before running this task",
        ),
      ],
    ),
    FigSubcommand(
      name: 'test',
      description: 'Runs mocha tests',
      options: [
        FigOption(
          name: ['--no-compile'],
          description: "Don't compile before running this task",
        ),
      ],
    ),
  ],
);
