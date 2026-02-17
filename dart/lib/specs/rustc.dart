// Auto-generated from TypeScript source: rustc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rustc` CLI
final FigSpec rustcSpec = FigSpec(
  name: 'rustc',
  description: 'CLI for rustc',
  args: [
    Arg(
    name: 'filepath',
    template: ['filepaths']
  )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Prints out help info'
    ),
    Option(
      name: '--cfg',
      description: 'Configures compilation settings',
      args: [
        Arg(
        name: 'Spec'
      )
      ]
    ),
    Option(
      name: '-L',
      description: 'Adds a directory to the library search path',
      args: [

        Arg(
          name: 'kind',
          description: 'The kind of search path',
          suggestions: [

            FigSuggestion(
              name: 'dependency',
              insertValue: 'KIND=dependency',
              description: 'Only search for transitive dependencies in this directory'
            ),
            FigSuggestion(
              name: 'crate',
              insertValue: 'KIND=crate',
              description: 'Only search for this crate\'s direct dependencies in this directory'
            ),
            FigSuggestion(
              name: 'native',
              insertValue: 'KIND=native',
              description: 'Only search for native libraries in this directory'
            ),
            FigSuggestion(
              name: 'framework',
              insertValue: 'KIND=framework',
              description: 'Only search for macOS frameworks in this directory'
            ),
            FigSuggestion(
              name: 'all',
              insertValue: 'KIND=all',
              description: 'Search for all library kinds in this directory'
            )
          ],
          isOptional: true
        ),
        Arg(
          name: 'path',
          description: 'Path to search for external crates and libraries',
          template: 'folders'
        )
      ]
    ),
    Option(
      name: '--l',
      description: 'Links the generated crate to a native library',
      args: [

        Arg(
          name: 'kind',
          description: 'Kind of library',
          suggestions: [

            FigSuggestion(
              name: 'dylib',
              insertValue: 'KIND=dylib',
              description: 'A native dynamic library'
            ),
            FigSuggestion(
              name: 'static',
              insertValue: 'KIND=static',
              description: 'A native static library'
            ),
            FigSuggestion(
              name: 'framework',
              insertValue: 'KIND=framework',
              description: 'A macOS framework'
            )
          ],
          isOptional: true
        ),
        Arg(
          name: 'Name',
          description: 'Native library name'
        )
      ]
    ),
    Option(
      name: '--crate-type',
      description: 'Specify types of crates for the compiler to emit',
      args: [
        Arg(
        name: 'type',
        description: 'Type of crates',
        suggestions: [

          FigSuggestion(
            name: 'bin',
            description: 'A runnable executable program'
          ),
          FigSuggestion(
            name: 'lib',
            description: 'Generates a library kind preferred by the compiler'
          ),
          FigSuggestion(
            name: 'rlib',
            description: 'A Rust static library'
          ),
          FigSuggestion(
            name: 'dylib',
            description: 'A native dynamic library'
          ),
          FigSuggestion(
            name: 'cdylib',
            description: 'A native static library'
          ),
          FigSuggestion(
            name: 'staticlib',
            description: 'A macOS framework'
          ),
          FigSuggestion(
            name: 'proc-macro',
            description: 'Generates a format suitable for a procedural macro library that may be loaded by the compiler'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--crate-name',
      description: 'Specify the name of the crate being built',
      args: [
        Arg(
        name: 'Name'
      )
      ]
    ),
    Option(
      name: '--edition',
      description: 'Specify the edition to use',
      args: [
        Arg(
        name: 'edition',
        suggestions: [

          FigSuggestion(name: '2015'),
          FigSuggestion(name: '2018'),
          FigSuggestion(name: '2021')
        ]
      )
      ]
    ),
    Option(
      name: '--emit',
      description: 'Specify the types of output files to generate',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(
            name: 'asm',
            description: 'Generates a file with the crate\'s assembly code'
          ),
          FigSuggestion(
            name: 'llvm-bc',
            description: 'Generates a binary file containing the LLVM bitcode'
          ),
          FigSuggestion(
            name: 'llvm-ir',
            description: 'Generates a file containing LLVM IR'
          ),
          FigSuggestion(
            name: 'obj',
            description: 'Generates a native object file'
          ),
          FigSuggestion(
            name: 'metadata',
            description: 'Generates a file containing metadata about the crate'
          ),
          FigSuggestion(
            name: 'link',
            description: 'Generates the crates specified by --crate-type'
          ),
          FigSuggestion(
            name: 'dep-info',
            description: 'Generates a file with Makefile syntax that indicates all the source files that were loaded to generate the crate'
          ),
          FigSuggestion(
            name: 'mir',
            description: 'Generates a file containing rustc\'s mid-level intermediate representation'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--print',
      description: 'Prints compiler info',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(
            name: 'crate-name',
            description: 'The name of the crate'
          ),
          FigSuggestion(
            name: 'file-names',
            description: 'The names of the files created by the link emit kind'
          ),
          FigSuggestion(
            name: 'sysroot',
            description: 'Path to the sysroot'
          ),
          FigSuggestion(
            name: 'target-libdir',
            description: 'Path to the target libdir'
          ),
          FigSuggestion(
            name: 'cfg',
            description: 'List of cfg values'
          ),
          FigSuggestion(
            name: 'target-list',
            description: 'List of known targets. The target may be selected with the --target flag'
          ),
          FigSuggestion(
            name: 'target-cpus',
            description: 'List of available CPU values for the current target'
          ),
          FigSuggestion(
            name: 'target-features',
            description: 'List of available target features for the current target'
          ),
          FigSuggestion(
            name: 'relocation-models',
            description: 'List of relocation models. Relocation models may be selected with the -C relocation-model=val flag'
          ),
          FigSuggestion(
            name: 'code-models',
            description: 'List of code models'
          ),
          FigSuggestion(
            name: 'tls-models',
            description: 'List of Thread Local Storage models supported'
          ),
          FigSuggestion(
            name: 'target-spec-json'
          ),
          FigSuggestion(
            name: 'native-static-libs',
            description: 'This may be used when creating a staticlib crate type'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-g',
      description: 'Synonym for -C debuginfo=2'
    ),
    Option(
      name: '-O',
      description: 'Synonym for -C opt-level=2'
    ),
    Option(
      name: '-o',
      description: 'Specify the filename to write output',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--out-dir',
      description: 'Specify directory to write output',
      args: [
        Arg(
        name: 'dir'
      )
      ]
    ),
    Option(
      name: '--explain',
      description: 'Provides a detailed explanation of an error message',
      args: [
        Arg(
        name: 'Error Code'
      )
      ]
    ),
    Option(
      name: '--test',
      description: 'Builds a test harness'
    ),
    Option(
      name: '--target',
      description: 'Selects a target triple to build',
      args: [
        Arg(
        name: 'Target'
      )
      ]
    ),
    Option(
      name: ['-W', '--warn'],
      description: 'Sets lint warnings',
      args: [
        Arg(
        name: 'OPT'
      )
      ]
    ),
    Option(
      name: ['-A', '--allow'],
      description: 'Set lint allowed',
      args: [
        Arg(
        name: 'OPT'
      )
      ]
    ),
    Option(
      name: ['-D', '--deny'],
      description: 'Set lint denied',
      args: [
        Arg(
        name: 'OPT'
      )
      ]
    ),
    Option(
      name: ['-F', '--forbid'],
      description: 'Set lint forbid',
      args: [
        Arg(
        name: 'Opt'
      )
      ]
    ),
    Option(
      name: '--cap-lints',
      description: 'Set the most restrictive lint level',
      args: [
        Arg(
        name: 'Level'
      )
      ]
    ),
    Option(
      name: ['-C', '--codegen'],
      description: 'Set a codegen option',
      args: [
        Arg(
        name: 'option'
      )
      ]
    ),
    Option(
      name: '-Z',
      description: 'Set unstable options',
      args: [
        Arg(
        name: 'option',
        description: 'Unstable options to pass to rustc'
      )
      ]
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Prints version'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Use verbose output'
    ),
    Option(
      name: '--extern',
      description: 'Specify where an external library is located',
      args: [
        Arg(
        name: 'Path',
        description: 'Path where crate(s) can be found',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--sysroot',
      description: 'Overrides the system root',
      isDangerous: true,
      args: [
        Arg(
        name: 'directory'
      )
      ]
    ),
    Option(
      name: '--error-format',
      description: 'Controls how errors are produced',
      args: [
        Arg(
        name: 'format',
        suggestions: [

          FigSuggestion(name: 'human'),
          FigSuggestion(name: 'json'),
          FigSuggestion(name: 'short')
        ]
      )
      ]
    ),
    Option(
      name: '--color',
      description: 'Configures coloring of output',
      args: [
        Arg(
        name: 'color',
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
