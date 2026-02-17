// AI-generated from TypeScript source: pod.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// Ruby podspec 文件的图标 URL
const String POD_ICON =
    'https://raw.githubusercontent.com/vscode-icons/vscode-icons/master/icons/file_type_ruby.svg';

/// 生成 podspec 文件和文件夹的生成器
final FigGenerator podSpecAndFoldersGenerator = FigGenerator(
  template: ['filepaths'],
  filterTemplateSuggestions: (suggestions, context) {
    return suggestions.whereType<FigSuggestion>().where((suggestion) {
      final name = suggestion.nameSingle;
      if (name == null) return false;

      // 检查是否为 podspec 文件
      if (name.endsWith('.podspec')) {
        return true;
      }

      // 或者检查是否为文件夹（以 / 结尾）
      if (name.endsWith('/')) {
        return true;
      }

      return false;
    }).map((suggestion) {
      if (suggestion.nameSingle?.endsWith('.podspec') ?? false) {
        // 对于 podspec 文件，使用 Ruby 图标
        return FigSuggestion(
          name: suggestion.nameSingle,
          icon: POD_ICON,
          type: SuggestionType.file,
          priority: suggestion.priority ?? 50,
        );
      }

      // 对于文件夹，保持原样或添加文件夹图标
      return suggestion;
    }).toList();
  },
);

/// Completion spec for `pod` CLI
final FigSpec podSpec = FigSpec(
    name: 'pod',
    description: 'CocoaPods, the Cocoa library package manager',
    subcommands: [
      Subcommand(
          description: 'Deintegrate CocoaPods from your project',
          name: 'deintegrate',
          options: [
            Option(
                name: '--project-directory',
                description: 'The path to the root of the project directory',
                args: [Arg(name: '/project/dir/', template: 'folders')]),
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ],
          args: [
            Arg(name: 'XCODE_PROJECT', isOptional: true)
          ]),
      Subcommand(
          description: 'Manipulate the CocoaPods cache',
          name: 'cache',
          options: [
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ],
          subcommands: [
            Subcommand(
                description: 'Remove the cache for pods',
                name: 'clean',
                options: [
                  Option(
                      name: '--all',
                      description: 'Remove all the cached pods without asking'),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME', isOptional: true)
                ]),
            Subcommand(
                description: 'List the paths of pod caches for each known pod',
                name: 'list',
                options: [
                  Option(
                      name: '--short',
                      description:
                          'Only print the path relative to the cache root'),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME', isOptional: true)
                ])
          ]),
      Subcommand(description: 'List pods', name: 'list', options: [
        Option(
            name: '--update',
            description: 'Run `pod repo update` before listing'),
        Option(
            name: '--stats',
            description:
                'Show additional stats (like GitHub watchers and forks)'),
        Option(
            name: '--allow-root',
            description: 'Allows CocoaPods to run as root')
      ]),
      Subcommand(
          description: 'Setup the CocoaPods environment',
          name: 'setup',
          options: [
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ]),
      Subcommand(description: 'Manage pod specs', name: 'spec', options: [
        Option(
            name: '--allow-root',
            description: 'Allows CocoaPods to run as root')
      ], subcommands: [
        Subcommand(description: 'Edit a spec file', name: 'edit', options: [
          Option(
              name: '--regex',
              description: 'Interpret the `QUERY` as a regular expression'),
          Option(
              name: '--show-all',
              description: 'Pick from all versions of the given podspec'),
          Option(
              name: '--allow-root',
              description: 'Allows CocoaPods to run as root')
        ], args: [
          Arg(name: 'QUERY', isOptional: true)
        ]),
        Subcommand(
            description: 'Create spec file stub',
            name: 'create',
            options: [
              Option(
                  name: '--allow-root',
                  description: 'Allows CocoaPods to run as root')
            ],
            args: [
              Arg(name: 'NAME|https://github.com/USER/REPO', isOptional: true)
            ]),
        Subcommand(description: 'Prints a spec file', name: 'cat', options: [
          Option(
              name: '--regex',
              description: 'Interpret the `QUERY` as a regular expression'),
          Option(
              name: '--show-all',
              description: 'Pick from all versions of the given podspec'),
          Option(
              name: '--allow-root',
              description: 'Allows CocoaPods to run as root')
        ], args: [
          Arg(name: 'QUERY', isOptional: true)
        ]),
        Subcommand(
            description: 'Prints the path of the given spec',
            name: 'which',
            options: [
              Option(
                  name: '--regex',
                  description: 'Interpret the `QUERY` as a regular expression'),
              Option(
                  name: '--show-all',
                  description: 'Print all versions of the given podspec'),
              Option(
                  name: '--allow-root',
                  description: 'Allows CocoaPods to run as root')
            ],
            args: [
              Arg(name: 'QUERY', isOptional: true)
            ]),
        Subcommand(
            description: 'Validates a spec file',
            name: 'lint',
            options: [
              Option(
                  name: '--quick',
                  description:
                      'Lint skips checks that would require to download and build the spec'),
              Option(
                  name: '--allow-warnings',
                  description: 'Lint validates even if warnings are present'),
              Option(
                  name: '--subspec',
                  description: 'Lint validates only the given subspec',
                  args: [Arg(name: 'NAME')]),
              Option(
                  name: '--no-subspecs',
                  description: 'Lint skips validation of subspecs'),
              Option(
                  name: '--no-clean',
                  description:
                      'Lint leaves the build directory intact for inspection'),
              Option(
                  name: '--fail-fast',
                  description:
                      'Lint stops on the first failing platform or subspec'),
              Option(
                  name: '--use-libraries',
                  description:
                      'Lint uses static libraries to install the spec'),
              Option(
                  name: '--use-modular-headers',
                  description: 'Lint uses modular headers during installation'),
              Option(
                  name: '--use-static-frameworks',
                  description:
                      'Lint uses static frameworks during installation'),
              Option(
                  name: '--sources',
                  description:
                      'The sources from which to pull dependent pods (defaults to https://cdn.cocoapods.org/). Multiple sources must be comma-delimited',
                  args: [
                    Arg(name: 'source', suggestions: [
                      FigSuggestion(
                          name: 'https://cdn.cocoapods.org/', icon: '🌐')
                    ])
                  ]),
              Option(
                  name: '--platforms',
                  description:
                      'Lint against specific platforms (defaults to all platforms supported by the podspec). Multiple platforms must be comma-delimited',
                  args: [
                    Arg(name: 'platform', suggestions: [
                      FigSuggestion(name: 'ios', icon: '📱'),
                      FigSuggestion(name: 'macos', icon: '💻'),
                      FigSuggestion(name: 'ios,macos', icon: '💻')
                    ])
                  ]),
              Option(
                  name: '--private',
                  description:
                      'Lint skips checks that apply only to public specs'),
              Option(
                  name: '--swift-version',
                  description:
                      'The `SWIFT_VERSION` that should be used to lint the spec. This takes precedence over the Swift versions specified by the spec or a `.swift-version` file',
                  args: [Arg(name: 'VERSION')]),
              Option(
                  name: '--skip-import-validation',
                  description:
                      'Lint skips validating that the pod can be imported'),
              Option(
                  name: '--skip-tests',
                  description:
                      'Lint skips building and running tests during validation'),
              Option(
                  name: '--test-specs',
                  description: 'List of test specs to run',
                  args: [Arg(name: 'test-spec')]),
              Option(
                  name: '--analyze',
                  description: 'Validate with the Xcode Static Analysis tool'),
              Option(
                  name: '--configuration',
                  description:
                      'Build using the given configuration (defaults to Release)',
                  args: [Arg(name: 'CONFIGURATION')]),
              Option(
                  name: '--allow-root',
                  description: 'Allows CocoaPods to run as root')
            ],
            args: [
              Arg(
                  name: 'NAME.podspec|DIRECTORY|http://PATH/NAME.podspec',
                  isOptional: true,
                  generators: podSpecAndFoldersGenerator)
            ])
      ]),
      Subcommand(
          description:
              'Install project dependencies according to versions from a Podfile.lock',
          name: 'install',
          options: [
            Option(
                name: '--repo-update',
                description: 'Force running `pod repo update` before install'),
            Option(
                name: '--deployment',
                description:
                    'Disallow any changes to the Podfile or the Podfile.lock during installation'),
            Option(
                name: '--clean-install',
                description:
                    'Ignore the contents of the project cache and force a full pod installation. This only applies to projects that have enabled incremental installation'),
            Option(
                name: '--project-directory',
                description: 'The path to the root of the project directory',
                args: [Arg(name: '/project/dir/', template: 'folders')]),
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ]),
      Subcommand(description: 'Display pod environment', name: 'env', options: [
        Option(
            name: '--allow-root',
            description: 'Allows CocoaPods to run as root')
      ]),
      Subcommand(
          description: 'Show outdated project dependencies',
          name: 'outdated',
          options: [
            Option(
                name: '--project-directory',
                description: 'The path to the root of the project directory',
                args: [Arg(name: '/project/dir/', template: 'folders')]),
            Option(
                name: '--no-repo-update',
                description: 'Skip running `pod repo update` before install'),
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ]),
      Subcommand(
          description: 'Generate a Podfile for the current directory',
          name: 'init',
          options: [
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ],
          args: [
            Arg(name: 'XCODEPROJ')
          ]),
      Subcommand(
          description: 'Inter-process communication',
          name: 'ipc',
          options: [
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ],
          subcommands: [
            Subcommand(
                description: 'Lists the specifications known to CocoaPods',
                name: 'list',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ]),
            Subcommand(
                description: 'Updates the search index',
                name: 'update-search-index',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ]),
            Subcommand(
                description: 'Converts a Podfile to JSON',
                name: 'podfile-json',
                options: [
                  Option(
                      name: '--project-directory',
                      description:
                          'The path to the root of the project directory',
                      args: [Arg(name: '/project/dir/', template: 'folders')]),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'PATH', template: 'filepaths')
                ]),
            Subcommand(
                description: 'Converts a podspec to JSON',
                name: 'spec',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'PATH')
                ]),
            Subcommand(
                description: 'Converts a Podfile to YAML',
                name: 'podfile',
                options: [
                  Option(
                      name: '--project-directory',
                      description:
                          'The path to the root of the project directory',
                      args: [Arg(name: '/project/dir/', template: 'folders')]),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'PATH', template: 'filepaths')
                ]),
            Subcommand(
                description: 'The repl listens to commands on standard input',
                name: 'repl',
                options: [
                  Option(
                      name: '--project-directory',
                      description:
                          'The path to the root of the project directory',
                      args: [Arg(name: '/project/dir/', template: 'folders')]),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ])
          ]),
      Subcommand(
          description: 'Show available CocoaPods plugins',
          name: 'plugins',
          options: [
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ],
          subcommands: [
            Subcommand(
                description: 'Search for known plugins',
                name: 'search',
                options: [
                  Option(
                      name: '--full',
                      description: 'Search by name  author, and description'),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'QUERY')
                ]),
            Subcommand(
                description: 'List plugins installed on your machine',
                name: 'installed',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ]),
            Subcommand(
                description: 'Creates a new plugin',
                name: 'create',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME'),
                  Arg(name: 'TEMPLATE_URL', isOptional: true)
                ]),
            Subcommand(
                description:
                    'Request to add the plugin to the official plugins list',
                name: 'publish',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ])
          ]),
      Subcommand(description: 'Develop pods', name: 'lib', options: [
        Option(
            name: '--allow-root',
            description: 'Allows CocoaPods to run as root')
      ], subcommands: [
        Subcommand(description: 'Creates a new Pod', name: 'create', options: [
          Option(
              name: '--template-url',
              description:
                  'The URL of the git repo containing a compatible template',
              args: [Arg(name: 'URL')]),
          Option(
              name: '--allow-root',
              description: 'Allows CocoaPods to run as root')
        ], args: [
          Arg(name: 'NAME')
        ]),
        Subcommand(description: 'Validates a Pod', name: 'lint', options: [
          Option(
              name: '--quick',
              description:
                  'Lint skips checks that would require to download and build the spec'),
          Option(
              name: '--allow-warnings',
              description: 'Lint validates even if warnings are present'),
          Option(
              name: '--subspec',
              description: 'Lint validates only the given subspec',
              args: [Arg(name: 'NAME')]),
          Option(
              name: '--no-subspecs',
              description: 'Lint skips validation of subspecs'),
          Option(
              name: '--no-clean',
              description:
                  'Lint leaves the build directory intact for inspection'),
          Option(
              name: '--fail-fast',
              description:
                  'Lint stops on the first failing platform or subspec'),
          Option(
              name: '--use-libraries',
              description: 'Lint uses static libraries to install the spec'),
          Option(
              name: '--use-modular-headers',
              description: 'Lint uses modular headers during installation'),
          Option(
              name: '--use-static-frameworks',
              description: 'Lint uses static frameworks during installation'),
          Option(
              name: '--sources',
              description:
                  'The sources from which to pull dependent pods (defaults to https://cdn.cocoapods.org/). Multiple,sources must be comma-delimited',
              args: [
                Arg(name: 'source', suggestions: [
                  FigSuggestion(name: 'https://cdn.cocoapods.org/', icon: '🌐')
                ])
              ]),
          Option(
              name: '--platforms',
              description:
                  'Lint against specific platforms (defaults to all platforms supported by the podspec). Multiple platforms must be comma-delimited',
              args: [
                Arg(name: 'platform', suggestions: [
                  FigSuggestion(name: 'ios', icon: '📱'),
                  FigSuggestion(name: 'macos', icon: '💻'),
                  FigSuggestion(name: 'ios,macos', icon: '💻')
                ])
              ]),
          Option(
              name: '--private',
              description: 'Lint skips checks that apply only to public specs'),
          Option(
              name: '--swift-version',
              description:
                  'The `SWIFT_VERSION` that should be used to lint the spec. This takes precedence over the Swift versions specified by the spec or a `.swift-version` file',
              args: [Arg(name: 'VERSION')]),
          Option(
              name: '--include-podspecs',
              description:
                  'Additional ancillary podspecs which are used for linting via :path',
              args: [
                Arg(name: 'podspec', generators: podSpecAndFoldersGenerator)
              ]),
          Option(
              name: '--external-podspecs',
              description:
                  'Additional ancillary podspecs which are used for linting via :podspec. If there are --include-podspecs, then these are removed from them',
              args: [
                Arg(name: 'podspec', generators: podSpecAndFoldersGenerator)
              ]),
          Option(
              name: '--skip-import-validation',
              description:
                  'Lint skips validating that the pod can be imported'),
          Option(
              name: '--skip-tests',
              description:
                  'Lint skips building and running tests during validation'),
          Option(
              name: '--test-specs',
              description: 'List of test specs to run',
              args: [Arg(name: 'test-spec')]),
          Option(
              name: '--analyze',
              description: 'Validate with the Xcode Static Analysis tool'),
          Option(
              name: '--configuration',
              description:
                  'Build using the given configuration (defaults to Release)',
              args: [Arg(name: 'CONFIGURATION')]),
          Option(
              name: '--allow-root',
              description: 'Allows CocoaPods to run as root')
        ], args: [
          Arg(
              name: 'PODSPEC_PATHS',
              isOptional: true,
              generators: podSpecAndFoldersGenerator)
        ])
      ]),
      Subcommand(description: 'Search for pods', name: 'search', options: [
        Option(
            name: '--regex',
            description: 'Interpret the `QUERY` as a regular expression'),
        Option(name: '--simple', description: 'Search only by name'),
        Option(
            name: '--stats',
            description:
                'Show additional stats (like GitHub watchers and forks)'),
        Option(name: '--web', description: 'Searches on cocoapods.org'),
        Option(
            name: '--ios',
            description: 'Restricts the search to Pods supported on iOS'),
        Option(
            name: '--osx',
            description: 'Restricts the search to Pods supported on macOS'),
        Option(
            name: '--watchos',
            description: 'Restricts the search to Pods supported on watchOS'),
        Option(
            name: '--tvos',
            description: 'Restricts the search to Pods supported on tvOS'),
        Option(
            name: '--no-pager',
            description: 'Do not pipe search results into a pager'),
        Option(
            name: '--allow-root',
            description: 'Allows CocoaPods to run as root')
      ], args: [
        Arg(name: 'QUERY')
      ]),
      Subcommand(
          description: 'Manage spec-repositories',
          name: 'repo',
          options: [
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ],
          subcommands: [
            Subcommand(
                description: 'Push new specifications to a spec-repo',
                name: 'push',
                options: [
                  Option(
                      name: '--allow-warnings',
                      description: 'Allows pushing even if there are warnings'),
                  Option(
                      name: '--use-libraries',
                      description:
                          'Linter uses static libraries to install the spec'),
                  Option(
                      name: '--use-modular-headers',
                      description:
                          'Lint uses modular headers during installation'),
                  Option(
                      name: '--sources',
                      description:
                          'The sources from which to pull dependent pods (defaults to all available repos). Multiple sources must be comma-delimited',
                      args: [
                        Arg(name: 'source', suggestions: [
                          FigSuggestion(
                              name: 'https://cdn.cocoapods.org/', icon: '🌐')
                        ])
                      ]),
                  Option(
                      name: '--local-only',
                      description:
                          'Does not perform the step of pushing REPO to its remote'),
                  Option(
                      name: '--no-private',
                      description:
                          'Lint includes checks that apply only to public repos'),
                  Option(
                      name: '--skip-import-validation',
                      description:
                          'Lint skips validating that the pod can be imported'),
                  Option(
                      name: '--skip-tests',
                      description:
                          'Lint skips building and running tests during validation'),
                  Option(
                      name: '--commit-message',
                      description:
                          'Add custom commit message. Opens default editor if no commit message is specified',
                      args: [Arg(name: 'message')]),
                  Option(
                      name: '--use-json',
                      description:
                          'Convert the podspec to JSON before pushing it to the repo'),
                  Option(
                      name: '--swift-version',
                      description:
                          'The `SWIFT_VERSION` that should be used when linting the spec. This takes precedence over the Swift versions specified by the spec or a `.swift-version` file',
                      args: [Arg(name: 'VERSION')]),
                  Option(
                      name: '--no-overwrite',
                      description:
                          'Disallow pushing that would overwrite an existing spec'),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'REPO'),
                  Arg(
                      name: 'NAME.podspec',
                      isOptional: true,
                      generators: podSpecAndFoldersGenerator)
                ]),
            Subcommand(description: 'Add a spec repo', name: 'add', options: [
              Option(
                  name: '--progress',
                  description:
                      'Show the progress of cloning the spec repository'),
              Option(
                  name: '--allow-root',
                  description: 'Allows CocoaPods to run as root')
            ], args: [
              Arg(name: 'NAME'),
              Arg(name: 'URL'),
              Arg(name: 'BRANCH', isOptional: true)
            ]),
            Subcommand(
                description: 'Remove a spec repo',
                name: 'remove',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME')
                ]),
            Subcommand(
                description: 'Add a spec repo backed by a CDN',
                name: 'add-cdn',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME'),
                  Arg(name: 'URL')
                ]),
            Subcommand(
                description: 'Validates all specs in a repo list',
                name: 'lint',
                options: [
                  Option(
                      name: '--only-errors',
                      description: 'Lint presents only the errors'),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME|DIRECTORY', isOptional: true)
                ]),
            Subcommand(
                description: 'Update a spec repo',
                name: 'update',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME', isOptional: true)
                ])
          ]),
      Subcommand(
          description:
              'Interact with the CocoaPods API (e.g. publishing new specs)',
          name: 'trunk',
          options: [
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ],
          subcommands: [
            Subcommand(
                description: 'Publish a podspec',
                name: 'push',
                options: [
                  Option(
                      name: '--allow-warnings',
                      description:
                          'Allows push even if there are lint warnings'),
                  Option(
                      name: '--use-libraries',
                      description:
                          'Linter uses static libraries to install the spec'),
                  Option(
                      name: '--use-modular-headers',
                      description:
                          'Lint uses modular headers during installation'),
                  Option(
                      name: '--swift-version',
                      description:
                          'The SWIFT_VERSION that should be used to lint the spec. This takes precedence over a .swift-version file',
                      args: [Arg(name: 'VERSION')]),
                  Option(
                      name: '--skip-import-validation',
                      description:
                          'Lint skips validating that the pod can be imported'),
                  Option(
                      name: '--skip-tests',
                      description:
                          'Lint skips building and running tests during validation'),
                  Option(
                      name: '--synchronous',
                      description:
                          'If validation depends on other recently pushed pods ,synchronize'),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'PATH', isOptional: true)
                ]),
            Subcommand(
                description: 'Deprecates a pod',
                name: 'deprecate',
                options: [
                  Option(
                      name: '--in-favor-of',
                      description: 'The pod to deprecate this pod in favor of',
                      args: [Arg(name: 'OTHER_NAME')]),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME')
                ]),
            Subcommand(
                description: 'Deletes a version of a pod',
                name: 'delete',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME'),
                  Arg(name: 'VERSION')
                ]),
            Subcommand(
                description: 'Add an owner to a pod',
                name: 'add-owner',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'POD'),
                  Arg(name: 'OWNER-EMAIL')
                ]),
            Subcommand(
                description: 'Remove an owner from a pod',
                name: 'remove-owner',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'POD'),
                  Arg(name: 'OWNER-EMAIL')
                ]),
            Subcommand(
                description: 'Display information about your sessions',
                name: 'me',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                subcommands: [
                  Subcommand(
                      description: 'Remove sessions',
                      name: 'clean-sessions',
                      options: [
                        Option(
                            name: '--all',
                            description:
                                'Removes all your sessions  except for the current one'),
                        Option(
                            name: '--allow-root',
                            description: 'Allows CocoaPods to run as root')
                      ])
                ]),
            Subcommand(
                description: 'Manage sessions',
                name: 'register',
                options: [
                  Option(
                      name: '--description',
                      description:
                          'An arbitrary description to easily identify your session later on',
                      args: [Arg(name: 'DESCRIPTION')]),
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'EMAIL'),
                  Arg(name: 'YOUR_NAME', isOptional: true)
                ]),
            Subcommand(
                description: 'Returns information about a Pod',
                name: 'info',
                options: [
                  Option(
                      name: '--allow-root',
                      description: 'Allows CocoaPods to run as root')
                ],
                args: [
                  Arg(name: 'NAME')
                ])
          ]),
      Subcommand(
          description:
              'Update outdated project dependencies and create new Podfile.lock',
          name: 'update',
          options: [
            Option(
                name: '--sources',
                description:
                    'The sources from which to update dependent pods. Multiple sources must be comma-delimited',
                args: [Arg(name: 'https://cdn.cocoapods.org/')]),
            Option(
                name: '--exclude-pods',
                description:
                    'Pods to exclude during update. Multiple pods must be comma-delimited',
                args: [Arg(name: 'podName')]),
            Option(
                name: '--clean-install',
                description:
                    'Ignore the contents of the project cache and force a full pod installation. This only applies to projects that have enabled incremental installation'),
            Option(
                name: '--project-directory',
                description: 'The path to the root of the project directory',
                args: [Arg(name: '/project/dir/', template: 'folders')]),
            Option(
                name: '--no-repo-update',
                description: 'Skip running `pod repo update` before install'),
            Option(
                name: '--allow-root',
                description: 'Allows CocoaPods to run as root')
          ],
          args: [
            Arg(name: 'POD_NAMES', isOptional: true)
          ]),
      Subcommand(description: 'Try a Pod!', name: 'try', options: [
        Option(name: '--podspec_name', args: [
          Arg(
              name: 'name',
              description:
                  'The name of the podspec file within the Git Repository')
        ]),
        Option(
            name: '--no-repo-update',
            description: 'Skip running `pod repo update` before install'),
        Option(
            name: '--allow-root',
            description: 'Allows CocoaPods to run as root')
      ], args: [
        Arg(name: 'NAME|URL')
      ])
    ],
    options: [
      Option(name: '--silent', description: 'Show nothing'),
      Option(name: '--verbose', description: 'Show more debugging information'),
      Option(name: '--no-ansi', description: 'Show output without ANSI codes'),
      Option(
          name: '--help', description: 'Show help banner of specified command')
    ]);
