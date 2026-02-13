// Auto-generated from TypeScript source: poetry.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> globalOptions = [];

/// Completion spec for `poetry` CLI
final FigSpec poetrySpec = FigSpec(
  name: 'poetry',
  description: 'Poetry is a tool for dependency management and packaging in Python',
  subcommands: [

    Subcommand(
      name: 'about',
      description: 'Shows information about poetry',
      options: [

        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'add',
      description: 'Adds a new dependency to pyproject.toml',
      options: [

        ...globalOptions,
        Option(
          name: '--group',
          description: 'The group to add the dependency to'
        ),
        Option(
          name: '--dev',
          description: 'Add as a development dependency. (Deprecated) Use --group=dev instead'
        ),
        Option(
          name: '--editable',
          description: 'Add vcs/path dependencies as editable'
        ),
        Option(
          name: '--extras',
          description: 'Extras to activate for the dependency'
        ),
        Option(
          name: '--optional',
          description: 'Add as an optional dependency'
        ),
        Option(
          name: '--python',
          description: 'Python version for which the dependency must be installed'
        ),
        Option(
          name: '--platform',
          description: 'Platforms for which the dependency must be installed'
        ),
        Option(
          name: '--source',
          description: 'Name of the source to use to install the package'
        ),
        Option(
          name: '--allow-prereleases',
          description: 'Accept prereleases'
        ),
        Option(
          name: '--dry-run',
          description: 'Output the operations but do not execute anything (implicitly enables --verbose)'
        ),
        Option(
          name: '--lock',
          description: 'Do not perform operations (only update the lockfile)'
        )
      ],
      args: [
        Arg(
        name: 'name',
        description: 'The packages to ad'
      )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Builds a package, as a tarball and a wheel by default',
      options: [

        ...globalOptions,
        Option(
          name: '--format',
          description: 'Limit the format to either sdist or wheel'
        )
      ]
    ),
    Subcommand(
      name: 'cache',
      description: 'The cache command regroups sub commands to interact with poetry\'s cache',
      subcommands: [

        Subcommand(
          name: 'clear',
          description: 'Clears a poetry cache by name',
          options: [

            ...globalOptions,
            Option(
              name: '--all',
              description: 'Clear all entries in the cache'
            )
          ],
          args: [
            Arg(
            name: 'cache',
            description: 'The name of the cache to clear'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List poetry\'s caches',
          options: [

            ...globalOptions
          ]
        )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Checks the validity of the pyproject.toml file',
      options: [

        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Manages configuration settings',
      options: [

        ...globalOptions,
        Option(
          name: '--list',
          description: 'List configuration settings'
        ),
        Option(
          name: '--unset',
          description: 'Unset configuration setting'
        ),
        Option(
          name: '--local',
          description: 'Set/Get from the project\'s local configuration'
        )
      ],
      args: [

        Arg(
          name: 'key',
          description: 'Setting key'
        ),
        Arg(
          name: 'value',
          description: 'Setting value'
        )
      ]
    ),
    Subcommand(
      name: 'debug',
      description: 'The debug command regroups sub commands to interact with debug session',
      subcommands: [

        Subcommand(
          name: 'info',
          description: 'Shows debug information',
          options: [

            ...globalOptions
          ]
        ),
        Subcommand(
          name: 'resolve',
          description: 'Debugs dependency resolution',
          options: [

            ...globalOptions,
            Option(
              name: '--extras',
              description: 'Extras to activate for the dependency'
            ),
            Option(
              name: '--python',
              description: 'Python version(s) to use for resolution'
            ),
            Option(
              name: '--tree',
              description: 'Display the dependency tree'
            ),
            Option(
              name: '--install',
              description: 'Show what would be installed for the current system'
            )
          ],
          args: [
            Arg(
            name: 'package',
            description: 'The packages to resolv'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'env',
      description: 'The env command regroups sub commands to interact with the virtualenvs associated with a specific project',
      subcommands: [

        Subcommand(
          name: 'info',
          description: 'Displays information about the current environment',
          options: [

            ...globalOptions,
            Option(
              name: '--path',
              description: 'Only display the environment\'s path'
            ),
            Option(
              name: '--executable',
              description: 'Only display the environment\'s python executable path'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all virtualenvs associated with the current project',
          options: [

            ...globalOptions,
            Option(
              name: '--full-path',
              description: 'Output the full paths of the virtualenvs'
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove virtual environments associated with the project',
          options: [

            ...globalOptions,
            Option(
              name: '--all',
              description: 'Remove all managed virtual environments associated with the project'
            )
          ],
          args: [
            Arg(
            name: 'python',
            description: 'The python executables associated with, or names of the virtual environments which are to be removed'
          )
          ]
        ),
        Subcommand(
          name: 'use',
          description: 'Activates or creates a new virtualenv for the current project',
          options: [

            ...globalOptions
          ],
          args: [
            Arg(
            name: 'python',
            description: 'The python executable to us'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Creates a basic pyproject.toml file in the current directory',
      options: [

        ...globalOptions,
        Option(
          name: '--name',
          description: 'Name of the package'
        ),
        Option(
          name: '--description',
          description: 'Description of the package'
        ),
        Option(
          name: '--author',
          description: 'Author name of the package'
        ),
        Option(
          name: '--python',
          description: 'Compatible Python versions'
        ),
        Option(
          name: '--dependency',
          description: 'Package to require, with an optional version constraint, e.g. requests:^2.10.0 or requests=2.11.1'
        ),
        Option(
          name: '--dev-dependency',
          description: 'Package to require for development, with an optional version constraint, e.g. requests:^2.10.0 or requests=2.11.1'
        ),
        Option(
          name: '--license',
          description: 'License of the package'
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Installs the project dependencies',
      options: [

        ...globalOptions,
        Option(
          name: '--without',
          description: 'The dependency groups to ignore'
        ),
        Option(
          name: '--with',
          description: 'The optional dependency groups to include'
        ),
        Option(
          name: '--only',
          description: 'The only dependency groups to include'
        ),
        Option(
          name: '--no-dev',
          description: 'Do not install the development dependencies. (Deprecated)'
        ),
        Option(
          name: '--sync',
          description: 'Synchronize the environment with the locked packages and the specified groups'
        ),
        Option(
          name: '--no-root',
          description: 'Do not install the root package (the current project)'
        ),
        Option(
          name: '--no-directory',
          description: 'Do not install any directory path dependencies; useful to install dependencies without source code, e.g. for caching of Docker layers)'
        ),
        Option(
          name: '--dry-run',
          description: 'Output the operations but do not execute anything (implicitly enables --verbose)'
        ),
        Option(
          name: '--remove-untracked',
          description: 'Removes packages not present in the lock file. (Deprecated)'
        ),
        Option(
          name: '--extras',
          description: 'Extra sets of dependencies to install'
        ),
        Option(
          name: '--all-extras',
          description: 'Install all extra dependencies'
        ),
        Option(
          name: '--only-root',
          description: 'Exclude all dependencies'
        ),
        Option(
          name: '--compile',
          description: 'Compile Python source files to bytecode. (This option has no effect if modern-installation is disabled because the old installer always compiles.)'
        )
      ]
    ),
    Subcommand(
      name: 'lock',
      description: 'Locks the project dependencies',
      options: [

        ...globalOptions,
        Option(
          name: '--no-update',
          description: 'Do not update locked versions, only refresh lock file'
        ),
        Option(
          name: '--check',
          description: 'Check that the poetry.lock file corresponds to the current version of pyproject.toml'
        )
      ]
    ),
    Subcommand(
      name: 'new',
      description: 'Creates a new Python project at <path>',
      options: [

        ...globalOptions,
        Option(
          name: '--name',
          description: 'Set the resulting package name'
        ),
        Option(
          name: '--src',
          description: 'Use the src layout for the project'
        ),
        Option(
          name: '--readme',
          description: 'Specify the readme file format. One of md (default) or rst'
        )
      ],
      args: [
        Arg(
        name: 'path',
        description: 'The path to create the project a'
      )
      ]
    ),
    Subcommand(
      name: 'publish',
      description: 'Publishes a package to a remote repository',
      options: [

        ...globalOptions,
        Option(
          name: '--repository',
          description: 'The repository to publish the package to'
        ),
        Option(
          name: '--username',
          description: 'The username to access the repository'
        ),
        Option(
          name: '--password',
          description: 'The password to access the repository'
        ),
        Option(
          name: '--cert',
          description: 'Certificate authority to access the repository'
        ),
        Option(
          name: '--client-cert',
          description: 'Client certificate to access the repository'
        ),
        Option(
          name: '--build',
          description: 'Build the package before publishing'
        ),
        Option(
          name: '--dry-run',
          description: 'Perform all actions except upload the package'
        ),
        Option(
          name: '--skip-existing',
          description: 'Ignore errors from files already existing in the repository'
        )
      ]
    ),
    Subcommand(
      name: 'remove',
      description: 'Removes a package from the project dependencies',
      options: [

        ...globalOptions,
        Option(
          name: '--group',
          description: 'The group to remove the dependency from'
        ),
        Option(
          name: '--dev',
          description: 'Remove a package from the development dependencies. (Deprecated) Use --group=dev instead'
        ),
        Option(
          name: '--dry-run',
          description: 'Output the operations but do not execute anything (implicitly enables --verbose)'
        ),
        Option(
          name: '--lock',
          description: 'Do not perform operations (only update the lockfile)'
        )
      ],
      args: [
        Arg(
        name: 'packages',
        description: 'The packages to remov'
      )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Runs a command in the appropriate environment',
      options: [

        ...globalOptions
      ],
      args: [
        Arg(
        name: 'args',
        description: 'The command and arguments/options to run'
      )
      ]
    ),
    Subcommand(
      name: 'search',
      description: 'Searches for packages on remote repositories',
      options: [

        ...globalOptions
      ],
      args: [
        Arg(
        name: 'tokens',
        description: 'The tokens to search fo'
      )
      ]
    ),
    Subcommand(
      name: 'self',
      description: 'The self namespace regroups sub commands to manage the poetry installation itself',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add additional packages to poetry\'s runtime environment',
          options: [

            ...globalOptions,
            Option(
              name: '--editable',
              description: 'Add vcs/path dependencies as editable'
            ),
            Option(
              name: '--extras',
              description: 'Extras to activate for the dependency'
            ),
            Option(
              name: '--source',
              description: 'Name of the source to use to install the package'
            ),
            Option(
              name: '--allow-prereleases',
              description: 'Accept prereleases'
            ),
            Option(
              name: '--dry-run',
              description: 'Output the operations but do not execute anything (implicitly enables --verbose)'
            )
          ],
          args: [
            Arg(
            name: 'name',
            description: 'The packages to ad'
          )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Install locked packages (incl. addons) required by this poetry installation',
          options: [

            ...globalOptions,
            Option(
              name: '--sync',
              description: 'Synchronize the environment with the locked packages and the specified groups'
            ),
            Option(
              name: '--dry-run',
              description: 'Output the operations but do not execute anything (implicitly enables --verbose)'
            )
          ]
        ),
        Subcommand(
          name: 'lock',
          description: 'Lock the poetry installation\'s system requirements',
          options: [

            ...globalOptions,
            Option(
              name: '--no-update',
              description: 'Do not update locked versions, only refresh lock file'
            ),
            Option(
              name: '--check',
              description: 'Check that the poetry.lock file corresponds to the current version of pyproject.toml'
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove additional packages from poetry\'s runtime environment',
          options: [

            ...globalOptions,
            Option(
              name: '--dry-run',
              description: 'Output the operations but do not execute anything (implicitly enables --verbose)'
            )
          ],
          args: [
            Arg(
            name: 'packages',
            description: 'The packages to remov'
          )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show packages from poetry\'s runtime environment',
          options: [

            ...globalOptions,
            Option(
              name: '--addons',
              description: 'List only add-on packages installed'
            ),
            Option(
              name: '--tree',
              description: 'List the dependencies as a tree'
            ),
            Option(
              name: '--latest',
              description: 'Show the latest version'
            ),
            Option(
              name: '--outdated',
              description: 'Show the latest version but only for packages that are outdated'
            )
          ],
          args: [
            Arg(
            name: 'package',
            description: 'The package to inspec'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates poetry to the latest version',
          options: [

            ...globalOptions,
            Option(
              name: '--preview',
              description: 'Allow the installation of pre-release versions'
            ),
            Option(
              name: '--dry-run',
              description: 'Output the operations but do not execute anything (implicitly enables --verbose)'
            )
          ],
          args: [
            Arg(
            name: 'version',
            description: 'The version to update t'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'shell',
      description: 'Spawns a shell within the virtual environment',
      options: [

        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Shows information about packages',
      options: [

        ...globalOptions,
        Option(
          name: '--without',
          description: 'The dependency groups to ignore'
        ),
        Option(
          name: '--with',
          description: 'The optional dependency groups to include'
        ),
        Option(
          name: '--only',
          description: 'The only dependency groups to include'
        ),
        Option(
          name: '--no-dev',
          description: 'Do not list the development dependencies. (Deprecated)'
        ),
        Option(
          name: '--tree',
          description: 'List the dependencies as a tree'
        ),
        Option(
          name: '--why',
          description: 'When showing the full list, or a --tree for a single package, also display why it\'s included'
        ),
        Option(
          name: '--latest',
          description: 'Show the latest version'
        ),
        Option(
          name: '--outdated',
          description: 'Show the latest version but only for packages that are outdated'
        ),
        Option(
          name: '--all',
          description: 'Show all packages (even those not compatible with current system)'
        ),
        Option(
          name: '--top-level',
          description: 'Show only top-level dependencies'
        )
      ],
      args: [
        Arg(
        name: 'package',
        description: 'The package to inspec'
      )
      ]
    ),
    Subcommand(
      name: 'source',
      description: 'The source namespace regroups sub commands to manage repository sources for a poetry project',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add source configuration for project',
          options: [

            ...globalOptions,
            Option(
              name: '--default',
              description: 'Set this source as the default (disable PyPI). A default source will also be the fallback source if you add other sources. (Deprecated, use --priority)'
            ),
            Option(
              name: '--secondary',
              description: 'Set this source as secondary. (Deprecated, use --priority)'
            ),
            Option(
              name: '--priority',
              description: 'Set the priority of this source. One of: default, primary, secondary, supplemental, explicit. Defaults to primary'
            )
          ],
          args: [

            Arg(
              name: 'name',
              description: 'Source repository name'
            ),
            Arg(
              name: 'url',
              description: 'Source repository URL. Required, except for PyPI, for which it is not allowed'
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove source configured for the project',
          options: [

            ...globalOptions
          ],
          args: [
            Arg(
            name: 'name',
            description: 'Source repository nam'
          )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show information about sources configured for the project',
          options: [

            ...globalOptions
          ],
          args: [
            Arg(
            name: 'source',
            description: 'Source(s) to show information for. Defaults to showing all sources'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update the dependencies as according to the pyproject.toml file',
      options: [

        ...globalOptions,
        Option(
          name: '--without',
          description: 'The dependency groups to ignore'
        ),
        Option(
          name: '--with',
          description: 'The optional dependency groups to include'
        ),
        Option(
          name: '--only',
          description: 'The only dependency groups to include'
        ),
        Option(
          name: '--no-dev',
          description: 'Do not update the development dependencies. (Deprecated)'
        ),
        Option(
          name: '--dry-run',
          description: 'Output the operations but do not execute anything (implicitly enables --verbose)'
        ),
        Option(
          name: '--lock',
          description: 'Do not perform operations (only update the lockfile)'
        )
      ],
      args: [
        Arg(
        name: 'packages',
        description: 'The packages to updat'
      )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Shows the version of the project or bumps it when a valid bump rule is provided',
      options: [

        ...globalOptions,
        Option(
          name: '--short',
          description: 'Output the version number only'
        ),
        Option(
          name: '--dry-run',
          description: 'Do not update pyproject.toml file'
        )
      ],
      args: [
        Arg(
        name: 'version',
        description: 'The version number or the rule to update the version'
      )
      ]
    )
  ],
  options: [

    ...globalOptions
  ]
);
