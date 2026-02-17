// AI-generated from TypeScript source: uv.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

final FigGenerator dependenciesGenerator = FigGenerator(
  script: {
    'command': 'bash',
    'args': [
      '-c',
      'awk \'/dependencies = \\[/ {f=1; next} /\\]/ {f=0} f && /"/ {line = \$0; gsub(/^[ \\t]*"/, "", line); sub(/>=.*\$/, "", line); gsub(/",?\$/, "", line); print line}\' pyproject.toml',
    ],
  },
  postProcess: (out, [tokens]) {
    return out
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((line) => FigSuggestion(
              name: line,
              description: 'Dependency',
              icon: '📦',
              priority: 80,
            ))
        .toList();
  },
);

final FigGenerator commandGenerator = FigGenerator(
  script: {
    'command': 'bash',
    'args': ['-c', 'uv run | grep -E \'^- \' | sed \'s/^- //\''],
  },
  postProcess: (out, [tokens]) {
    return out
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((line) => FigSuggestion(
              name: line,
              description: 'Command',
              icon: 'fig://icon?type=command',
              priority: 80,
            ))
        .toList();
  },
);

final List<Option> indexOptions = [
  Option(
      name: '--index',
      description:
          'The URLs to use when resolving dependencies, in addition to the default index',
      args: [Arg(name: 'INDEX')]),
  Option(
      name: '--default-index',
      description:
          'The URL of the default package index (by default: <https://pypi.org/simple>)',
      args: [Arg(name: 'DEFAULT_INDEX')]),
  Option(
      name: '--index-url',
      description:
          'The URL of the Python package index (by default: <https://pypi.org/simple>)',
      args: [Arg(name: 'INDEX_URL')]),
  Option(
      name: '--extra-index-url',
      description:
          'Extra URLs of package indexes to use, in addition to `--index-url`',
      args: [Arg(name: 'EXTRA_INDEX_URL')]),
  Option(
      name: '--find-links',
      description:
          'Locations to search for candidate distributions, in addition to those found in the registry indexes',
      args: [Arg(name: 'FIND_LINKS')]),
  Option(
      name: '--no-index',
      description:
          'Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`'),
  Option(
      name: '--index-strategy',
      description:
          'The strategy to use when resolving against multiple index URLs',
      args: [
        Arg(name: 'INDEX_STRATEGY', suggestions: [
          FigSuggestion(name: 'first-index'),
          FigSuggestion(name: 'unsafe-first-match'),
          FigSuggestion(name: 'unsafe-best-match')
        ])
      ]),
  Option(
      name: '--keyring-provider',
      description: 'Attempt to use `keyring` for authentication for index URLs',
      args: [
        Arg(name: 'KEYRING_PROVIDER', suggestions: [
          FigSuggestion(name: 'disabled'),
          FigSuggestion(name: 'subprocess')
        ])
      ])
];

final List<Option> cacheOptions = [
  Option(
      name: '--no-cache',
      description:
          'Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation'),
  Option(
      name: '--cache-dir',
      description: 'Path to the cache directory',
      args: [Arg(name: 'CACHE_DIR')]),
  Option(name: '--refresh', description: 'Refresh all cached data'),
  Option(
      name: '--refresh-package',
      description: 'Refresh cached data for a specific package',
      args: [Arg(name: 'REFRESH_PACKAGE')])
];

final List<Option> resolverOptions = [
  Option(
      name: '-U',
      description:
          'Allow package upgrades, ignoring pinned versions in any existing output file. Implies `--refresh`'),
  Option(
      name: '--upgrade-package',
      description:
          'Allow upgrades for a specific package, ignoring pinned versions in any existing output file. Implies `--refresh-package`',
      args: [Arg(name: 'UPGRADE_PACKAGE')]),
  Option(
      name: '--resolution',
      description:
          'The strategy to use when selecting between the different compatible versions for a given package requirement',
      args: [
        Arg(name: 'RESOLUTION', suggestions: [
          FigSuggestion(name: 'highest'),
          FigSuggestion(name: 'lowest'),
          FigSuggestion(name: 'lowest-direct')
        ])
      ]),
  Option(
      name: '--prerelease',
      description: 'The strategy to use when considering pre-release versions',
      args: [
        Arg(name: 'PRERELEASE', suggestions: [
          FigSuggestion(name: 'disallow'),
          FigSuggestion(name: 'allow'),
          FigSuggestion(name: 'if-necessary'),
          FigSuggestion(name: 'explicit'),
          FigSuggestion(name: 'if-necessary-or-explicit')
        ])
      ]),
  Option(
      name: '--exclude-newer',
      description:
          'Limit candidate packages to those that were uploaded prior to the given date',
      args: [Arg(name: 'EXCLUDE_NEWER')]),
  Option(
      name: '--no-sources',
      description:
          'Ignore the `tool.uv.sources` table when resolving dependencies. Used to lock against the standards-compliant, publishable package metadata, as opposed to using any local or Git sources')
];

final List<Option> installerOptions = [
  Option(
      name: '--reinstall',
      description:
          'Reinstall all packages, regardless of whether they\'re already installed. Implies `--refresh`'),
  Option(
      name: '--reinstall-package',
      description:
          'Reinstall a specific package, regardless of whether it\'s already installed. Implies `--refresh-package`',
      args: [Arg(name: 'REINSTALL_PACKAGE')]),
  Option(
      name: '--link-mode',
      description:
          'The method to use when installing packages from the global cache',
      args: [
        Arg(name: 'LINK_MODE', suggestions: [
          FigSuggestion(name: 'clone'),
          FigSuggestion(name: 'copy'),
          FigSuggestion(name: 'hardlink'),
          FigSuggestion(name: 'symlink')
        ])
      ]),
  Option(
      name: '--compile-bytecode',
      description: 'Compile Python files to bytecode after installation')
];

final List<Option> buildOptions = [
  Option(
      name: '-C',
      description:
          'Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs',
      args: [Arg(name: 'CONFIG_SETTING')]),
  Option(
      name: '--no-build-isolation',
      description: 'Disable isolation when building source distributions',
      args: [Arg(name: 'UV_NO_BUILD_ISOLATION')]),
  Option(
      name: '--no-build-isolation-package',
      description:
          'Disable isolation when building source distributions for a specific package',
      args: [Arg(name: 'NO_BUILD_ISOLATION_PACKAGE')]),
  Option(name: '--no-build', description: 'Don\'t build source distributions'),
  Option(
      name: '--no-build-package',
      description: 'Don\'t build source distributions for a specific package',
      args: [Arg(name: 'NO_BUILD_PACKAGE')]),
  Option(name: '--no-binary', description: 'Don\'t install pre-built wheels'),
  Option(
      name: '--no-binary-package',
      description: 'Don\'t install pre-built wheels for a specific package',
      args: [Arg(name: 'NO_BINARY_PACKAGE')])
];

final List<Option> pythonOptions = [
  Option(
      name: ['-p', '--python'],
      description:
          'The Python interpreter to use to determine the minimum supported Python version',
      args: [Arg(name: 'PYTHON')]),
  Option(
      name: '--python-preference',
      description:
          'Whether to prefer uv-managed or system Python installations',
      args: [
        Arg(name: 'PYTHON_PREFERENCE', suggestions: [
          FigSuggestion(name: 'only-managed'),
          FigSuggestion(name: 'managed'),
          FigSuggestion(name: 'system'),
          FigSuggestion(name: 'only-system')
        ])
      ]),
  Option(
      name: '--no-python-downloads',
      description: 'Disable automatic downloads of Python')
];

final List<Option> runOptions = [
  Option(
      name: '--extra',
      description:
          'Include optional dependencies from the specified extra name',
      args: [Arg(name: 'EXTRA')]),
  Option(
      name: '--all-extras', description: 'Include all optional dependencies'),
  Option(
      name: '--no-extra',
      description:
          'Exclude the specified optional dependencies, if `--all-extras` is supplied',
      args: [Arg(name: 'NO_EXTRA')]),
  Option(
      name: '--no-dev', description: 'Omit the development dependency group'),
  Option(
      name: '--group',
      description: 'Include dependencies from the specified dependency group',
      args: [Arg(name: 'GROUP')]),
  Option(
      name: '--no-group',
      description: 'Exclude dependencies from the specified dependency group',
      args: [Arg(name: 'NO_GROUP')]),
  Option(
      name: '--only-group',
      description:
          'Only include dependencies from the specified dependency group',
      args: [Arg(name: 'ONLY_GROUP')]),
  Option(
      name: '--all-groups',
      description: 'Include dependencies from all dependency groups'),
  Option(name: ['-m', '--module'], description: 'Run a Python module'),
  Option(
      name: '--only-dev',
      description: 'Only include the development dependency group'),
  Option(
      name: '--no-editable',
      description:
          'Install any editable dependencies, including the project and any workspace members, as non-editable'),
  Option(
      name: '--env-file',
      description: 'Load environment variables from a `.env` file',
      args: [Arg(name: 'ENV_FILE')]),
  Option(
      name: '--no-env-file',
      description: 'Avoid reading environment variables from a `.env` file'),
  Option(
      name: '--with',
      description: 'Run with the given packages installed',
      args: [Arg(name: 'WITH')]),
  Option(
      name: '--with-editable',
      description: 'Run with the given packages installed as editables',
      args: [Arg(name: 'WITH_EDITABLE')]),
  Option(
      name: '--with-requirements',
      description:
          'Run with all packages listed in the given `requirements.txt` files',
      args: [Arg(name: 'WITH_REQUIREMENTS')]),
  Option(
      name: '--isolated',
      description: 'Run the command in an isolated virtual environment'),
  Option(
      name: '--no-sync', description: 'Avoid syncing the virtual environment'),
  Option(
      name: '--locked',
      description: 'Assert that the `uv.lock` will remain unchanged'),
  Option(
      name: '--frozen', description: 'Run without updating the `uv.lock` file'),
  Option(
      name: ['-s', '--script'],
      description: 'Run the given path as a Python script'),
  Option(
      name: '--all-packages',
      description: 'Run the command with all workspace members installed'),
  Option(
      name: '--package',
      description: 'Run the command in a specific package in the workspace',
      args: [Arg(name: 'PACKAGE')]),
  Option(
      name: '--no-project',
      description: 'Avoid discovering the project or workspace')
];

final List<Option> initOptions = [
  Option(
      name: '--name',
      description: 'The name of the project',
      args: [Arg(name: 'NAME')]),
  Option(
      name: '--package',
      description: 'Set up the project to be built as a Python package'),
  Option(
      name: '--no-package',
      description: 'Do not set up the project to be built as a Python package'),
  Option(name: '--app', description: 'Create a project for an application'),
  Option(name: '--lib', description: 'Create a project for a library'),
  Option(name: '--script', description: 'Create a script'),
  Option(
      name: '--vcs',
      description: 'Initialize a version control system for the project',
      args: [
        Arg(name: 'VCS', suggestions: [
          FigSuggestion(name: 'git'),
          FigSuggestion(name: 'none')
        ])
      ]),
  Option(
      name: '--build-backend',
      description: 'Initialize a build-backend of choice for the project',
      args: [
        Arg(name: 'BUILD_BACKEND', suggestions: [
          FigSuggestion(name: 'hatch'),
          FigSuggestion(name: 'flit'),
          FigSuggestion(name: 'pdm'),
          FigSuggestion(name: 'setuptools'),
          FigSuggestion(name: 'maturin'),
          FigSuggestion(name: 'scikit')
        ])
      ]),
  Option(name: '--no-readme', description: 'Do not create a `README.md` file'),
  Option(
      name: '--author-from',
      description: 'Fill in the `authors` field in the `pyproject.toml`',
      args: [
        Arg(name: 'AUTHOR_FROM', suggestions: [
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'git'),
          FigSuggestion(name: 'none')
        ])
      ]),
  Option(
      name: '--no-pin-python',
      description: 'Do not create a `.python-version` file for the project'),
  Option(
      name: '--no-workspace',
      description:
          'Avoid discovering a workspace and create a standalone project')
];

final List<Option> initCacheOptions = [
  Option(
      name: '-n',
      description:
          'Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation'),
  Option(
      name: '--cache-dir',
      description: 'Path to the cache directory',
      args: [Arg(name: 'CACHE_DIR')])
];

final List<Option> addOptions = [
  Option(
      name: ['-r', '--requirements'],
      description:
          'Add all packages listed in the given `requirements.txt` files',
      args: [Arg(name: 'REQUIREMENTS')]),
  Option(
      name: '--dev',
      description: 'Add the requirements to the development dependency group'),
  Option(
      name: '--optional',
      description:
          'Add the requirements to the package\'s optional dependencies for the specified extra',
      args: [Arg(name: 'OPTIONAL')]),
  Option(
      name: '--group',
      description: 'Add the requirements to the specified dependency group',
      args: [Arg(name: 'GROUP')]),
  Option(name: '--editable', description: 'Add the requirements as editable'),
  Option(
      name: '--raw-sources',
      description:
          'Add source requirements to `project.dependencies`, rather than `tool.uv.sources`'),
  Option(
      name: '--rev',
      description: 'Commit to use when adding a dependency from Git',
      args: [Arg(name: 'REV')]),
  Option(
      name: '--tag',
      description: 'Tag to use when adding a dependency from Git',
      args: [Arg(name: 'TAG')]),
  Option(
      name: '--branch',
      description: 'Branch to use when adding a dependency from Git',
      args: [Arg(name: 'BRANCH')]),
  Option(
      name: '--extra',
      description: 'Extras to enable for the dependency',
      args: [Arg(name: 'EXTRA')]),
  Option(
      name: '--no-sync',
      description: 'Avoid syncing the virtual environment',
      args: [Arg(name: 'UV_NO_SYNC')]),
  Option(
      name: '--locked',
      description: 'Assert that the `uv.lock` will remain unchanged',
      args: [Arg(name: 'UV_LOCKED')]),
  Option(
      name: '--frozen',
      description: 'Add dependencies without re-locking the project',
      args: [Arg(name: 'UV_FROZEN')]),
  Option(
      name: '--package',
      description: 'Add the dependency to a specific package in the workspace',
      args: [Arg(name: 'PACKAGE')]),
  Option(
      name: '--script',
      description:
          'Add the dependency to the specified Python script, rather than to a project',
      args: [Arg(name: 'SCRIPT')])
];

final List<Option> removeOptions = [
  Option(
      name: '--dev',
      description: 'Remove the packages from the development dependency group'),
  Option(
      name: '--optional',
      description:
          'Remove the packages from the project\'s optional dependencies for the specified extra',
      args: [Arg(name: 'OPTIONAL')]),
  Option(
      name: '--group',
      description: 'Remove the packages from the specified dependency group',
      args: [Arg(name: 'GROUP')]),
  Option(
      name: '--no-sync',
      description:
          'Avoid syncing the virtual environment after re-locking the project',
      args: [Arg(name: 'UV_NO_SYNC')]),
  Option(
      name: '--locked',
      description: 'Assert that the `uv.lock` will remain unchanged',
      args: [Arg(name: 'UV_LOCKED')]),
  Option(
      name: '--frozen',
      description: 'Remove dependencies without re-locking the project',
      args: [Arg(name: 'UV_FROZEN')]),
  Option(
      name: '--package',
      description:
          'Remove the dependencies from a specific package in the workspace',
      args: [Arg(name: 'PACKAGE')]),
  Option(
      name: '--script',
      description:
          'Remove the dependency from the specified Python script, rather than from a project',
      args: [Arg(name: 'SCRIPT')])
];

final List<Option> syncOptions = [
  Option(
      name: '--extra',
      description:
          'Include optional dependencies from the specified extra name',
      args: [Arg(name: 'EXTRA')]),
  Option(
      name: '--all-extras', description: 'Include all optional dependencies'),
  Option(
      name: '--no-extra',
      description:
          'Exclude the specified optional dependencies, if `--all-extras` is supplied',
      args: [Arg(name: 'NO_EXTRA')]),
  Option(
      name: '--no-dev', description: 'Omit the development dependency group'),
  Option(
      name: '--only-dev',
      description: 'Only include the development dependency group'),
  Option(
      name: '--group',
      description: 'Include dependencies from the specified dependency group',
      args: [Arg(name: 'GROUP')]),
  Option(
      name: '--no-group',
      description: 'Exclude dependencies from the specified dependency group',
      args: [Arg(name: 'NO_GROUP')]),
  Option(
      name: '--only-group',
      description:
          'Only include dependencies from the specified dependency group',
      args: [Arg(name: 'ONLY_GROUP')]),
  Option(
      name: '--all-groups',
      description: 'Include dependencies from all dependency groups'),
  Option(
      name: '--no-editable',
      description:
          'Install any editable dependencies, including the project and any workspace members, as non-editable'),
  Option(
      name: '--inexact',
      description:
          'Do not remove extraneous packages present in the environment'),
  Option(
      name: '--no-install-project',
      description: 'Do not install the current project'),
  Option(
      name: '--no-install-workspace',
      description:
          'Do not install any workspace members, including the root project'),
  Option(
      name: '--no-install-package',
      description: 'Do not install the given package(s)',
      args: [Arg(name: 'NO_INSTALL_PACKAGE')]),
  Option(
      name: '--locked',
      description: 'Assert that the `uv.lock` will remain unchanged',
      args: [Arg(name: 'UV_LOCKED')]),
  Option(
      name: '--frozen',
      description: 'Sync without updating the `uv.lock` file',
      args: [Arg(name: 'UV_FROZEN')]),
  Option(
      name: '--all-packages',
      description: 'Sync all packages in the workspace'),
  Option(
      name: '--package',
      description: 'Sync for a specific package in the workspace',
      args: [Arg(name: 'PACKAGE')])
];

final List<Option> lockOptions = [
  Option(
      name: '--locked',
      description: 'Assert that the `uv.lock` will remain unchanged'),
  Option(
      name: '--frozen',
      description: 'Assert that a `uv.lock` exists, without updating it'),
  Option(
      name: '--dry-run',
      description: 'Perform a dry run, without writing the lockfile')
];

final List<Option> lockInstallerOptions = [
  Option(
      name: '--link-mode',
      description:
          'The method to use when installing packages from the global cache',
      args: [
        Arg(name: 'LINK_MODE', suggestions: [
          FigSuggestion(name: 'clone'),
          FigSuggestion(name: 'copy'),
          FigSuggestion(name: 'hardlink'),
          FigSuggestion(name: 'symlink')
        ])
      ])
];

final List<Option> exportOptions = [
  Option(
      name: '--format',
      description: 'The format to which `uv.lock` should be exported',
      args: [Arg(name: 'FORMAT')]),
  Option(name: '--all-packages', description: 'Export the entire workspace'),
  Option(
      name: '--package',
      description:
          'Export the dependencies for a specific package in the workspace',
      args: [Arg(name: 'PACKAGE')]),
  Option(
      name: '--prune',
      description: 'Prune the given package from the dependency tree',
      args: [Arg(name: 'PRUNE')]),
  Option(
      name: '--extra',
      description:
          'Include optional dependencies from the specified extra name',
      args: [Arg(name: 'EXTRA')]),
  Option(
      name: '--all-extras', description: 'Include all optional dependencies'),
  Option(
      name: '--no-extra',
      description:
          'Exclude the specified optional dependencies, if `--all-extras` is supplied',
      args: [Arg(name: 'NO_EXTRA')]),
  Option(
      name: '--no-dev', description: 'Omit the development dependency group'),
  Option(
      name: '--only-dev',
      description: 'Only include the development dependency group'),
  Option(
      name: '--group',
      description: 'Include dependencies from the specified dependency group',
      args: [Arg(name: 'GROUP')]),
  Option(
      name: '--no-group',
      description: 'Exclude dependencies from the specified dependency group',
      args: [Arg(name: 'NO_GROUP')]),
  Option(
      name: '--only-group',
      description:
          'Only include dependencies from the specified dependency group',
      args: [Arg(name: 'ONLY_GROUP')]),
  Option(
      name: '--all-groups',
      description: 'Include dependencies from all dependency groups'),
  Option(
      name: '--no-header',
      description:
          'Exclude the comment header at the top of the generated output file'),
  Option(
      name: '--no-editable',
      description:
          'Install any editable dependencies, including the project and any workspace members, as non-editable'),
  Option(
      name: '--no-hashes', description: 'Omit hashes in the generated output'),
  Option(
      name: '-o',
      description: 'Write the exported requirements to the given file',
      args: [Arg(name: 'OUTPUT_FILE')]),
  Option(
      name: '--no-emit-project',
      description: 'Do not emit the current project'),
  Option(
      name: '--no-emit-workspace',
      description:
          'Do not emit any workspace members, including the root project'),
  Option(
      name: '--no-emit-package',
      description: 'Do not emit the given package(s)',
      args: [Arg(name: 'NO_EMIT_PACKAGE')]),
  Option(
      name: '--locked',
      description: 'Assert that the `uv.lock` will remain unchanged',
      args: [Arg(name: 'UV_LOCKED')]),
  Option(
      name: '--frozen',
      description: 'Do not update the `uv.lock` before exporting',
      args: [Arg(name: 'UV_FROZEN')])
];

final List<Option> treeOptions = [
  Option(
      name: '--universal',
      description: 'Show a platform-independent dependency tree'),
  Option(
      name: '-d',
      description: 'Maximum display depth of the dependency tree',
      args: [Arg(name: 'DEPTH', defaultValue: '255')]),
  Option(
      name: '--prune',
      description:
          'Prune the given package from the display of the dependency tree',
      args: [Arg(name: 'PRUNE')]),
  Option(
      name: '--package',
      description: 'Display only the specified packages',
      args: [Arg(name: 'PACKAGE')]),
  Option(
      name: '--no-dedupe',
      description:
          'Do not de-duplicate repeated dependencies. Usually, when a package has already displayed its dependencies, further occurrences will not re-display its dependencies, and will include a (*) to indicate it has already been shown. This flag will cause those duplicates to be repeated'),
  Option(
      name: '--invert',
      description:
          'Show the reverse dependencies for the given package. This flag will invert the tree and display the packages that depend on the given package'),
  Option(
      name: '--outdated',
      description:
          'Show the latest available version of each package in the tree'),
  Option(
      name: '--only-dev',
      description: 'Only include the development dependency group'),
  Option(
      name: '--no-dev', description: 'Omit the development dependency group'),
  Option(
      name: '--group',
      description: 'Include dependencies from the specified dependency group',
      args: [Arg(name: 'GROUP')]),
  Option(
      name: '--no-group',
      description: 'Exclude dependencies from the specified dependency group',
      args: [Arg(name: 'NO_GROUP')]),
  Option(
      name: '--only-group',
      description:
          'Only include dependencies from the specified dependency group',
      args: [Arg(name: 'ONLY_GROUP')]),
  Option(
      name: '--all-groups',
      description: 'Include dependencies from all dependency groups'),
  Option(
      name: '--locked',
      description: 'Assert that the `uv.lock` will remain unchanged',
      args: [Arg(name: 'UV_LOCKED')]),
  Option(
      name: '--frozen',
      description: 'Display the requirements without locking the project',
      args: [Arg(name: 'UV_FROZEN')]),
  Option(
      name: '--python-version',
      description: 'The Python version to use when filtering the tree',
      args: [Arg(name: 'PYTHON_VERSION')]),
  Option(
      name: '--python-platform',
      description: 'The platform to use when filtering the tree',
      args: [
        Arg(name: 'PYTHON_PLATFORM', suggestions: [
          FigSuggestion(name: 'windows'),
          FigSuggestion(name: 'linux'),
          FigSuggestion(name: 'macos'),
          FigSuggestion(name: 'x86_64-pc-windows-msvc'),
          FigSuggestion(name: 'i686-pc-windows-msvc'),
          FigSuggestion(name: 'x86_64-unknown-linux-gnu'),
          FigSuggestion(name: 'aarch64-apple-darwin'),
          FigSuggestion(name: 'x86_64-apple-darwin'),
          FigSuggestion(name: 'aarch64-unknown-linux-gnu'),
          FigSuggestion(name: 'aarch64-unknown-linux-musl'),
          FigSuggestion(name: 'x86_64-unknown-linux-musl'),
          FigSuggestion(name: 'x86_64-manylinux_2_17'),
          FigSuggestion(name: 'x86_64-manylinux_2_28'),
          FigSuggestion(name: 'x86_64-manylinux_2_31'),
          FigSuggestion(name: 'x86_64-manylinux_2_32'),
          FigSuggestion(name: 'x86_64-manylinux_2_33'),
          FigSuggestion(name: 'x86_64-manylinux_2_34'),
          FigSuggestion(name: 'x86_64-manylinux_2_35'),
          FigSuggestion(name: 'x86_64-manylinux_2_36'),
          FigSuggestion(name: 'x86_64-manylinux_2_37'),
          FigSuggestion(name: 'x86_64-manylinux_2_38'),
          FigSuggestion(name: 'x86_64-manylinux_2_39'),
          FigSuggestion(name: 'x86_64-manylinux_2_40'),
          FigSuggestion(name: 'aarch64-manylinux_2_17'),
          FigSuggestion(name: 'aarch64-manylinux_2_28'),
          FigSuggestion(name: 'aarch64-manylinux_2_31'),
          FigSuggestion(name: 'aarch64-manylinux_2_32'),
          FigSuggestion(name: 'aarch64-manylinux_2_33'),
          FigSuggestion(name: 'aarch64-manylinux_2_34'),
          FigSuggestion(name: 'aarch64-manylinux_2_35'),
          FigSuggestion(name: 'aarch64-manylinux_2_36'),
          FigSuggestion(name: 'aarch64-manylinux_2_37'),
          FigSuggestion(name: 'aarch64-manylinux_2_38'),
          FigSuggestion(name: 'aarch64-manylinux_2_39'),
          FigSuggestion(name: 'aarch64-manylinux_2_40')
        ])
      ])
];

final List<Option> venvOptions = [
  Option(
      name: '--no-project',
      description: 'Avoid discovering a project or workspace'),
  Option(
      name: '--seed',
      description:
          'Install seed packages (one or more of: `pip`, `setuptools`, and `wheel`) into the virtual environment'),
  Option(
      name: '--allow-existing',
      description:
          'Preserve any existing files or directories at the target path'),
  Option(
      name: '--prompt',
      description:
          'Provide an alternative prompt prefix for the virtual environment',
      args: [Arg(name: 'PROMPT')]),
  Option(
      name: '--system-site-packages',
      description:
          'Give the virtual environment access to the system site packages directory'),
  Option(
      name: '--relocatable',
      description: 'Make the virtual environment relocatable'),
  Option(
      name: '--index-strategy',
      description:
          'The strategy to use when resolving against multiple index URLs',
      args: [
        Arg(name: 'INDEX_STRATEGY', suggestions: [
          FigSuggestion(name: 'first-index'),
          FigSuggestion(name: 'unsafe-first-match'),
          FigSuggestion(name: 'unsafe-best-match')
        ])
      ]),
  Option(
      name: '--keyring-provider',
      description: 'Attempt to use `keyring` for authentication for index URLs',
      args: [
        Arg(name: 'KEYRING_PROVIDER', suggestions: [
          FigSuggestion(name: 'disabled'),
          FigSuggestion(name: 'subprocess')
        ])
      ]),
  Option(
      name: '--exclude-newer',
      description:
          'Limit candidate packages to those that were uploaded prior to the given date',
      args: [Arg(name: 'EXCLUDE_NEWER')]),
  Option(
      name: '--link-mode',
      description:
          'The method to use when installing packages from the global cache',
      args: [
        Arg(name: 'LINK_MODE', suggestions: [
          FigSuggestion(name: 'clone'),
          FigSuggestion(name: 'copy'),
          FigSuggestion(name: 'hardlink'),
          FigSuggestion(name: 'symlink')
        ])
      ])
];

final List<Option> buildCommandOptions = [
  Option(
      name: '--package',
      description: 'Build a specific package in the workspace',
      args: [Arg(name: 'PACKAGE')]),
  Option(
      name: '--all-packages',
      description: 'Build all packages in the workspace'),
  Option(
      name: '-o',
      description:
          'The output directory to which distributions should be written',
      args: [Arg(name: 'OUT_DIR')]),
  Option(
      name: '--sdist',
      description:
          'Build a source distribution (\'sdist\') from the given directory'),
  Option(
      name: '--wheel',
      description:
          'Build a binary distribution (\'wheel\') from the given directory'),
  Option(
      name: '--no-build-logs', description: 'Hide logs from the build backend'),
  Option(
      name: '--force-pep517',
      description:
          'Always build through PEP 517, don\'t use the fast path for the uv build backend'),
  Option(
      name: '-b',
      description:
          'Constrain build dependencies using the given requirements files when building distributions',
      args: [Arg(name: 'BUILD_CONSTRAINTS')]),
  Option(
      name: '--require-hashes',
      description: 'Require a matching hash for each requirement'),
  Option(
      name: '--no-verify-hashes',
      description: 'Disable validation of hashes in the requirements file')
];

final List<Option> publishOptions = [
  Option(
      name: '--publish-url',
      description: 'The URL of the upload endpoint (not the index URL)',
      args: [Arg(name: 'PUBLISH_URL')]),
  Option(
      name: '-u',
      description: 'The username for the upload',
      args: [Arg(name: 'USERNAME')]),
  Option(
      name: '-p',
      description: 'The password for the upload',
      args: [Arg(name: 'PASSWORD')]),
  Option(
      name: '-t',
      description: 'The token for the upload',
      args: [Arg(name: 'TOKEN')]),
  Option(
      name: '--trusted-publishing',
      description: 'Configure using trusted publishing through GitHub Actions',
      args: [
        Arg(name: 'TRUSTED_PUBLISHING', suggestions: [
          FigSuggestion(name: 'automatic'),
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never')
        ])
      ]),
  Option(
      name: '--keyring-provider',
      description:
          'Attempt to use `keyring` for authentication for remote requirements files',
      args: [
        Arg(name: 'KEYRING_PROVIDER', suggestions: [
          FigSuggestion(name: 'disabled'),
          FigSuggestion(name: 'subprocess')
        ])
      ]),
  Option(
      name: '--check-url',
      description:
          'Check an index URL for existing files to skip duplicate uploads',
      args: [Arg(name: 'CHECK_URL')])
];

final List<Option> globalOptions = [
  Option(
      name: ['-q', '--quiet'],
      description: 'Do not print any output',
      isPersistent: true),
  Option(
      name: ['-v', '--verbose'],
      description: 'Use verbose output',
      isPersistent: true),
  Option(
      name: '--color',
      description: 'Control colors in output',
      args: [
        Arg(name: 'COLOR_CHOICE', suggestions: [
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never')
        ])
      ],
      isPersistent: true),
  Option(
      name: '--native-tls',
      description:
          'Whether to load TLS certificates from the platform\'s native certificate store',
      args: [Arg(name: 'BOOL')],
      isPersistent: true),
  Option(
      name: '--offline',
      description: 'Disable network access',
      isPersistent: true),
  Option(
      name: '--allow-insecure-host',
      description: 'Allow insecure connections to a host',
      args: [Arg(name: 'ALLOW_INSECURE_HOST')],
      isPersistent: true),
  Option(
      name: '--no-progress',
      description: 'Hide all progress outputs',
      isPersistent: true),
  Option(
      name: '--directory',
      description: 'Change to the given directory prior to running the command',
      args: [Arg(name: 'DIRECTORY')],
      isPersistent: true),
  Option(
      name: '--project',
      description: 'Run the command within the given project directory',
      args: [Arg(name: 'PROJECT')],
      isPersistent: true),
  Option(
      name: '--config-file',
      description: 'The path to a `uv.toml` file to use for configuration',
      args: [Arg(name: 'CONFIG_FILE')],
      isPersistent: true),
  Option(
      name: '--no-config',
      description:
          'Avoid discovering configuration files (`pyproject.toml`, `uv.toml`)',
      isPersistent: true),
  Option(
      name: ['-h', '--help'],
      description: 'Display the concise help for this command',
      isPersistent: true),
  Option(
      name: ['-V', '--version'],
      description: 'Display the uv version',
      isPersistent: true)
];

final List<FigSubcommand> toolSubcommands = [
  Subcommand(
      name: 'run',
      description: 'Run a command provided by a Python package',
      options: [
        Option(
            name: '--from',
            description: 'Use the given package to provide the command',
            args: [Arg(name: 'FROM')]),
        Option(
            name: '--with',
            description: 'Run with the given packages installed',
            args: [Arg(name: 'WITH')]),
        Option(
            name: '--with-editable',
            description: 'Run with the given packages installed as editables',
            args: [Arg(name: 'WITH_EDITABLE')]),
        Option(
            name: '--with-requirements',
            description:
                'Run with all packages listed in the given `requirements.txt` files',
            args: [Arg(name: 'WITH_REQUIREMENTS')]),
        Option(
            name: '--isolated',
            description: 'Run the tool in an isolated virtual environment')
      ]),
  Subcommand(
      name: 'install',
      description: 'Install commands provided by a Python package',
      options: [
        Option(
            name: '--editable',
            description: 'Install the package in editable mode'),
        Option(
            name: '--with',
            description: 'Include the following extra requirements',
            args: [Arg(name: 'WITH')]),
        Option(
            name: '--with-editable',
            description: 'Include the given packages as editables',
            args: [Arg(name: 'WITH_EDITABLE')]),
        Option(
            name: '--with-requirements',
            description:
                'Run all requirements listed in the given `requirements.txt` files',
            args: [Arg(name: 'WITH_REQUIREMENTS')]),
        Option(
            name: '--isolated',
            description: 'Install the tool in an isolated virtual environment')
      ]),
  Subcommand(
      name: 'upgrade',
      description: 'Upgrade installed tools',
      options: [Option(name: '--all', description: 'Upgrade all tools')]),
  Subcommand(name: 'list', description: 'List installed tools', options: [
    Option(
        name: '--show-paths',
        description:
            'Whether to display the path to each tool environment and installed executable'),
    Option(
        name: '--show-version-specifiers',
        description:
            'Whether to display the version specifier(s) used to install each tool')
  ]),
  Subcommand(
      name: 'uninstall',
      description: 'Uninstall a tool',
      options: [Option(name: '--all', description: 'Uninstall all tools')]),
  Subcommand(
      name: 'update-shell',
      description:
          'Ensure that the tool executable directory is on the `PATH`'),
  Subcommand(
      name: 'dir',
      description: 'Show the path to the uv tools directory',
      options: [
        Option(
            name: '--bin',
            description:
                'Show the directory into which `uv tool` will install executables')
      ])
];

final List<FigSubcommand> pythonSubcommands = [
  Subcommand(
      name: 'list',
      description: 'List the available Python installations',
      options: [
        Option(
            name: '--all-versions',
            description:
                'List all Python versions, including old patch versions'),
        Option(
            name: '--all-platforms',
            description: 'List Python downloads for all platforms'),
        Option(
            name: '--only-installed',
            description:
                'Only show installed Python versions, exclude available downloads')
      ]),
  Subcommand(
      name: 'install',
      description: 'Download and install Python versions',
      args: [
        Arg(name: 'VERSION', description: 'The Python version to install')
      ],
      options: [
        Option(
            name: '--mirror',
            description:
                'Set the URL to use as the source for downloading Python installations',
            args: [Arg(name: 'MIRROR')]),
        Option(
            name: '--pypy-mirror',
            description:
                'Set the URL to use as the source for downloading PyPy installations',
            args: [Arg(name: 'PYPY_MIRROR')]),
        Option(
            name: '--reinstall',
            description:
                'Reinstall the requested Python version, if it\'s already installed'),
        Option(
            name: '--force',
            description:
                'Replace existing Python executables during installation'),
        Option(
            name: '--default', description: 'Use as the default Python version')
      ]),
  Subcommand(
      name: 'find',
      description: 'Search for a Python installation',
      args: [
        Arg(name: 'REQUEST', description: 'The Python request')
      ],
      options: [
        Option(
            name: '--no-project',
            description: 'Avoid discovering the project or workspace'),
        Option(
            name: '--system',
            description:
                'Only find system Python interpreters [env: UV_SYSTEM_PYTHON=]')
      ]),
  Subcommand(
      name: 'pin',
      description: 'Pin to a specific Python version',
      args: [
        Arg(name: 'REQUEST', description: 'The Python request')
      ],
      options: [
        Option(
            name: '--resolved',
            description:
                'Write the resolved Python interpreter path instead of the request'),
        Option(
            name: '--no-project',
            description: 'Avoid discovering the project or workspace')
      ]),
  Subcommand(
      name: 'dir',
      description: 'Show the uv Python installation directory',
      options: [
        Option(
            name: '--bin',
            description:
                'Show the directory into which `uv python` will install Python executables')
      ]),
  Subcommand(
      name: 'uninstall',
      description: 'Uninstall Python versions',
      args: [
        Arg(name: 'VERSION', description: 'The Python version to uninstall')
      ],
      options: [
        Option(name: '--all', description: 'Uninstall all Python versions')
      ])
];

final List<FigSubcommand> pipSubcommands = [
  Subcommand(
      name: 'compile',
      description:
          'Compile a `requirements.in` file to a `requirements.txt` file'),
  Subcommand(
      name: 'sync',
      description: 'Sync an environment with a `requirements.txt` file',
      args: [
        Arg(
            name: 'REQUIREMENTS',
            description: 'The path to the requirements file')
      ]),
  Subcommand(
      name: 'install',
      description: 'Install packages into an environment',
      args: [
        Arg(
            name: 'PACKAGES',
            description: 'Packages to install',
            isVariadic: true)
      ]),
  Subcommand(
      name: 'uninstall',
      description: 'Uninstall packages from an environment',
      args: [
        Arg(
            name: 'PACKAGES',
            description: 'Packages to uninstall',
            isVariadic: true)
      ]),
  Subcommand(
      name: 'freeze',
      description:
          'List, in requirements format, packages installed in an environment'),
  Subcommand(
      name: 'list',
      description:
          'List, in tabular format, packages installed in an environment'),
  Subcommand(
      name: 'show',
      description: 'Show information about one or more installed packages',
      args: [
        Arg(name: 'PACKAGES', description: 'Packages to show', isVariadic: true)
      ]),
  Subcommand(
      name: 'tree',
      description: 'Display the dependency tree for an environment'),
  Subcommand(
      name: 'check',
      description: 'Verify installed packages have compatible dependencies')
];

final List<FigSubcommand> cacheSubcommands = [
  Subcommand(name: 'clean', description: 'Clear the cache', args: [
    Arg(
        name: 'PACKAGE',
        description: 'The package to remove from the cache',
        isVariadic: true)
  ]),
  Subcommand(
      name: 'prune',
      description: 'Prune all unreachable objects from the cache'),
  Subcommand(name: 'dir', description: 'Show the cache directory')
];

final List<FigSubcommand> selfSubcommands = [
  Subcommand(name: 'update', description: 'Update uv', args: [
    Arg(
        name: 'TARGET_VERSION',
        description:
            'Update to the specified version. If not provided, uv will update to the latest version')
  ], options: [
    Option(
        name: '--token',
        description:
            'A GitHub token for authentication. A token is not required but can be used to reduce the chance of encountering rate limits [env:UV_GITHUB_TOKEN=]')
  ])
];

final List<FigSubcommand> subcommands = [
  Subcommand(
      name: 'run',
      description: 'Run a command or script',
      options: runOptions,
      args: [Arg(name: 'command', generators: commandGenerator)]),
  Subcommand(name: 'init', description: 'Create a new project', options: [
    ...initOptions,
    ...initCacheOptions
  ], args: [
    Arg(
        name: 'Path',
        template: 'filepaths',
        description: 'The path to use for the project/script',
        defaultValue: '.')
  ]),
  Subcommand(
      name: 'add',
      description: 'Add dependencies to the project',
      args: [
        Arg(name: 'packages', description: 'Packages to add', isVariadic: true)
      ],
      options: [
        ...addOptions,
        ...indexOptions,
        ...resolverOptions,
        ...installerOptions,
        ...buildOptions,
        ...cacheOptions
      ]),
  Subcommand(
      name: 'remove',
      description: 'Remove dependencies from the project',
      args: [
        Arg(
            name: 'dependencies',
            description: 'Dependencies to remove',
            generators: dependenciesGenerator,
            isVariadic: true)
      ],
      options: [
        ...removeOptions,
        ...indexOptions,
        ...resolverOptions,
        ...installerOptions,
        ...buildOptions,
        ...cacheOptions
      ]),
  Subcommand(
      name: 'sync',
      description: 'Update the project\'s environment',
      options: [
        ...syncOptions,
        ...indexOptions,
        ...resolverOptions,
        ...installerOptions,
        ...buildOptions,
        ...cacheOptions
      ]),
  Subcommand(
      name: 'lock',
      description: 'Update the project\'s lockfile',
      options: [
        ...lockOptions,
        ...indexOptions,
        ...resolverOptions,
        ...buildOptions,
        ...lockInstallerOptions,
        ...cacheOptions
      ]),
  Subcommand(
      name: 'export',
      description: 'Export the project\'s lockfile to an alternate format',
      options: [
        ...exportOptions,
        ...indexOptions,
        ...resolverOptions,
        ...buildOptions
      ]),
  Subcommand(
      name: 'tree',
      description: 'Display the project\'s dependency tree',
      options: [
        ...treeOptions,
        ...indexOptions,
        ...resolverOptions,
        ...installerOptions
            .where((option) => option.nameList.contains('--link-mode'))
            .toList(),
        ...pythonOptions,
        ...cacheOptions,
        ...cacheOptions
            .where((option) =>
                option.nameList.contains('--cache-dir') ||
                option.nameList.contains('--no-cache'))
            .toList(),
      ]),
  Subcommand(
      name: 'tool',
      description: 'Run and install commands provided by Python packages',
      subcommands: toolSubcommands,
      options: [
        ...pythonOptions
            .where((option) =>
                option.nameList.contains('--no-python-downloads') ||
                option.nameList.contains('--python-preference'))
            .toList(),
        ...cacheOptions
            .where((option) =>
                option.nameList.contains('--cache-dir') ||
                option.nameList.contains('--no-cache'))
            .toList(),
      ]),
  Subcommand(
      name: 'python',
      description: 'Manage Python versions and installations',
      subcommands: pythonSubcommands,
      options: [
        ...cacheOptions
            .where((option) =>
                option.nameList.contains('--cache-dir') ||
                option.nameList.contains('--no-cache'))
            .toList(),
        ...pythonOptions
            .where((option) =>
                option.nameList.contains('--python-preference') ||
                option.nameList.contains('--no-python-downloads'))
            .toList(),
      ]),
  Subcommand(
      name: 'pip',
      description: 'Manage Python packages with a pip-compatible interface',
      subcommands: pipSubcommands,
      options: [
        ...cacheOptions
            .where((option) =>
                option.nameList.contains('--cache-dir') ||
                option.nameList.contains('--no-cache'))
            .toList(),
        ...pythonOptions
            .where((option) =>
                option.nameList.contains('--python-preference') ||
                option.nameList.contains('--no-python-downloads'))
            .toList(),
      ]),
  Subcommand(
      name: 'venv',
      description: 'Create a virtual environment',
      options: [
        ...pythonOptions,
        ...venvOptions,
        ...indexOptions
            .where((option) =>
                !option.nameList.contains('--index-strategy') &&
                !option.nameList.contains('--keyring-provider'))
            .toList(),
        ...cacheOptions
            .where((option) =>
                option.nameList.contains('--cache-dir') ||
                option.nameList.contains('--no-cache'))
            .toList(),
      ]),
  Subcommand(
      name: 'build',
      description: 'Build Python packages into source distributions and wheels',
      args: [
        Arg(
            name: 'SOURCE',
            description:
                'The directory from which distributions should be built, or a source distribution archive to build into a wheel')
      ],
      options: [
        ...buildCommandOptions,
        ...pythonOptions,
        ...indexOptions,
        ...resolverOptions,
        ...buildOptions,
        ...installerOptions
            .where((option) => option.nameList.contains('--link-mode'))
            .toList(),
        ...cacheOptions,
      ]),
  Subcommand(
      name: 'publish',
      description: 'Upload distributions to an index',
      args: [
        Arg(
            name: 'FILES',
            description: 'Paths to the files to upload, [default: dist/*]',
            isVariadic: true)
      ],
      options: [
        ...publishOptions,
        ...cacheOptions
            .where((option) =>
                option.nameList.contains('--cache-dir') ||
                option.nameList.contains('--no-cache'))
            .toList(),
        ...pythonOptions
            .where((option) =>
                option.nameList.contains('--python-preference') ||
                option.nameList.contains('--no-python-downloads'))
            .toList(),
      ]),
  Subcommand(
      name: 'cache',
      description: 'Manage uv\'s cache',
      subcommands: cacheSubcommands,
      options: [
        ...cacheOptions
            .where((option) =>
                option.nameList.contains('--cache-dir') ||
                option.nameList.contains('--no-cache'))
            .toList(),
        ...pythonOptions
            .where((option) =>
                option.nameList.contains('--python-preference') ||
                option.nameList.contains('--no-python-downloads'))
            .toList(),
      ]),
  Subcommand(
      name: 'self',
      description: 'Manage the uv executable',
      subcommands: selfSubcommands,
      options: [
        ...cacheOptions
            .where((option) =>
                option.nameList.contains('--cache-dir') ||
                option.nameList.contains('--no-cache'))
            .toList(),
        ...pythonOptions
            .where((option) =>
                option.nameList.contains('--python-preference') ||
                option.nameList.contains('--no-python-downloads'))
            .toList(),
      ]),
  Subcommand(name: 'version', description: 'Display uv\'s version', options: [
    Option(
        name: '--output-format',
        description: 'The output format to use',
        args: [
          Arg(name: 'OUTPUT_FORMAT', suggestions: [
            FigSuggestion(name: 'text'),
            FigSuggestion(name: 'json')
          ])
        ]),
    ...cacheOptions
        .where((option) =>
            option.nameList.contains('--cache-dir') ||
            option.nameList.contains('--no-cache'))
        .toList(),
    ...pythonOptions
        .where((option) =>
            option.nameList.contains('--python-preference') ||
            option.nameList.contains('--no-python-downloads'))
        .toList()
  ]),
  Subcommand(
      name: 'help',
      description: 'Display documentation for a command',
      options: [
        Option(
            name: '--no-pager', description: 'Disable pager when printing help')
      ])
];

/// Completion spec for `uv` CLI
final FigSpec uvSpec = FigSpec(
    name: 'uv',
    description: 'An extremely fast Python package manager',
    options: [...globalOptions]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (dependenciesGenerator)
// const dependenciesGenerator: Fig.Generator = {
//   script: {
//     command: "bash",
//     args: [
//       "-c",
//       'awk \'/dependencies = \\[/ {f=1; next} /\\]/ {f=0} f && /"/ {line = $0; gsub(/^[ \\t]*"/, "", line); sub(/>=.*$/, "", line); gsub(/",?$/, "", line); print line}\' pyproject.toml',
//     ],
//   },
//   postProcess: (out) => {
//     return out.split("\n").map((line) => {
//       return {
//         name: line,
//         description: "Dependency",
//         icon: "📦",
//         priority: 80,
//       };
//     });
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (commandGenerator)
// const commandGenerator: Fig.Generator = {
//   script: {
//     command: "bash",
//     args: ["-c", `uv run | grep -E '^- ' | sed 's/^- //'`],
//   },
//   postProcess: (out) => {
//     return out.split("\n").map((line) => {
//       return {
//         name: line,
//         description: "Command",
//         icon: "fig://icon?type=command",
//         priority: 80,
//       };
//     });
//   },
// };
// TS_GENERATOR_BLOCK_END

