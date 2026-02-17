// Auto-generated from TypeScript source: truffle.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<FigSuggestion> truffleCommands = [

  FigSuggestion(
    name: 'build'
  ),
  FigSuggestion(
    name: 'compile'
  ),
  FigSuggestion(
    name: 'config'
  ),
  FigSuggestion(
    name: 'console'
  ),
  FigSuggestion(
    name: 'create'
  ),
  FigSuggestion(
    name: 'debug'
  ),
  FigSuggestion(
    name: 'deploy'
  ),
  FigSuggestion(
    name: 'develop'
  ),
  FigSuggestion(
    name: 'exec'
  ),
  FigSuggestion(
    name: 'help'
  ),
  FigSuggestion(
    name: 'init'
  ),
  FigSuggestion(
    name: 'install'
  ),
  FigSuggestion(
    name: 'networks'
  ),
  FigSuggestion(
    name: 'obtain'
  ),
  FigSuggestion(
    name: 'opcode'
  ),
  FigSuggestion(
    name: 'publish'
  ),
  FigSuggestion(
    name: 'run'
  ),
  FigSuggestion(
    name: 'version'
  ),
  FigSuggestion(
    name: 'watch'
  ),
  FigSuggestion(
    name: 'preserve'
  ),
  FigSuggestion(
    name: 'migrate'
  ),
  FigSuggestion(
    name: 'unbox'
  ),
  FigSuggestion(
    name: 'test'
  )
];

/// Completion spec for `truffle` CLI
final FigSpec truffleSpec = FigSpec(
  name: 'truffle',
  description: 'A world class development environment, testing framework and asset pipeline for blockchains using the Ethereum Virtual Machine (EVM), aiming to make life as a developer easier',
  subcommands: [

    Subcommand(
      name: 'build',
      description: 'Execute build pipeline (if configuration present)'
    ),
    Subcommand(
      name: 'compile',
      description: 'Compile contract source files',
      options: [

        Option(
          name: '--list',
          description: 'List all recent stable releases from solc-bin. If filter is specified then it will display only that type of release or docker tags',
          args: [
            Arg(
            name: 'filter',
            description: 'The filter parameter must be one of the following: prereleases, releases, latestRelease or docker',
            suggestions: [

              FigSuggestion(
                name: 'prereleases'
              ),
              FigSuggestion(
                name: 'releases'
              ),
              FigSuggestion(
                name: 'latestRelease'
              ),
              FigSuggestion(
                name: 'docker'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--all',
          description: 'Compile all contracts instead of only the contracts changed since last compile'
        ),
        Option(
          name: '--quiet',
          description: 'Suppress all compilation output'
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Set user-level configuration options',
      subcommands: [

        Subcommand(
          name: 'get',
          description: 'Get a Truffle configuration option value',
          args: [
            Arg(
            name: 'key'
          )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set a Truffle configuration option value',
          args: [

            Arg(
              name: 'key'
            ),
            Arg(
              name: 'value-for-set'
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--enable-analytics',
          description: 'Enable Truffle to send usage data to Google Analytics',
          exclusiveOn: ['--disable-analytics']
        ),
        Option(
          name: '--disable-analytics',
          description: 'Disable Truffle\'s ability to send usage data to Google Analytics',
          exclusiveOn: ['--enable-analytics']
        )
      ]
    ),
    Subcommand(
      name: 'console',
      description: 'Run a console with contract abstractions and commands available',
      options: [

        Option(
          name: '--network',
          description: 'Specify the network to use',
          args: [
            Arg(
            name: 'name',
            description: 'Network name must exist in the configuration'
          )
          ]
        ),
        Option(
          name: '--verbose-rpc',
          description: 'Log communication between Truffle and the Ethereum client'
        ),
        Option(
          name: ['--require', '-r'],
          description: 'Preload console environment from required JavaScript file',
          args: [
            Arg(
            name: 'file',
            description: 'The default export must be an object with named keys that will be used to populate the console environment. For example, if your JavaScript is module.exports = { desert: "yes please!" } then breakfast will be available in the console with the value "yes please!."',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--require-none',
          description: 'Do not load any user-defined JavaScript into the console environment. This option takes precedence over --require, -r, and values provided for console.require in your project\'s truffle-config.js'
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Helper to create new contracts, migrations and tests',
      args: [

        Arg(
          name: 'artifact_type',
          description: 'Create a new artifact where artifact_type is one of the following: contract, migration, test or all. The new artifact is created along with one(or all) of the followingfiles: `contracts/ArtifactName.sol`, `migrations/####_artifact_name.js` or`tests/artifact_name.js`. (required)',
          suggestions: [

            FigSuggestion(
              name: 'contract'
            ),
            FigSuggestion(
              name: 'migration'
            ),
            FigSuggestion(
              name: 'test'
            ),
            FigSuggestion(
              name: 'all'
            )
          ]
        ),
        Arg(
          name: 'ArtifactName',
          description: 'Name of new artifact. (required)'
        )
      ]
    ),
    Subcommand(
      name: 'debug',
      description: 'Interactively debug any transaction on the blockchain',
      args: [
        Arg(
        name: 'transaction_hash',
        isOptional: true,
        description: 'Transaction ID to use for debugging. You can omit this to simply start the debugger and then load a transaction later'
      )
      ],
      options: [

        Option(
          name: '--network',
          description: 'The network to connect to',
          args: [
            Arg(
            name: 'network'
          )
          ]
        ),
        Option(
          name: ['--fetch-external', '-x'],
          description: 'Allows the debugger to download source from source verification services to debug transactions involving external contracts. When used, a transaction hash is required. May be abbreviated -x'
        ),
        Option(
          name: '--compile-tests',
          description: 'Allows the debugger to compile Solidity test contracts. Implies --compile-all',
          exclusiveOn: ['--compile-all', '--compile-none']
        ),
        Option(
          name: '--compile-all',
          description: 'Forces the debugger to recompile all contracts, even when it would otherwise judge doing so unnecessary. Compilation results are not saved',
          exclusiveOn: ['--compile-tests', '--compile-none']
        ),
        Option(
          name: '--compile-none',
          description: 'Forces the debugger not to recompile contracts, even when it would otherwise judge it necessary. This option is dangerous and may cause errors. Please only use this if you are sure a recompilation is not necessary',
          exclusiveOn: ['--compile-tests', '--compile-all']
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Alias for migrate. See migrate for details'
    ),
    Subcommand(
      name: 'develop',
      description: 'Open a console with a development blockchaine',
      options: [

        Option(
          name: '--log',
          description: 'Start/Connect to a Truffle develop session and log all RPC activity. See the Log RPC Activity docs for more information about using this option',
          args: [
            Arg(
            name: 'network'
          )
          ]
        ),
        Option(
          name: ['--require', '-r'],
          description: 'Preload console environment from required JavaScript file',
          args: [
            Arg(
            name: 'file',
            description: 'The default export must be an object with named keys that will be used to populate the console environment. For example, if your JavaScript is module.exports = { desert: "yes please!" } then breakfast will be available in the console with the value "yes please!."',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--require-none',
          description: 'Do not load any user-defined JavaScript into the console environment. This option takes precedence over --require, -r, and values provided for console.require in your project\'s truffle-config.js'
        )
      ]
    ),
    Subcommand(
      name: 'exec',
      description: 'Execute a JS module within the Truffle environment',
      args: [
        Arg(
        name: 'script.js',
        description: 'JavaScript file to be executed. Can include path information if the script does not exist in the current directory. (required)',
        template: 'filepaths'
      )
      ],
      options: [

        Option(
          name: '--network',
          description: 'Specify the network to use, using artifacts specific to that network',
          args: [
            Arg(
            name: 'name',
            description: 'Network name must exist in the configuration'
          )
          ]
        ),
        Option(
          name: '--compile',
          description: 'Compile contracts before executing the script'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display a list of all commands or information about a specific command',
      args: [
        Arg(
        name: 'command',
        description: 'Display usage information about the specified command',
        suggestions: truffleCommands
      )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize new and empty Ethereum project',
      options: [

        Option(
          name: '--force',
          description: 'Initialize project regardless of the current working directory\'s state. Be careful, this could overwrite existing files that have name conflicts',
          isDangerous: true
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install a package from the Ethereum Package Registry',
      args: [

        Arg(
          name: 'package_name',
          description: 'Name of the package as listed in the Ethereum Package Registry. (required)'
        ),
        Arg(
          name: '@version',
          description: 'When specified, will install a specific version of the package, otherwise will install the latest version'
        )
      ]
    ),
    Subcommand(
      name: 'networks',
      description: 'Show addresses for deployed contracts on each network',
      options: [

        Option(
          name: '--clean',
          description: 'Remove all network artifacts that aren\'t associated with a named network'
        )
      ]
    ),
    Subcommand(
      name: 'obtain',
      description: 'Fetch and cache a specified compiler',
      options: [

        Option(
          name: '--solc',
          description: 'Download and cache a version of the solc compiler. (required)',
          args: [
            Arg(
            name: 'version'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'opcode',
      description: 'Print the compiled opcodes for a given contract',
      args: [
        Arg(
        name: 'contract_name',
        description: 'Name of the contract to print opcodes for. Must be a contract name, not a file name. (required)'
      )
      ]
    ),
    Subcommand(
      name: 'publish',
      description: 'Publish a package to the Ethereum Package Registry'
    ),
    Subcommand(
      name: 'run',
      description: 'Run a third-party plugin command',
      args: [
        Arg(
        name: 'command',
        description: 'Name of a command defined by an installed plugin. (required)'
      )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Show version number and exit'
    ),
    Subcommand(
      name: 'watch',
      description: 'Watch filesystem for changes and rebuild the project automatically'
    ),
    Subcommand(
      name: 'preserve',
      description: 'Save data to decentralized storage platforms like IPFS and Filecoin',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ],
      options: [

        Option(
          name: '--environment',
          description: 'Environment name, as defined in truffle-config `environments` object',
          args: [
            Arg(
            name: 'name',
            defaultValue: 'development'
          )
          ]
        ),
        Option(
          name: '--ipfs',
          description: 'Preserve to IPFS'
        ),
        Option(
          name: '--filecoin',
          description: 'Preserve to Filecoin'
        ),
        Option(
          name: '--buckets',
          description: 'Preserve to Textile Buckets'
        )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Run migrations to deploy contracts',
      options: [

        Option(
          name: '--reset',
          description: 'Run all migrations from the beginning, instead of running from the last completed migration'
        ),
        Option(
          name: '--f',
          description: 'Run contracts from a specific migration',
          args: [
            Arg(
            name: 'number',
            description: 'The number refers to the prefix of the migration file'
          )
          ]
        ),
        Option(
          name: '--to',
          description: 'Run contracts to a specific migration',
          args: [
            Arg(
            name: 'number',
            description: 'The number refers to the prefix of the migration file'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'Specify the network to use, saving artifacts specific to that network',
          args: [
            Arg(
            name: 'name',
            description: 'Network name must exist in the configuration'
          )
          ]
        ),
        Option(
          name: '--compile-all',
          description: 'Compile all contracts instead of intelligently choosing which contracts need to be compiled'
        ),
        Option(
          name: '--verbose-rpc',
          description: 'Log communication between Truffle and the Ethereum client'
        ),
        Option(
          name: '--dry-run',
          description: 'Fork the network specified and only perform a test migration'
        ),
        Option(
          name: '--skip-dry-run',
          description: 'Skip the test migration performed before the real migration'
        ),
        Option(
          name: '--interactive',
          description: 'Prompt to confirm that the user wants to proceed after the dry run'
        ),
        Option(
          name: '--describe-json',
          description: 'Prints additional status messages'
        )
      ]
    ),
    Subcommand(
      name: 'unbox',
      description: 'Download a Truffle Box, a pre-built Truffle project',
      args: [

        Arg(
          name: 'box_name',
          description: 'Name of the Truffle Box. (required)'
        ),
        Arg(
          name: 'path',
          isOptional: true,
          generators: Generator(
            template: 'filepaths'
          )
        )
      ],
      options: [

        Option(
          name: '--force',
          description: 'Unbox project in the current directory regardless of its state. Be careful, this will potentially overwrite files that exist in the directory',
          isDangerous: true
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Run JavaScript and Solidity tests',
      args: [
        Arg(
        name: 'test_file',
        description: 'Name of the test file to be run. Can include path information if the file does not exist in the current directory',
        template: 'filepaths'
      )
      ],
      options: [

        Option(
          name: '--compile-all',
          description: 'Compile all contracts instead of intelligently choosing which contracts need to be compiled'
        ),
        Option(
          name: '--compile-all-debug',
          description: 'Like --compile-all, but compiles contracts in debug mode for extra information. Has no effect on Solidity <0.6.3'
        ),
        Option(
          name: '--network',
          description: 'Specify the network to use, using artifacts specific to that network',
          args: [
            Arg(
            name: 'name',
            description: 'Network name must exist in the configuration'
          )
          ]
        ),
        Option(
          name: '--verbose-rpc',
          description: 'Log communication between Truffle and the Ethereum client'
        ),
        Option(
          name: '--show-events',
          description: 'Log all contract events'
        ),
        Option(
          name: '--debug',
          description: 'Provides global debug() function for in-test debugging. Usable with Javascript tests only; implies --compile-all'
        ),
        Option(
          name: '--debug-global',
          description: 'Allows one to rename the debug() function to something else',
          args: [
            Arg(
            name: 'identifier'
          )
          ]
        ),
        Option(
          name: ['--bail', '-b'],
          description: 'Bail after the first test failure. May be abbreviated -b'
        ),
        Option(
          name: ['--stacktrace', '-t'],
          description: 'Allows for mixed Javascript-and-Solidity stacktraces when a Truffle Contract transaction or deployment reverts. Does not apply to calls or gas estimates. Implies --compile-all. May be abbreviated -t. Warning: This option is still somewhat experimental'
        ),
        Option(
          name: '--stacktrace-extra',
          description: 'Shortcut for --stacktrace --compile-all-debug'
        )
      ]
    )
  ]
);
