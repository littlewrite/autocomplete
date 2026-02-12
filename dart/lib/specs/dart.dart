// Auto-generated from TypeScript source: dart.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dart` CLI
final FigSpec dartSpec = FigSpec(
  name: 'dart',
  description: 'A command-line utility for Dart development',
  options: [
    Option(
      name: ['-v', '--verbose'],
      description: 'Print verbose output'
    ),
    Option(
      name: '--version',
      description: 'Current Dart version'
    ),
    Option(
      name: '--enable-analytics',
      description: 'Enables analytics'
    ),
    Option(
      name: '--disable-analytics',
      description: 'Disables analytics'
    )
  ],
  subcommands: [
    Subcommand(
      name: 'analyze',
      description: 'Analyze Dart code in a directory',
      options: [
        Option(
          name: '--fatal-infos',
          description: 'Treat info level issues as fatal'
        ),
        Option(
          name: '--fatal-warnings',
          description: 'Treat warning level issues as fatal (defaults to on)',
          exclusiveOn: ['--no-fatal-warnings']
        ),
        Option(
          name: '--no-fatal-warnings',
          description: 'Do not treat warning level issues as fatal (defaults to on)',
          exclusiveOn: ['--fatal-warnings']
        )
      ],
      args: [
        Arg(
        name: 'directory',
        description: 'Dart project directory to analyze',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'compile',
      description: 'Compile Dart to various formats',
      options: [],
      subcommands: [
        Subcommand(
          name: 'aot-snapshot',
          description: 'Compile Dart to an AOT snapshot',
          options: []
        ),
        Subcommand(
          name: 'exe',
          description: 'Compile Dart to a self-contained executable',
          options: []
        ),
        Subcommand(
          name: 'jit-snapshot',
          description: 'Compile Dart to a JIT snapshot',
          options: []
        ),
        Subcommand(
          name: 'js',
          description: 'Compile Dart to JavaScript',
          options: [
            Option(
              name: ['-m', '--minified'],
              description: 'Generate minified output'
            )
          ]
        ),
        Subcommand(
          name: 'kernel',
          description: 'Compile Dart to a kernel snapshot',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a new Dart project',
      options: [
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
                description: 'A simple command-line application'
              ),
              FigSuggestion(
                name: 'package',
                description: 'A starting point for Dart libraries or applications'
              ),
              FigSuggestion(
                name: 'server-shelf',
                description: 'A web server built using package:shelf'
              ),
              FigSuggestion(
                name: 'web',
                description: 'A web app that uses only core Dart libraries'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--pub',
          description: 'Run \'pub get\' after the project has been created. Default to on',
          exclusiveOn: ['--no-pub']
        ),
        Option(
          name: '--no-pub',
          description: 'Do not run \'pub get\' after the project has been created. Default to on',
          exclusiveOn: ['--pub']
        ),
        Option(
          name: '--force',
          description: 'Force project generation, even if the target directory already exists'
        )
      ]
    ),
    Subcommand(
      name: 'fix',
      description: 'Apply automated fixes to Dart source code',
      options: [
        Option(
          name: ['-n', '--dry-run'],
          description: 'Preview the proposed changes but make no changes'
        ),
        Option(
          name: '--apply',
          description: 'Apply the proposed changes'
        )
      ]
    ),
    Subcommand(
      name: 'format',
      description: 'Idiomatically format Dart source code',
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: 'Show all options and flags with --help'
        ),
        Option(
          name: ['-o', '--output'],
          description: 'Set where to write formatted output',
          args: [
            Arg(
              name: 'json',
              description: 'Print code and selection as JSON'
            ),
            Arg(
              name: 'none',
              description: 'Discard output'
            ),
            Arg(
              name: 'show',
              description: 'Print code to terminal'
            ),
            Arg(
              name: 'write',
              description: 'Overwrite formatted files on disk'
            ),
            Arg(
              name: '--show',
              description: 'Set which filenames to print',
              suggestions: [
                FigSuggestion(
                  name: 'all',
                  description: 'All visited files and directories'
                ),
                FigSuggestion(
                  name: 'changed',
                  description: 'Nly the names of files whose formatting is changed'
                ),
                FigSuggestion(
                  name: 'none',
                  description: 'No file names or directories'
                )
              ]
            ),
            Arg(
              name: '--summary',
              description: 'Show the specified summary after formatting',
              suggestions: [
                FigSuggestion(
                  name: 'line',
                  description: 'Single-line summary'
                ),
                FigSuggestion(
                  name: 'none',
                  description: 'No summary'
                ),
                FigSuggestion(
                  name: 'profile',
                  description: 'How long it took to format each file'
                )
              ]
            )
          ]
        ),
        Option(
          name: '--set-exit-if-changed',
          description: 'Return exist code 1 if there are any formatting changes'
        ),
        Option(
          name: '--fix',
          description: 'Apply all style fixes'
        ),
        Option(
          name: '--fix-doc-comments',
          description: 'Use triple slash for documentation comments'
        ),
        Option(
          name: '--fix-function-typedefs',
          description: 'Use new syntax for function type typedefs'
        ),
        Option(
          name: '--fix-named-default-separator',
          description: 'Use \'=\' as the separator before named parameter default values'
        ),
        Option(
          name: '--fix-optional-const',
          description: 'Remove \'const\' keyword inside constant context'
        ),
        Option(
          name: '--fix-optional-new',
          description: 'Remove \'new\' keyword'
        ),
        Option(
          name: '--fix-single-cascade-statements',
          description: 'Remove unnecessary single cascades from expression statements'
        ),
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
            ]
          )
          ]
        ),
        Option(
          name: ['-i', '--indent'],
          description: 'Add this many spaces of leading indentation',
          args: [
            Arg(
            name: 'number-of-space'
          )
          ]
        ),
        Option(
          name: '--follow-links',
          description: 'Follow links to files and directories. If unset, links will be ignored'
        ),
        Option(
          name: '--version',
          description: 'Show dart_style version'
        ),
        Option(
          name: '--selection',
          description: 'Track selection (given as \'start:length\') through formatting'
        ),
        Option(
          name: '--stdin-name',
          description: 'Use this path in error messages when input is read from stdin. (defaults to \'stdin\')',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'files-or-directory',
        description: 'The files or directories to format',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Perform null safety migration on a project',
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: 'Show additional command output'
        ),
        Option(
          name: '--apply-changes',
          description: 'Apply the proposed null safety changes to the files on disk'
        ),
        Option(
          name: '--ignore-errors',
          description: 'Attempt to perform null safety analysis even if the project has analysis errors'
        ),
        Option(
          name: '--skip-import-check',
          description: 'Go ahead with migration even if some imported files have not yet been migrated'
        ),
        Option(
          name: '--web-preview',
          description: 'Show and interactive preview of the proposed null safety changes in a browser window. (defaults to on)',
          exclusiveOn: ['--no-web-preview']
        ),
        Option(
          name: '--no-web-preview',
          description: 'Do not show and interactive preview of the proposed null safety changes in a browser window. (defaults to off)',
          exclusiveOn: ['--web-preview']
        ),
        Option(
          name: '--preview-hostname',
          description: 'Run the preview server on the specified hostname. If not specified, \'localhost\' is used. Use \'any\' to specify IPv6.any or IPv4.any. (defaults to the \'localhost\')',
          args: [
            Arg(
            name: 'host'
          )
          ]
        ),
        Option(
          name: '--preview-port',
          description: 'Run the preview server on the specified port. If not specified, dynamically allocate a port',
          args: [
            Arg(
            name: 'port'
          )
          ]
        ),
        Option(
          name: '--summary',
          description: 'Output a machine-readable summary of migration changes',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--ignore-exceptions',
          description: 'Attempt to perform null safety analysis even if exceptions occur'
        ),
        Option(
          name: '--sdk-path',
          description: 'The path to the Dart SDK',
          args: [
            Arg(
            name: 'sdk-pat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pub',
      description: 'Work with packages',
      options: [
        Option(
          name: '--trace',
          description: 'Print debugging information when an error occurs',
          exclusiveOn: ['--no-trace']
        ),
        Option(
          name: '--no-trace',
          description: 'Do not print debugging information when an error occurs',
          exclusiveOn: ['--trace']
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Shortcut for \'--verbose=all'
        )
      ],
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Add a dependency to pubspec.yaml',
          options: [
            Option(
              name: ['-d', '--dev'],
              description: 'Adds package to the development dependencies instead'
            ),
            Option(
              name: '--git-url',
              description: 'Git URL of the package'
            ),
            Option(
              name: '--git-ref',
              description: 'Git branch or commit to be retrieved'
            ),
            Option(
              name: '--git-path',
              description: 'Path of git package in repository'
            ),
            Option(
              name: '--hosted-url',
              description: 'URL of package host server'
            ),
            Option(
              name: '--path',
              description: 'Local path'
            ),
            Option(
              name: '--sdk',
              description: 'SDK source for package'
            )
          ],
          args: [
            Arg(
            name: 'package',
            description: 'Dart pub package nam'
          )
          ]
        ),
        Subcommand(
          name: 'cache',
          description: 'Work with the Pub system cache',
          options: [],
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Install a package',
              options: [
                Option(
                  name: '--all',
                  description: 'Install all matching versions'
                ),
                Option(
                  name: ['-v', '--version'],
                  description: 'Version constraint'
                )
              ],
              args: [
                Arg(
                name: 'packag'
              )
              ]
            ),
            Subcommand(
              name: 'repair',
              description: 'Reinstall a cached package'
            )
          ]
        ),
        Subcommand(
          name: 'deps',
          description: 'Print package dependencies',
          options: [
            Option(
              name: ['-s', '--style'],
              description: 'How output should be displayed',
              args: [
                Arg(
                name: 'style',
                suggestions: [
                  FigSuggestion(name: 'compact'),
                  FigSuggestion(name: 'tree'),
                  FigSuggestion(name: 'list')
                ]
              )
              ]
            ),
            Option(
              name: '--dev',
              description: 'Include dev dependencies. (defaults to on)',
              exclusiveOn: ['--no-dev']
            ),
            Option(
              name: '--no-dev',
              description: 'Do not include dev dependencies. (defaults to off)',
              exclusiveOn: ['--dev']
            ),
            Option(
              name: '--executables',
              description: 'List all available executables'
            )
          ]
        ),
        Subcommand(
          name: 'downgrade',
          description: 'Downgrade packages in a Flutter project',
          options: []
        ),
        Subcommand(
          name: 'get',
          description: 'Get packages in a Flutter project',
          options: []
        ),
        Subcommand(
          name: 'global',
          description: 'Work with Pub global packages',
          subcommands: [
            Subcommand(
              name: 'activate',
              description: 'Make a package\'s executables globally available',
              options: [
                Option(
                  name: ['-s', '--source'],
                  description: 'The source used to find the package',
                  args: [
                    Arg(
                    name: 'source',
                    suggestions: [
                      FigSuggestion(name: 'git'),
                      FigSuggestion(name: 'hosted'),
                      FigSuggestion(name: 'path')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--no-executables',
                  description: 'Do not put executables on PATH'
                ),
                Option(
                  name: ['-x', '--executable'],
                  description: 'Executable(s) to place on PATH'
                ),
                Option(
                  name: '--overwrite',
                  description: 'Overwrite executables from other packages with the same name'
                ),
                Option(
                  name: ['-u', '--hosted-url'],
                  description: 'A custom pub server URL for the package. Only applies when using the \'hosted\' source',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'deactivate',
              description: 'Remove a previously activated package'
            ),
            Subcommand(
              name: 'list',
              description: 'List globally activated packages'
            ),
            Subcommand(
              name: 'run',
              description: 'Run an executable from a globally activated package',
              options: [
                Option(
                  name: '--enable-experiment',
                  description: 'Runs the executable in a VM with the given experiments enabled. (Will disable snapshotting, resulting in slower startup)',
                  args: [
                    Arg(
                    name: 'experimen'
                  )
                  ]
                ),
                Option(
                  name: '--sound-null-safety',
                  description: 'Override the default null safety execution mode',
                  exclusiveOn: ['--no-sound-null-safety']
                ),
                Option(
                  name: '--no-sound-null-safety',
                  description: 'Do not override the default null safety execution mode',
                  exclusiveOn: ['--sound-null-safety']
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'login',
          description: 'Log into pub.dev'
        ),
        Subcommand(
          name: 'logout',
          description: 'Log out of pub.dev'
        ),
        Subcommand(
          name: 'outdated',
          description: 'Analyze dependencies to find which ones can be upgraded',
          options: [
            Option(
              name: '--color',
              description: 'Color the the output. Defaults to color when connected to a terminal, and no-color otherwise',
              exclusiveOn: ['--no-color']
            ),
            Option(
              name: '--no-color',
              description: 'Do not color the output. Defaults to color when connected to a terminal, and no-color otherwise',
              exclusiveOn: ['--color']
            ),
            Option(
              name: '--dependency-overrides',
              description: 'Show resolutions with \'dependency_overrides\'. (defaults to on)',
              exclusiveOn: ['--no-dependency-overrides']
            ),
            Option(
              name: '--no-dependency-overrides',
              description: 'Do not show resolutions with \'dependency_overrides\'. (defaults to on)',
              exclusiveOn: ['--dependency-overrides']
            ),
            Option(
              name: '--json',
              description: 'Output the results sing a JSON format'
            ),
            Option(
              name: '--mode',
              description: 'Highlight versions with PROPERTY. Only packages missing the PROPERTY will be included unless --show-all',
              args: [
                Arg(
                name: 'property',
                suggestions: [
                  FigSuggestion(name: 'outdated'),
                  FigSuggestion(name: 'null-safety')
                ]
              )
              ]
            ),
            Option(
              name: '--prereleases',
              description: 'Include prereleases in latest version. (defaults to on in --mode=null-safety)',
              exclusiveOn: ['--no-prereleases']
            ),
            Option(
              name: '--no-prereleases',
              description: 'Do not include prereleases in latest version. (defaults to off in --mode=null-safety)',
              exclusiveOn: ['--prereleases']
            ),
            Option(
              name: '--show-all',
              description: 'Include dependencies that are already fulfilling --mode',
              exclusiveOn: ['--no-show-all']
            ),
            Option(
              name: '--no-show-all',
              description: 'Do not include dependencies that are already fulfilling --mode',
              exclusiveOn: ['--show-all']
            ),
            Option(
              name: ['--transitive', '--no-transitive'],
              description: 'Show transitive dependencies. (defaults to off in --mode=null-safety'
            )
          ]
        ),
        Subcommand(
          name: 'publish',
          description: 'Publish the current package to pub.dartlang.org',
          options: [
            Option(
              name: ['-f', '--force'],
              description: 'Publish without confirmation if there are no errors'
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Removes a dependency from the current package',
          options: []
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade the current package\'s dependencies to latest versions',
          options: [
            Option(
              name: '--null-safety',
              description: 'Upgrade constraints in pubspec.yaml to null-safety versions'
            ),
            Option(
              name: '--major-versions',
              description: 'Upgrades packages to their latest resolvable versions, and updates pubspec.yaml'
            )
          ]
        ),
        Subcommand(
          name: 'uploader',
          description: 'Manage uploaders for a package on pub.dev',
          options: [
            Option(
              name: '--package',
              description: 'The package whose uploaders will be modified. (defaults to the current package)'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run a Dart program',
      options: [
        Option(
          name: '--observe',
          description: 'The observe flag is a convenience flag used to run a program with a set of common options. Useful for debugging'
        ),
        Option(
          name: '--enable-vm-service',
          description: 'Enables the VM service and listens on the specified port for connections (default port number is 8181, default dind address is localhost)'
        ),
        Option(
          name: ['--pause-isolates-on-exit', '--no-pause-isolates-on-exit'],
          description: 'Pause isolates on exit when running with --enable-vm-service'
        ),
        Option(
          name: '--pause-isolates-on-unhandled-exceptions',
          description: 'Pause isolates when an unhandled exception is encountered when running with --enable-vm-service',
          exclusiveOn: ['--no-pause-isolates-on-unhandled-exceptions']
        ),
        Option(
          name: '--no-pause-isolates-on-unhandled-exceptions',
          description: 'Do not pause isolates when an unhandled exception is encountered when running with --enable-vm-service',
          exclusiveOn: ['--pause-isolates-on-unhandled-exceptions']
        ),
        Option(
          name: '--warn-on-pause-with-no-debugger',
          description: 'Print a warning when an isolate pauses with no attahed debugger when running with --enable-vm-service',
          exclusiveOn: ['--no-warn-on-pause-with-no-debugger']
        ),
        Option(
          name: '--no-warn-on-pause-with-no-debugger',
          description: 'Do not print a warning when an isolate pauses with no attahed debugger when running with --enable-vm-service',
          exclusiveOn: ['--warn-on-pause-with-no-debugger']
        ),
        Option(
          name: '--pause-isolates-on-start',
          description: 'Pause isolates on start when running with --enable-vm-service',
          exclusiveOn: ['--no-pause-isolates-on-start']
        ),
        Option(
          name: '--no-pause-isolates-on-start',
          description: 'Do not pause isolates on start when running with --enable-vm-service',
          exclusiveOn: ['--pause-isolates-on-start']
        ),
        Option(
          name: '--disable-service-auth-codes',
          description: 'Disables the requirement for an authentication code to communicate with the VM service. Authentication codes help protect against CSRF attacks, so it is not recommended to disable them unless behind a firewall on a secure device'
        ),
        Option(
          name: '--enable-service-port-fallback',
          description: 'When the VM service is told to bind to a particular port, fallback to 0 if it fails to bind instead of failing to start'
        ),
        Option(
          name: '--namespace',
          description: 'The path to a directory that dart:io calls will treat as the root of the filesystem',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--root-certs-file',
          description: 'The The path to a file containing the trusted root certificates to use for secure socket connections',
          args: [
            Arg(
            name: 'path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--root-certs-cache',
          description: 'The path to a cache directory containing the trusted root certificates to use for secure socket connections',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--trace-loading',
          description: 'Enables tracing of library and script loading'
        ),
        Option(
          name: '--enable-experiment',
          description: 'Enable one or more experimental features (see dart.dev/go/experiments',
          args: [
            Arg(
            name: 'experiment',
            suggestions: [
              FigSuggestion(
                name: 'const-functions',
                description: 'Allow more of the Dart language to be executed in const expressions'
              ),
              FigSuggestion(
                name: 'extension-methods',
                description: 'Extension methods (no-op - enabled by default)'
              ),
              FigSuggestion(
                name: 'extension-types',
                description: 'Extension types'
              ),
              FigSuggestion(
                name: 'generic-metadata',
                description: 'Allow annotations to accept type arguments; also allow generic function types as type arguments'
              ),
              FigSuggestion(
                name: 'non-nullable',
                description: 'Non-nullable by default. (no-op - on by default)'
              ),
              FigSuggestion(
                name: 'nonfunction-type-aliases',
                description: 'Type aliases define a <type>, not just <functionType>. (no-op - enabled by default)'
              ),
              FigSuggestion(
                name: 'triple-shift',
                description: 'Triple-shift operator'
              ),
              FigSuggestion(
                name: 'value-class',
                description: 'Value classes'
              ),
              FigSuggestion(
                name: 'variance',
                description: 'Sound variance'
              )
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Run tests for a project',
      options: []
    )
  ]
);
