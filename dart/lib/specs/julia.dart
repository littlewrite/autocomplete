// Auto-generated from TypeScript source: julia.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `julia` CLI
final FigSpec juliaSpec = FigSpec(
  name: 'julia',
  description: 'The Julia Programming Language',
  options: [
    Option(
      name: ['-v', '--version'],
      description: 'Display version information'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help message for julia (--help-hidden for more)'
    ),
    Option(
      name: '--help-hidden',
      description: 'Uncommon options not shown by `-h`'
    ),
    Option(
      name: '--project',
      description: 'Set given directory as the home project/environment',
      args: [
        Arg(
        name: 'project folder',
        description: 'Julia project/environment',
        isOptional: true,
        suggestions: [
          FigSuggestion(
            name: '@.',
            priority: 75,
            description: 'Search through parent directories until a Project.toml or JuliaProject.toml file is found'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-J', '--sysimage'],
      description: 'Start up with the given system image file',
      args: [
        Arg(
        name: 'system image'
      )
      ]
    ),
    Option(
      name: ['-H', '--home'],
      description: 'Set location of `julia` executable',
      args: [
        Arg(
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--startup-file',
      description: 'Load `~/.julia/config/startup.jl`',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--handle-signals',
      description: 'Enable or disable Julia\'s default signal handlers',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--sysimage-native-code',
      description: 'Use native code from system image if available',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--compiled-modules',
      description: 'Enable or disable incremental precompilation of modules',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-e', '--eval'],
      insertValue: '-e \'{cursor}\'',
      description: 'Evaluate given expr',
      args: [
        Arg(
        name: 'expr'
      )
      ]
    ),
    Option(
      name: ['-E', '--print'],
      insertValue: '-E \'{cursor}\'',
      description: 'Evaluate given expr and display the result',
      args: [
        Arg(
        name: 'expr'
      )
      ]
    ),
    Option(
      name: ['-L', '--load'],
      description: 'Load given file immediately on all processors',
      args: [
        Arg(
        name: 'julia script'
      )
      ]
    ),
    Option(
      name: ['-t', '--threads'],
      description: 'Enable N threads; "auto" sets N to the number of local CPU threads',
      args: [
        Arg(
        description: 'Number of threads',
        suggestions: [
          FigSuggestion(
            name: 'auto'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-p', '--procs'],
      description: 'Integer value N launches N additional local worker processes "auto" launches as many workers as the number of local CPU threads',
      args: [
        Arg(
        description: 'Number of additional local worker processes',
        suggestions: [
          FigSuggestion(
            name: 'auto'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--machine-file',
      description: 'Run processes on hosts listed in given file',
      args: [
        Arg(
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Interactive mode; REPL runs and isinteractive() is true'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Quiet startup: no banner, suppress REPL warnings'
    ),
    Option(
      name: '--banner',
      description: 'Enable or disable startup banner',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          ),
          FigSuggestion(
            name: 'auto'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--color',
      description: 'Enable or disable color text',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          ),
          FigSuggestion(
            name: 'auto'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--history-file',
      description: 'Load or save history',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--depwarn',
      description: 'Enable or disable syntax and method deprecation warnings ("error" turns warnings into errors)',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          ),
          FigSuggestion(
            name: 'error'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--warn-overwrite',
      description: 'Enable or disable method overwrite warnings',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--warn-scope',
      description: 'Enable or disable warning for ambiguous top-level scope',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-C', '--cpu-target'],
      description: 'Limit usage of CPU features up to <target>; set to "help" to see the available options',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: ['-O', '--optimize'],
      description: 'Set the optimization level (default level is 2 if unspecified or 3 if used without a level)',
      args: [
        Arg(
        name: 'level',
        description: 'Level of optimization',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-g',
      description: 'Enable / Set the level of debug info generation',
      args: [
        Arg(
        name: 'level',
        description: 'Level of debug info generation',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--inline',
      description: 'Control whether inlining is permitted, including overriding @inline declarations',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--check-bounds',
      description: 'Emit bounds checks always, never, or respect @inbounds declarations',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          ),
          FigSuggestion(
            name: 'auto'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--polly',
      description: 'Enable or disable the polyhedral optimizer Polly (overrides @polly declaration)',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--math-mode',
      description: 'Disallow or enable unsafe floating point optimizations (overrides @fastmath declaration)',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'ieee'
          ),
          FigSuggestion(
            name: 'fast'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--code-coverage',
      description: 'Count executions of source lines (omitting setting is equivalent to "user")',
      args: [
        Arg(
        isOptional: true,
        suggestions: [
          FigSuggestion(
            name: 'none'
          ),
          FigSuggestion(
            name: 'user'
          ),
          FigSuggestion(
            name: 'all'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--track-allocation',
      description: 'Count bytes allocated by each source line (omitting setting is equivalent to "user")',
      args: [
        Arg(
        isOptional: true,
        suggestions: [
          FigSuggestion(
            name: 'none'
          ),
          FigSuggestion(
            name: 'user'
          ),
          FigSuggestion(
            name: 'all'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--bug-report',
      description: 'Launch a bug report session. It can be used to start a REPL, run a script, or evaluate  expressions. It first tries to use BugReporting.jl installed in current environment and fallbacks to the latest compatible BugReporting.jl if not. For more information, see --bug-report=help',
      args: [
        Arg(
        name: 'KIN'
      )
      ]
    ),
    Option(
      name: '--compile',
      description: 'Enable or disable JIT compiler, or request exhaustive or minimal compilation',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          ),
          FigSuggestion(
            name: 'all'
          ),
          FigSuggestion(
            name: 'min'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--output-o',
      description: 'Generate an object file (including system image data)',
      args: [
        Arg(
        name: 'name',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--output-ji',
      description: 'Generate a system image data file (.ji)',
      args: [
        Arg(
        name: 'name',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--output-unopt-bc',
      description: 'Generate unoptimized LLVM bitcode (.bc)',
      args: [
        Arg(
        name: 'name',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--output-jit-bc',
      description: 'Dump all IR generated by the frontend (not including system image)',
      args: [
        Arg(
        name: 'name',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--output-bc',
      description: 'Generate LLVM bitcode (.bc)',
      args: [
        Arg(
        name: 'name',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--output-asm',
      description: 'Generate an assembly file (.s)',
      args: [
        Arg(
        name: 'name',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--output-incremental',
      description: 'Generate an incremental output file (rather than complete)',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'yes'
          ),
          FigSuggestion(
            name: 'no'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--image-codegen',
      description: 'Force generate code in imaging mode'
    )
  ],
  args: [
    Arg(
    name: 'julia script',
    isOptional: true
  )
  ]
);
