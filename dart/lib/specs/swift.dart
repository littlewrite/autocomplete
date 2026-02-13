// Auto-generated from TypeScript source: swift.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> commonOptions = [

  Option(
    name: ['--help', '-h', '-help'],
    description: 'Show help information'
  ),
  Option(
    name: '--version',
    description: 'Show the version'
  )
];

/// Completion spec for `swift` CLI
final FigSpec swiftSpec = FigSpec(
  name: 'swift',
  description: 'Swift compiler',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  options: [

    ...commonOptions,
    Option(
      name: '-access-notes-path',
      description: 'Specify YAML file to override attributes on Swift declarations in this module',
      args: [
        Arg(
        name: 'path',
        description: 'Specify YAML file to override attributes on Swift declarations in this module'
      )
      ]
    ),
    Option(
      name: '-assert-config',
      description: 'Specify the assert_configuration replacement',
      args: [
        Arg(
        name: 'configuration',
        description: 'The assert_configuration replacement',
        suggestions: [

          FigSuggestion(name: 'Debug'),
          FigSuggestion(name: 'Release'),
          FigSuggestion(name: 'Unchecked'),
          FigSuggestion(name: 'DisableReplacement')
        ]
      )
      ]
    ),
    Option(
      name: '-async-main',
      description: 'Resolve main function as if it were called from an asynchronous context'
    ),
    Option(
      name: '-clang-target',
      description: 'Separately set the target we should use for internal Clang instance',
      args: [
        Arg(
        name: 'target',
        description: 'The target we should use for internal Clang instance'
      )
      ]
    ),
    Option(
      name: '-color-diagnostics',
      description: 'Print diagnostics in color'
    ),
    Option(
      name: '-continue-building-after-errors',
      description: 'Continue building, even after errors are encountered'
    ),
    Option(
      name: '-coverage-prefix-map',
      description: 'Remap source paths in coverage info',
      args: [
        Arg(
        name: 'prefix',
        description: 'The remap source paths in coverage info'
      )
      ]
    ),
    Option(
      name: '-debug-info-format',
      description: 'Specify the debug info format type',
      dependsOn: ['-g'],
      args: [
        Arg(
        name: 'type',
        description: 'The debug info format type',
        suggestions: [

          FigSuggestion(name: 'dwarf'),
          FigSuggestion(name: 'codeview')
        ]
      )
      ]
    ),
    Option(
      name: '-debug-info-store-invocation',
      description: 'Emit the compiler invocation in the debug info'
    ),
    Option(
      name: '-debug-prefix-map',
      description: 'Remap source paths in debug info',
      args: [
        Arg(
        name: 'prefix=replacement',
        description: 'The remap source paths in debug info'
      )
      ]
    ),
    Option(
      name: '-diagnostic-style',
      description: 'The formatting style used when printing diagnostics',
      args: [
        Arg(
        name: 'style',
        description: 'The formatting style used when printing diagnostics',
        suggestions: [

          FigSuggestion(name: 'swift'),
          FigSuggestion(name: 'llvm')
        ]
      )
      ]
    ),
    Option(
      name: '-disable-actor-data-race-checks',
      description: 'Disable runtime checks for actor data races'
    ),
    Option(
      name: '-disable-autolinking-runtime-compatibility-concurrency',
      description: 'Do not use autolinking for the concurrency runtime compatibility library'
    ),
    Option(
      name: '-disable-autolinking-runtime-compatibility-dynamic-replacements',
      description: 'Do not use autolinking for the dynamic replacement runtime compatibility library'
    ),
    Option(
      name: '-disable-autolinking-runtime-compatibility',
      description: 'Do not use autolinking for runtime compatibility libraries'
    ),
    Option(
      name: '-disable-clang-target',
      description: 'Disable a separately specified target triple for Clang instance to use'
    ),
    Option(
      name: '-disable-incremental-imports',
      description: 'Disable cross-module incremental build metadata and driver scheduling for Swift modules'
    ),
    Option(
      name: '-disable-only-one-dependency-file',
      description: 'Disables incremental build optimization that only produces one dependencies file'
    ),
    Option(
      name: '-disallow-use-new-driver',
      description: 'Disable using new swift-driver'
    ),
    Option(
      name: '-D',
      description: 'Marks a conditional compilation flag as true',
      args: [
        Arg(
        name: 'flag',
        description: 'The conditional compilation flag to mark as true'
      )
      ]
    ),
    Option(
      name: '-embed-tbd-for-module',
      description: 'Embed symbols from the module in the emitted tbd file',
      args: [
        Arg(
        name: 'module',
        description: 'Embed symbols from the module in the emitted tbd file'
      )
      ]
    ),
    Option(
      name: '-enable-actor-data-race-checks',
      description: 'Emit runtime checks for actor data races'
    ),
    Option(
      name: '-enable-bare-slash-regex',
      description: 'Enable the use of forward slash regular-expression literal syntax'
    ),
    Option(
      name: '-enable-experimental-additive-arithmetic-derivation',
      description: 'Enable experimental \'AdditiveArithmetic\' derived conformances'
    ),
    Option(
      name: '-enable-experimental-concise-pound-file',
      description: 'Enable experimental concise \'#file\' identifier'
    ),
    Option(
      name: '-enable-experimental-cxx-interop',
      description: 'Allow importing C++ modules into Swift (experimental feature)'
    ),
    Option(
      name: '-enable-experimental-forward-mode-differentiation',
      description: 'Enable experimental forward mode differentiation'
    ),
    Option(
      name: '-enable-incremental-imports',
      description: 'Enable cross-module incremental build metadata and driver scheduling for Swift modules'
    ),
    Option(
      name: '-enable-library-evolution',
      description: 'Build the module to allow binary-compatible library evolution'
    ),
    Option(
      name: '-enable-only-one-dependency-file',
      description: 'Enables incremental build optimization that only produces one dependencies file'
    ),
    Option(
      name: '-enforce-exclusivity',
      description: 'Enforce law of exclusivity',
      args: [
        Arg(
        name: 'enforcement',
        description: 'Enforce law of exclusivity'
      )
      ]
    ),
    Option(
      name: '-experimental-cxx-stdlib',
      description: 'C++ standard library to use; forwarded to Clang\'s -std lib flag',
      args: [
        Arg(
        name: 'stdlib',
        description: 'C++ standard library to use; forwarded to Clang\'s -std lib flag'
      )
      ]
    ),
    Option(
      name: '-file-compilation-dir',
      description: 'The compilation directory to embed in the debug info. Coverage mapping is not supported yet',
      args: [
        Arg(
        name: 'path',
        description: 'The compilation directory to embed in the debug info'
      )
      ]
    ),
    Option(
      name: '-file-prefix-map',
      description: 'Remap source paths in debug, coverage, and index info',
      args: [
        Arg(
        name: 'prefix',
        description: 'The remap source paths in debug, coverage, and index info'
      )
      ]
    ),
    Option(
      name: '-framework',
      description: 'Specifies a framework which should be linked against',
      args: [
        Arg(
        name: 'framework',
        description: 'The framework which should be linked against'
      )
      ]
    ),
    Option(
      name: '-Fsystem',
      description: 'Add directory to system framework search path',
      args: [
        Arg(
        name: 'directory',
        description: 'The directory to add to the system framework search path'
      )
      ]
    ),
    Option(
      name: '-F',
      description: 'Add directory to framework search path',
      args: [
        Arg(
        name: 'directory',
        description: 'The directory to add to the framework search path'
      )
      ]
    ),
    Option(
      name: '-gdwarf-types',
      description: 'Emit full DWARF type info'
    ),
    Option(
      name: '-gline-tables-only',
      description: 'Emit minimal debug info for backtraces only'
    ),
    Option(
      name: '-gnone',
      description: 'Don\'t emit debug info'
    ),
    Option(
      name: '-g',
      description: 'Emit debug info. This is the preferred setting for debugging with LLDB'
    ),
    Option(
      name: '-index-ignore-clang-modules',
      description: 'Avoid indexing clang modules (pcms)'
    ),
    Option(
      name: '-index-store-path',
      description: 'Store indexing data to path',
      args: [
        Arg(
        name: 'path',
        description: 'The path to store indexing data to'
      )
      ]
    ),
    Option(
      name: '-index-unit-output-path',
      description: 'Use the specified path as the output path in the produced index data',
      args: [
        Arg(
        name: 'path',
        description: 'The specified path as the output path in the produced index data'
      )
      ]
    ),
    Option(
      name: '-I',
      description: 'Add directory to the import search path',
      args: [
        Arg(
        name: 'directory',
        description: 'The directory to add to the import search path'
      )
      ]
    ),
    Option(
      name: '-j',
      description: 'Number of commands to execute in parallel',
      args: [
        Arg(
        name: 'value',
        description: 'The number of commands to execute in parallel'
      )
      ]
    ),
    Option(
      name: '-libc',
      description: 'The libc runtime library to use',
      args: [
        Arg(
        name: 'runtime',
        description: 'The libc runtime library to use'
      )
      ]
    ),
    Option(
      name: '-locale',
      description: 'Choose a language for diagnostic messages',
      args: [
        Arg(
        name: 'code',
        description: 'The locale code'
      )
      ]
    ),
    Option(
      name: '-localization-path',
      description: 'Path to localized diagnostic messages directory',
      args: [
        Arg(
        name: 'path',
        description: 'The path to localized diagnostic messages directory'
      )
      ]
    ),
    Option(
      name: '-L',
      description: 'Add directory to library link search path',
      args: [
        Arg(
        name: 'directory',
        description: 'The directory to add to the library link search path'
      )
      ]
    ),
    Option(
      name: '-l',
      description: 'Specifies a library which should be linked against',
      args: [
        Arg(
        name: 'path',
        description: 'Specifies a library which should be linked against'
      )
      ]
    ),
    Option(
      name: '-module-abi-name',
      description: 'ABI name to use for the contents of this module',
      args: [
        Arg(
        name: 'name',
        description: 'The ABI name to use for the contents of this module'
      )
      ]
    ),
    Option(
      name: '-module-alias',
      description: 'If a source file imports or references module <alias_name>, the <underlying_name> is used for the contents of the file',
      args: [
        Arg(
        name: 'alias',
        description: 'The module alias and the contents of the file to be used'
      )
      ]
    ),
    Option(
      name: '-module-cache-path',
      description: 'Specifies the Clang module cache path',
      args: [
        Arg(
        name: 'path',
        description: 'Specifies the Clang module cache path'
      )
      ]
    ),
    Option(
      name: '-module-link-name',
      description: 'Library to link against when using this module',
      args: [
        Arg(
        name: 'name',
        description: 'Library to link against when using this module'
      )
      ]
    ),
    Option(
      name: '-module-name',
      description: 'Name of the module to build',
      args: [
        Arg(
        name: 'name',
        description: 'Name of the module to build'
      )
      ]
    ),
    Option(
      name: '-no-color-diagnostics',
      description: 'Do not print diagnostics in color'
    ),
    Option(
      name: '-no-warnings-as-errors',
      description: 'Don\'t treat warnings as error'
    ),
    Option(
      name: '-nostdimport',
      description: 'Don\'t search the standard library import path for modules'
    ),
    Option(
      name: '-num-threads',
      description: 'Enable multi-threading and specify number of threads',
      args: [
        Arg(
        name: 'value',
        description: 'The number of threads'
      )
      ]
    ),
    Option(
      name: '-Onone',
      description: 'Compile without any optimization'
    ),
    Option(
      name: '-Osize',
      description: 'Compile with optimizations and target small code size'
    ),
    Option(
      name: '-Ounchecked',
      description: 'Compile with optimizations and remove runtime safety checks'
    ),
    Option(
      name: '-O',
      description: 'Compile with optimizations'
    ),
    Option(
      name: '-prefix-serialized-debugging-options',
      description: 'Apply debug prefix mappings to serialized debug info in Swiftmodule files'
    ),
    Option(
      name: '-pretty-print',
      description: 'Pretty-print the output JSON'
    ),
    Option(
      name: '-print-educational-notes',
      description: 'Include educational notes in printed diagnostic output, if available'
    ),
    Option(
      name: '-print-target-info',
      description: 'Print target information for the given target <triple>, such as x86_64-apple-macos10.9'
    ),
    Option(
      name: '-Rcross-import',
      description: 'Emit a remark if a cross-import of a module is triggered'
    ),
    Option(
      name: '-remove-runtime-asserts',
      description: 'Remove runtime safety checks'
    ),
    Option(
      name: '-requirement-machine-abstract-signatures',
      description: 'Control usage of experimental generic signature minimization',
      args: [
        Arg(
        name: 'value',
        description: 'The control usage of experimental generic signature minimization',
        suggestions: [

          FigSuggestion(name: 'on'),
          FigSuggestion(name: 'off'),
          FigSuggestion(name: 'verify'),
          FigSuggestion(name: 'check')
        ]
      )
      ]
    ),
    Option(
      name: '-requirement-machine-inferred-signatures',
      description: 'Control usage of experimental generic signature minimization',
      args: [
        Arg(
        name: 'value',
        description: 'The control usage of experimental generic signature minimization',
        suggestions: [

          FigSuggestion(name: 'on'),
          FigSuggestion(name: 'off'),
          FigSuggestion(name: 'verify'),
          FigSuggestion(name: 'check')
        ]
      )
      ]
    ),
    Option(
      name: '-requirement-machine-protocol-signatures',
      description: 'Control usage of experimental protocol requirement signature minimization',
      args: [
        Arg(
        name: 'value',
        description: 'The control usage of experimental protocol requirement signature minimization',
        suggestions: [

          FigSuggestion(name: 'on'),
          FigSuggestion(name: 'off'),
          FigSuggestion(name: 'verify'),
          FigSuggestion(name: 'check')
        ]
      )
      ]
    ),
    Option(
      name: '-Rmodule-loading',
      description: 'Emit a remark and file path of each loaded module'
    ),
    Option(
      name: '-Rpass-missed',
      description: 'Report missed transformations by optimization passes whose name matches the given POSIX regular expression',
      args: [
        Arg(
        name: 'regex',
        description: 'Regex to match missed transformations'
      )
      ]
    ),
    Option(
      name: '-Rpass',
      description: 'Report performed transformations by optimization passes whose name matches the given POSIX regular expression',
      args: [
        Arg(
        name: 'regex',
        description: 'Regex to match performed transformations'
      )
      ]
    ),
    Option(
      name: '-runtime-compatibility-version',
      description: 'Link compatibility library for Swift runtime version, or \'none\'',
      args: [
        Arg(
        name: 'version',
        description: 'Swift runtime version, or \'none\''
      )
      ]
    ),
    Option(
      name: '-save-optimization-record-passes',
      description: 'Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)',
      args: [
        Arg(
        name: 'regex',
        description: 'Regex to specify passes to be included in the optimization record'
      )
      ]
    ),
    Option(
      name: '-save-optimization-record-path',
      description: 'Specify the file name of any generated optimization record',
      args: [
        Arg(
        name: 'filename',
        description: 'The file name of any generated optimization record'
      )
      ]
    ),
    Option(
      name: '-save-optimization-record',
      description: 'Generate an optimization record file in a specific format',
      args: [
        Arg(
        name: 'format',
        description: 'The format',
        defaultValue: 'YAML'
      )
      ]
    ),
    Option(
      name: '-save-optimization-record',
      description: 'Generate a YAML optimization record file'
    ),
    Option(
      name: '-sdk',
      description: 'Compile against a specific SDK',
      args: [
        Arg(
        name: 'sdk',
        description: 'The SDK to compile against'
      )
      ]
    ),
    Option(
      name: '-serialize-diagnostics-path',
      description: 'Emit a serialized diagnostics file',
      args: [
        Arg(
        name: 'path',
        description: 'The path to write the file to'
      )
      ]
    ),
    Option(
      name: '-static-executable',
      description: 'Statically link the executable'
    ),
    Option(
      name: '-static-stdlib',
      description: 'Statically link the Swift standard library'
    ),
    Option(
      name: '-strict-concurrency',
      description: 'Specify the how strict concurrency checking will be',
      args: [
        Arg(
        name: 'concurrency',
        description: 'The concurrency',
        suggestions: [

          FigSuggestion(name: 'minimal'),
          FigSuggestion(name: 'targeted'),
          FigSuggestion(name: 'complete')
        ]
      )
      ]
    ),
    Option(
      name: '-suppress-warnings',
      description: 'Suppress all warnings'
    ),
    Option(
      name: '-swift-isa-ptrauth-mode',
      description: 'Mode for staging isa/super signing',
      args: [
        Arg(
        name: 'mode',
        description: 'Mode for staging isa/super signing',
        suggestions: [

          FigSuggestion(name: 'LegacyAndStrip'),
          FigSuggestion(name: 'NewAndStrip'),
          FigSuggestion(name: 'NewAndAuth')
        ]
      )
      ]
    ),
    Option(
      name: '-swift-ptrauth-mode',
      description: 'Mode for staging pointer authentication',
      args: [
        Arg(
        name: 'mode',
        description: 'Mode for staging pointer authentication',
        suggestions: [

          FigSuggestion(name: 'LegacyAndStrip'),
          FigSuggestion(name: 'NewAndStrip'),
          FigSuggestion(name: 'NewAndAuth')
        ]
      )
      ]
    ),
    Option(
      name: '-swift-version',
      description: 'Interpret input according to a specific Swift language version number',
      args: [
        Arg(
        name: 'version',
        description: 'Swift language version number'
      )
      ]
    ),
    Option(
      name: '-target-cpu',
      description: 'Generate code for a particular CPU variant',
      args: [
        Arg(
        name: 'cpu',
        description: 'The CPU variant'
      )
      ]
    ),
    Option(
      name: '-target-min-inlining-version',
      description: 'Require inlinable code with no \'@available\' attribute to back-deploy to this version of the \'-target\' OS',
      args: [
        Arg(
        name: 'version',
        description: 'The target version'
      )
      ]
    ),
    Option(
      name: '-target-variant',
      description: 'Generate \'zippered\' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple',
      args: [
        Arg(
        name: 'variant',
        description: 'The target variant'
      )
      ]
    ),
    Option(
      name: '-target',
      description: 'Generate code for the given target <triple>, such as x86_64-apple-macos10.9',
      args: [
        Arg(
        name: 'triple',
        description: 'The target triple'
      )
      ]
    ),
    Option(
      name: '-use-ld',
      description: 'Specifies the linker to be used',
      args: [
        Arg(
        name: 'linker',
        description: 'The linker to be used'
      )
      ]
    ),
    Option(
      name: '-user-module-version',
      description: 'Module version specified from Swift module authors',
      args: [
        Arg(
        name: 'module',
        description: 'The module version'
      )
      ]
    ),
    Option(
      name: '-vfsoverlay',
      description: 'Add directory to VFS overlay file',
      args: [
        Arg(
        name: 'directory',
        description: 'The directory to the VFS overlay file'
      )
      ]
    ),
    Option(
      name: '-v',
      description: 'Show commands to run and use verbose output'
    ),
    Option(
      name: '-warn-concurrency',
      description: 'Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version'
    ),
    Option(
      name: '-warn-implicit-overrides',
      description: 'Warn about implicit overrides of protocol members'
    ),
    Option(
      name: '-warn-swift3-objc-inference-complete',
      description: 'Warn about deprecated @objc inference in Swift 3 for every declaration that will no longer be inferred as @objc in Swift 4'
    ),
    Option(
      name: '-warn-swift3-objc-inference-minimal',
      description: 'Warn about deprecated @objc inference in Swift 3 based on direct uses of the Objective-C entrypoint'
    ),
    Option(
      name: '-warnings-as-errors',
      description: 'Treat warnings as errors'
    ),
    Option(
      name: '-working-directory',
      description: 'Resolve file paths relative to the specified directory',
      args: [
        Arg(
        name: 'directory',
        description: 'Resolve file paths relative to the specified directory'
      )
      ]
    ),
    Option(
      name: '-Xcc',
      description: 'Pass <arg> to the C/C++/Objective-C compiler',
      args: [
        Arg(
        name: 'arg',
        description: 'Argument to pass to the C/C++/Objective-C compiler'
      )
      ]
    ),
    Option(
      name: '-Xlinker',
      description: 'Specifies an option which should be passed to the linker',
      args: [
        Arg(
        name: 'arg',
        description: 'Option to be passed to the linker'
      )
      ]
    )
  ],
  subcommands: [

    Subcommand(
      name: 'build',
      description: 'Build sources into binary products',
      options: [

        ...commonOptions,
        Option(
          name: '--build-tests',
          description: 'Build both source and test targets'
        ),
        Option(
          name: '--show-bin-path',
          description: 'Print the binary output path'
        ),
        Option(
          name: '--target',
          description: 'Build the specified target',
          args: [
            Arg(
            name: 'target',
            description: 'The name of the target to build'
          )
          ]
        ),
        Option(
          name: '--product',
          description: 'Build the specified product',
          args: [
            Arg(
            name: 'product',
            description: 'The name of the product to build'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Build and run an executable product',
      options: [

        ...commonOptions,
        Option(
          name: '--skip-build',
          description: 'Skip building the executable product'
        ),
        Option(
          name: '--build-tests',
          description: 'Build both source and test targets'
        ),
        Option(
          name: '--repl',
          description: 'Launch Swift REPL for the package'
        )
      ],
      args: [

        Arg(
          name: 'executable',
          description: 'The executable to run',
          isOptional: true
        ),
        Arg(
          name: 'arguments',
          description: 'The arguments to pass to the executable',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Build and run tests',
      options: [

        ...commonOptions,
        Option(
          name: '--skip-build',
          description: 'Skip building the test target'
        ),
        Option(
          name: '--parallel',
          description: 'Run the tests in parallel'
        ),
        Option(
          name: '--num-workers',
          description: 'Number of tests to execute in parallel',
          args: [
            Arg(
            name: 'num-workers',
            description: 'Number of tests to execute in parallel'
          )
          ]
        ),
        Option(
          name: ['-l', '--list-tests'],
          description: 'Lists test methods in specifier format'
        ),
        Option(
          name: '--show-codecov-path',
          description: 'Print the path of the exported code coverage JSON file'
        ),
        Option(
          name: ['-s', '--specifier'],
          description: ''
        ),
        Option(
          name: '--filter',
          description: 'Run test cases matching regular expression',
          args: [
            Arg(
            name: 'regex',
            description: '<test-target>.<test-case> or <test-target>.<test-case>/<test>'
          )
          ]
        ),
        Option(
          name: '--skip',
          description: 'Skip test cases matching regular expression',
          args: [
            Arg(
            name: 'regex',
            description: '<test-target>.<test-case> or <test-target>.<test-case>/<test>'
          )
          ]
        ),
        Option(
          name: '--xunit-output',
          description: 'Path where the xUnit xml file should be generated',
          args: [
            Arg(
            name: 'path',
            description: 'Path where the xUnit xml file should be generated'
          )
          ]
        ),
        Option(
          name: '--test-product',
          description: 'Test the specified product',
          args: [
            Arg(
            name: 'product',
            description: 'The product to be tested'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'package',
      description: 'Perform operations on Swift packages',
      options: [

        ...commonOptions,
        Option(
          name: '-Xcc',
          description: 'Pass a flag through to all C compiler invocations',
          args: [
            Arg(
            name: 'flag',
            description: 'The flag to pass through to all C compiler invocations'
          )
          ]
        ),
        Option(
          name: '-Xswiftc',
          description: 'Pass a flag through to all Swift compiler invocations',
          args: [
            Arg(
            name: 'flag',
            description: 'The flag to pass through to all Swift compiler invocations'
          )
          ]
        ),
        Option(
          name: '-Xlinker',
          description: 'Pass a flag through to all linker invocations',
          args: [
            Arg(
            name: 'flag',
            description: 'The flag to pass through to all linker invocations'
          )
          ]
        ),
        Option(
          name: ['-c', '--configuration'],
          description: 'Build with configuration (default: debug)',
          args: [
            Arg(
            name: 'configuration',
            description: 'The build configuration',
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'release')
            ]
          )
          ]
        ),
        Option(
          name: '--build-path',
          description: 'Specify build/cache directory',
          args: [
            Arg(
            name: 'path',
            description: 'The path to a specific build/cache directory'
          )
          ]
        ),
        Option(
          name: '--cache-path',
          description: 'Specify the shared cache directory',
          args: [
            Arg(
            name: 'path',
            description: 'The path to a specific shared cache directory'
          )
          ]
        ),
        Option(
          name: '--enable-repository-cache',
          description: 'Enable the use of a shared cache when fetching repositories (default: enabled)',
          exclusiveOn: ['--disable-repository-cache']
        ),
        Option(
          name: '--disable-repository-cache',
          description: 'Disable the use of a shared cache when fetching repositories (default: enabled)',
          exclusiveOn: ['--enable-repository-cache']
        ),
        Option(
          name: ['-C', '--chdir'],
          description: 'The custom working directory that the tool should operate in',
          args: [
            Arg(
            name: 'chdir',
            description: ''
          )
          ]
        ),
        Option(
          name: '--package-path',
          description: 'Change working directory before any other operation',
          args: [
            Arg(
            name: 'path',
            description: 'The working directory path to change to'
          )
          ]
        ),
        Option(
          name: '--multiroot-data-file',
          description: 'The path to the file containing multiroot package data. This is currently Xcode\'s workspace file',
          args: [
            Arg(
            name: 'multiroot-data-file',
            description: ''
          )
          ]
        ),
        Option(
          name: '--enable-prefetching',
          description: 'Enable prefetching in resolver which will kick off parallel git cloning (default: enabled)',
          exclusiveOn: ['--disable-prefetching']
        ),
        Option(
          name: '--disable-prefetching',
          description: 'Disable  prefetching in resolver which will kick off parallel git cloning (default: enabled)',
          exclusiveOn: ['--enable-prefetching']
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Increase verbosity of informational output'
        ),
        Option(
          name: '--disable-sandbox',
          description: 'Disable using the sandbox when executing subprocesses'
        ),
        Option(
          name: '--manifest-cache',
          description: 'Caching mode of Package.swift manifests',
          args: [
            Arg(
            name: 'mode',
            description: 'The caching mode',
            suggestions: [

              FigSuggestion(name: 'shared'),
              FigSuggestion(name: 'local'),
              FigSuggestion(name: 'none')
            ],
            defaultValue: 'shared'
          )
          ]
        ),
        Option(
          name: '--destination',
          description: 'Path to the compilation destination describing JSON file',
          args: [
            Arg(
            name: 'path',
            description: 'The path to the compilation destination describing JSON file'
          )
          ]
        ),
        Option(
          name: '--triple',
          description: 'The compilation destination\'s target triple',
          args: [
            Arg(
            name: 'triple',
            description: 'The compilation destination\'s target triple'
          )
          ]
        ),
        Option(
          name: '--sdk',
          description: 'Path to the compilation destination\'s SDK',
          args: [
            Arg(
            name: 'path',
            description: 'Path to the compilation destination\'s SDK'
          )
          ]
        ),
        Option(
          name: '--toolchain',
          description: 'Path to the compilation destination\'s toolchain',
          args: [
            Arg(
            name: 'path',
            description: 'Path to the compilation destination\'s toolchain'
          )
          ]
        ),
        Option(
          name: '--static-swift-stdlib',
          description: 'Link Swift stdlib statically (default: false)',
          exclusiveOn: ['--no-static-swift-stdlib']
        ),
        Option(
          name: '--no-static-swift-stdlib',
          description: 'Don\'t link Swift stdlib statically (default: false)',
          exclusiveOn: ['--static-swift-stdlib']
        ),
        Option(
          name: '--skip-update',
          description: 'Skip updating dependencies from their remote during a resolution'
        ),
        Option(
          name: '--sanitize',
          description: 'Turn on runtime checks for erroneous behavior',
          args: [
            Arg(
            name: 'type',
            description: 'What to sanitize',
            suggestions: [

              FigSuggestion(name: 'address'),
              FigSuggestion(name: 'thread'),
              FigSuggestion(name: 'undefined'),
              FigSuggestion(name: 'scudo')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-code-coverage',
          description: 'Enable code coverage (default: disabled)',
          exclusiveOn: ['--disable-code-coverage']
        ),
        Option(
          name: '--disable-code-coverage',
          description: 'Disable code coverage (default: disabled)',
          exclusiveOn: ['--enable-code-coverage']
        ),
        Option(
          name: [
            '--force-resolved-versions',
            '--disable-automatic-resolution',
            '--only-use-versions-from-resolved-file',
          ],
          description: 'Only use versions from the Package.resolved file and fail resolution if it is out-of-date'
        ),
        Option(
          name: '--auto-index-store',
          description: 'Enable or disable indexing-while-building feature (default: auto)',
          exclusiveOn: ['--enable-index-store', '--disable-index-store']
        ),
        Option(
          name: '--enable-index-store',
          description: 'Enable indexing-while-building feature (default: auto)',
          exclusiveOn: ['--auto-index-store', '--disable-index-store']
        ),
        Option(
          name: '--disable-index-store',
          description: 'Disable indexing-while-building feature (default: auto)',
          exclusiveOn: ['--auto-index-store', '--enable-index-store']
        ),
        Option(
          name: '--enable-parseable-module-interfaces',
          description: 'Whether to enable generation of `.swiftinterface`s alongside `.swiftmodule`s'
        ),
        Option(
          name: '--trace-resolver',
          description: 'Write dependency resolver trace to a file'
        ),
        Option(
          name: ['-j', '--jobs'],
          description: 'The number of jobs to spawn in parallel during the build process',
          args: [
            Arg(
            name: 'jobs',
            description: 'The number of jobs to spawn in parallel during the build process'
          )
          ]
        ),
        Option(
          name: '--enable-build-manifest-caching',
          description: 'Whether to enable llbuild manifest caching (default: enabled)'
        ),
        Option(
          name: '--disable-build-manifest-caching',
          description: 'Whether to disable llbuild manifest caching (default: enabled)'
        ),
        Option(
          name: '--emit-swift-module-separately',
          description: 'Emit the Swift module separately from the object files'
        ),
        Option(
          name: '--use-integrated-swift-driver',
          description: 'Whether to use the integrated Swift driver rather than shelling out to a separate process'
        ),
        Option(
          name: '--experimental-explicit-module-build',
          description: 'Whether to use the explicit module build flow (with the integrated driver)'
        ),
        Option(
          name: '--print-manifest-job-graph',
          description: 'Write the command graph for the build manifest as a graphviz file'
        ),
        Option(
          name: '--build-system',
          description: 'The build system to use (default: native)',
          args: [
            Arg(
            name: 'build system',
            description: 'The build system to use',
            suggestions: [

              FigSuggestion(name: 'native'),
              FigSuggestion(name: 'xcode')
            ],
            defaultValue: 'native'
          )
          ]
        ),
        Option(
          name: '--netrc',
          description: 'Whether to load .netrc files for authenticating with remote servers when downloading binary artifacts or communicating with a registry',
          args: [
            Arg(
            name: 'bool',
            description: 'Whether to load .netrc files for authenticating with remote servers when downloading binary artifacts or communicating with a registry',
            defaultValue: 'true'
          )
          ]
        ),
        Option(
          name: '--netrc-file',
          description: 'The path to the .netrc file used when `netrc` is `true`',
          args: [
            Arg(
            name: 'path',
            description: 'The path to the .netrc file used when `netrc` is `true`'
          )
          ]
        )
      ],
      subcommands: [

        Subcommand(
          name: 'clean',
          description: 'Delete build artifacts',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'purge-cache',
          description: 'Purge the global repository cache',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Reset the complete cache/build directory',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update package dependencies',
          options: [

            ...commonOptions,
            Option(
              name: ['-n', '-dry-run'],
              description: 'Display the list of dependencies that can be updated'
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describe the current package',
          options: [

            ...commonOptions,
            Option(
              name: '--type',
              description: 'The output type',
              args: [
                Arg(
                name: 'type',
                description: 'The output type',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'text')
                ],
                defaultValue: 'text'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize a new package',
          options: [

            ...commonOptions,
            Option(
              name: '--type',
              description: 'The package type',
              args: [
                Arg(
                name: 'type',
                description: 'The package type',
                suggestions: [

                  FigSuggestion(name: 'empty'),
                  FigSuggestion(name: 'library'),
                  FigSuggestion(name: 'executable'),
                  FigSuggestion(name: 'system-module'),
                  FigSuggestion(name: 'manifest')
                ],
                defaultValue: 'library'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Provide custom package name',
              args: [
                Arg(
                name: 'name',
                description: 'The package name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'experimental-api-diff',
          description: 'Diagnose API-breaking changes to Swift modules in a package',
          args: [
            Arg(
            name: 'treeish',
            description: 'The baseline treeish to compare to (e.g. a commit hash, branch name, tag, etc.)'
          )
          ],
          options: [

            ...commonOptions,
            Option(
              name: '--invert-baseline',
              description: 'Invert the baseline which is helpful for determining API additions'
            )
          ]
        ),
        Subcommand(
          name: 'dump-symbol-graph',
          description: 'Dump Symbol Graph',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'dump-pif',
          description: 'Dump PIF',
          options: [

            ...commonOptions,
            Option(
              name: '--preserve-structure',
              description: 'Preserve the internal structure of PIF'
            )
          ]
        ),
        Subcommand(
          name: 'dump-package',
          description: 'Print parsed Package.swift as JSON',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'edit',
          description: 'Put a package in editable mode',
          options: [

            ...commonOptions,
            Option(
              name: '--revision',
              description: 'The revision to edit',
              args: [
                Arg(
                name: 'revision',
                description: 'The revision to edit'
              )
              ]
            ),
            Option(
              name: '--branch',
              description: 'The branch to create',
              args: [
                Arg(
                name: 'branch',
                description: 'The branch to create'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Create or use the checkout at this path',
              args: [
                Arg(
                name: 'path',
                description: 'Create or use the checkout at this path'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unedit',
          description: 'Remove a package from editable mode',
          args: [
            Arg(
            name: 'package-name',
            description: 'The name of the package to unedit'
          )
          ],
          options: [

            ...commonOptions,
            Option(
              name: '--force',
              description: 'Unedit the package even if it has uncommitted and unpushed changes'
            )
          ]
        ),
        Subcommand(
          name: 'config',
          description: 'Manipulate configuration of the package',
          options: [

            ...commonOptions
          ],
          subcommands: [

            Subcommand(
              name: 'set-mirror',
              description: 'Set a mirror for a dependency',
              options: [

                ...commonOptions,
                Option(
                  name: '--package-url',
                  description: 'The package dependency url',
                  args: [
                    Arg(
                    name: 'package-url',
                    description: 'The package dependency url'
                  )
                  ]
                ),
                Option(
                  name: '--original-url',
                  description: 'The original url',
                  args: [
                    Arg(
                    name: 'original-url',
                    description: 'The original url'
                  )
                  ]
                ),
                Option(
                  name: '--mirror-url',
                  description: 'The mirror url',
                  args: [
                    Arg(
                    name: 'original-url',
                    description: 'The mirror url'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'unset-mirror',
              description: 'Remove an existing mirror',
              options: [

                ...commonOptions,
                Option(
                  name: '--package-url',
                  description: 'The package dependency url',
                  args: [
                    Arg(
                    name: 'package-url',
                    description: 'The package dependency url'
                  )
                  ]
                ),
                Option(
                  name: '--original-url',
                  description: 'The original url',
                  args: [
                    Arg(
                    name: 'original-url',
                    description: 'The original url'
                  )
                  ]
                ),
                Option(
                  name: '--mirror-url',
                  description: 'The mirror url',
                  args: [
                    Arg(
                    name: 'original-url',
                    description: 'The mirror url'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get-mirror',
              description: 'Print mirror configuration for the given package dependency',
              options: [

                ...commonOptions,
                Option(
                  name: '--package-url',
                  description: 'The package dependency url',
                  args: [
                    Arg(
                    name: 'package-url',
                    description: 'The package dependency url'
                  )
                  ]
                ),
                Option(
                  name: '--original-url',
                  description: 'The original url',
                  args: [
                    Arg(
                    name: 'original-url',
                    description: 'The original url'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resolve',
          description: 'Resolve package dependencies',
          args: [
            Arg(
            name: 'package-name',
            description: 'The name of the package to resolve'
          )
          ],
          options: [

            Option(
              name: ['--help', '-h', '-help'],
              description: 'Show help information'
            ),
            Option(
              name: '--version',
              description: 'Show the version',
              args: [
                Arg(
                name: 'version',
                description: 'The version to resolve at',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--branch',
              description: 'The branch to resolve at',
              args: [
                Arg(
                name: 'branch',
                description: 'The branch to resolve at'
              )
              ]
            ),
            Option(
              name: '--revision',
              description: 'The revision to resolve at',
              args: [
                Arg(
                name: 'revision',
                description: 'The revision to resolve at'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-dependencies',
          description: 'Print the resolved dependency graph',
          options: [

            ...commonOptions,
            Option(
              name: '--format',
              description: 'The format type',
              args: [
                Arg(
                name: 'format',
                description: 'The format type',
                suggestions: [

                  FigSuggestion(name: 'text'),
                  FigSuggestion(name: 'dot'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'flatlist')
                ],
                defaultValue: 'text'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'tools-version',
          description: 'Manipulate tools version of the current package',
          options: [

            ...commonOptions,
            Option(
              name: '--format',
              description: 'The format type',
              args: [
                Arg(
                name: 'format',
                description: 'The format type',
                suggestions: [

                  FigSuggestion(name: 'text'),
                  FigSuggestion(name: 'dot'),
                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'flatlist')
                ],
                defaultValue: 'text'
              )
              ]
            ),
            Option(
              name: '--set-current',
              description: 'Set tools version of package to the current tools version in use'
            ),
            Option(
              name: '--set',
              description: 'Set tools version of package to the given value',
              args: [
                Arg(
                name: 'tools version',
                description: 'The tools version'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'generate-xcodeproj',
          description: 'Generates an Xcode project (this command will be deprecated soon)',
          options: [

            ...commonOptions,
            Option(
              name: '--xcconfig-overrides',
              description: 'Path to xcconfig file',
              args: [
                Arg(
                name: 'path',
                description: 'Path to xcconfig file'
              )
              ]
            ),
            Option(
              name: '--output',
              description: 'Path where the Xcode project should be generated',
              args: [
                Arg(
                name: 'path',
                description: 'Path where the Xcode project should be generated'
              )
              ]
            ),
            Option(
              name: '--legacy-scheme-generator',
              description: 'Use the legacy scheme generator'
            ),
            Option(
              name: '--watch',
              description: 'Watch for changes to the Package manifest to regenerate the Xcode project'
            ),
            Option(
              name: '--skip-extra-files',
              description: 'Do not add file references for extra files to the generated Xcode project'
            )
          ]
        ),
        Subcommand(
          name: 'compute-checksum',
          description: 'Compute the checksum for a binary artifact',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'archive-source',
          description: 'Create a source archive for the package',
          options: [

            ...commonOptions,
            Option(
              name: ['-o', '--output'],
              description: 'The absolute or relative path for the generated source archive',
              args: [
                Arg(
                name: 'path',
                description: 'The absolute or relative path for the generated source archive'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'completion-tool',
          description: 'Completion tool (for shell completions)',
          args: [
            Arg(
            name: 'mode',
            description: 'The completion tool mode',
            suggestions: [

              FigSuggestion(name: 'generate-bash-script'),
              FigSuggestion(name: 'generate-zsh-script'),
              FigSuggestion(name: 'generate-fish-script'),
              FigSuggestion(name: 'list-dependencies'),
              FigSuggestion(name: 'list-executables')
            ]
          )
          ],
          options: [

            ...commonOptions
          ]
        )
      ]
    )
  ]
);
