// Auto-generated from TypeScript source: bit.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bit` CLI
final FigSpec bitSpec = FigSpec(
    name: 'bit',
    description: 'Bit documentation: https://bit.dev/docs',
    subcommands: [
      Subcommand(
          name: 'init',
          description: 'Create or reinitialize an empty workspace',
          args: [
            Arg(description: 'Pat')
          ],
          options: [
            Option(
                name: ['--bare', '-b'],
                args: [Arg(description: 'Initialize an empty bit bare scop')]),
            Option(name: [
              '--shared',
              '-s'
            ], args: [
              Arg(description: 'Add group write permissions to a scop')
            ]),
            Option(
                name: '--standalone',
                description: 'Do not nest component store within .git'),
            Option(
                name: ['--reset', '-r'],
                description: 'Write missing or damaged Bit files'),
            Option(
                name: '--reset-new',
                description:
                    'Reset .bitmap file as if components were newly added'),
            Option(
                name: '--reset-lane-new',
                description: 'Reset only components belonging to lanes'),
            Option(
                name: '--reset-hard',
                description: 'Delete all Bit files and directories'),
            Option(name: '--reset-scope', description: 'Removes local scope'),
            Option(
                name: ['--default-directory', '-d'],
                args: [Arg(description: 'Set the default directory patter')]),
            Option(name: '--default-scope', args: [
              Arg(description: 'Set the default scope for component')
            ]),
            Option(
                name: ['--package-manager', '-p'],
                args: [Arg(description: 'Set the package manager to be use')]),
            Option(
                name: '--force',
                description:
                    'Force workspace initialization without clearing local objects'),
            Option(
                name: '--harmony',
                description: 'DEPRECATED: Harmony is the default now'),
            Option(
                name: ['--interactive', '-I'],
                description: 'Start an interactive process')
          ]),
      Subcommand(
          name: 'new',
          description: 'Create a new workspace from a template',
          args: [
            Arg(description: 'The name of the workspace template'),
            Arg(
                description:
                    'The name for the new workspace and workspace directory')
          ],
          options: [
            Option(
                name: ['--aspect', '-a'],
                description: 'ID of the aspect that registered the template'),
            Option(name: [
              '--template',
              '-t'
            ], description: 'Env-ID of the template\'s owner. Alias for --env'),
            Option(
                name: '--env',
                description: 'Env-ID of the template. Alias for -t'),
            Option(
                name: ['--default-scope', '-d'],
                description:
                    'Set defaultScope in the new workspace\'s workspace.jsonc'),
            Option(
                name: '--skip-git',
                description:
                    'Skip generation of Git repository in the new workspace'),
            Option(
                name: '--empty',
                description: 'Skip template\'s default component creation'),
            Option(
                name: '--load-from',
                description:
                    'Local path to the workspace containing the template')
          ]),
      Subcommand(
          name: 'config',
          description: 'Global config management',
          subcommands: [
            Subcommand(
                name: 'set',
                description: 'Set a global configuration',
                args: [
                  Arg(description: 'Configuration key'),
                  Arg(description: 'Configuration value')
                ]),
            Subcommand(
                name: 'del',
                description: 'Delete given key from global configuration',
                args: [Arg(description: 'Configuration ke')]),
            Subcommand(
                name: 'get',
                description: 'Get a value from global configuration',
                args: [Arg(description: 'Configuration ke')]),
            Subcommand(name: 'list', description: 'List all configuration(s)')
          ]),
      Subcommand(
          name: 'scope-config',
          description: 'Scope config management\n\nbit scope-config',
          subcommands: [
            Subcommand(
                name: 'set',
                description:
                    'Set a scope configuration.\n\nUsage: scope-config set <key> <val>',
                args: [
                  Arg(description: 'Configuration key to set'),
                  Arg(description: 'Value for the configuration key')
                ]),
            Subcommand(
                name: 'del',
                description:
                    'Delete given key from global configuration.\n\nUsage: scope-config del <key>',
                args: [Arg(description: 'Configuration key to delet')]),
            Subcommand(
                name: 'get',
                description:
                    'Get a scope configuration.\n\nUsage: scope-config get <key>',
                args: [Arg(description: 'Configuration key to retriev')]),
            Subcommand(
                name: 'list',
                description:
                    'List all scope configuration(s).\n\nUsage: scope-config list')
          ]),
      Subcommand(name: 'login', description: 'Log in to Bit cloud', options: [
        Option(
            name: '--cloud-domain',
            description: 'Login cloud domain (default bit.cloud)'),
        Option(
            name: ['--port', '-p'],
            description: 'Port number to open for localhost server'),
        Option(
            name: '--suppress-browser-launch',
            description: 'Do not open a browser for authentication'),
        Option(
            name: '--npmrc-path',
            description: 'Path to npmrc file to configure bit.cloud registry'),
        Option(
            name: '--skip-registry-config',
            description: 'Don\'t configure bit.cloud registry'),
        Option(
            name: '--machine-name',
            description: 'Specify machine-name to pair with the token')
      ]),
      Subcommand(name: 'logout', description: 'Log the CLI out of Bit'),
      Subcommand(
          name: 'doctor',
          description: 'Diagnose a bit workspace',
          args: [
            Arg(description: 'Diagnosis nam')
          ],
          options: [
            Option(
                name: ['--json', '-j'],
                description: 'Return diagnoses in json format'),
            Option(name: '--list', description: 'List all available diagnoses'),
            Option(name: [
              '--save',
              '-s'
            ], args: [
              Arg(
                  name: 'filePath',
                  description: 'Path to save diagnoses to a file')
            ]),
            Option(name: [
              '--archive',
              '-a'
            ], args: [
              Arg(
                  name: 'filePath',
                  description:
                      'Path to archive the workspace including diagnosis info')
            ])
          ]),
      Subcommand(
          name: 'completion',
          description:
              'Enable bash/zsh-completion shortcuts for commands and options'),
      Subcommand(
          name: 'cli',
          description:
              'EXPERIMENTAL: Enters bit cli program and generates commands list',
          subcommands: [
            Subcommand(
                name: 'generate',
                description: 'Generate an .md file with all commands details',
                options: [
                  Option(
                      name: '--metadata',
                      description:
                          'Metadata/front-matter to place at the top of the .md file'),
                  Option(
                      name: '--docs',
                      description: 'Generate the cli-reference.docs.mdx file'),
                  Option(
                      name: ['--json', '-j'],
                      description: 'Output the commands info as JSON')
                ])
          ]),
      Subcommand(
          name: ['help', '\$0'],
          description: 'Shows help',
          options: [
            Option(name: '--internal', description: 'Show internal commands')
          ]),
      Subcommand(
          name: ['clear-cache', 'cc'],
          description: 'Clears Bit\'s cache from current working machine',
          options: [
            Option(
                name: ['--remote', '-r'],
                description: 'Clear memory cache from a remote scope')
          ]),
      Subcommand(
          name: 'remote',
          description: 'Manage set of tracked bit scope(s)',
          subcommands: [
            Subcommand(
                name: 'add',
                description:
                    'Add a bare-scope as a remote, usage: remote add <url>',
                args: [
                  Arg(description: 'URL of the remote scop')
                ],
                options: [
                  Option(
                      name: ['--global', '-g'],
                      description: 'Configure a remote bit scope')
                ]),
            Subcommand(
                name: 'del',
                description:
                    'Remove a tracked bit remote: usage: remote del <name>',
                args: [
                  Arg(description: 'Name of the remote to remov')
                ],
                options: [
                  Option(
                      name: ['--global', '-g'],
                      description: 'Remove a globally configured remote scope')
                ])
          ]),
      Subcommand(
          name: ['remove', 'rm'],
          description: 'Remove component(s) from the local workspace',
          args: [Arg(description: 'Component name, ID, or patter')],
          options: [
            Option(
                name: ['--track', '-t'],
                description: 'Keep tracking component in .bitmap'),
            Option(name: '--keep-files', description: 'Keep component files'),
            Option(
                name: ['--force', '-f'],
                description:
                    'Removes the component even if used as a dependency'),
            Option(name: ['--silent', '-s'], description: 'Skip confirmation')
          ]),
      Subcommand(
          name: 'import',
          description:
              'Import components from their remote scopes to the local workspace',
          args: [
            Arg(description: 'Component IDs or component pattern')
          ],
          options: [
            Option(name: [
              '--path',
              '-p'
            ], args: [
              Arg(description: 'Import components into a specific director')
            ]),
            Option(
                name: '--objects',
                description: 'Import components objects without checkout'),
            Option(
                name: ['--override', '-O'],
                description: 'Override local changes'),
            Option(
                name: ['--verbose', '-v'],
                description: 'Show verbose output for inspection'),
            Option(
                name: ['--json', '-j'],
                description: 'Return the output as JSON'),
            Option(
                name: '--skip-dependency-installation',
                description: 'Do not auto-install dependencies'),
            Option(name: '--merge', args: [
              Arg(description: 'Merge local changes with imported versio')
            ]),
            Option(
                name: '--dependencies',
                description: 'Import all dependencies of imported components'),
            Option(
                name: '--dependents',
                description:
                    'Import components found while traversing from imported components'),
            Option(
                name: '--save-in-lane',
                description: 'Save in the lane when checked out to a lane'),
            Option(
                name: '--all-history',
                description: 'Fetch all history versions, always'),
            Option(
                name: '--fetch-deps',
                description:
                    'Fetch dependencies objects without adding to the workspace'),
            Option(
                name: '--track-only',
                description:
                    'Create bitmap entries without writing component files'),
            Option(
                name: '--include-deprecated',
                description:
                    'Include deprecated components when importing with patterns')
          ]),
      Subcommand(name: 'pack', description: 'Create tar for npm publish'),
      Subcommand(
          name: ['deprecate', 'd'],
          description: 'Deprecate a component',
          args: [Arg(description: 'Component name or component i')],
          options: [
            Option(
                name: '--new-id',
                description:
                    'If replaced by another component, enter the new component id')
          ]),
      Subcommand(
          name: 'undeprecate',
          description:
              'Undeprecate a deprecated component (local/remote).\n\nbit undeprecate <id>'),
      Subcommand(name: 'rename', description: 'Rename a component', args: [
        Arg(description: 'The current component name'),
        Arg(description: 'The new component name')
      ], options: [
        Option(
            name: ['--scope', '-s'],
            description: 'Define the scope for the newly created component'),
        Option(
            name: ['--path', '-p'],
            description:
                'Relative path in the workspace to place new component in'),
        Option(
            name: ['--refactor', '-r'],
            description:
                'Update the import/require statements in all dependent components'),
        Option(
            name: '--preserve',
            description:
                'Avoid renaming files and variables according to the new component name'),
        Option(
            name: '--ast',
            description:
                'EXPERIMENTAL. Use AST to transform files instead of regex')
      ]),
      Subcommand(
          name: 'fork',
          description:
              'Create a new component forked from an existing one (copies source files and configs)',
          args: [
            Arg(description: 'Component id of the source component'),
            Arg(description: 'Name for the new component')
          ],
          options: [
            Option(
                name: ['--scope', '-s'],
                args: [Arg(description: 'Default scope for the new componen')]),
            Option(name: [
              '--path',
              '-p'
            ], args: [
              Arg(
                  description:
                      'Relative path in the workspace for the new component')
            ]),
            Option(
                name: ['--refactor', '-r'],
                description:
                    'Update the import/require statements in all dependent components'),
            Option(
                name: '--skip-dependency-installation',
                description:
                    'Do not install packages of the imported components'),
            Option(name: '--env', args: [
              Arg(description: 'Set the environment for the new componen')
            ]),
            Option(
                name: '--skip-config',
                description: 'Do not copy the config to the new component'),
            Option(
                name: '--preserve',
                description:
                    'Avoid refactoring file and variable/class names according to the new component name'),
            Option(
                name: '--no-link',
                description:
                    'Avoid saving a reference to the original component'),
            Option(
                name: '--ast',
                description: 'Use ast to transform files instead of regex')
          ]),
      Subcommand(
          name: ['export', 'e'],
          description: 'Export components from the workspace to remote scopes',
          args: [Arg(description: 'Component pattern')],
          options: [
            Option(
                name: ['--eject', '-e'],
                description:
                    'Remove component from the workspace and install it as a regular npm package'),
            Option(
                name: '--all',
                description: 'Export all components, including non-staged'),
            Option(
                name: '--all-versions',
                description: 'Export not only staged versions but all of them'),
            Option(
                name: '--origin-directly',
                description:
                    'Avoid export to the central hub, export directly to the original scopes'),
            Option(name: '--resume', args: [
              Arg(
                  name: 'string',
                  description: 'Resume export using an export-id')
            ]),
            Option(
                name: '--ignore-missing-artifacts',
                description:
                    'Don\'t throw an error when artifact files are missing'),
            Option(
                name: '--fork-lane-new-scope',
                description:
                    'Allow exporting a forked lane into a different scope than the original scope'),
            Option(
                name: ['--json', '-j'],
                description: 'Show output in json format')
          ]),
      Subcommand(
          name: 'dependents',
          description: 'Show dependents of the given component',
          args: [Arg(description: 'Component nam')]),
      Subcommand(
          name: 'show',
          description:
              'Display the component\'s essential information\n\nbit show <component-name>',
          args: [
            Arg(description: 'Component name or component I')
          ],
          options: [
            Option(
                name: ['--json', '-j'],
                description: 'Return the component data in JSON format'),
            Option(name: '--legacy', description: 'Use the legacy bit show'),
            Option(
                name: ['--remote', '-r'],
                description: 'Show data for a remote component'),
            Option(
                name: ['--compare', '-c'],
                description:
                    'Legacy-only. Compare current file system component to its latest tagged version')
          ]),
      Subcommand(
          name: ['deps', 'dependencies'],
          description: 'Manage dependencies',
          subcommands: [
            Subcommand(
                name: 'get',
                description:
                    'Show direct and indirect dependencies of the given component',
                args: [
                  Arg(description: 'Component name or component i')
                ],
                options: [
                  Option(
                      name: ['--tree', '-t'],
                      description:
                          'EXPERIMENTAL: Render dependencies as a tree, similar to \'npm ls\'')
                ]),
            Subcommand(
                name: 'remove',
                description: 'Remove a dependency to component(s)',
                args: [
                  Arg(
                      description:
                          'Component name, component id, or component pattern'),
                  Arg(description: 'Package name with or without a version')
                ],
                options: [
                  Option(
                      name: ['--dev', '-d'],
                      description: 'Remove from devDependencies'),
                  Option(
                      name: ['--peer', '-p'],
                      description: 'Remove from peerDependencies')
                ]),
            Subcommand(
                name: 'unset',
                description:
                    'Unset a dependency to component(s) that was previously set by \'bit deps set\'',
                args: [
                  Arg(
                      description:
                          'Component name, component id, or component pattern'),
                  Arg(description: 'Package name with or without a version')
                ],
                options: [
                  Option(
                      name: ['--dev', '-d'],
                      description: 'Unset from devDependencies'),
                  Option(
                      name: ['--peer', '-p'],
                      description: 'Unset from peerDependencies')
                ]),
            Subcommand(
                name: 'debug',
                description:
                    'Show the immediate dependencies and how their versions were determined',
                args: [Arg(description: 'Component name or component i')]),
            Subcommand(
                name: 'set',
                description: 'Set a dependency to component(s)',
                args: [
                  Arg(
                      description:
                          'Component name, component id, or component pattern'),
                  Arg(description: 'Package name with or without a version')
                ],
                options: [
                  Option(
                      name: ['--dev', '-d'],
                      description: 'Add to the devDependencies'),
                  Option(
                      name: ['--peer', '-p'],
                      description: 'Add to the peerDependencies')
                ]),
            Subcommand(
                name: 'reset',
                description:
                    'Reset dependencies to the default values (revert any previously \'bit deps set\')',
                args: [
                  Arg(
                      description:
                          'Component name, component id, or component pattern')
                ]),
            Subcommand(
                name: 'eject',
                description:
                    'Write dependencies that were previously set via \'bit deps set\' into .bitmap',
                args: [
                  Arg(
                      description:
                          'Component name, component id, or component pattern')
                ]),
            Subcommand(
                name: 'blame',
                description:
                    'EXPERIMENTAL: Find out which snap/tag changed a dependency version',
                args: [
                  Arg(description: 'Component name'),
                  Arg(
                      description:
                          'Dependency name, package-name or component-id')
                ]),
            Subcommand(
                name: 'usage',
                description:
                    'EXPERIMENTAL: Find components that use the specified dependency',
                args: [
                  Arg(
                      description:
                          'Package name, component-id or package-name, optionally with version')
                ])
          ]),
      Subcommand(
          name: 'log',
          description: 'Show components(s) version history',
          args: [
            Arg(description: 'Component-id or component-name to show logs fo')
          ],
          options: [
            Option(
                name: ['--remote', '-r'],
                description: 'Show log of a remote component'),
            Option(
                name: '--parents', description: 'Show parents and lanes data'),
            Option(
                name: ['--one-line', '-o'],
                description: 'Show each log entry in one line'),
            Option(name: ['--json', '-j'], description: 'JSON format')
          ]),
      Subcommand(
          name: 'add',
          description:
              'Add any subset of files to be tracked as a component(s)',
          options: [
            Option(
                name: ['--id', '-i'], description: 'Manually set component id'),
            Option(
                name: ['--main', '-m'],
                description: 'Define component entry point'),
            Option(
                name: ['--namespace', '-n'],
                description: 'Organize component in a namespace'),
            Option(
                name: ['--override', '-o'],
                description:
                    'Override existing component if exists (default = false)'),
            Option(
                name: ['--scope', '-s'],
                description:
                    'Sets the component\'s scope. If not entered, the default-scope from workspace.jsonc will be used'),
            Option(
                name: ['--env', '-e'],
                description:
                    'Set the component\'s environment. (overrides the env from variants if exists)'),
            Option(name: ['--json', '-j'], description: 'Output as json format')
          ]),
      Subcommand(
          name: ['move', 'mv'],
          description: 'Move a component to a different filesystem path',
          args: [
            Arg(description: 'The component\'s current directory'),
            Arg(
                description:
                    'The new directory to move the component\'s files to')
          ]),
      Subcommand(
          name: 'diff',
          description:
              'Show the diff between the components\' current source files and config, and their latest snapshot or tag',
          args: [
            Arg(
                description:
                    'Values for comparison, component IDs, versions or patterns')
          ],
          options: [
            Option(
                name: ['--verbose', '-v'],
                description: 'Show a more verbose output where possible'),
            Option(
                name: ['--table', '-t'],
                description:
                    'Show tables instead of plain text for dependencies diff')
          ]),
      Subcommand(
          name: ['envs', 'env'],
          description:
              'List all components maintained by the workspace and their corresponding envs',
          subcommands: [
            Subcommand(
                name: 'list',
                description: 'List all envs currently used in the workspace'),
            Subcommand(
                name: 'get',
                description: 'Show config information from a component\'s env',
                args: [
                  Arg(
                      description:
                          'Component name or component id of the component whose env you\'d like to inspect')
                ],
                options: [
                  Option(name: '--services', args: [
                    Arg(
                        name: 'string',
                        description:
                            'Show information about the specific services only')
                  ])
                ]),
            Subcommand(
                name: 'set',
                description:
                    'Assigns one or more components a development environment (env)',
                args: [
                  Arg(description: 'Component pattern'),
                  Arg(description: 'The env\'s component id')
                ]),
            Subcommand(
                name: 'unset',
                description: 'Un-sets an env from components',
                args: [Arg(description: 'Component patter')]),
            Subcommand(
                name: 'replace',
                description:
                    'Replace an existing env with another env for all components using the old env',
                args: [
                  Arg(description: 'Current environment id'),
                  Arg(description: 'New environment id')
                ]),
            Subcommand(
                name: 'update',
                description:
                    'Update a version of an env for all components using that env',
                args: [
                  Arg(description: 'Environment id'),
                  Arg(description: 'Component pattern')
                ])
          ]),
      Subcommand(
          name: ['start', 'c'],
          description:
              'Run the UI/development server\n\nbit start [component-pattern]',
          args: [
            Arg(
                description:
                    'Component name, component ID, or component pattern. Use component pattern to select multiple components. Use comma to separate patterns and "!" to exclude. E.g. "ui/**, !ui/button". Wrap the pattern with quotes')
          ],
          options: [
            Option(
                name: ['--dev', '-d'],
                description: 'Start UI server in dev mode'),
            Option(
                name: ['--port', '-p'], description: 'Port of the UI server'),
            Option(
                name: ['--rebuild', '-r'],
                description:
                    'Rebuild the UI (useful e.g. when updating the workspace UI - can use the dev flag for HMR in this case)'),
            Option(name: '--skip-ui-build', description: 'Skip building UI'),
            Option(
                name: '--verbose',
                description:
                    'Show verbose output for inspection and prints stack trace'),
            Option(
                name: ['--no-browser', '-n'],
                description: 'Do not automatically open browser when ready'),
            Option(
                name: '--skip-compilation',
                description:
                    'Skip the auto-compilation before starting the web-server'),
            Option(
                name: '--ui-root-name',
                description:
                    'Name of the UI root to use, e.g. "teambit.scope/scope" or "teambit.workspace/workspace"')
          ]),
      Subcommand(
          name: 'ui-build',
          description: 'Build production assets for deployment'),
      Subcommand(
          name: ['checkout', 'U'],
          description:
              'Switch between component versions or remove local changes',
          args: [
            Arg(
                description:
                    'Permitted values: [head, latest, reset, specific-version]'),
            Arg(
                description:
                    'Component name, component id, or component pattern')
          ],
          options: [
            Option(
                name: '--interactive-merge',
                description:
                    'Display options to resolve conflicts when found during merge'),
            Option(name: '--ours', description: 'DEPRECATED'),
            Option(name: '--theirs', description: 'DEPRECATED'),
            Option(name: '--manual', description: 'DEPRECATED'),
            Option(
                name: '--auto-merge-resolve',
                description:
                    'Resolve merge conflicts according to the provided strategy: [ours, theirs, manual]'),
            Option(
                name: ['--reset', '-r'],
                description: 'Revert changes that were not snapped/tagged'),
            Option(name: ['--all', '-a'], description: 'All components'),
            Option(
                name: '--workspace-only',
                description:
                    'Only relevant for \'bit checkout head\' when on a lane'),
            Option(
                name: ['--verbose', '-v'],
                description: 'Verbose output for inspection'),
            Option(
                name: '--skip-dependency-installation',
                description:
                    'Do not auto-install dependencies of the imported components')
          ]),
      Subcommand(
          name: ['install', 'in'],
          description: 'Installs workspace dependencies',
          args: [Arg(description: 'A list of packages to instal')],
          options: [
            Option(
                name: '--type',
                args: [Arg(description: '\'runtime\' (default) or \'peer')]),
            Option(
                name: ['--update', '-u'],
                description: 'Update all dependencies to the latest version'),
            Option(
                name: '--update-existing',
                description:
                    'DEPRECATED: Update existing dependencies version and types'),
            Option(name: '--save-prefix', args: [
              Arg(description: 'Set the prefix to use when adding dependenc')
            ]),
            Option(
                name: '--skip-dedupe',
                description: 'Do not dedupe dependencies on installation'),
            Option(
                name: '--skip-import',
                description: 'Do not import bit objects post installation'),
            Option(
                name: '--skip-compile',
                description: 'Do not compile components'),
            Option(
                name: '--add-missing-deps',
                description: 'Install all missing dependencies'),
            Option(
                name: '--add-missing-peers',
                description: 'Install all missing peer dependencies'),
            Option(
                name: '--recurring-install',
                description:
                    'Automatically run install again if there are old envs'),
            Option(
                name: '--no-optional',
                description: 'Do not install optional dependencies (pnpm only)')
          ]),
      Subcommand(name: [
        'uninstall',
        'un'
      ], description: 'Uninstall dependencies.\n\nbit uninstall [packages...]'),
      Subcommand(
          name: ['update', 'up'],
          description:
              'Update dependencies.\n\nbit update [package-patterns...]',
          args: [
            Arg(
                description:
                    'A string list of package names, or patterns (separated by space), e.g. "@teambit/ @my-org/ui/". The patterns should be in glob format. By default, all packages are selected')
          ],
          options: [
            Option(
                name: ['--yes', '-y'],
                description:
                    'Automatically update all outdated versions for packages specified in pattern (all if no pattern supplied) - use carefully as could result in breaking updates for dependencies'),
            Option(
                name: '--patch',
                description:
                    'Update to the latest patch version. Semver rules are ignored'),
            Option(
                name: '--minor',
                description:
                    'Update to the latest minor version. Semver rules are ignored'),
            Option(
                name: '--major',
                description:
                    'Update to the latest major version. Semver rules are ignored')
          ]),
      Subcommand(
          name: 'link',
          description:
              'Create links in the node_modules directory, to core aspects and to components in the workspace',
          args: [
            Arg(
                name: 'component-names',
                description: 'Names or IDs of the components to link')
          ],
          options: [
            Option(
                name: ['--json', '-j'],
                description: 'Return the output as JSON'),
            Option(name: '--verbose', description: 'Verbose output'),
            Option(
                name: ['--rewire', '-r'],
                description:
                    'Replace relative paths with module paths in code (e.g. "../foo" => "@bit/foo")'),
            Option(
                name: '--target',
                description:
                    'Link to an external directory (similar to npm-link) so other projects could use these components'),
            Option(
                name: '--skip-fetching-objects',
                description:
                    'Skip fetch missing objects from remotes before linking')
          ]),
      Subcommand(
          name: 'component-issues',
          description: 'List available component-issues'),
      Subcommand(
          name: ['tag', 't'],
          description:
              'Create an immutable and exportable component snapshot, tagged with a release version.\nIf no patterns are provided, it will tag all new and modified components.\nIf patterns are entered, you can specify a version per pattern using "@" sign, e.g. bit tag foo@1.0.0 bar@minor baz@major\n\nbit tag [component-patterns...]',
          args: [
            Arg(
                description:
                    'Component name, component id, or component pattern. Use component pattern to select multiple components. Use comma to separate patterns and "!" to exclude. e.g. "ui/**, !ui/button" wrap the pattern with quotes. By default, all new and modified are tagged')
          ],
          options: [
            Option(
                name: ['--message', '-m'],
                description: 'A log message describing the latest changes'),
            Option(
                name: ['--unmodified', '-u'],
                description:
                    'Include unmodified components (by default, only new and modified components are tagged)'),
            Option(
                name: '--editor',
                description:
                    'Open an editor to write a tag message for each component. Optionally, specify the editor-name (defaults to vim)'),
            Option(
                name: ['--ver', '-v'],
                description: 'Tag with the given version'),
            Option(
                name: ['--increment', '-l'],
                description:
                    'Options are: [major, premajor, minor, preminor, patch, prepatch, prerelease], default to patch'),
            Option(
                name: '--prerelease-id',
                description:
                    'Prerelease identifier (e.g. "dev" to get "1.0.0-dev.1")'),
            Option(
                name: ['--patch', '-p'],
                description: 'Syntactic sugar for "--increment patch"'),
            Option(
                name: '--minor',
                description: 'Syntactic sugar for "--increment minor"'),
            Option(
                name: '--major',
                description: 'Syntactic sugar for "--increment major"'),
            Option(
                name: '--pre-release',
                description:
                    'Syntactic sugar for "--increment prerelease" and --prerelease-id <identifier>'),
            Option(
                name: '--snapped',
                description:
                    'Tag only components whose head is a snap (not a tag)'),
            Option(
                name: '--unmerged',
                description:
                    'Complete a merge process by tagging the unmerged components'),
            Option(
                name: '--skip-tests',
                description: 'Skip running component tests during tag process'),
            Option(
                name: '--skip-auto-tag',
                description: 'Skip auto tagging dependents'),
            Option(
                name: '--soft',
                description:
                    'Do not persist. Only keep note of the changes to be made'),
            Option(
                name: '--persist',
                description: 'Persist the changes generated by --soft tag'),
            Option(
                name: '--disable-tag-pipeline',
                description:
                    'Skip the tag pipeline to avoid publishing the components'),
            Option(
                name: '--ignore-build-errors',
                description:
                    'Proceed to tag pipeline even when build pipeline fails'),
            Option(
                name: '--increment-by',
                description:
                    '(default to 1) increment semver flag (patch/minor/major) by. e.g. incrementing patch by 2: 0.0.1 -> 0.0.3'),
            Option(
                name: ['--ignore-issues', '-i'],
                description:
                    'Ignore component issues (shown in "bit status" as "issues found"), issues to ignore: [MissingPackagesDependenciesOnFs, MissingManuallyConfiguredPackages, MissingComponents, UntrackedDependencies, ResolveErrors, RelativeComponents, RelativeComponentsAuthored, ParseErrors, MissingDists, LegacyInsideHarmony, MissingDependenciesOnFs, ImportNonMainFiles, MultipleEnvs, MissingLinksFromNodeModulesToSrc, CircularDependencies, DuplicateComponentAndPackage, MergeConfigHasConflict, NonLoadedEnv, ExternalEnvWithoutVersion, RemovedDependencies] to ignore multiple issues, separate them by a comma and wrap with quotes. To ignore all issues, specify \'*\''),
            Option(
                name: ['--ignore-newest-version', '-I'],
                description:
                    'Allow tagging even when the component has newer versions e.g. for hotfixes (default = false)'),
            Option(
                name: '--fail-fast',
                description:
                    'Stop pipeline execution on the first failed task (by default a task is skipped only when its dependency failed)'),
            Option(
                name: ['--build', '-b'],
                description:
                    'Not needed for now. Run the pipeline build and complete the tag'),
            Option(
                name: ['--all', '-a'],
                description:
                    'DEPRECATED (not needed anymore, it is the default now). Tag all new and modified components'),
            Option(
                name: ['--scope', '-s'],
                description:
                    'DEPRECATED (use "--unmodified" instead). Tag all components of the local scope'),
            Option(
                name: '--force',
                description:
                    'DEPRECATED (use "--skip-tests", "--ignore-build-errors" or "--unmodified" instead). Force-tag even if tests are failing and even when component has not changed'),
            Option(
                name: '--disable-deploy-pipeline',
                description: 'DEPRECATED. Use --disable-tag-pipeline instead')
          ]),
      Subcommand(
          name: 'reset',
          description: 'Revert tagged or snapped versions for component(s)',
          args: [
            Arg(description: 'Component name, ID, or patter')
          ],
          options: [
            Option(
                name: ['--all', '-a'],
                description:
                    'Revert all unexported tags/snaps for all components'),
            Option(
                name: '--head', description: 'Revert the head tag/snap only'),
            Option(name: '--soft', description: 'Revert only soft-tags'),
            Option(name: [
              '--force',
              '-f'
            ], description: 'Revert the tag even if it\'s used as a dependency')
          ]),
      Subcommand(
          name: 'merge',
          description:
              'Merge changes of the remote head into local and creates snaps for merged components',
          args: [
            Arg(description: 'IDs or patterns of components to merg')
          ],
          options: [
            Option(
                name: '--ours',
                description:
                    'DEPRECATED. In case of a conflict, keep the local modification'),
            Option(
                name: '--theirs',
                description:
                    'DEPRECATED. In case of a conflict, override the local modification with the specified version'),
            Option(
                name: '--manual',
                description: 'DEPRECATED. Use --auto-merge-resolve'),
            Option(
                name: '--auto-merge-resolve',
                description:
                    'In case of a conflict, resolve according to the strategy: [ours, theirs, manual]'),
            Option(
                name: '--abort',
                description:
                    'In case of an unresolved merge, revert to pre-merge state'),
            Option(
                name: '--resolve',
                description:
                    'Mark an unresolved merge as resolved and create a new snap with the changes'),
            Option(
                name: '--no-snap',
                description:
                    'Do not auto snap even if the merge completed without conflicts'),
            Option(
                name: '--build',
                description:
                    'In case of snap during the merge, run the build-pipeline'),
            Option(
                name: '--verbose',
                description:
                    'Show details of components that were not merged successfully'),
            Option(
                name: ['--skip-dependency-installation', '-x'],
                description:
                    'Do not install new dependencies resulting from the merge'),
            Option(
                name: ['--message', '-m'],
                description: 'Override the default message for the auto snap')
          ]),
      Subcommand(
          name: 'create',
          description: 'Create a new component using a template',
          args: [
            Arg(description: 'The template for generating the component'),
            Arg(description: 'A list of component names to generate')
          ],
          options: [
            Option(
                name: ['--namespace', '-n'],
                description:
                    'Sets the component\'s namespace and nested dirs inside the scope'),
            Option(
                name: ['--scope', '-s'],
                description: 'Sets the component\'s scope-name'),
            Option(
                name: ['--aspect', '-a'],
                description: 'Aspect-id of the template'),
            Option(
                name: '--template',
                description: 'Env-id of the template, alias for --aspect'),
            Option(
                name: '--path', description: 'Relative path in the workspace'),
            Option(
                name: '--env', description: 'Set the component\'s environment')
          ]),
      Subcommand(
          name: 'templates',
          description:
              'List available templates for "bit create" and "bit new"\n\nList components templates when inside bit-workspace (for bit-create), otherwise, list workspace templates (for bit-new).\n\nbit templates',
          options: [
            Option(
                name: ['--show-all', '-s'],
                description: 'Show hidden templates'),
            Option(
                name: ['--aspect', '-a'],
                description: 'Show templates provided by the aspect-id')
          ]),
      Subcommand(
          name: 'build',
          description:
              'Run set of tasks for build. By default, only new and modified components are built',
          args: [
            Arg(
                description:
                    'Component name, component id, or component pattern. Use component pattern to select multiple components. Use comma to separate patterns and \'!\' to exclude')
          ],
          options: [
            Option(
                name: ['--all', '-a'],
                description: 'DEPRECATED. Use --unmodified'),
            Option(
                name: ['--unmodified', '-u'],
                description: 'Include unmodified components'),
            Option(
                name: ['--dev', '-d'],
                description: 'Run the pipeline in dev mode'),
            Option(
                name: '--install',
                description: 'Install core aspects in capsules'),
            Option(
                name: '--reuse-capsules',
                description:
                    'Avoid deleting the capsules root-dir before starting the build'),
            Option(
                name: '--tasks',
                description: 'Build the specified task(s) only'),
            Option(
                name: '--cache-packages-on-capsule-root',
                description:
                    'Set the package-manager cache on the capsule root'),
            Option(
                name: '--list-tasks',
                description:
                    'List tasks of an env or a component-id for each one of the pipelines'),
            Option(
                name: '--skip-tests',
                description:
                    'Skip running component tests during build process'),
            Option(
                name: '--fail-fast',
                description: 'Stop pipeline execution on the first failed task')
          ]),
      Subcommand(
          name: 'artifacts',
          description: 'List and download component artifacts',
          args: [
            Arg(
                description:
                    'Component name, component id, or component pattern. Use component pattern to select multiple components. Use comma to separate patterns and \'!\' to exclude. E.g. \'ui/**, !ui/button\' wrap the pattern with quotes')
          ],
          options: [
            Option(
                name: '--aspect',
                description:
                    'Show/download only artifacts generated by this aspect-id'),
            Option(
                name: '--task',
                description:
                    'Show/download only artifacts generated by this task-id'),
            Option(
                name: '--files',
                description:
                    'Show/download only artifacts matching the given files or the glob pattern (wrap glob patterns in quotes)'),
            Option(
                name: '--out-dir',
                description: 'Download the files to the specified dir')
          ]),
      Subcommand(
          name: 'refactor',
          description: 'Source code refactoring / codemod',
          subcommands: [
            Subcommand(
                name: 'dependency-name',
                description:
                    'Replace the dependency\'s old package-name with a new one in the code, usage: refactor dependency-name <old-id> <new-id>',
                args: [
                  Arg(description: 'Old ID or package name'),
                  Arg(description: 'New ID or package name')
                ])
          ]),
      Subcommand(
          name: ['status', 's'],
          description:
              'Present the current status of components in the workspace, including indication of detected issues\n\nbit status',
          options: [
            Option(
                name: ['--json', '-j'],
                description: 'Return a JSON version of the component'),
            Option(
                name: '--verbose',
                description:
                    'Show extra data: full snap hashes for staged components, and divergence point for lanes'),
            Option(
                name: ['--lanes', '-l'],
                description:
                    'When on a lane, show updates from main and updates from forked lanes'),
            Option(
                name: '--strict',
                description: 'In case issues found, exit with code 1')
          ]),
      Subcommand(
          name: 'compile',
          description: 'Compile components in the workspace',
          args: [
            Arg(description: 'A list of component names or component ID')
          ],
          options: [
            Option(
                name: ['--changed', '-c'],
                description: 'Compile only new and modified components'),
            Option(
                name: ['--verbose', '-v'],
                description: 'Show more data, such as, dist paths'),
            Option(
                name: ['--json', '-j'],
                description: 'Return the compile results in json format'),
            Option(
                name: '--delete-dist-dir',
                description:
                    'Delete existing dist folder before writing new compiled files')
          ]),
      Subcommand(
          name: ['test', 'at'],
          description:
              'Test components in the workspace. By default only runs tests for new and modified components.\n\nbit test [component-pattern]',
          args: [
            Arg(
                description:
                    'Component name, component id, or component pattern. Use component pattern to select multiple components. Use comma to separate patterns and "!" to exclude. e.g. "ui/**, !ui/button" wrap the pattern with quotes')
          ],
          options: [
            Option(
                name: ['--watch', '-w'],
                description: 'Start the tester in watch mode'),
            Option(
                name: ['--debug', '-d'],
                description: 'Start the tester in debug mode'),
            Option(
                name: ['--all', '-a'],
                description: 'Test all components, not only new and modified'),
            Option(
                name: '--junit',
                description:
                    'Write tests results as JUnit XML format into the specified file path'),
            Option(name: '--coverage', description: 'Show code coverage data'),
            Option(
                name: ['--env', '-e'],
                description: 'Test only components assigned the given env'),
            Option(
                name: ['--scope', '-s'],
                description:
                    'DEPRECATED. (use the pattern instead, e.g. "scopeName/**"). Name of the scope to test')
          ]),
      Subcommand(
          name: 'schema',
          description: 'Shows the API schema of the specified component/s',
          args: [
            Arg(description: 'Pattern for components to matc')
          ],
          options: [
            Option(
                name: ['--json', '-j'],
                description: 'Return the component schema in json format')
          ]),
      Subcommand(
          name: 'check-types',
          description: 'Check typescript types',
          args: [
            Arg(
                description:
                    'Component name, component id, or component pattern')
          ],
          options: [
            Option(
                name: ['--all', '-a'],
                description:
                    'Check-types for all components, not only modified and new'),
            Option(
                name: '--strict',
                description: 'In case issues found, exit with code 1')
          ]),
      Subcommand(name: 'aspect', description: 'EXPERIMENTAL. Manage aspects'),
      Subcommand(
          name: ['eject', 'E'],
          description:
              'Remove component from the workspace and install it instead as a regular npm package. By default the component files will be removed from the workspace',
          args: [
            Arg(
                description:
                    'Component name, component id, or component pattern')
          ],
          options: [
            Option(
                name: ['--force', '-f'],
                description:
                    'Ignore local changes/versions, eject component/s even when they are staged or modified. Note: unexported tags/snaps will be lost'),
            Option(
                name: ['--json', '-j'],
                description: 'Print the results in JSON format'),
            Option(
                name: '--keep-files',
                description: 'Keep the component files in the workspace intact')
          ]),
      Subcommand(
          name: 'format',
          description: 'Format components in the development workspace',
          options: [
            Option(
                name: '--changed',
                description: 'Format only new and modified components'),
            Option(
                name: '--check',
                description:
                    'Will output a message and a list of unformatted files, if any'),
            Option(
                name: ['--json', '-j'],
                description: 'Return the format results in json format')
          ]),
      Subcommand(
          name: 'lint',
          description: 'Lint components in the development workspace',
          args: [
            Arg(description: 'Component names or component IDs to lin')
          ],
          options: [
            Option(
                name: ['--changed', '-c'],
                description: 'Lint only new and modified components'),
            Option(
                name: ['--fix', '-f'],
                description: 'Automatically fix problems'),
            Option(
                name: '--fix-type',
                description:
                    'Specify the types of fixes to apply (problem, suggestion, layout)'),
            Option(
                name: ['--json', '-j'],
                description: 'Return the lint results in json format')
          ]),
      Subcommand(
          name: 'graph',
          description:
              'Generate an image file with the workspace components\' dependencies graph',
          args: [
            Arg(description: 'I')
          ],
          options: [
            Option(
                name: ['--image', '-i'],
                args: [Arg(description: 'Image path and forma')]),
            Option(name: '--remote', args: [Arg(description: 'Remote nam')]),
            Option(
                name: '--all-versions',
                description:
                    'Enter all components versions into the graph, not only latest'),
            Option(
                name: '--layout', args: [Arg(description: 'GraphVis layou')]),
            Option(name: ['--json', '-j'], description: 'Json format')
          ]),
      Subcommand(
          name: ['list', 'ls'],
          description: 'List components on a workspace or a remote scope',
          args: [Arg(description: 'Remote scope to list components fro')],
          options: [
            Option(
                name: ['--ids', '-i'],
                description: 'Show only component ids, unformatted'),
            Option(
                name: ['--scope', '-s'],
                description: 'Show only components stored in the local scope'),
            Option(
                name: ['--outdated', '-o'],
                description: 'Highlight outdated components'),
            Option(
                name: ['--json', '-j'],
                description: 'Show the output in JSON format'),
            Option(
                name: '--namespace',
                description: 'Show only components in the specified namespace')
          ]),
      Subcommand(name: 'globals', description: 'List all globals', options: [
        Option(name: ['--json', '-j'], description: 'Json format')
      ]),
      Subcommand(
          name: 'run',
          description:
              'Locally run an app component (independent of bit\'s dev server)',
          args: [
            Arg(description: 'The app\'s name registered by the ap')
          ],
          options: [
            Option(
                name: ['--dev', '-d'],
                description: 'Start the application in dev mode'),
            Option(
                name: ['--port', '-p'], description: 'Port to run the app on'),
            Option(
                name: ['--verbose', '-v'],
                description:
                    'Show verbose output for inspection and print stack trace'),
            Option(
                name: '--skip-watch',
                description:
                    'Avoid running the watch process that compiles components in the background'),
            Option(
                name: '--ssr',
                description: 'Run app in server side rendering mode')
          ]),
      Subcommand(name: 'app', description: 'Manages apps', subcommands: [
        Subcommand(
            name: 'list',
            description: 'List all registered apps',
            options: [
              Option(
                  name: ['--json', '-j'],
                  description: 'Return the component data in json format')
            ]),
        Subcommand(
            name: 'run',
            description:
                'Locally run an app component (independent of bit\'s dev server)',
            args: [
              Arg(
                  description:
                      'The app\'s name is registered by the app (run \'bit app list\' to list the names of the available apps)')
            ],
            options: [
              Option(
                  name: ['--dev', '-d'],
                  description: 'Start the application in dev mode'),
              Option(
                  name: ['--port', '-p'],
                  description: 'Port to run the app on'),
              Option(
                  name: ['--verbose', '-v'],
                  description:
                      'Show verbose output for inspection and print stack trace'),
              Option(
                  name: '--skip-watch',
                  description:
                      'Avoid running the watch process that compiles components in the background'),
              Option(
                  name: '--ssr',
                  description: 'Run app in server side rendering mode')
            ])
      ]),
      Subcommand(name: 'capsule', description: 'Manage capsules', subcommands: [
        Subcommand(
            name: 'list',
            description: 'List the capsules generated for this workspace',
            options: [
              Option(name: ['--json', '-j'], description: 'JSON format')
            ]),
        Subcommand(
            name: 'create',
            description: 'Create capsules for components',
            options: [
              Option(
                  name: ['--base-dir', '-b'],
                  description: 'Set base dir of all capsules'),
              Option(
                  name: ['--root-base-dir', '-r'],
                  description: 'Set root base dir of all capsules'),
              Option(
                  name: ['--always-new', '-a'],
                  description: 'Create new environment for capsule'),
              Option(
                  name: '--seeders-only',
                  description: 'Create capsules for the seeders only'),
              Option(
                  name: ['--id', '-i'],
                  description: 'Reuse capsule of certain name'),
              Option(
                  name: '--use-hash',
                  description:
                      'Whether to use hash function as capsules root dir name'),
              Option(name: ['--json', '-j'], description: 'JSON format'),
              Option(
                  name: '--install-packages',
                  description: 'Install packages by the package-manager'),
              Option(
                  name: ['--package-manager', '-p'],
                  description: 'Npm, yarn or pnpm, default to npm')
            ]),
        Subcommand(name: 'delete', description: 'Delete capsules', options: [
          Option(
              name: '--scope-aspects',
              description: 'Delete scope-aspects capsules'),
          Option(
              name: ['--all', '-a'],
              description: 'Delete all capsules for all workspaces and scopes'),
          Option(name: ['--json', '-j'], description: 'JSON format')
        ])
      ]),
      Subcommand(
          name: 'delete',
          description: 'Mark components as deleted on the remote',
          args: [
            Arg(
                description:
                    'Component name, component id, or component pattern')
          ],
          options: [
            Option(
                name: '--lane',
                description:
                    'When on a lane, delete the component from this lane only'),
            Option(
                name: '--update-main',
                description:
                    'EXPERIMENTAL: Delete component/s on the main lane after merging this lane into main'),
            Option(
                name: ['--force', '-f'],
                description:
                    'Removes the component from the scope, even if used as a dependency'),
            Option(name: ['--silent', '-s'], description: 'Skip confirmation'),
            Option(
                name: '--hard',
                description:
                    'NOT-RECOMMENDED: Delete a component completely from a remote scope')
          ]),
      Subcommand(
          name: 'eject-conf',
          description:
              'Eject components configuration (create a component.json file). Note this can be reversed at any time by snapping/tagging changes and deleting the component.json file',
          args: [
            Arg(description: 'Pattern for component id')
          ],
          options: [
            Option(
                name: ['--propagate', '-p'],
                description:
                    'Mark propagate true in the config file, so that component.json configs will be merge with workspace configs'),
            Option(
                name: ['--override', '-o'],
                description: 'Override file if exist')
          ]),
      Subcommand(
          name: 'git',
          description: 'Perform git operations',
          subcommands: [
            Subcommand(
                name: 'set-merge-driver',
                description: 'Setup bit\'s git merge driver for bitmap files',
                options: [
                  Option(
                      name: ['--global', '-g'],
                      description: 'Set the git merge driver globally')
                ]),
            Subcommand(
                name: 'merge-bitmaps',
                description: 'Merge conflicting bitmap files during git merge',
                args: [
                  Arg(description: 'Ancestor'),
                  Arg(description: 'Current'),
                  Arg(description: 'Other')
                ])
          ]),
      Subcommand(
          name: ['lane', 'l'],
          description:
              'Manage lanes - if no sub-command is used, runs \'bit lane list\'',
          subcommands: [
            Subcommand(name: 'list', description: 'List local lanes', options: [
              Option(
                  name: ['--details', '-d'],
                  description:
                      'Show more details on the state of each component in each lane'),
              Option(
                  name: ['--json', '-j'],
                  description: 'Show lanes\' details in a json format'),
              Option(
                  name: ['--remote', '-r'],
                  args: [Arg(description: 'Remote scope nam')],
                  description:
                      'Show all remote lanes from the specified scope'),
              Option(name: '--merged', description: 'List only merged lanes'),
              Option(
                  name: '--not-merged',
                  description: 'List only lanes that haven\'t been merged')
            ]),
            Subcommand(
                name: 'switch',
                description: 'Switch to the specified lane',
                args: [
                  Arg(
                      description:
                          'Lane-name or lane-id (if lane is not local) to switch to')
                ],
                options: [
                  Option(
                      name: ['--alias', '-n'],
                      args: [Arg(description: 'Local alias for the lan')],
                      description:
                          'Relevant when the specified lane is a remote lane. Create a local alias for the lane'),
                  Option(
                      name: ['--merge', '-m'],
                      args: [Arg(description: 'Merge strateg')],
                      description:
                          'Merge local changes with the checked out version. Strategy should be \'theirs\', \'ours\', or \'manual\''),
                  Option(
                      name: '--get-all',
                      description:
                          'Checkout all components in a lane, including those not currently in the workspace'),
                  Option(
                      name: '--skip-dependency-installation',
                      description:
                          'Do not install packages of the imported components'),
                  Option(
                      name: ['--pattern', '-p'],
                      args: [Arg(description: 'Component patter')],
                      description:
                          'Switch only the lane components matching the specified component-pattern'),
                  Option(
                      name: ['--json', '-j'],
                      description: 'Return the output as JSON')
                ]),
            Subcommand(
                name: 'show',
                description:
                    'Show lane details. If no lane specified, show the current lane',
                options: [
                  Option(
                      name: ['--json', '-j'],
                      description: 'Show the lane details in json format'),
                  Option(
                      name: '--remote',
                      description:
                          'Show details of the remote head of the provided lane')
                ]),
            Subcommand(
                name: 'create',
                description: 'Creates a new lane and switches to it',
                args: [
                  Arg(description: 'The name for the new lan')
                ],
                options: [
                  Option(
                      name: [
                        '--scope',
                        '-s'
                      ],
                      args: [
                        Arg(description: 'Remote scope for the new componen')
                      ],
                      description:
                          'Remote scope to which this lane will be exported, default to the workspace.json\'s defaultScope'),
                  Option(
                      name: '--remote-scope',
                      description: 'DEPRECATED. Use --scope'),
                  Option(
                      name: '--alias',
                      args: [Arg(description: 'Local alia')],
                      description:
                          'A local alias to refer to this lane, defaults to the <lane-name>'),
                  Option(
                      name: '--fork-lane-new-scope',
                      description:
                          'Create the new lane in a different scope than its parent lane (if created from another lane)')
                ]),
            Subcommand(
                name: 'remove',
                description: 'Remove or delete lanes',
                args: [
                  Arg(description: 'A list of lane names, separated by space')
                ],
                options: [
                  Option(
                      name: ['--remote', '-r'],
                      description:
                          'Delete a remote lane. Use remote/lane-id syntax e.g. bit lane remove owner.org/my-lane --remote. Delete is immediate, no export required'),
                  Option(
                      name: ['--force', '-f'],
                      description:
                          'Removes/deletes the lane even when the lane is not yet merged to main'),
                  Option(
                      name: ['--silent', '-s'],
                      description: 'Skip confirmation')
                ]),
            Subcommand(
                name: 'change-scope',
                description: 'Changes the remote scope of a lane',
                args: [
                  Arg(description: 'Remote scope nam')
                ],
                options: [
                  Option(
                      name: ['--lane-name', '-l'],
                      args: [Arg(description: 'Name of the lan')],
                      description:
                          'The name of the lane to change its remote scope. If not specified, the current lane is used')
                ]),
            Subcommand(
                name: 'alias',
                description: 'Adds an alias to a lane',
                args: [Arg(description: 'Lane name and alia')]),
            Subcommand(
                name: 'rename',
                description:
                    'EXPERIMENTAL. Change the lane-name locally and on the remote (if exported)',
                args: [
                  Arg(description: 'New name for the lan')
                ],
                options: [
                  Option(
                      name: ['--lane-name', '-l'],
                      args: [Arg(description: 'Name of the lan')],
                      description:
                          'The name of the lane to rename. If not specified, the current lane is used')
                ]),
            Subcommand(
                name: 'diff',
                description: 'Show diff between lanes',
                args: [
                  Arg(
                      description:
                          'Base lane for comparison and lane being compared to base lane')
                ],
                options: [
                  Option(
                      name: ['--pattern', '-p'],
                      args: [Arg(description: 'Component patter')],
                      description:
                          'Show lane-diff for components conforming to the specified component-pattern only'),
                  Option(
                      name: '--workspace-only',
                      description:
                          'Do not mark the components as removed from the lane. Instead, remove them from the workspace only'),
                  Option(
                      name: '--update-main',
                      description:
                          'EXPERIMENTAL. Remove, i.e. delete, component/s on the main lane after merging this lane into main')
                ]),
            Subcommand(
                name: 'merge-abort',
                description:
                    'Abort the recent lane-merge. Revert the lane object and checkout accordingly',
                options: [
                  Option(
                      name: '--verbose',
                      description:
                          'Show details of components that didn\'t need to be merged'),
                  Option(
                      name: ['--silent', '-s'],
                      description: 'Skip confirmation'),
                  Option(
                      name: '--skip-dependency-installation',
                      description:
                          'Do not install packages of the imported components')
                ]),
            Subcommand(
                name: 'merge',
                description:
                    'Merge a local or a remote lane to the current lane. By default, the provided lane will be fetched from the remote before merging. To merge the lane from the local scope without updating it first, use \'--skip-fetch\' flag',
                args: [
                  Arg(
                      name: 'lane',
                      description:
                          'Lane-name or full lane-id (if remote) to merge into the current lane'),
                  Arg(
                      name: 'pattern',
                      description:
                          'Partially merge the lane - only components that match the specified component-pattern. Component pattern format: component name, component id, or component pattern. Use component pattern to select multiple components. Use comma to separate patterns and "!" to exclude. E.g. "ui/**, !ui/button". Wrap the pattern with quotes',
                      isOptional: true)
                ],
                options: [
                  Option(
                      name: '--ours',
                      description:
                          'DEPRECATED. Use --auto-merge-resolve. In case of a conflict, keep local modifications'),
                  Option(
                      name: '--theirs',
                      description:
                          'DEPRECATED. Use --auto-merge-resolve. In case of a conflict, override local with incoming changes'),
                  Option(
                      name: '--manual',
                      description:
                          'DEPRECATED. Use --auto-merge-resolve. Requires manual resolution of conflicts'),
                  Option(
                      name: '--auto-merge-resolve',
                      description:
                          'In case of a merge conflict, resolve according to the provided strategy. Options include: [ours, theirs, manual]'),
                  Option(
                      name: '--workspace',
                      description:
                          'Merge only lane components that are in the current workspace'),
                  Option(
                      name: '--no-snap',
                      description:
                          'Do not auto snap after merge completed without conflicts'),
                  Option(
                      name: '--tag',
                      description:
                          'Auto-tag all lane components after merging into main (or tag-merge in case of snap-merge)'),
                  Option(
                      name: '--build',
                      description:
                          'In case of snap during the merge, run the build-pipeline (similar to bit snap --build)'),
                  Option(
                      name: ['--message', '-m'],
                      description:
                          'Override the default message for the auto snap'),
                  Option(
                      name: '--keep-readme',
                      description:
                          'Skip deleting the lane readme component after merging'),
                  Option(
                      name: '--no-squash',
                      description:
                          'Relevant for merging lanes into main, which by default squashes all lane snaps'),
                  Option(
                      name: '--squash',
                      description:
                          'EXPERIMENTAL. Relevant for merging a lane into another non-main lane, which by default does not squash'),
                  Option(
                      name: '--ignore-config-changes',
                      description:
                          'Allow merging when components are modified due to config changes (such as dependencies) only and not files'),
                  Option(
                      name: '--verbose',
                      description:
                          'Show details of components that were not merged successfully'),
                  Option(
                      name: ['--skip-dependency-installation', '-x'],
                      description:
                          'Do not install dependencies of the imported components'),
                  Option(
                      name: '--skip-fetch',
                      description:
                          'Use the local state of target-lane if exits locally, without updating it from the remote'),
                  Option(
                      name: '--include-deps',
                      description:
                          'Relevant for "--pattern" and "--workspace". Merge also dependencies of the specified components'),
                  Option(
                      name: '--resolve-unrelated',
                      description:
                          'Relevant when a component on a lane and the component on main have nothing in common. merge-strategy can be "ours" (default) or "theirs"'),
                  Option(
                      name: '--include-non-lane-comps',
                      description:
                          'When merging main, include workspace components that are not on the lane (by default only lane components are merged)')
                ]),
            Subcommand(
                name: 'add-readme',
                description:
                    'EXPERIMENTAL. Sets an existing component as the readme of a lane',
                args: [
                  Arg(
                      name: 'component-id',
                      description:
                          'The component name or id of the component to use as the lane\'s readme'),
                  Arg(
                      name: 'lane-name',
                      description:
                          'The lane to attach the readme to (defaults to the current lane)')
                ]),
            Subcommand(
                name: 'remove-readme',
                description: 'EXPERIMENTAL. Remove lane readme component',
                args: [
                  Arg(
                      name: 'laneName',
                      description:
                          'Name of the lane from which the readme component should be removed')
                ]),
            Subcommand(
                name: 'import',
                description:
                    'Import a remote lane to your workspace and switch to that lane',
                args: [
                  Arg(
                      name: 'lane',
                      description: 'The remote lane name to be imported')
                ],
                options: [
                  Option(
                      name: ['--skip-dependency-installation', '-x'],
                      description:
                          'Do not install dependencies of the imported components'),
                  Option(
                      name: ['--pattern', '-p'],
                      description:
                          'Import only components from the lane that fit the specified component-pattern to the workspace. Works only when the workspace is empty')
                ]),
            Subcommand(
                name: 'remove-comp',
                description: 'DEPRECATED. Remove components when on a lane',
                args: [
                  Arg(
                      name: 'component-pattern',
                      description:
                          'Component name, component id, or component pattern. Use component pattern to select multiple components. Use comma to separate patterns and "!" to exclude. E.g. "ui/**, !ui/button". Wrap the pattern with quotes')
                ],
                options: [
                  Option(
                      name: '--workspace-only',
                      description:
                          'Do not mark the components as removed from the lane. Instead, remove them from the workspace only'),
                  Option(
                      name: '--update-main',
                      description:
                          'EXPERIMENTAL. Remove, i.e., delete, component/s on the main lane after merging this lane into the main')
                ])
          ]),
      Subcommand(
          name: 'log-file',
          description: 'EXPERIMENTAL: Show file history',
          args: [
            Arg(description: 'File path relative to the workspac')
          ],
          options: [
            Option(
                name: ['--one-line', '-o'],
                description: 'Show each log entry in one line')
          ]),
      Subcommand(
          name: ['mini-status', 'ms'],
          description: 'EXPERIMENTAL. Basic status for fast execution',
          args: [
            Arg(
                description:
                    'Component name, component ID, or component pattern')
          ],
          options: [
            Option(name: '--show-issues', description: 'Show component issues'),
            Option(name: ['--json', '-j'], description: 'Output in JSON format')
          ]),
      Subcommand(
          name: 'pattern',
          description: 'List the component ids matching the given pattern',
          args: [
            Arg(description: 'Pattern for components to matc')
          ],
          options: [
            Option(
                name: ['--json', '-j'],
                description: 'Return the output as JSON')
          ]),
      Subcommand(
          name: 'recover',
          description:
              'EXPERIMENTAL. Recover component(s) soft-deleted from the workspace, or a remote scope',
          args: [
            Arg(description: 'Component name to recove')
          ],
          options: [
            Option(
                name: ['--skip-dependency-installation', '-x'],
                description:
                    'Do not install packages in case of importing components')
          ]),
      Subcommand(
          name: 'revert',
          description:
              'Replace the current component files by the specified version, leave the version intact',
          args: [
            Arg(description: 'Component name, ID, or pattern'),
            Arg(description: 'Permitted values: [main, specific-version]')
          ],
          options: [
            Option(
                name: ['--verbose', '-v'],
                description: 'Showing verbose output for inspection'),
            Option(
                name: ['--skip-dependency-installation', '-x'],
                description:
                    'Do not install packages of the imported components')
          ]),
      Subcommand(
          name: 'scope',
          description:
              'Manage the scope-name for components\n\nbit scope <sub-command>',
          subcommands: [
            Subcommand(
                name: 'set',
                description:
                    'Sets the scope for specified component/s. If no component is specified, sets the default scope of the workspace. Default scopes for components are set in the bitmap file. The default scope for a workspace is set in the workspace.jsonc. A component is set with a scope (as opposed to default scope) only once it is versioned. You can use a pattern for multiple component ids, such as bit scope set scope-name "org.scope/utils/**". Use comma to separate patterns and \'!\' to exclude. Always wrap the pattern with single quotes to avoid collision with shell commands.\n\nUsage: scope set <scope-name> [component-pattern]',
                args: [
                  Arg(description: 'Name of the scope to set'),
                  Arg(description: 'Component name, ID, or pattern')
                ]),
            Subcommand(
                name: 'rename',
                description:
                    'Renames the scope name for all components with the specified \'current scope name\' - only available for new components that have not yet been snapped/tagged. If <current-scope-name> is also the defaultScope for the workspace, this command will set <new-scope-name> as the defaultScope instead.\n\nUsage: scope rename <current-scope-name> <new-scope-name>',
                args: [
                  Arg(description: 'The current scope name'),
                  Arg(description: 'The new scope name')
                ],
                options: [
                  Option(
                      name: ['--refactor', '-r'],
                      description:
                          'Update the import statements in all dependent components')
                ]),
            Subcommand(
                name: 'rename-owner',
                description:
                    'Renames the owner part of the scope-name for all components with the specified \'current owner name\'.\n\nUsage: scope rename-owner <current-owner-name> <new-owner-name>',
                args: [
                  Arg(description: 'The current owner name'),
                  Arg(description: 'The new owner name')
                ],
                options: [
                  Option(
                      name: ['--refactor', '-r'],
                      description:
                          'Update the import statements in all dependent components'),
                  Option(
                      name: '--ast',
                      description:
                          'EXPERIMENTAL. Use AST to transform files instead of regex')
                ]),
            Subcommand(
                name: 'fork',
                description:
                    'Fork all components of the original-scope and refactor the source-code to use the new scope name.\n\nUsage: scope fork <original-scope> <new-scope>',
                options: [
                  Option(
                      name: '--ast',
                      description:
                          'EXPERIMENTAL. Use AST to transform files instead of regex')
                ])
          ]),
      Subcommand(
          name: 'server',
          description:
              'EXPERIMENTAL. Communicate with bit CLI program via HTTP requests\n\nbit server',
          options: [
            Option(
                name: ['--port', '-p'],
                description: 'Port to run the server on')
          ]),
      Subcommand(
          name: 'system',
          description: 'System operations\n\nbit system <sub-command>',
          subcommands: [
            Subcommand(
                name: 'log',
                description:
                    'Print debug.log to the screen\n\nUsage: system log')
          ]),
      Subcommand(
          name: 'snap',
          description:
              'Create an immutable and exportable component snapshot (non-release version)\n\nbit snap [component-pattern]',
          args: [
            Arg(
                description:
                    'Component name, component ID, or component pattern. Use component pattern to select multiple components. Use comma to separate patterns and "!" to exclude. E.g. "ui/**, !ui/button". Wrap the pattern with quotes. By default, only new and modified components are snapped (add --unmodified to snap all components in the workspace)')
          ],
          options: [
            Option(
                name: ['--message', '-m'],
                description:
                    'Snap message describing the latest changes - will appear in component history log'),
            Option(
                name: '--unmodified',
                description:
                    'Include unmodified components (by default, only new and modified components are snapped)'),
            Option(
                name: '--unmerged',
                description:
                    'Complete a merge process by snapping the unmerged components'),
            Option(
                name: ['--build', '-b'],
                description:
                    'Not needed for now. Run the build pipeline locally in case the feature-flag build-on-ci is enabled'),
            Option(
                name: '--editor',
                description:
                    'Open an editor to write a snap message per component. Optionally specify the editor-name (defaults to vim)'),
            Option(
                name: '--skip-tests',
                description:
                    'Skip running component tests during snap process'),
            Option(
                name: '--skip-auto-snap',
                description: 'Skip auto snapping dependents'),
            Option(
                name: '--disable-snap-pipeline',
                description:
                    'Skip the snap pipeline. This will for instance skip packing and publishing component version for install, and app deployment'),
            Option(
                name: '--ignore-build-errors',
                description:
                    'Proceed to snap pipeline even when build pipeline fails'),
            Option(
                name: ['--ignore-issues', '-i'],
                description:
                    'Ignore component issues (shown in "bit status" as "issues found"), issues to ignore: [MissingPackagesDependenciesOnFs, MissingManuallyConfiguredPackages, MissingComponents, UntrackedDependencies, ResolveErrors, RelativeComponents, RelativeComponentsAuthored, ParseErrors, MissingDists, LegacyInsideHarmony, MissingDependenciesOnFs, ImportNonMainFiles, MultipleEnvs, MissingLinksFromNodeModulesToSrc, CircularDependencies, DuplicateComponentAndPackage, MergeConfigHasConflict, NonLoadedEnv, ExternalEnvWithoutVersion, RemovedDependencies] to ignore multiple issues, separate them by a comma and wrap with quotes. To ignore all issues, specify "*"'),
            Option(
                name: ['--all', '-a'],
                description:
                    'DEPRECATED (not needed anymore, now the default). Snap all new and modified components'),
            Option(
                name: '--fail-fast',
                description:
                    'Stop pipeline execution on the first failed task (by default a task is skipped only when its dependency failed)'),
            Option(
                name: ['--force', '-f'],
                description:
                    'DEPRECATED (use "--skip-tests" or "--unmodified" instead). Force-snap even if tests are failing and even when component has not changed')
          ]),
      Subcommand(
          name: 'watch',
          description:
              'Automatically recompile modified components (on save). By default, the watcher doesn\'t use polling, to keep the CPU idle. In some rare cases, this could result in missing file events (files are not watched). To fix it, try to stop other watchers on the same machine. Alternatively, to use polling, run "bit config set watch_use_polling true".\n\nbit watch',
          options: [
            Option(
                name: ['--verbose', '-v'],
                description:
                    'Show all watch events and compiler verbose output'),
            Option(
                name: '--skip-pre-compilation',
                description: 'Skip compilation step before starting to watch'),
            Option(
                name: ['--check-types', '-t'],
                description:
                    'EXPERIMENTAL. Show errors/warnings for types. Options are [file, project] to investigate only changed file or entire project. Defaults to project')
          ]),
      Subcommand(
          name: 'use',
          description:
              'Set aspects in the workspace/scope config to make them loadable by the workspace/scope.\n\nbit use <component-id>',
          args: [Arg(description: 'The component ID of the aspect')]),
      Subcommand(
          name: ['ws-config', 'workspace-config'],
          description:
              'Manage workspace config files.\n\nbit ws-config <sub-command>',
          subcommands: [
            Subcommand(
                name: 'ws-config write',
                description:
                    'EXPERIMENTAL. Write config files in the workspace. Useful for IDEs.\n\nws-config write',
                options: [
                  Option(
                      name: ['--clean', '-c'],
                      description:
                          'Delete existing config files from the workspace. Highly recommended to run it with "--dry-run" first'),
                  Option(
                      name: ['--writers', '-w'],
                      description:
                          'Only write config files for the given writers. Use comma to separate multiple writers. Use ws-config list to see all writers'),
                  Option(
                      name: ['--silent', '-s'],
                      description: 'Do not prompt for confirmation'),
                  Option(
                      name: '--no-dedupe',
                      description:
                          'Write configs inside each one of the component\'s dir, avoid deduping'),
                  Option(
                      name: '--dry-run',
                      description:
                          'Show the paths that configs will be written per env'),
                  Option(
                      name: '--dry-run-with-content',
                      description:
                          'Use with --json flag. Show the config content and the paths that will be written per env'),
                  Option(
                      name: ['--verbose', '-v'],
                      description: 'Showing verbose output for writing'),
                  Option(name: ['--json', '-j'], description: 'JSON format')
                ]),
            Subcommand(
                name: 'ws-config clean',
                description:
                    'EXPERIMENTAL. Clean (delete) written config files in the workspace. Useful for IDEs.\n\nws-config clean',
                options: [
                  Option(
                      name: ['--silent', '-s'],
                      description: 'Do not prompt for confirmation'),
                  Option(
                      name: ['--writers', '-w'],
                      description:
                          'Only clean config files for the given writers. Use comma to separate multiple writers. Use ws-config list to see all writers'),
                  Option(
                      name: '--dry-run',
                      description:
                          'Show the paths of configs that will be cleaned'),
                  Option(name: ['--json', '-j'], description: 'JSON format')
                ]),
            Subcommand(
                name: 'ws-config list',
                description:
                    'EXPERIMENTAL. List config writers.\n\nws-config list',
                options: [
                  Option(name: ['--json', '-j'], description: 'JSON format')
                ])
          ])
    ],
    options: [
      Option(name: ['--version', '-v'], description: 'Show version'),
      Option(name: ['--help', '-h'], description: 'Show help for bit')
    ]);
