// AI-generated from TypeScript source: dart.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Dart 入口点参数
final FigArg dartEntryPoint = FigArg(
  name: 'dart-entry-point',
  description: 'The Dart file containing the main function',
);

/// 端口或绑定地址参数
final FigArg portOrBindAddress = FigArg(
  name: 'port-or-address',
  description: 'Port to observe',
);

/// 离线选项
final FigOption offline = FigOption(
  name: '--offline',
  description: 'Use cached packages instead of accessing the network',
  exclusiveOn: ['--no-offline'],
);

/// 非离线选项
final FigOption noOffline = FigOption(
  name: '--no-offline',
  description: 'Do not use cached packages instead of accessing the network',
  exclusiveOn: ['--offline'],
);

/// 模拟运行选项
final FigOption dryRun = FigOption(
  name: ['-n', '--dry-run'],
  description: 'Report what dependencies would change but don\'t change any',
);

/// 预编译选项
final FigOption precompile = FigOption(
  name: '--precompile',
  description: 'Precompile executables in immediate dependencies',
  exclusiveOn: ['--no-precompile'],
);

/// 非预编译选项
final FigOption noPrecompile = FigOption(
  name: '--no-precompile',
  description: 'Do not precompile executables in immediate dependencies',
  exclusiveOn: ['--precompile'],
);

/// 启用断言选项
final FigOption enableAsserts = FigOption(
  name: '--enable-asserts',
  description: 'Enable assert statements',
  exclusiveOn: ['--no-enable-asserts'],
);

/// 禁用断言选项
final FigOption noEnableAsserts = FigOption(
  name: '--no-enable-asserts',
  description: 'Do not enable assert statements',
  exclusiveOn: ['--enable-asserts'],
);

/// 定义环境变量的选项
final FigOption define = FigOption(
  name: ['-D', '--define'],
  description:
      'Define an environment declaration. To specify multiple declarations, '
      'use multiple options or use commas to separate key-value pairs. '
      'For example: dart compile aot-snapshot -D a=1,b=2 main.dart',
  args: [
    FigArg(
      name: 'key-value-pairs',
      description: 'Key-value pairs to define in Dart script',
      isVariadic: true,
    ),
  ],
);

/// 详细级别选项
final FigOption verbosity = FigOption(
  name: '--verbosity',
  description: 'Sets the verbosity level of the compilation',
  args: [
    FigArg(
      name: 'verbosity-level',
      suggestions: [
        FigSuggestion(
          name: 'all',
          description: 'Show all messages',
        ),
        FigSuggestion(
          name: 'error',
          description: 'Show only error messages',
        ),
        FigSuggestion(
          name: 'info',
          description: 'Show error, warning, and info messages',
        ),
        FigSuggestion(
          name: 'warning',
          description: 'Show only error and warning messages',
        ),
      ],
    ),
  ],
);

/// 全局选项列表
final List<FigOption> globalOptions = [
  FigOption(
    name: ['-h', '--help'],
    description: 'Print this usage information',
  ),
];

/// 编译选项列表
final List<FigOption> compileOptions = [
  FigOption(
    name: ['-o', '--output'],
    description: 'Write the output to <file-name>',
    args: [
      FigArg(
        name: 'dart-entry-point',
        template: 'filepaths',
      ),
    ],
  ),
  verbosity,
];

/// AOT 编译选项列表
final List<FigOption> aotOptions = [
  define,
  FigOption(
    name: '--enable-asserts',
    description: 'Enable assert statements',
  ),
  FigOption(
    name: ['-p', '--packages'],
    description:
        'Get package locations from the specified file instead of .packages. '
        '<path> can be relative or absolute',
    args: [
      FigArg(
        name: 'args-path',
        description: 'The path to draw packages from',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: ['--no-sound-null-safety', '--sound-null-safety'],
    description: 'Respect the nullability of types at runtime',
  ),
  FigOption(
    name: ['-S', '--save-debugging-info'],
    description:
        'Remove debugging information from the output and save it separately '
        'to the specified file. <path> can be relative or absolute',
    args: [
      FigArg(
        name: 'debug-info-path',
        description: 'The path to write debugging info to',
        template: 'filepaths',
      ),
    ],
  ),
];

/// Completion spec for `dart` CLI
final FigSpec dartSpec = FigSpec(
    name: 'dart',
    description: 'A command-line utility for Dart development',
    options: [
      ...globalOptions,
      Option(name: ['-v', '--verbose'], description: 'Print verbose output'),
      Option(name: '--version', description: 'Current Dart version'),
      Option(name: '--enable-analytics', description: 'Enables analytics'),
      Option(name: '--disable-analytics', description: 'Disables analytics')
    ],
    subcommands: [
      Subcommand(
          name: 'analyze',
          description: 'Analyze Dart code in a directory',
          options: [
            ...globalOptions,
            Option(
                name: '--fatal-infos',
                description: 'Treat info level issues as fatal'),
            Option(
                name: '--fatal-warnings',
                description:
                    'Treat warning level issues as fatal (defaults to on)',
                exclusiveOn: ['--no-fatal-warnings']),
            Option(
                name: '--no-fatal-warnings',
                description:
                    'Do not treat warning level issues as fatal (defaults to on)',
                exclusiveOn: ['--fatal-warnings'])
          ],
          args: [
            Arg(
                name: 'directory',
                description: 'Dart project directory to analyze',
                template: 'folders')
          ]),
      Subcommand(
          name: 'compile',
          description: 'Compile Dart to various formats',
          options: [
            ...globalOptions
          ],
          subcommands: [
            Subcommand(
                name: 'aot-snapshot',
                description: 'Compile Dart to an AOT snapshot',
                args: dartEntryPoint,
                options: [...globalOptions, ...compileOptions, ...aotOptions]),
            Subcommand(
                name: 'exe',
                description: 'Compile Dart to a self-contained executable',
                args: dartEntryPoint,
                options: [...globalOptions, ...compileOptions, ...aotOptions]),
            Subcommand(
                name: 'jit-snapshot',
                description: 'Compile Dart to a JIT snapshot',
                args: dartEntryPoint,
                options: [...globalOptions, ...compileOptions]),
            Subcommand(
                name: 'js',
                description: 'Compile Dart to JavaScript',
                args: dartEntryPoint,
                options: [
                  ...globalOptions,
                  ...compileOptions,
                  Option(
                      name: ['-m', '--minified'],
                      description: 'Generate minified output'),
                  define
                ]),
            Subcommand(
                name: 'kernel',
                description: 'Compile Dart to a kernel snapshot',
                args: dartEntryPoint,
                options: [...globalOptions, ...compileOptions])
          ]),
      Subcommand(
          name: 'create',
          description: 'Create a new Dart project',
          options: [
            ...globalOptions,
            Option(
                name: ['-t', '--template'],
                description: 'The project template to use',
                args: [
                  Arg(
                      name: 'template-type',
                      defaultValue: 'console-simple',
                      suggestions: [
                        FigSuggestion(
                            name: 'console',
                            description: 'A simple command-line application'),
                        FigSuggestion(
                            name: 'package',
                            description:
                                'A starting point for Dart libraries or applications'),
                        FigSuggestion(
                            name: 'server-shelf',
                            description:
                                'A web server built using package:shelf'),
                        FigSuggestion(
                            name: 'web',
                            description:
                                'A web app that uses only core Dart libraries')
                      ])
                ]),
            Option(
                name: '--pub',
                description:
                    'Run \'pub get\' after the project has been created. Default to on',
                exclusiveOn: ['--no-pub']),
            Option(
                name: '--no-pub',
                description:
                    'Do not run \'pub get\' after the project has been created. Default to on',
                exclusiveOn: ['--pub']),
            Option(
                name: '--force',
                description:
                    'Force project generation, even if the target directory already exists')
          ]),
      Subcommand(
          name: 'fix',
          description: 'Apply automated fixes to Dart source code',
          options: [
            ...globalOptions,
            Option(name: [
              '-n',
              '--dry-run'
            ], description: 'Preview the proposed changes but make no changes'),
            Option(name: '--apply', description: 'Apply the proposed changes')
          ]),
      Subcommand(
          name: 'format',
          description: 'Idiomatically format Dart source code',
          options: [
            ...globalOptions,
            Option(
                name: ['-v', '--verbose'],
                description: 'Show all options and flags with --help'),
            Option(
                name: ['-o', '--output'],
                description: 'Set where to write formatted output',
                args: [
                  Arg(
                      name: 'json',
                      description: 'Print code and selection as JSON'),
                  Arg(name: 'none', description: 'Discard output'),
                  Arg(name: 'show', description: 'Print code to terminal'),
                  Arg(
                      name: 'write',
                      description: 'Overwrite formatted files on disk'),
                  Arg(
                      name: '--show',
                      description: 'Set which filenames to print',
                      suggestions: [
                        FigSuggestion(
                            name: 'all',
                            description: 'All visited files and directories'),
                        FigSuggestion(
                            name: 'changed',
                            description:
                                'Only the names of files whose formatting is changed'),
                        FigSuggestion(
                            name: 'none',
                            description: 'No file names or directories')
                      ]),
                  Arg(
                      name: '--summary',
                      description:
                          'Show the specified summary after formatting',
                      suggestions: [
                        FigSuggestion(
                            name: 'line', description: 'Single-line summary'),
                        FigSuggestion(name: 'none', description: 'No summary'),
                        FigSuggestion(
                            name: 'profile',
                            description: 'How long it took to format each file')
                      ])
                ]),
            Option(
                name: '--set-exit-if-changed',
                description:
                    'Return exit code 1 if there are any formatting changes'),
            Option(name: '--fix', description: 'Apply all style fixes'),
            Option(
                name: '--fix-doc-comments',
                description: 'Use triple slash for documentation comments'),
            Option(
                name: '--fix-function-typedefs',
                description: 'Use new syntax for function type typedefs'),
            Option(
                name: '--fix-named-default-separator',
                description:
                    'Use \'=\' as the separator before named parameter default values'),
            Option(
                name: '--fix-optional-const',
                description:
                    'Remove \'const\' keyword inside constant context'),
            Option(
                name: '--fix-optional-new',
                description: 'Remove \'new\' keyword'),
            Option(
                name: '--fix-single-cascade-statements',
                description:
                    'Remove unnecessary single cascades from expression statements'),
            Option(
                name: ['-l', '--line-length'],
                description: 'Wrap lines longer than this. Defaults to 80',
                args: [
                  Arg(
                      name: 'line-length',
                      description: 'Line length to wrap',
                      suggestions: [
                        FigSuggestion(name: '80'),
                        FigSuggestion(name: '120')
                      ])
                ]),
            Option(
                name: ['-i', '--indent'],
                description: 'Add this many spaces of leading indentation',
                args: [Arg(name: 'number-of-spaces')]),
            Option(
                name: '--follow-links',
                description:
                    'Follow links to files and directories. If unset, links will be ignored'),
            Option(name: '--version', description: 'Show dart_style version'),
            Option(
                name: '--selection',
                description:
                    'Track selection (given as \'start:length\') through formatting'),
            Option(
                name: '--stdin-name',
                description:
                    'Use this path in error messages when input is read from stdin. (defaults to \'stdin\')',
                args: [Arg(name: 'name')])
          ],
          args: [
            Arg(
                name: 'files-or-directory',
                description: 'The files or directories to format',
                template: ['filepaths', 'folders'])
          ]),
      Subcommand(
          name: 'migrate',
          description: 'Perform null safety migration on a project',
          options: [
            ...globalOptions,
            Option(
                name: ['-v', '--verbose'],
                description: 'Show additional command output'),
            Option(
                name: '--apply-changes',
                description:
                    'Apply the proposed null safety changes to the files on disk'),
            Option(
                name: '--ignore-errors',
                description:
                    'Attempt to perform null safety analysis even if the project has analysis errors'),
            Option(
                name: '--skip-import-check',
                description:
                    'Go ahead with migration even if some imported files have not yet been migrated'),
            Option(
                name: '--web-preview',
                description:
                    'Show and interactive preview of the proposed null safety changes in a browser window. (defaults to on)',
                exclusiveOn: ['--no-web-preview']),
            Option(
                name: '--no-web-preview',
                description:
                    'Do not show and interactive preview of the proposed null safety changes in a browser window. (defaults to off)',
                exclusiveOn: ['--web-preview']),
            Option(
                name: '--preview-hostname',
                description:
                    'Run the preview server on the specified hostname. If not specified, \'localhost\' is used. Use \'any\' to specify IPv6.any or IPv4.any. (defaults to the \'localhost\')',
                args: [Arg(name: 'host')]),
            Option(
                name: '--preview-port',
                description:
                    'Run the preview server on the specified port. If not specified, dynamically allocate a port',
                args: [Arg(name: 'port')]),
            Option(
                name: '--summary',
                description:
                    'Output a machine-readable summary of migration changes',
                args: [Arg(name: 'path', template: 'filepaths')]),
            Option(
                name: '--ignore-exceptions',
                description:
                    'Attempt to perform null safety analysis even if exceptions occur'),
            Option(
                name: '--sdk-path',
                description: 'The path to the Dart SDK',
                args: [Arg(name: 'sdk-path')])
          ]),
      Subcommand(name: 'pub', description: 'Work with packages', options: [
        ...globalOptions,
        Option(
            name: '--trace',
            description: 'Print debugging information when an error occurs',
            exclusiveOn: ['--no-trace']),
        Option(
            name: '--no-trace',
            description:
                'Do not print debugging information when an error occurs',
            exclusiveOn: ['--trace']),
        Option(
            name: ['-v', '--verbose'],
            description: 'Shortcut for \'--verbose=all')
      ], subcommands: [
        Subcommand(
            name: 'add',
            description: 'Add a dependency to pubspec.yaml',
            options: [
              ...globalOptions,
              Option(
                  name: ['-d', '--dev'],
                  description:
                      'Adds package to the development dependencies instead'),
              Option(name: '--git-url', description: 'Git URL of the package'),
              Option(
                  name: '--git-ref',
                  description: 'Git branch or commit to be retrieved'),
              Option(
                  name: '--git-path',
                  description: 'Path of git package in repository'),
              Option(
                  name: '--hosted-url',
                  description: 'URL of package host server'),
              Option(name: '--path', description: 'Local path'),
              Option(name: '--sdk', description: 'SDK source for package'),
              offline,
              noOffline,
              dryRun,
              precompile,
              noPrecompile
            ],
            args: [
              Arg(name: 'package', description: 'Dart pub package name')
            ]),
        Subcommand(
            name: 'cache',
            description: 'Work with the Pub system cache',
            options: [
              ...globalOptions
            ],
            subcommands: [
              Subcommand(
                  name: 'add',
                  description: 'Install a package',
                  options: [
                    ...globalOptions,
                    Option(
                        name: '--all',
                        description: 'Install all matching versions'),
                    Option(
                        name: ['-v', '--version'],
                        description: 'Version constraint')
                  ],
                  args: [
                    Arg(name: 'package')
                  ]),
              Subcommand(
                  name: 'repair',
                  description: 'Reinstall a cached package',
                  options: globalOptions)
            ]),
        Subcommand(
            name: 'deps',
            description: 'Print package dependencies',
            options: [
              ...globalOptions,
              Option(
                  name: ['-s', '--style'],
                  description: 'How output should be displayed',
                  args: [
                    Arg(name: 'style', suggestions: [
                      FigSuggestion(name: 'compact'),
                      FigSuggestion(name: 'tree'),
                      FigSuggestion(name: 'list')
                    ])
                  ]),
              Option(
                  name: '--dev',
                  description: 'Include dev dependencies. (defaults to on)',
                  exclusiveOn: ['--no-dev']),
              Option(
                  name: '--no-dev',
                  description:
                      'Do not include dev dependencies. (defaults to off)',
                  exclusiveOn: ['--dev']),
              Option(
                  name: '--executables',
                  description: 'List all available executables')
            ]),
        Subcommand(
            name: 'downgrade',
            description: 'Downgrade packages in a Flutter project',
            options: [...globalOptions, offline, noOffline, dryRun]),
        Subcommand(
            name: 'get',
            description: 'Get packages in a Flutter project',
            options: [
              ...globalOptions,
              offline,
              noOffline,
              dryRun,
              precompile,
              noPrecompile
            ]),
        Subcommand(
            name: 'global',
            description: 'Work with Pub global packages',
            options: globalOptions,
            subcommands: [
              Subcommand(
                  name: 'activate',
                  description:
                      'Make a package\'s executables globally available',
                  options: [
                    ...globalOptions,
                    Option(
                        name: ['-s', '--source'],
                        description: 'The source used to find the package',
                        args: [
                          Arg(name: 'source', suggestions: [
                            FigSuggestion(name: 'git'),
                            FigSuggestion(name: 'hosted'),
                            FigSuggestion(name: 'path')
                          ])
                        ]),
                    Option(
                        name: '--no-executables',
                        description: 'Do not put executables on PATH'),
                    Option(
                        name: ['-x', '--executable'],
                        description: 'Executable(s) to place on PATH'),
                    Option(
                        name: '--overwrite',
                        description:
                            'Overwrite executables from other packages with the same name'),
                    Option(
                        name: ['-u', '--hosted-url'],
                        description:
                            'A custom pub server URL for the package. Only applies when using the \'hosted\' source',
                        args: [Arg(name: 'url')])
                  ]),
              Subcommand(
                  name: 'deactivate',
                  description: 'Remove a previously activated package',
                  options: globalOptions),
              Subcommand(
                  name: 'list',
                  description: 'List globally activated packages',
                  options: globalOptions),
              Subcommand(
                  name: 'run',
                  description:
                      'Run an executable from a globally activated package',
                  options: [
                    ...globalOptions,
                    enableAsserts,
                    noEnableAsserts,
                    Option(
                        name: '--enable-experiment',
                        description:
                            'Runs the executable in a VM with the given experiments enabled. (Will disable snapshotting, resulting in slower startup)',
                        args: [Arg(name: 'experiment')]),
                    Option(
                        name: '--sound-null-safety',
                        description:
                            'Override the default null safety execution mode',
                        exclusiveOn: ['--no-sound-null-safety']),
                    Option(
                        name: '--no-sound-null-safety',
                        description:
                            'Do not override the default null safety execution mode',
                        exclusiveOn: ['--sound-null-safety'])
                  ])
            ]),
        Subcommand(
            name: 'login',
            description: 'Log into pub.dev',
            options: globalOptions),
        Subcommand(
            name: 'logout',
            description: 'Log out of pub.dev',
            options: globalOptions),
        Subcommand(
            name: 'outdated',
            description:
                'Analyze dependencies to find which ones can be upgraded',
            options: [
              ...globalOptions,
              Option(
                  name: '--color',
                  description:
                      'Color the the output. Defaults to color when connected to a terminal, and no-color otherwise',
                  exclusiveOn: ['--no-color']),
              Option(
                  name: '--no-color',
                  description:
                      'Do not color the output. Defaults to color when connected to a terminal, and no-color otherwise',
                  exclusiveOn: ['--color']),
              Option(
                  name: '--dependency-overrides',
                  description:
                      'Show resolutions with \'dependency_overrides\'. (defaults to on)',
                  exclusiveOn: ['--no-dependency-overrides']),
              Option(
                  name: '--no-dependency-overrides',
                  description:
                      'Do not show resolutions with \'dependency_overrides\'. (defaults to on)',
                  exclusiveOn: ['--dependency-overrides']),
              Option(
                  name: '--json',
                  description: 'Output the results sing a JSON format'),
              Option(
                  name: '--mode',
                  description:
                      'Highlight versions with PROPERTY. Only packages missing the PROPERTY will be included unless --show-all',
                  args: [
                    Arg(name: 'property', suggestions: [
                      FigSuggestion(name: 'outdated'),
                      FigSuggestion(name: 'null-safety')
                    ])
                  ]),
              Option(
                  name: '--prereleases',
                  description:
                      'Include prereleases in latest version. (defaults to on in --mode=null-safety)',
                  exclusiveOn: ['--no-prereleases']),
              Option(
                  name: '--no-prereleases',
                  description:
                      'Do not include prereleases in latest version. (defaults to off in --mode=null-safety)',
                  exclusiveOn: ['--prereleases']),
              Option(
                  name: '--show-all',
                  description:
                      'Include dependencies that are already fulfilling --mode',
                  exclusiveOn: ['--no-show-all']),
              Option(
                  name: '--no-show-all',
                  description:
                      'Do not include dependencies that are already fulfilling --mode',
                  exclusiveOn: ['--show-all']),
              Option(
                  name: ['--transitive', '--no-transitive'],
                  description:
                      'Show transitive dependencies. (defaults to off in --mode=null-safety')
            ]),
        Subcommand(
            name: 'publish',
            description: 'Publish the current package to pub.dartlang.org',
            options: [
              ...globalOptions,
              dryRun,
              Option(
                  name: ['-f', '--force'],
                  description:
                      'Publish without confirmation if there are no errors')
            ]),
        Subcommand(
            name: 'remove',
            description: 'Removes a dependency from the current package',
            options: [
              ...globalOptions,
              offline,
              noOffline,
              dryRun,
              precompile,
              noPrecompile
            ]),
        Subcommand(
            name: 'upgrade',
            description:
                'Upgrade the current package\'s dependencies to latest versions',
            options: [
              ...globalOptions,
              offline,
              noOffline,
              dryRun,
              precompile,
              noPrecompile,
              Option(
                  name: '--null-safety',
                  description:
                      'Upgrade constraints in pubspec.yaml to null-safety versions'),
              Option(
                  name: '--major-versions',
                  description:
                      'Upgrades packages to their latest resolvable versions, and updates pubspec.yaml')
            ]),
        Subcommand(
            name: 'uploader',
            description: 'Manage uploaders for a package on pub.dev',
            options: [
              ...globalOptions,
              Option(
                  name: '--package',
                  description:
                      'The package whose uploaders will be modified. (defaults to the current package)')
            ])
      ]),
      Subcommand(name: 'run', description: 'Run a Dart program', options: [
        ...globalOptions,
        Option(
            name: '--observe',
            description:
                'The observe flag is a convenience flag used to run a program with a set of common options. Useful for debugging',
            args: portOrBindAddress),
        Option(
            name: '--enable-vm-service',
            description:
                'Enables the VM service and listens on the specified port for connections (default port number is 8181, default dind address is localhost)',
            args: portOrBindAddress),
        Option(
            name: ['--pause-isolates-on-exit', '--no-pause-isolates-on-exit'],
            description:
                'Pause isolates on exit when running with --enable-vm-service'),
        Option(
            name: '--pause-isolates-on-unhandled-exceptions',
            description:
                'Pause isolates when an unhandled exception is encountered when running with --enable-vm-service',
            exclusiveOn: ['--no-pause-isolates-on-unhandled-exceptions']),
        Option(
            name: '--no-pause-isolates-on-unhandled-exceptions',
            description:
                'Do not pause isolates when an unhandled exception is encountered when running with --enable-vm-service',
            exclusiveOn: ['--pause-isolates-on-unhandled-exceptions']),
        Option(
            name: '--warn-on-pause-with-no-debugger',
            description:
                'Print a warning when an isolate pauses with no attahed debugger when running with --enable-vm-service',
            exclusiveOn: ['--no-warn-on-pause-with-no-debugger']),
        Option(
            name: '--no-warn-on-pause-with-no-debugger',
            description:
                'Do not print a warning when an isolate pauses with no attahed debugger when running with --enable-vm-service',
            exclusiveOn: ['--warn-on-pause-with-no-debugger']),
        Option(
            name: '--pause-isolates-on-start',
            description:
                'Pause isolates on start when running with --enable-vm-service',
            exclusiveOn: ['--no-pause-isolates-on-start']),
        Option(
            name: '--no-pause-isolates-on-start',
            description:
                'Do not pause isolates on start when running with --enable-vm-service',
            exclusiveOn: ['--pause-isolates-on-start']),
        enableAsserts,
        noEnableAsserts,
        verbosity,
        define,
        Option(
            name: '--disable-service-auth-codes',
            description:
                'Disables the requirement for an authentication code to communicate with the VM service. Authentication codes help protect against CSRF attacks, so it is not recommended to disable them unless behind a firewall on a secure device'),
        Option(
            name: '--enable-service-port-fallback',
            description:
                'When the VM service is told to bind to a particular port, fallback to 0 if it fails to bind instead of failing to start'),
        Option(
            name: '--namespace',
            description:
                'The path to a directory that dart:io calls will treat as the root of the filesystem',
            args: [Arg(name: 'path', template: 'folders')]),
        Option(
            name: '--root-certs-file',
            description:
                'The path to a file containing the trusted root certificates to use for secure socket connections',
            args: [Arg(name: 'path', template: 'filepaths')]),
        Option(
            name: '--root-certs-cache',
            description:
                'The path to a cache directory containing the trusted root certificates to use for secure socket connections',
            args: [Arg(name: 'path', template: 'folders')]),
        Option(
            name: '--trace-loading',
            description: 'Enables tracing of library and script loading'),
        Option(
            name: '--enable-experiment',
            description:
                'Enable one or more experimental features (see dart.dev/go/experiments',
            args: [
              Arg(name: 'experiment', suggestions: [
                FigSuggestion(
                    name: 'const-functions',
                    description:
                        'Allow more of the Dart language to be executed in const expressions'),
                FigSuggestion(
                    name: 'extension-methods',
                    description:
                        'Extension methods (no-op - enabled by default)'),
                FigSuggestion(
                    name: 'extension-types', description: 'Extension types'),
                FigSuggestion(
                    name: 'generic-metadata',
                    description:
                        'Allow annotations to accept type arguments; also allow generic function types as type arguments'),
                FigSuggestion(
                    name: 'non-nullable',
                    description:
                        'Non-nullable by default. (no-op - on by default)'),
                FigSuggestion(
                    name: 'nonfunction-type-aliases',
                    description:
                        'Type aliases define a <type>, not just <functionType>. (no-op - enabled by default)'),
                FigSuggestion(
                    name: 'triple-shift', description: 'Triple-shift operator'),
                FigSuggestion(
                    name: 'value-class', description: 'Value classes'),
                FigSuggestion(name: 'variance', description: 'Sound variance')
              ])
            ])
      ]),
      Subcommand(
          name: 'test',
          description: 'Run tests for a project',
          options: [...globalOptions])
    ]);
