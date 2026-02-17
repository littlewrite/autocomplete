// Auto-generated from TypeScript source: pipenv.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pipenv` CLI
final FigSpec pipenvSpec = FigSpec(
  name: 'pipenv',
  description: 'Python package manager',
  subcommands: [

    Subcommand(
      name: 'check',
      description: 'Checks for PyUp Safety security vulnerabilities and against PEP 508 markers provided in Pipfile',
      options: [

        Option(
          name: '--unused',
          description: 'Given a code path, show potentially unused dependencies',
          args: [
            Arg(
            name: 'code path'
          )
          ]
        ),
        Option(
          name: '--db',
          description: 'Path to a local PyUp Safety vulnerabilities database. Default: ENV PIPENV_SAFETY_DB or None',
          args: [
            Arg(
            name: 'Database'
          )
          ]
        ),
        Option(
          name: ['-i', '--ignore'],
          description: 'Ignore specified vulnerability during PyUp Safety checks',
          args: [
            Arg(
            name: 'Vulnerability ID'
          )
          ]
        ),
        Option(
          name: '--output',
          description: 'Translates to –json, –full-report or –bare from PyUp Safety check'
        ),
        Option(
          name: '--key',
          description: 'Safety API key from PyUp.io for scanning dependencies against a live vulnerabilities database. Leave blank for scanning against a database that only updates once a month',
          args: [
            Arg(
            name: 'API key'
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Quiet standard output, except vulnerability report'
        ),
        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'Specify a PyPI mirror',
          args: [
            Arg(
            name: 'mirror'
          )
          ]
        ),
        Option(
          name: '--system',
          description: 'System pip management'
        )
      ]
    ),
    Subcommand(
      name: 'clean',
      description: 'Uninstalls all packages not specified in Pipfile.lock',
      options: [

        Option(
          name: '--bare',
          description: 'Minimal output'
        ),
        Option(
          name: '--dry-run',
          description: 'Just output unneeded packages'
        ),
        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        )
      ]
    ),
    Subcommand(
      name: 'graph',
      description: 'Displays currently-installed dependency graph information',
      options: [

        Option(
          name: '--bare',
          description: 'Minimal output'
        ),
        Option(
          name: '--json',
          description: 'Output JSON'
        ),
        Option(
          name: '--json-tree',
          description: 'Output JSON in nested tree'
        ),
        Option(
          name: '--reverse',
          description: 'Reversed dependency graph'
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Initializes a package manager or installs all packages from Pipfile',
      args: [
        Arg(
        name: 'package',
        description: 'Package to install',
        isOptional: true
      )
      ],
      options: [

        Option(
          name: '--system',
          description: 'Install a Pipfile’s contents into its parent system'
        ),
        Option(
          name: ['-c', '--code'],
          description: 'Install packages automatically discovered from import statements'
        ),
        Option(
          name: '--deploy',
          description: 'Enforce that your Pipfile.lock is up to date in deployment'
        ),
        Option(
          name: '--site-packages',
          description: 'Enable site-packages for the virtualenv [env var: PIPENV_SITE_PACKAGES]'
        ),
        Option(
          name: '--no-site-packages',
          description: 'Enable site-packages for the virtualenv [env var: PIPENV_SITE_PACKAGES]'
        ),
        Option(
          name: '--skip-lock',
          description: 'Skip locking mechanisms and use the Pipfile instead during operation'
        ),
        Option(
          name: ['-e', '--editable'],
          description: 'An editable Python package URL or path, often to a VCS repository',
          args: [
            Arg(
            name: 'Package URL | path'
          )
          ]
        ),
        Option(
          name: '--ignore-pipfile',
          description: 'Ignore Pipfile when installing, using the Pipfile.lock'
        ),
        Option(
          name: '--selective-upgrade',
          description: 'Update specified packages',
          args: [
            Arg(
            name: 'package',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: ['-r', '--requirements'],
          description: 'Import a requirements.txt file',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Option(
          name: '--extra-index-url',
          description: 'URLs to the extra PyPI compatible indexes to query for package look-ups',
          args: [
            Arg(
            name: 'URL'
          )
          ]
        ),
        Option(
          name: ['-i', '--index'],
          description: 'Target PyPI-compatible package index url',
          args: [
            Arg(
            name: 'URL'
          )
          ]
        ),
        Option(
          name: '--sequential',
          description: 'Install dependencies one-at-a-time, instead of concurrently'
        ),
        Option(
          name: ['-d', '--dev'],
          description: 'Install both develop and default packages'
        ),
        Option(
          name: '--keep-outdated',
          description: 'Keep out-dated dependencies from being updated in Pipfile.lock'
        ),
        Option(
          name: '--pre',
          description: 'Allow pre-releases'
        ),
        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror',
          args: [
            Arg(
            name: 'mirror url'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'lock',
      description: 'Generates Pipfile.lock',
      args: [
        Arg(
        name: '> requirements.txt',
        description: 'Write packages into requirements.txt',
        isOptional: true
      )
      ],
      options: [

        Option(
          name: '--dev-only',
          description: 'Generate a requirements file with only the development requirements'
        ),
        Option(
          name: '--header',
          description: 'Add header to generated requirements'
        ),
        Option(
          name: '--no-header',
          description: 'Generate requirements with no header'
        ),
        Option(
          name: ['-r', '--requirements'],
          description: 'Import a requirements.txt file'
        ),
        Option(
          name: ['-d', '--dev'],
          description: 'Passing --dev will include both the default and development dependencies'
        ),
        Option(
          name: '--keep-outdated',
          description: 'Keep out-dated dependencies from being updated in Pipfile.lock'
        ),
        Option(
          name: '--pre',
          description: 'Allow pre-releases'
        ),
        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use'
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror'
        )
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'View a given module in your editor',
      args: [
        Arg(
        name: 'module'
      )
      ],
      options: [

        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use'
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Spawns a command installed into the virtualenv',
      subcommands: [

        Subcommand(
          name: 'command'
        )
      ],
      options: [

        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror',
          args: [
            Arg(
            name: 'mirror url'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'scripts',
      description: 'Lists scripts in current environment config',
      options: [

        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror',
          args: [
            Arg(
            name: 'mirror url'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'shell',
      description: 'Start a shell within the environment',
      options: [

        Option(
          name: '--fancy',
          description: 'Run in shell in fancy mode. Make sure the shell have no path manipulating scripts. Run \$pipenv shell for issues with compatibility mode'
        ),
        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--anyway',
          description: 'Always spawn a sub-shell, even if one is already spawned'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror',
          args: [
            Arg(
            name: 'mirror url'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sync',
      description: 'Installs all packages specified in Pipfile.lock',
      options: [

        Option(
          name: '--system',
          description: 'Install a Pipfile’s contents into its parent system'
        ),
        Option(
          name: '--bare',
          description: 'Minimal output'
        ),
        Option(
          name: '--sequential',
          description: 'Install dependencies one-at-a-time, instead of concurrently'
        ),
        Option(
          name: ['-d', '--dev'],
          description: 'Install both develop and default packages'
        ),
        Option(
          name: '--keep-outdated',
          description: 'Keep out-dated dependencies from being updated in Pipfile.lock'
        ),
        Option(
          name: '--pre',
          description: 'Allow pre-releases'
        ),
        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror',
          args: [
            Arg(
            name: 'mirror url'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstalls a provided package and removes it from Pipfile',
      args: [
        Arg(
        name: 'package',
        description: 'Package to uninstall',
        isOptional: true
      )
      ],
      options: [

        Option(
          name: '--all-dev',
          description: 'Uninstall all package from [dev-packages]'
        ),
        Option(
          name: '--all',
          description: 'Purge all package(s) from virtualenv. Does not edit Pipfile'
        ),
        Option(
          name: ['-e', '--editable'],
          description: 'An editable Python package URL or path, often to a VCS repository',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--skip-lock',
          description: 'Skip locking mechanisms and use the Pipfile instead during operation'
        ),
        Option(
          name: ['-d', '--dev'],
          description: 'Install both develop and default packages'
        ),
        Option(
          name: '--keep-outdated',
          description: 'Keep out-dated dependencies from being updated in Pipfile.lock'
        ),
        Option(
          name: '--pre',
          description: 'Allow pre-releases'
        ),
        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror',
          args: [
            Arg(
            name: 'mirror url'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Runs lock, then sync',
      options: [

        Option(
          name: '--bare',
          description: 'Minimal output'
        ),
        Option(
          name: '--outdated',
          description: 'List out-of-date dependencies'
        ),
        Option(
          name: '--dry-run',
          description: 'Just output unneeded packages'
        ),
        Option(
          name: ['-e', '--editable'],
          description: 'An editable Python package URL or path, often to a VCS repository',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--ignore-pipfile',
          description: 'Ignore Pipfile when installing, using the Pipfile.lock'
        ),
        Option(
          name: '--selective-upgrade',
          description: 'Update specified packages',
          args: [
            Arg(
            name: 'packages',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: ['-r', '--requirements'],
          description: 'Import a requirements.txt file'
        ),
        Option(
          name: '--extra-index-url',
          description: 'URLs to the extra PyPI compatible indexes to query for package look-ups',
          args: [
            Arg(
            name: 'url',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: ['-i', '--index'],
          description: 'Target PyPI-compatible package index url',
          args: [
            Arg(
            name: 'index'
          )
          ]
        ),
        Option(
          name: '--sequential',
          description: 'Install dependencies one-at-a-time, instead of concurrently'
        ),
        Option(
          name: ['-d', '--dev'],
          description: 'Install both develop and default packages'
        ),
        Option(
          name: '--keep-outdated',
          description: 'Keep out-dated dependencies from being updated in Pipfile.lock'
        ),
        Option(
          name: '--pre',
          description: 'Allow pre-releases'
        ),
        Option(
          name: '--python',
          description: 'Specify which version of Python virtualenv should use',
          args: [
            Arg(
            name: 'py_version'
          )
          ]
        ),
        Option(
          name: '--three',
          description: 'Use Python 3 when creating virtualenv'
        ),
        Option(
          name: '--two',
          description: 'Use Python 2 when creating virtualenv'
        ),
        Option(
          name: '--clear',
          description: 'Clears caches (pipenv, pip, and pip-tools)'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Verbose mode'
        ),
        Option(
          name: '--pypi-mirror',
          description: 'If you would like to override the default PyPI index URLs with the URL for a PyPI mirror',
          args: [
            Arg(
            name: 'mirror url'
          )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--where',
      description: 'View project home information'
    ),
    Option(
      name: '--venv',
      description: 'View virtualenv information'
    ),
    Option(
      name: '--py',
      description: 'View python interpreter information'
    ),
    Option(
      name: '--envs',
      description: 'View environment variable options'
    ),
    Option(
      name: '--rm',
      description: 'Remove the virtualenv'
    ),
    Option(
      name: '--bare',
      description: 'Minimal output'
    ),
    Option(
      name: '--completion',
      description: 'Output completion (to be executed by shell)'
    ),
    Option(
      name: '--man',
      description: 'Display manpage'
    ),
    Option(
      name: '--support',
      description: 'View diagnostic information for use in GitHub issues'
    ),
    Option(
      name: '--site-packages',
      description: 'Enable site-packages for the virtualenv [env var: PIPENV_SITE_PACKAGES]'
    ),
    Option(
      name: '--no-site-packages',
      description: 'Enable site-packages for the virtualenv [env var: PIPENV_SITE_PACKAGES]'
    ),
    Option(
      name: '--python',
      description: 'Specify which version of Python virtualenv should use',
      args: [
        Arg(
        name: 'version',
        description: 'Specific a python version e.g --python 3.6 or --python 2.7.14',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--three',
      description: 'Use python 3 when creating virtualenv'
    ),
    Option(
      name: '--two',
      description: 'Use python 2 when creating virtualenv'
    ),
    Option(
      name: '--clear',
      description: 'Clears caches (pipenv, pip, and pip-tools). [env var: PIPENV_CLEAR]'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Verbose mode'
    ),
    Option(
      name: '--pypi-mirror',
      description: 'Specify a PyPi mirror',
      args: [
        Arg(
        name: 'mirror'
      )
      ]
    ),
    Option(
      name: '--version',
      description: 'View your current pipenv version'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'List commands'
    )
  ]
);
