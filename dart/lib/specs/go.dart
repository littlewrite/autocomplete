// AI-generated from TypeScript source: go.ts
// Generated at: 2026-02-13
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final buildModeSuggestions = [
  FigSuggestion(
      name: 'archive',
      description: 'Build the listed non-main packages into .a files'),
  FigSuggestion(
      name: 'c-archive',
      description:
          'Build the listed main package, plus all packages it imports, into a C archive file'),
  FigSuggestion(
      name: 'c-shared',
      description:
          'Build the listed main package, plus all packages it imports, into a C shared library'),
  FigSuggestion(
      name: 'default',
      description:
          'Listed main packages are built into executables and listed non-main packages are built into .a files'),
  FigSuggestion(
      name: 'shared',
      description:
          'Combine all the listed non-main packages into a single shared library that will be used when building with the -linkshared option'),
  FigSuggestion(
      name: 'exe',
      description:
          'Build the listed main packages and everything they import into executables'),
  FigSuggestion(
      name: 'pie',
      description:
          'Build the listed main packages and everything they import into position independent executables (PIE)'),
  FigSuggestion(
      name: 'plugin',
      description:
          'Build the listed main packages, plus all packages that they import, into a Go plugin'),
];

final resolutionAndExecutionOptions = [
  Option(name: ['-n'], description: 'Print the commands but do not run them'),
  Option(
      name: ['-v'],
      description: 'Print the names of packages as they are compiled'),
  Option(name: ['-x'], description: 'Print the commands'),
  Option(
      name: ['-tags'],
      description:
          'A comma-separated list of build tags to consider satisfied during the build',
      args: [Arg(name: 'tags')]),
  Option(
      name: ['-toolexec'],
      insertValue: '-toolexec \'{cursor}\'',
      description:
          'A program to use to invoke toolchain programs like vet and asm',
      args: [Arg(name: 'cmd')]),
];

final globalOptions = [
  ...resolutionAndExecutionOptions,
  Option(
      name: ['-a'],
      description: 'Force rebuilding of packages that are already up-to-date'),
  Option(
      name: ['-p'],
      description: 'The number of programs, such as build commands or',
      args: [Arg(name: 'programs')]),
  Option(
      name: ['-race'],
      description:
          'Enable data race detection.\nSupported only on linux/amd64, freebsd/amd64, darwin/amd64, windows/amd64,\nlinux/ppc64le and linux/arm64 (only for 48-bit VMA)'),
  Option(
      name: ['-msan'],
      description:
          'Enable interoperation with memory sanitizer.\nSupported only on linux/amd64, linux/arm64\nand only with Clang/LLVM as the host C compiler.\nOn linux/arm64, pie build mode will be used'),
  Option(
      name: ['-work'],
      description:
          'Print the name of the temporary work directory and\ndo not delete it when exiting'),
  Option(
      name: ['-asmflags'],
      insertValue: '-asmflags=\'{cursor}\'',
      description: 'Arguments to pass on each go tool asm invocation',
      args: [Arg(name: 'flag', isVariadic: true)]),
  Option(
      name: ['-buildmode'],
      description: 'Build mode to use. See \'go help buildmode\' for more',
      args: [Arg(name: 'mode', suggestions: buildModeSuggestions)]),
  Option(
      name: ['-compiler'],
      description:
          'Name of compiler to use, as in runtime.Compiler (gccgo or gc)',
      args: [Arg(name: 'name')]),
  Option(
      name: ['-gccgoflags'],
      insertValue: '--gccgoflags=\'{cursor}\'',
      description: 'Arguments to pass on each gccgo compiler/linker invocation',
      args: [Arg(name: 'flag', isVariadic: true)]),
  Option(
      name: ['-gcflags'],
      insertValue: '-gcflags=\'{cursor}\'',
      description: 'Arguments to pass on each go tool compile invocation',
      args: [Arg(name: 'flag', isVariadic: true)]),
  Option(
      name: ['-installsuffix'],
      description:
          'A suffix to use in the name of the package installation directory,',
      args: [Arg(name: 'suffix')]),
  Option(
      name: ['-ldflags'],
      insertValue: '-ldflags=\'{cursor}\'',
      description: 'Arguments to pass on each go tool link invocation',
      args: [Arg(name: 'flag', isVariadic: true)]),
  Option(
      name: ['-linkshared'],
      description:
          'Build code that will be linked against shared libraries previously'),
  Option(
      name: ['-mod'],
      description: 'Module download mode to use: readonly, vendor, or mod',
      args: [
        Arg(name: 'mode', suggestions: [
          FigSuggestion(name: 'readonly'),
          FigSuggestion(name: 'vendor'),
          FigSuggestion(name: 'mod')
        ])
      ]),
  Option(
      name: ['-modcacherw'],
      description:
          'Leave newly-created directories in the module cache read-write'),
  Option(
      name: ['-modfile'],
      description:
          'In module aware mode, read (and possibly write) an alternate go.mod file instead of the one in the module root directory',
      args: [Arg(name: 'file')]),
  Option(
      name: ['-overlay'],
      description:
          'Read a JSON config file that provides an overlay for build operations',
      args: [Arg(name: 'file')]),
  Option(
      name: ['-pkgdir'],
      description:
          'Install and load all packages from dir instead of the usual locations',
      args: [Arg(name: 'dir')]),
  Option(name: [
    '-trimpath'
  ], description: 'Remove all file system paths from the resulting executable'),
];

final packagesArg = Arg(
    name: 'packages',
    isVariadic: true,
    isOptional: true,
    template: ['filepaths']);

final FigSpec goSpec = FigSpec(
  name: 'go',
  description: 'Go is a tool for managing Go source code',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true,
  ),
  subcommands: [
    FigSubcommand(
      name: ['bug'],
      description: 'Start a bug report',
    ),
    FigSubcommand(
      name: ['build'],
      description: 'Compile packages and dependencies',
      options: [
        ...globalOptions,
        Option(
          name: ['-o'],
          description:
              'Write the resulting executable or object to the named output file or directory',
          args: [
            Arg(template: ['filepaths', 'folders'])
          ],
        ),
        Option(
          name: ['-i'],
          description:
              'Install the packages that are dependencies of the target',
        ),
      ],
      args: [packagesArg],
    ),
    FigSubcommand(
      name: ['clean'],
      description: 'Remove object files and cached files',
      options: [
        ...globalOptions,
        Option(
          name: ['-i'],
          description: 'Remove the corresponding installed archive or binary',
        ),
        Option(
          name: ['-r'],
          description:
              'Apply recursively to all the dependencies of the packages named by the import paths',
        ),
        Option(
          name: ['-cache'],
          description: 'Remove the entire go build cache',
        ),
        Option(
          name: ['-testcache'],
          description: 'Expire all test results in the go build cache',
        ),
        Option(
          name: ['-modcache'],
          description:
              'Remove the entire module download cache, including unpacked source code of versioned dependencies',
        ),
      ],
    ),
    FigSubcommand(
      name: ['doc'],
      description: 'Show documentation for package or symbol',
      options: [
        Option(
          name: ['-all'],
          description: 'Show all the documentation for the package',
        ),
        Option(
          name: ['-c'],
          description: 'Respect case when matching symbols',
        ),
        Option(
          name: ['-cmd'],
          description:
              'Treat a command (package main) like a regular package. Otherwise package main\'s exported symbols are hidden when showing the package\'s top-level documentation',
        ),
        Option(
          name: ['-short'],
          description: 'One-line representation for each symbol',
        ),
        Option(
          name: ['-src'],
          description: 'Show the full source code for the symbol',
        ),
        Option(
          name: ['-u'],
          description:
              'Show documentation for unexported as well as exported symbols, methods, and fields',
        ),
      ],
      args: [Arg(name: 'package')],
    ),
    FigSubcommand(
      name: ['env'],
      description: 'Print Go environment information',
      options: [
        Option(
          name: ['-json'],
          description:
              'Prints the environment in JSON format instead of as a shell script',
        ),
        Option(
          name: ['-u'],
          description:
              'Unset the default setting for the named environment variables',
          args: [Arg(isVariadic: true)],
        ),
        Option(
          name: ['-w'],
          description:
              'Change the default settings of the named environment variables to the given values',
          args: [Arg(isVariadic: true)],
        ),
      ],
    ),
    FigSubcommand(
      name: ['fix'],
      description: 'Update packages to use new APIs',
      args: [packagesArg],
    ),
    FigSubcommand(
      name: ['fmt'],
      description: 'Gofmt (reformat) package sources',
      options: [
        Option(
          name: ['-n'],
          description: 'Print the commands that would be executed',
        ),
        Option(
          name: ['-x'],
          description: 'Print the commands as they are executed',
        ),
        Option(
          name: ['-mod'],
          description: 'Which module download mode to use',
          args: [
            Arg(name: 'mode', suggestions: [
              FigSuggestion(name: 'readonly'),
              FigSuggestion(name: 'vendor')
            ])
          ],
        ),
      ],
      args: [packagesArg],
    ),
    FigSubcommand(
      name: ['generate'],
      description: 'Generate Go files by processing source',
      options: [
        ...globalOptions,
        Option(
          name: ['-run'],
          insertValue: '-run "{cursor}"',
          description:
              'Specifies a regular expression to select directives whose full original source text matches the expression',
        ),
      ],
    ),
    FigSubcommand(
      name: ['get'],
      description: 'Add dependencies to current module and install them',
      options: [
        ...globalOptions,
        Option(
          name: ['-t'],
          description:
              'Modules needed to build tests of packages specified on the command line',
        ),
        Option(
          name: ['-u'],
          description: 'Update to newer minor or patch releases when available',
          args: [
            Arg(isOptional: true, suggestions: [
              FigSuggestion(
                  name: 'patch', description: 'Update to newer patch releases')
            ])
          ],
        ),
        Option(
          name: ['-insecure'],
          description: 'Permit fetching from insecure origins',
        ),
        Option(
          name: ['-d'],
          description:
              'Only update go.mod and download source code needed to build packages',
        ),
      ],
      args: [Arg(name: 'url', isOptional: true)],
    ),
    FigSubcommand(
      name: ['install'],
      description: 'Compile and install packages and dependencies',
      options: [...globalOptions],
      args: [Arg(name: 'packages', isVariadic: true)],
    ),
    FigSubcommand(
      name: ['list'],
      description: 'List packages or modules',
      options: [
        ...globalOptions,
        Option(
          name: ['-compiled'],
          description: 'Set CompiledGoFiles to the Go source files',
        ),
        Option(
          name: ['-deps'],
          description:
              'Terate over not just the named packages but also all their dependencies',
        ),
        Option(
          name: ['-f'],
          insertValue: '-f \'{cursor}\'',
          description: 'Specify an alternate format for the list',
          args: [Arg(name: 'format')],
        ),
        Option(
          name: ['-e'],
          description:
              'Processes the erroneous packages with the usual printing',
        ),
        Option(
          name: ['-export'],
          description:
              'Set the Export field to the name of a file containing up-to-date export information for the given package',
        ),
        Option(
          name: ['-find'],
          description:
              'Identify the named packages but not resolve their dependencies',
        ),
        Option(
          name: ['-test'],
          description: 'Report test binaries',
        ),
        Option(
          name: ['-m'],
          description: 'List modules instead of packages',
        ),
        Option(
          name: ['-u'],
          description: 'Add information about available upgrades',
        ),
        Option(
          name: ['-versions'],
          description:
              'Set the Module\'s Versions field to a list of all known versions of that module',
        ),
        Option(
          name: ['-retracted'],
          description: 'Eport information about retracted module versions',
        ),
      ],
      args: [Arg(isOptional: true)],
    ),
    FigSubcommand(
      name: ['mod'],
      description: 'Module maintenance',
      subcommands: [
        FigSubcommand(
          name: ['download'],
          description: 'Download the named modules into the module cache',
          options: [
            Option(
              name: ['-json'],
              description:
                  'Print a sequence of JSON objects to standard output, describing each downloaded module (or failure)',
            ),
            Option(
              name: ['-x'],
              description:
                  'Print the commands download executes to standard error',
            ),
          ],
          args: [Arg(name: 'modules', isVariadic: true)],
        ),
        FigSubcommand(
          name: ['edit'],
          description: 'Edit and format go.mod files',
          options: [
            Option(
              name: ['-module'],
              description: 'Change the module\'s path',
            ),
            Option(
              name: ['-go'],
              requiresSeparator: true,
              description: 'Set the expected Go language version',
              args: [Arg(name: 'version')],
            ),
            Option(
              name: ['-require'],
              requiresSeparator: true,
              description: 'Add a requirement on the given module',
              args: [Arg(name: 'path')],
            ),
            Option(
              name: ['-droprequire'],
              requiresSeparator: true,
              description: 'Drop a requirement on the given module',
              args: [Arg(name: 'path')],
            ),
            Option(
              name: ['-exclude'],
              requiresSeparator: true,
              description: 'Add an exclusion on the given module',
              args: [Arg(name: 'path')],
            ),
            Option(
              name: ['-dropexclude'],
              requiresSeparator: true,
              description: 'Drop an exclusion on the given module',
              args: [Arg(name: 'path')],
            ),
            Option(
              name: ['-replace'],
              requiresSeparator: true,
              description:
                  'Add a replacement of the given module path and version pair',
              args: [Arg(name: 'path')],
            ),
            Option(
              name: ['-dropreplace'],
              requiresSeparator: true,
              description:
                  'Drops a replacement of the given module path and version pair',
              args: [Arg(name: 'path')],
            ),
            Option(
              name: ['-retract'],
              requiresSeparator: true,
              description: 'Add a retraction for the given version',
              args: [Arg(name: 'version')],
            ),
            Option(
              name: ['-dropretract'],
              requiresSeparator: true,
              description: 'Drop a retraction for the given version',
              args: [Arg(name: 'version')],
            ),
            Option(
              name: ['-fmt'],
              description:
                  'Format the go.mod file without making other changes',
            ),
            Option(
              name: ['-print'],
              description:
                  'Print the final go.mod in its text format instead of writing it back to disk',
            ),
            Option(
              name: ['-json'],
              description:
                  'Print the final go.mod in JSON format instead of writing it back to disk in text forma',
            ),
          ],
        ),
        FigSubcommand(
          name: ['graph'],
          description: 'Print the module requirement graph',
        ),
        FigSubcommand(
          name: ['init'],
          description:
              'Initialize and write a new go.mod file in the current directory',
          args: [Arg(name: 'module path', isOptional: true)],
        ),
        FigSubcommand(
          name: ['tidy'],
          description:
              'Ensure that the go.mod file matches the source code in the module',
          options: [
            Option(
              name: ['-e'],
              description:
                  'Attempt to proceed despite errors encountered while loading packages',
            ),
            Option(
              name: ['-v'],
              description: 'Print information about removed modules',
            ),
          ],
        ),
        FigSubcommand(
          name: ['vendor'],
          description:
              'Construct a directory named vendor in the main module\'s root directory',
          options: [
            Option(
              name: ['-e'],
              description:
                  'Attempt to proceed despite errors encountered while loading packages',
            ),
            Option(
              name: ['-v'],
              description: 'Print information about removed modules',
            ),
          ],
        ),
        FigSubcommand(
          name: ['verify'],
          description:
              'Check that dependencies of the main module stored in the module cache have not been modified since they were downloaded',
        ),
        FigSubcommand(
          name: ['why'],
          description:
              'Show a shortest path in the import graph from the main module to each of the listed packages',
          options: [
            Option(
              name: ['-m'],
              description: 'Treat its arguments as a list of modules',
            ),
            Option(
              name: ['-vendor'],
              description:
                  'Ignore imports in tests of packages outside the main module',
            ),
          ],
          args: [Arg(name: 'packages', isVariadic: true)],
        ),
      ],
    ),
    FigSubcommand(
      name: ['work'],
      description: 'Workspace maintenance',
      subcommands: [
        FigSubcommand(
          name: ['edit'],
          description: 'Edit go.work from tools or scripts',
          options: [
            Option(
              name: ['-fmt'],
              description:
                  'The -fmt flag reformats the go.work file without making other changes. This reformatting is also implied by any other modifications that use or rewrite the go.mod file. The only time this flag is needed is if no other flags are specified, as in \'go work edit -fmt\'',
            ),
            Option(
              name: ['-use'],
              requiresSeparator: true,
              description:
                  'The -use=path and -dropuse=path flags add and drop a use directive from the go.work file\'s set of module directories',
              args: [Arg(name: 'path')],
            ),
            Option(
              name: ['-dropuse'],
              requiresSeparator: true,
              description:
                  'The -use=path and -dropuse=path flags add and drop a use directive from the go.work file\'s set of module directories',
              args: [Arg(name: 'path')],
            ),
            Option(
              name: ['-replace'],
              requiresSeparator: true,
              description:
                  'The -replace=old@v=new@v and -dropreplace=old@v flags add and drop a replacement from the go.work file\'s set of replacements. The replacement must be a valid replacement, as in a go.mod file. See \'go help go.mod#replace\' for details',
              args: [Arg(name: 'old@v=new@v')],
            ),
            Option(
              name: ['-dropreplace'],
              requiresSeparator: true,
              description:
                  'The -replace=old@v=new@v and -dropreplace=old@v flags add and drop a replacement from the go.work file\'s set of replacements. The replacement must be a valid replacement, as in a go.mod file. See \'go help go.mod#replace\' for details',
              args: [Arg(name: 'old@v')],
            ),
            Option(
              name: ['-go'],
              requiresSeparator: true,
              description:
                  'The -go=version flag sets the go version in the go.work file',
              args: [Arg(name: 'version')],
            ),
            Option(
              name: ['-print'],
              description:
                  'The -print flag prints the final go.work in its text format instead of writing it back to disk',
            ),
            Option(
              name: ['-json'],
              description:
                  'The -json flag prints the final go.work in JSON format instead of writing it back to disk in text format',
            ),
          ],
        ),
        FigSubcommand(
          name: ['init'],
          description: 'Initialize a new go.work file',
          options: [
            Option(
              name: ['-r'],
              description:
                  'The -r flag recursively searches for modules in the given directories and adds them to the go.work file',
            ),
          ],
          args: [
            Arg(
                name: 'directories',
                isVariadic: true,
                isOptional: true,
                template: ['folders'])
          ],
        ),
        FigSubcommand(
          name: ['sync'],
          description: 'Sync go.work file to the build list',
        ),
        FigSubcommand(
          name: ['use'],
          description: 'Add a new module to the go.work file',
          options: [
            Option(
              name: ['-r'],
              description:
                  'The -r flag recursively searches for modules in the given directories and adds them to the go.work file',
            ),
          ],
          args: [
            Arg(name: 'directories', isVariadic: true, template: ['folders'])
          ],
        ),
      ],
    ),
  ],
);
