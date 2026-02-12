// Auto-generated from TypeScript source: stack.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `stack` CLI
final FigSpec stackSpec = FigSpec(
  name: 'stack',
  description: 'The Haskell Tool Stack',
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for stack'
    ),
    Option(
      name: '--version',
      description: 'Show version for stack'
    ),
    Option(
      name: '--numeric-version',
      description: 'Show only the numeric version for stack'
    ),
    Option(
      name: '--hpack-numeric-version',
      description: 'Show only hpack\'s version number'
    ),
    Option(
      name: '--verbosity',
      description: 'Verbosity: silent, error, warn, info, debug'
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Enable verbose mode: verbosity level "debug"'
    ),
    Option(
      name: '--silent',
      description: 'Enable silent mode: verbosity level "silent"'
    ),
    Option(
      name: '--stack-root',
      description: 'Absolute path to the global stack root directory (Overrides any STACK_ROOT environment variable)'
    ),
    Option(
      name: '--work-dir',
      description: 'Relative path of work directory (Overrides any STACK_WORK environment variable, default is \'.stack-work\')'
    ),
    Option(
      name: '--system-ghc',
      description: 'Enable using the system installed GHC (on the PATH) if it is available and its version matches. Disabled by default'
    ),
    Option(
      name: '--no-system-ghc',
      description: 'Disable using the system installed GHC (on the PATH) if it is available and its version matches. Disabled by default',
      exclusiveOn: ['--system-ghc']
    ),
    Option(
      name: '--install-ghc',
      description: 'Enable downloading and installing GHC if necessary (can be done manually with stack setup). Enabled by default)'
    ),
    Option(
      name: '--no-install-ghc',
      description: 'Disable downloading and installing GHC if necessary (can be done manually with stack setup). Enabled by default',
      exclusiveOn: ['--install-ghc']
    ),
    Option(
      name: '--ghc-variant',
      description: 'Specialized GHC variant, e.g. integersimple (incompatible with --system-ghc)'
    ),
    Option(
      name: '--ghc-build',
      description: 'Specialized GHC build, e.g. \'gmp4\' or \'standard\' (usually auto-detected)'
    ),
    Option(
      name: ['--jobs', '-j'],
      description: 'Number of concurrent jobs to run. Should be provied as ARGS'
    ),
    Option(
      name: '--extra-include-dirs',
      description: 'Extra directories to check for C header files'
    ),
    Option(
      name: '--extra-lib-dir',
      description: 'Extra directories to check for libraries'
    ),
    Option(
      name: '--custom-preprocessor-extensions',
      description: 'Extensions used for custom preprocessors'
    ),
    Option(
      name: ['--color', '--colour'],
      description: 'Specify when to use color in output',
      args: [
        Arg(
        name: 'WHEN',
        suggestions: [
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never'),
          FigSuggestion(name: 'auto')
        ],
        defaultValue: 'never',
        description: 'WHEN is \'always\', \'never\', or \'auto\'. On Windows versions before Windows 10, for terminals that do not support color codes, the default is \'never\'; color may work on terminals that support color codes'
      )
      ]
    ),
    Option(
      name: '--compiler',
      description: 'Use the specified compiler',
      args: [
        Arg(
        name: 'COMPILER'
      )
      ]
    ),
    Option(
      name: '--terminal',
      description: 'Enable overriding terminal detection in the case of running in a false terminal'
    ),
    Option(
      name: '--no-terminal',
      description: 'Disable overriding terminal detection in the case of running in a false terminal',
      exclusiveOn: ['--teminal']
    ),
    Option(
      name: ['--stack-colors', '--stack-colours'],
      description: 'Specify stack\'s output styles',
      args: [
        Arg(
        name: 'STYLE',
        description: 'It a colon-delimited sequence of key=value, where \'key\' is a style name and \'value\' is a semicolon-delimited list of \'ANSI\' SGR (Select Graphic Rendition) control codes (in decimal). Use \'stack ls stack-colors --basic\' to see the current sequence. In shells where a semicolon is a command separator, enclose STYLES in quotes'
      )
      ]
    ),
    Option(
      name: '--terminal-width',
      description: 'Specify the width of the terminal, used for pretty-print messages',
      args: [
        Arg(
        name: 'INT'
      )
      ]
    ),
    Option(
      name: '--stack-yaml',
      description: 'Override project stack.yaml file (overrides any STACK_YAML environment variable)',
      args: [
        Arg(
        name: 'STACK-YAML'
      )
      ]
    ),
    Option(
      name: '--lock-file',
      description: 'Specify how to interact with lock files',
      args: [
        Arg(
        name: 'ARG',
        description: 'Default: read/write. If resolver is overridden: read-only'
      )
      ]
    )
  ],
  subcommands: [
    Subcommand(
      name: 'build',
      description: 'Build the package(s) in the current directory/configuration',
      options: [
        Option(
          name: '--resolver',
          description: 'Override resolver in project file',
          args: [
            Arg(
            name: 'RESOLVER'
          )
          ]
        ),
        Option(
          name: '--bench',
          description: 'Override resolver in project file'
        ),
        Option(
          name: '--test',
          description: 'Run complete test suite'
        ),
        Option(
          name: '--copy-bins',
          description: 'Enable copying any generated executables to the local bin path (default: disabled)'
        ),
        Option(
          name: '--no-copy-bins',
          description: 'Disable copying any generated executables to the local bin path (default: disabled)',
          exclusiveOn: ['--no-copy-bins']
        ),
        Option(
          name: '--haddock',
          description: 'Enable generating Haddocks the package(s) in this directory/configuration (default: disabled)'
        ),
        Option(
          name: '--no-haddock',
          description: 'Disable generating Haddocks the package(s) in this directory/configuration (default: disabled)',
          exclusiveOn: ['--no-haddock']
        ),
        Option(
          name: '--open',
          description: 'Enable opening the local Haddock'
        ),
        Option(
          name: '--no-open',
          description: 'Disable opening the local Haddock'
        ),
        Option(
          name: '--haddock-deps',
          description: 'Enable building Haddocks for dependencies (default: true if building Haddocks, false otherwise)'
        ),
        Option(
          name: '--no-haddock-deps',
          description: 'Disable building Haddocks for dependencies (default: true if building Haddocks, false otherwise)',
          exclusiveOn: ['--haddock-deps']
        ),
        Option(
          name: '--pedantic',
          description: 'Turn on all warnings(-Wall) and errors(-Werror)'
        ),
        Option(
          name: '--only-locals',
          description: 'Only build packages in the local database, fail if the build plan includes the snapshot database'
        ),
        Option(
          name: '--file-watch',
          description: 'Watch for changes in the files used to build the project, and kick off a new build when new changes are saved'
        ),
        Option(
          name: '--watch-all',
          description: 'Watch all local files not taking targets into account'
        ),
        Option(
          name: '-file-watch-poll',
          description: 'Like --file-watch, but polling the filesystem instead of using events'
        ),
        Option(
          name: '--only-snapshot',
          description: 'Only build packages for the snapshot database, not the local database'
        ),
        Option(
          name: '--only-configure',
          description: 'Only perform the configure step, not any builds. Intended for tool usage, may break when used on multiple packages at once!'
        ),
        Option(
          name: '--trace',
          description: 'Enable profiling in libraries, executables, etc. for all expressions and generate a backtrace on exception'
        ),
        Option(
          name: '--profile',
          description: 'Runs profiling in libraries, executables, etc. for all expressions and generate a profiling report in tests or benchmarks'
        ),
        Option(
          name: '--no-strip',
          description: 'Disable DWARF debugging symbol stripping in libraries, executables, etc. for all expressions, producing larger executables but allowing the use of standard debuggers/profiling tools/other utilities that use debugging symbols'
        ),
        Option(
          name: '--library-profiling',
          description: 'Enable library profiling for TARGETs and all its dependencies (default: disabled)'
        ),
        Option(
          name: '--no-library-profiling',
          description: 'Disable library profiling for TARGETs and all its dependencies (default: disabled)'
        ),
        Option(
          name: '--executable-profiling',
          description: 'Enable executable profiling for TARGETs and all its dependencies (default: disabled)'
        ),
        Option(
          name: '--no-executable-profiling',
          description: 'Disable executable profiling for TARGETs and all its dependencies (default: disabled)',
          exclusiveOn: ['--executable-profiling']
        ),
        Option(
          name: '--library-stripping',
          description: 'Enable library stripping for TARGETs and all its dependencies (default: enabled'
        ),
        Option(
          name: '--no-library-stripping',
          description: 'Disable library stripping for TARGETs and all its dependencies (default: enabled',
          exclusiveOn: ['--library-stripping']
        ),
        Option(
          name: '--executable-stripping',
          description: 'Enable executable stripping for TARGETs and all its dependencies (default: enabled)'
        ),
        Option(
          name: '--no-executable-stripping',
          description: 'Disable executable stripping for TARGETs and all its dependencies (default: enabled)',
          exclusiveOn: ['--executable-stripping']
        ),
        Option(
          name: '--ghc-options',
          description: 'Specify additional options passed to GHC for all local targets. Does not affect extra-dep and snapshot packages at all',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Builds the package in current directory and copies it as an executable for system wide usage. Shortcut for \'build --copy-bins'
    ),
    Subcommand(
      name: 'test',
      description: 'Shortcut for \'build --test\''
    ),
    Subcommand(
      name: 'bench',
      description: 'Shortcut for \'build --bench\''
    ),
    Subcommand(
      name: 'haddock',
      description: 'Shortcut for \'build --haddock\''
    ),
    Subcommand(
      name: 'new',
      description: 'Create a new project from a template. Run `stack templates\' to see available templates. Note: you can also specify a local file or a remote URL as a template'
    ),
    Subcommand(
      name: 'templates',
      description: 'Show how to find templates available for `stack new\'. `stack new\' can accept a template from a remote repository (default: github), local file or remote URL. Note: this downloads the help file'
    ),
    Subcommand(
      name: 'init',
      description: 'Create stack project config from cabal or hpack package specifications\''
    ),
    Subcommand(
      name: 'setup',
      description: 'Get the appropriate GHC for your project'
    ),
    Subcommand(
      name: 'path',
      description: 'Print out handy path information'
    ),
    Subcommand(
      name: 'ls',
      description: 'List command. Supports snapshots, dependencies and stack\'s styles'
    ),
    Subcommand(
      name: 'unpack',
      description: 'Unpack one or more packages locally'
    ),
    Subcommand(
      name: 'update',
      description: 'Update the package index'
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade to the latest stack version'
    ),
    Subcommand(
      name: 'upload',
      description: 'Upload a package to Hackage'
    ),
    Subcommand(
      name: 'sdist',
      description: 'Create source distribution tarballs'
    ),
    Subcommand(
      name: 'dot',
      description: 'Visualize your project\'s dependency graph using Graphviz dot'
    ),
    Subcommand(
      name: 'hoogle',
      description: 'Run hoogle, the Haskell API search engine. Use the \'-- ARGUMENT(S)\' syntax to pass Hoogle arguments, e.g. stack hoogle -- --count=20, or stack hoogle --server --local'
    ),
    Subcommand(
      name: 'exec',
      description: 'Execute a command. If the command is absent, the first of any arguments is taken as the command',
      options: [
        Option(
          name: '--snapshot-location-base',
          description: 'The base location of LTS/Nightly snapshots',
          args: [
            Arg(
            name: 'URL'
          )
          ]
        ),
        Option(
          name: '--cwd',
          description: 'Sets the working directory before executing the command',
          args: [
            Arg(
            name: 'DIR'
          )
          ]
        ),
        Option(
          name: '--setup-info-yaml',
          description: 'Alternate URL or relative / absolute path for stack dependencies',
          args: [
            Arg(
            name: 'URL'
          )
          ]
        ),
        Option(
          name: '--ghc-package-path',
          description: 'Enable setting the GHC_PACKAGE_PATH variable for the subprocess (default: enabled)'
        ),
        Option(
          name: '--no-ghc-package-path',
          description: 'Disable setting the GHC_PACKAGE_PATH variable for the subprocess (default: enabled)'
        ),
        Option(
          name: '--package',
          description: 'Additional package(s) that must be installed',
          args: [
            Arg(
            name: 'PACKAGE(S)'
          )
          ]
        ),
        Option(
          name: '--stack-exe',
          description: 'Enable setting the STACK_EXE environment variable to the path for the stack executable (default: enabled)'
        ),
        Option(
          name: '--no-stack-exe',
          description: 'Disable setting the STACK_EXE environment variable to the path for the stack executable (default: enabled)'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Build and run an executable. Defaults to the first available executable if none is provided as the first argument'
    ),
    Subcommand(
      name: 'repl',
      description: 'Load a REPL'
    )
  ]
);
