// Auto-generated from TypeScript source: zig.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `zig` CLI
final FigSpec zigSpec = FigSpec(
  name: 'zig',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  description: 'Zig is a general-purpose programming language and toolchain for " +\n    "maintaining robust, optimal, and reusable software',
  subcommands: [
    Subcommand(
      name: 'build',
      description: 'Build project from build.zig',
      subcommands: [
        Subcommand(
          name: 'install',
          description: 'Copy build artifacts to prefix path'
        ),
        Subcommand(
          name: 'uninstall',
          description: 'Remove build artifacts from prefix path'
        ),
        Subcommand(
          name: 'run',
          description: 'Run the app'
        ),
        Subcommand(
          name: 'test',
          description: 'Run unit tests'
        )
      ],
      options: [
        Option(
          name: ['-p', '--prefix'],
          description: 'Override default install prefix',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--prefix-lib-dir',
          description: 'Override default library directory path',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--prefix-exe-dir',
          description: 'Override default executable directory path',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--prefix-include-dir',
          description: 'Override default include directory path',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--sysroot',
          description: 'Set the system root directory (usually /)',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--search-prefix',
          description: 'Add a path to look for binaries, libraries, headers',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--libc',
          description: 'Provide a file which specifies libc paths',
          args: [
            Arg(
            name: 'path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '-fdarling',
          description: 'Integration with system-installed Darling to execute macOS programs on Linux hosts',
          exclusiveOn: ['-fno-fdarling'],
          priority: 25
        ),
        Option(
          name: '-fno-fdarling',
          description: 'No integration with system-installed Darling to execute macOS programs on Linux hosts',
          exclusiveOn: ['-fdarling'],
          priority: 25
        ),
        Option(
          name: '-fqemu',
          description: 'Integration with system-installed QEMU to execute foreign-architecture programs on Linux host',
          exclusiveOn: ['-fno-qemu'],
          priority: 25
        ),
        Option(
          name: '-fno-qemu',
          description: 'No integration with system-installed QEMU to execute foreign-architecture programs on Linux host',
          exclusiveOn: ['-fqemu'],
          priority: 25
        ),
        Option(
          name: '--glibc-runtimes',
          description: 'Enhances QEMU integration by providing glibc built for multiple foreign architectures',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '-frosetta',
          description: 'Rely on Rosetta to execute x86_64 programs on ARM64 macOS hosts',
          exclusiveOn: ['-fno-rosetta'],
          priority: 25
        ),
        Option(
          name: '-fno-rosetta',
          description: 'Don\'t rely on Rosetta to execute x86_64 programs on ARM64 macOS hosts',
          exclusiveOn: ['-frosetta'],
          priority: 25
        ),
        Option(
          name: '-fwasmtime',
          description: 'Integration with system-installed wasmtime to execute WASI binaries',
          exclusiveOn: ['-fno-wasmtime'],
          priority: 25
        ),
        Option(
          name: '-fno-wasmtime',
          description: 'No integration with system-installed wasmtime to execute WASI binaries',
          exclusiveOn: ['-fwasmtime'],
          priority: 25
        ),
        Option(
          name: '-fwine',
          description: 'Integration with system-installed Wine to execute Windows programs on Linux hosts',
          exclusiveOn: ['-fno-wine'],
          priority: 25
        ),
        Option(
          name: '-fno-wine',
          description: 'No integration with system-installed Wine to execute Windows programs on Linux hosts',
          exclusiveOn: ['-fwine'],
          priority: 25
        ),
        Option(
          name: '--verbose',
          description: 'Print commands before executing them'
        ),
        Option(
          name: '--prominent-compile-errors',
          description: 'Output compile errors formatted for a human to read'
        ),
        Option(
          name: '-Dtarget',
          description: 'The CPU architecture, OS, and ABI to build for',
          insertValue: '-Dtarget={cursor}'
        ),
        Option(
          name: '-Dcpu',
          description: 'Target CPU features to add or subtract',
          insertValue: '-Dcpu={cursor}'
        ),
        Option(
          name: '-Drelease-safe',
          description: 'Optimizations on and safety on',
          insertValue: '-Drelease-safe={cursor}',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '-Drelease-fast',
          description: 'Optimizations on and safety off',
          insertValue: '-Drelease-fast={cursor}',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '-Drelease-small',
          description: 'Size optimizations on and safety off',
          insertValue: '-Drelease-small={cursor}',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '--build-file',
          description: 'Override path to build.zig',
          args: [
            Arg(
            template: 'filepaths'
          )
          ],
          priority: 20
        ),
        Option(
          name: '--verbose-link',
          description: 'Enable compiler debug output for linking',
          priority: 20
        ),
        Option(
          name: '--verbose-air',
          description: 'Enable compiler debug output for Zig AIR',
          priority: 20
        ),
        Option(
          name: '--verbose-llvm-ir',
          description: 'Enable compiler debug output for LLVM IR',
          priority: 20
        ),
        Option(
          name: '--verbose-cimport',
          description: 'Enable compiler debug output for C imports',
          priority: 20
        ),
        Option(
          name: '--verbose-cc',
          description: 'Enable compiler debug output for C compilation',
          priority: 20
        ),
        Option(
          name: '--verbose-llvm-cpu-features',
          description: 'Enable compiler debug output for LLVM CPU features',
          priority: 20
        )
      ]
    ),
    Subcommand(
      name: 'init-exe',
      description: 'Initializes a `zig build` project in the current working directory',
      options: []
    ),
    Subcommand(
      name: 'init-lib',
      description: 'Initializes a `zig build` project in the current working directory',
      options: []
    ),
    Subcommand(
      name: 'ast-check',
      description: 'Given a .zig source file, reports any compile errors that " +\n        "can be ascertained on the basis of the source code alone, without target " +\n        "information or type checking. If [file] is omitted, stdin is used.',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '-t',
          description: '(debug option) Output ZIR in text form to stdout'
        )
      ]
    ),
    Subcommand(
      name: 'build-exe',
      description: 'Create executable from source or object files',
      args: [
        Arg(
        name: 'files',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'build-lib',
      description: 'Create library from source or object files',
      args: [
        Arg(
        name: 'files',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'build-obj',
      description: 'Create library from source or object files',
      args: [
        Arg(
        name: 'files',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'fmt',
      description: 'Reformat Zig source into canonical form',
      args: [
        Arg(
        name: 'files',
        template: 'filepaths'
      )
      ],
      options: [
        Option(
          name: '--stdin',
          description: 'Format code from stdin; output to stdout'
        ),
        Option(
          name: '--check',
          description: 'Format code from stdin; output to stdout List non-conforming files and exit with an error'
        ),
        Option(
          name: '--ast-check',
          description: 'Run zig ast-check on every file'
        ),
        Option(
          name: '--exclude',
          description: 'Exclude file or directory from formatting',
          args: [
            Arg(
            name: 'file',
            template: ['filepaths', 'folders']
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Create executable and run immediately',
      args: [
        Arg(
        name: 'files',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Create and run a test build',
      args: [
        Arg(
        name: 'files',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'translate-c',
      description: 'Convert C code to Zig code',
      args: [
        Arg(
        name: 'files',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'ar',
      description: 'LLVM Archiver',
      options: [
        Option(
          name: '--format',
          description: 'Archive format to create',
          insertValue: '--format={cursor}',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(
                name: 'default',
                description: 'Default'
              ),
              FigSuggestion(
                name: 'gnu',
                description: 'GNU'
              ),
              FigSuggestion(
                name: 'darwin',
                description: 'Darwin'
              ),
              FigSuggestion(
                name: 'bsd',
                description: 'BSD'
              ),
              FigSuggestion(
                name: 'bigarchive',
                description: 'Big archive (AIX OS)'
              )
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'cc',
      description: 'Use Zig as a drop-in C compiler',
      args: [
        Arg(
        name: 'file',
        isVariadic: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'c++',
      description: 'Use Zig as a drop-in C++ compiler',
      args: [
        Arg(
        name: 'file',
        isVariadic: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'dll-tool',
      description: 'LLVM dll tool',
      options: [
        Option(
          name: '-D',
          description: 'Specify the input DLL Name',
          args: [
            Arg(
            name: 'value'
          )
          ]
        ),
        Option(
          name: '-d',
          description: 'Input .def File',
          args: [
            Arg(
            name: 'value',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '-f',
          description: 'Assembler Flags',
          args: [
            Arg(
            name: 'value'
          )
          ]
        ),
        Option(
          name: '-k',
          description: 'Kill @n Symbol from export'
        ),
        Option(
          name: '-l',
          description: 'Generate an import lib',
          args: [
            Arg(
            name: 'value'
          )
          ]
        ),
        Option(
          name: '-m',
          description: 'Set target machine',
          args: [
            Arg(
            name: 'value',
            suggestions: [
              FigSuggestion(name: 'i386'),
              FigSuggestion(name: 'i386:x86-64'),
              FigSuggestion(name: 'arm'),
              FigSuggestion(name: 'arm64')
            ]
          )
          ]
        ),
        Option(
          name: '-S',
          description: 'Assembler',
          args: [
            Arg(
            name: 'value'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'lib',
      description: 'Use Zig as a drop-in lib.exe'
    ),
    Subcommand(
      name: 'ranlib',
      description: 'LLVM Ranlib : This program generates an index to speed access to archives',
      options: [
        Option(
          name: '-D',
          description: 'Use zero for timestamps and uids/gids (default)'
        ),
        Option(
          name: '-U',
          description: 'Use actual timestamps and uids/gids'
        )
      ]
    ),
    Subcommand(
      name: 'env',
      description: 'Print lib path, std path, cache directory, and version'
    ),
    Subcommand(
      name: 'help',
      description: 'Print help and exit'
    ),
    Subcommand(
      name: 'libc',
      description: 'Detect the native libc installation and print the resulting paths to stdout',
      args: [
        Arg(
        name: 'paths_file',
        template: 'filepaths'
      )
      ],
      options: [
        Option(
          name: '-target',
          description: '<arch><sub>-<os>-<abi> see the targets command',
          args: [
            Arg(
            name: 'name'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'targets',
      description: 'List available compilation targets'
    ),
    Subcommand(
      name: 'version',
      description: 'Print version number and exit'
    ),
    Subcommand(
      name: 'zen',
      description: 'Print Zen of Zig and exit'
    )
  ],
  options: [],
  args: [
    Arg(
    name: 'files',
    template: 'filepaths',
    isOptional: true
  )
  ]
);
