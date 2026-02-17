// AI-generated from TypeScript source: pnpm.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';
import 'npm.dart';
import 'yarn.dart';


/// 过滤消息函数
String filterMessages(String out) {
  return out.startsWith('warning:') || out.startsWith('error:')
      ? out.split('\n').skip(1).join('\n')
      : out;
}

/// 搜索分支生成器
final FigGenerator searchBranches = FigGenerator(
  script: ['git', 'branch', '--no-color'],
  postProcess: (String out, [List<String>? tokens]) {
    final output = filterMessages(out);

    if (output.startsWith('fatal:')) {
      return <FigSuggestion>[];
    }

    return output
        .split('\n')
        .where((elm) => elm.trim().isNotEmpty)
        .map<FigSuggestion>((elm) {
          final trimmedElm = elm.trim();
          final parts = RegExp(r'\S+').allMatches(trimmedElm).map((m) => m.group(0)!).toList();
          
          if (parts.isNotEmpty && parts.length > 1) {
            if (parts[0] == '*') {
              // 当前分支
              return FigSuggestion(
                name: trimmedElm.replaceAll('*', '').trim(),
                description: 'Current branch',
                icon: '⭐️',
                priority: 100,
              );
            } else if (parts[0] == '+') {
              // 在其他工作树中检出的分支
              final name = trimmedElm.replaceAll('+', '').trim();
              return FigSuggestion(
                name: name,
                description: 'Branch',
                icon: 'fig://icon?type=git',
              );
            }
          }

          return FigSuggestion(
            name: trimmedElm,
            description: 'Branch',
            icon: 'fig://icon?type=git',
          );
        })
        .toList();
  },
);

/// 已安装包生成器
final FigGenerator generatorInstalledPackages = FigGenerator(
  script: ['pnpm', 'ls'],
  postProcess: (String out, [List<String>? tokens]) {
    /**
     * out 示例:
     * ```
     * Legend: production dependency, optional only, dev only
     *
     * /xxxx/xxxx/<package-name> (PRIVATE)
     *
     * dependencies:
     * lodash 4.17.21
     * foo link:packages/foo
     *
     * devDependencies:
     * typescript 4.7.4
     * ```
     */
    if (out.contains('ERR_PNPM')) {
      return <FigSuggestion>[];
    }

    final output = out
        .split('\n')
        .skip(3)
        // 移除空行、"*dependencies:" 行、本地工作区包（例如："foo":"workspace:*"）
        .where((item) =>
            item.trim().isNotEmpty &&
            !item.toLowerCase().contains('dependencies') &&
            !item.contains('link:'))
        .map((item) => item.replaceFirst(RegExp(r'\s'), '@')) // typescript 4.7.4 -> typescript@4.7.4
        .toList();

    return output.map((pkg) {
      return FigSuggestion(
        name: pkg,
        icon: 'fig://icon?type=package',
        description: 'Installed package',
      );
    }).toList();
  },
);

/// FILTER 选项
final FigOption FILTER_OPTION = FigOption(
  name: '--filter',
  description: 'Filtering allows you to restrict commands to specific subsets of packages. pnpm supports a rich selector syntax for picking packages by name or by relation. More details: https://pnpm.io/filtering',
  args: [
    FigArg(
      name: 'Filepath / Package',
      description: 'To only select packages under the specified directory, you may specify any absolute path, typically in POSIX format',
      template: 'filepaths',
    ),
  ],
);

final List<Option> INSTALL_BASE_OPTIONS = [

  Option(
    name: '--offline',
    description: 'If true, pnpm will use only packages already available in the store. If a package won\'t be found locally, the installation will fail'
  ),
  Option(
    name: '--prefer-offline',
    description: 'If true, staleness checks for cached data will be bypassed, but missing data will be requested from the server. To force full offline mode, use --offline'
  ),
  Option(
    name: '--ignore-scripts',
    description: 'Do not execute any scripts defined in the project package.json and its dependencies'
  ),
  Option(
    name: '--reporter',
    description: 'Allows you to choose the reporter that will log debug info to the terminal about the installation progress',
    args: [
      Arg(
      name: 'Reporter Type',
      suggestions: [

        FigSuggestion(name: 'silent'),
        FigSuggestion(name: 'default'),
        FigSuggestion(name: 'append-only'),
        FigSuggestion(name: 'ndjson')
      ]
    )
    ]
  )
];

final List<Option> INSTALL_OPTIONS = [

  Option(
    name: ['-P', '--save-prod'],
    // TS_UNCONVERTED_START (description)
// 'Pnpm will not install any package listed in devDependencies if the NODE_ENV environment variable is set to production.
// Use this flag to instruct pnpm to ignore NODE_ENV and take its production status from this flag instead'
// TS_UNCONVERTED_END
    description: null
  ),
  Option(
    name: ['-D', '--save-dev'],
    description: 'Only devDependencies are installed regardless of the NODE_ENV'
  ),
  Option(
    name: '--no-optional',
    description: 'OptionalDependencies are not installed'
  ),
  Option(
    name: '--lockfile-only',
    description: 'When used, only updates pnpm-lock.yaml and package.json instead of checking node_modules and downloading dependencies'
  ),
  Option(
    name: '--frozen-lockfile',
    description: 'If true, pnpm doesn\'t generate a lockfile and fails to install if the lockfile is out of sync with the manifest / an update is needed or no lockfile is present'
  ),
  Option(
    name: '--use-store-server',
    description: 'Starts a store server in the background. The store server will keep running after installation is done. To stop the store server, run pnpm server stop'
  ),
  Option(
    name: '--shamefully-hoist',
    description: 'Creates a flat node_modules structure, similar to that of npm or yarn. WARNING: This is highly discouraged'
  )
];

final List<Option> INSTALL_PACKAGE_OPTIONS = [

  Option(
    name: ['-P', '--save-prod'],
    description: 'Install the specified packages as regular dependencies'
  ),
  Option(
    name: ['-D', '--save-dev'],
    description: 'Install the specified packages as devDependencies'
  ),
  Option(
    name: ['-O', '--save-optional'],
    description: 'Install the specified packages as optionalDependencies'
  ),
  Option(
    name: '--no-save',
    description: 'Prevents saving to \'dependencies\''
  ),
  Option(
    name: ['-E', '--save-exact'],
    description: 'Saved dependencies will be configured with an exact version rather than using pnpm\'s default semver range operator'
  ),
  Option(
    name: '--save-peer',
    description: 'Using --save-peer will add one or more packages to peerDependencies and install them as dev dependencies'
  ),
  Option(
    name: ['--ignore-workspace-root-check', '-W#'],
    // TS_UNCONVERTED_START (description)
// 'Adding a new dependency to the root workspace package fails, unless the --ignore-workspace-root-check or -W flag is used.
// For instance, pnpm add debug -W'
// TS_UNCONVERTED_END
    description: null
  ),
  Option(
    name: ['--global', '-g'],
    description: 'Install a package globally'
  ),
  Option(
    name: '--workspace',
    description: 'Only adds the new dependency if it is found in the workspace'
  ),
  FILTER_OPTION
];

final List<Option> COMMON_OPTIONS = [

  Option(
    name: ['-C', '--dir'],
    args: [
      Arg(
      name: 'path',
      template: 'folders'
    )
    ],
    isPersistent: true,
    description: 'Run as if pnpm was started in <path> instead of the current working directory'
  ),
  Option(
    name: ['-w', '--workspace-root'],
    args: [
      Arg(
      name: 'workspace'
    )
    ],
    isPersistent: true,
    description: 'Run as if pnpm was started in the root of the <workspace> instead of the current working directory'
  ),
  Option(
    name: ['-h', '--help'],
    isPersistent: true,
    description: 'Output usage information'
  ),
  Option(
    name: ['-v', '--version'],
    description: 'Show pnpm\'s version'
  )
];

final List<FigSubcommand> SUBCOMMANDS_MANAGE_DEPENDENCIES = [

  Subcommand(
    name: 'add',
description: 'Installs a package and any packages that it depends on. By default, any new package is installed as a production dependency',
    args: [
      Arg(
      name: 'package',
      generators: npmSearchGenerator,
      isVariadic: true
    )
    ],
    options: [

      ...INSTALL_BASE_OPTIONS,
      ...INSTALL_PACKAGE_OPTIONS
    ]
  ),
  Subcommand(
    name: ['install', 'i'],
description: 'Pnpm install is used to install all dependencies for a project.\nIn a CI environment, installation fails if a lockfile is present but needs an update.\nInside a workspace, pnpm install installs all dependencies in all the projects.\nIf you want to disable this behavior, set the recursive-install setting to false',
    args: [
      Arg(
      name: 'package',
      isOptional: true,
      generators: npmSearchGenerator,
      isVariadic: true
    )
    ]
  ),
  Subcommand(
    name: ['install-test', 'it'],
    description: 'Runs pnpm install followed immediately by pnpm test. It takes exactly the same arguments as pnpm install',
    options: [

      ...INSTALL_BASE_OPTIONS,
      ...INSTALL_OPTIONS
    ]
  ),
  Subcommand(
    name: ['update', 'upgrade', 'up'],
description: 'Pnpm update updates packages to their latest version based on the specified range.\n When used without arguments, updates all dependencies. You can use patterns to update specific dependencies',
    args: [
      Arg(
      name: 'Package',
      isOptional: true,
      filterStrategy: 'fuzzy',
      generators: dependenciesGenerator,
      isVariadic: true
    )
    ],
    options: [

      Option(
        name: ['--recursive', '-r'],
        description: 'Concurrently runs update in all subdirectories with a package.json (excluding node_modules)'
      ),
      Option(
        name: ['--latest', '-L'],
        description: 'Ignores the version range specified in package.json. Instead, the version specified by the latest tag will be used (potentially upgrading the packages across major versions)'
      ),
      Option(
        name: '--global',
        description: 'Update global packages'
      ),
      Option(
        name: ['-P', '--save-prod'],
        description: 'Only update packages in dependencies and optionalDependencies'
      ),
      Option(
        name: ['-D', '--save-dev'],
        description: 'Only update packages in devDependencies'
      ),
      Option(
        name: '--no-optional',
        description: 'Don\'t update packages in optionalDependencies'
      ),
      Option(
        name: ['--interactive', '-i'],
        description: 'Show outdated dependencies and select which ones to update'
      ),
      Option(
        name: '--workspace',
description: 'Tries to link all packages from the workspace. Versions are updated to match the versions of packages inside the workspace.\n If specific packages are updated, the command will fail if any of the updated dependencies are not found inside the workspace. For instance, the following command fails if express is not a workspace package: pnpm up -r --workspace express',
      ),
      FILTER_OPTION
    ]
  ),
  Subcommand(
    name: ['remove', 'rm', 'uninstall', 'un'],
    description: 'Removes packages from node_modules and from the project\'s package.json',
    args: [
      Arg(
      name: 'Package',
      filterStrategy: 'fuzzy',
      generators: dependenciesGenerator,
      isVariadic: true
    )
    ],
    options: [

      Option(
        name: ['--recursive', '-r'],
description: 'When used inside a workspace, removes a dependency (or dependencies) from every workspace package.\n When used not inside a workspace, removes a dependency (or dependencies) from every package found in subdirectories',
      ),
      Option(
        name: '--global',
        description: 'Remove a global package'
      ),
      Option(
        name: ['-P', '--save-prod'],
        description: 'Only remove the dependency from dependencies'
      ),
      Option(
        name: ['-D', '--save-dev'],
        description: 'Only remove the dependency from devDependencies'
      ),
      Option(
        name: ['--save-optional', '-O'],
        description: 'Only remove the dependency from optionalDependencies'
      ),
      FILTER_OPTION
    ]
  ),
  Subcommand(
    name: ['link', 'ln'],
    // TS_UNCONVERTED_START (description)
// 'Makes the current local package accessible system-wide, or in another location'
// TS_UNCONVERTED_END
    description: null,
    args: [

      Arg(
        name: 'Package',
        filterStrategy: 'fuzzy',
        generators: dependenciesGenerator,
        isVariadic: true
      ),
      Arg(
        template: 'filepaths'
      )
    ],
    options: [

      Option(
        name: ['--dir', '-C'],
        description: 'Changes the link location to <dir>'
      ),
      Option(
        name: '--global',
        description: 'Links the specified package (<pkg>) from global node_modules to the node_nodules of package from where this command was executed or specified via --dir option'
      )
    ]
  ),
  Subcommand(
    name: 'unlink',
    // TS_UNCONVERTED_START (description)
// 'Unlinks a system-wide package (inverse of pnpm link).
// If called without arguments, all linked dependencies will be unlinked.
// This is similar to yarn unlink, except pnpm re-installs the dependency after removing the external link'
// TS_UNCONVERTED_END
    description: null,
    args: [

      Arg(
        name: 'Package',
        filterStrategy: 'fuzzy',
        generators: dependenciesGenerator,
        isVariadic: true
      ),
      Arg(
        template: 'filepaths'
      )
    ],
    options: [

      Option(
        name: ['--recursive', '-r'],
        // TS_UNCONVERTED_START (description)
// 'Unlink in every package found in subdirectories or in every workspace package, when executed inside a workspace'
// TS_UNCONVERTED_END
        description: null
      ),
      FILTER_OPTION
    ]
  ),
  Subcommand(
    name: 'import',
    description: 'Pnpm import generates a pnpm-lock.yaml from an npm package-lock.json (or npm-shrinkwrap.json) file'
  ),
  Subcommand(
    name: ['rebuild', 'rb'],
    description: 'Rebuild a package',
    args: [

      Arg(
        name: 'Package',
        filterStrategy: 'fuzzy',
        generators: dependenciesGenerator,
        isVariadic: true
      ),
      Arg(
        template: 'filepaths'
      )
    ],
    options: [

      Option(
        name: ['--recursive', '-r'],
        description: 'This command runs the pnpm rebuild command in every package of the monorepo'
      ),
      FILTER_OPTION
    ]
  ),
  Subcommand(
    name: 'prune',
    description: 'Removes unnecessary packages',
    options: [

      Option(
        name: '--prod',
        description: 'Remove the packages specified in devDependencies'
      ),
      Option(
        name: '--no-optional',
        description: 'Remove the packages specified in optionalDependencies'
      )
    ]
  ),
  Subcommand(
    name: 'fetch',
    // TS_UNCONVERTED_START (description)
// 'EXPERIMENTAL FEATURE: Fetch packages from a lockfile into virtual store, package manifest is ignored: https://pnpm.io/cli/fetch'
// TS_UNCONVERTED_END
    description: null,
    options: [

      Option(
        name: '--prod',
        description: 'Development packages will not be fetched'
      ),
      Option(
        name: '--dev',
        description: 'Only development packages will be fetched'
      )
    ]
  ),
  Subcommand(
    name: 'patch',
    description: 'This command will cause a package to be extracted in a temporary directory intended to be editable at will',
    args: [
      Arg(
      name: 'package',
      generators: generatorInstalledPackages
    )
    ],
    options: [

      Option(
        name: '--edit-dir',
        description: 'The package that needs to be patched will be extracted to this directory'
      )
    ]
  ),
  Subcommand(
    name: 'patch-commit',
    args: [
      Arg(
      name: 'dir'
    )
    ],
    description: 'Generate a patch out of a directory'
  ),
  Subcommand(
    name: 'patch-remove',
    args: [
      Arg(
      name: 'package',
      isVariadic: true
    )
    ]
  )
];

final List<FigSubcommand> SUBCOMMANDS_RUN_SCRIPTS = [

  Subcommand(
    name: ['run', 'run-script'],
    description: 'Runs a script defined in the package\'s manifest file',
    args: [
      Arg(
      name: 'Scripts',
      filterStrategy: 'fuzzy',
      generators: npmScriptsGenerator,
      isVariadic: true
    )
    ],
    options: [

      Option(
        name: ['-r', '--recursive'],
        // TS_UNCONVERTED_START (description)
// 'This runs an arbitrary command from each package's "scripts" object. If a package doesn't have the command, it is skipped. If none of the packages have the command, the command fails'
// TS_UNCONVERTED_END
        description: null
      ),
      Option(
        name: '--if-present',
        description: 'You can use the --if-present flag to avoid exiting with a non-zero exit code when the script is undefined. This lets you run potentially undefined scripts without breaking the execution chain'
      ),
      Option(
        name: '--parallel',
        description: 'Completely disregard concurrency and topological sorting, running a given script immediately in all matching packages with prefixed streaming output. This is the preferred flag for long-running processes over many packages, for instance, a lengthy build process'
      ),
      Option(
        name: '--stream',
        description: 'Stream output from child processes immediately, prefixed with the originating package directory. This allows output from different packages to be interleaved'
      ),
      FILTER_OPTION
    ]
  ),
  Subcommand(
    name: 'exec',
    // TS_UNCONVERTED_START (description)
// 'Execute a shell command in scope of a project.
// node_modules/.bin is added to the PATH, so pnpm exec allows executing commands of dependencies'
// TS_UNCONVERTED_END
    description: null,
    args: [
      Arg(
      name: 'Scripts',
      filterStrategy: 'fuzzy',
      generators: dependenciesGenerator,
      isVariadic: true
    )
    ],
    options: [

      Option(
        name: ['-r', '--recursive'],
        // TS_UNCONVERTED_START (description)
// 'Execute the shell command in every project of the workspace.
// The name of the current package is available through the environment variable PNPM_PACKAGE_NAME (supported from pnpm v2.22.0 onwards)'
// TS_UNCONVERTED_END
        description: null
      ),
      Option(
        name: '--parallel',
        description: 'Completely disregard concurrency and topological sorting, running a given script immediately in all matching packages with prefixed streaming output. This is the preferred flag for long-running processes over many packages, for instance, a lengthy build process'
      ),
      FILTER_OPTION
    ]
  ),
  Subcommand(
    name: ['test', 't', 'tst'],
description: 'Runs an arbitrary command specified in the package\'s test property of its scripts object.\n The intended usage of the property is to specify a command that runs unit or integration testing for your program',
  ),
  Subcommand(
    name: 'start',
description: 'Runs an arbitrary command specified in the package\'s start property of its scripts object. If no start property is specified on the scripts object, it will attempt to run node server.js as a default, failing if neither are present.\n The intended usage of the property is to specify a command that starts your program',
  )
];

final List<FigSubcommand> SUBCOMMANDS_REVIEW_DEPS = [

  Subcommand(
    name: 'audit',
    // TS_UNCONVERTED_START (description)
// 'Checks for known security issues with the installed packages.
// If security issues are found, try to update your dependencies via pnpm update.
// If a simple update does not fix all the issues, use overrides to force versions that are not vulnerable.
// For instance, if lodash@<2.1.0 is vulnerable, use overrides to force lodash@^2.1.0.
// Details at: https://pnpm.io/cli/audit'
// TS_UNCONVERTED_END
    description: null,
    options: [

      Option(
        name: '--audit-level',
        description: 'Only print advisories with severity greater than or equal to <severity>',
        args: [
          Arg(
          name: 'Audit Level',
          defaultValue: 'low',
          suggestions: [

            FigSuggestion(name: 'low'),
            FigSuggestion(name: 'moderate'),
            FigSuggestion(name: 'high'),
            FigSuggestion(name: 'critical')
          ]
        )
        ]
      ),
      Option(
        name: '--fix',
        description: 'Add overrides to the package.json file in order to force non-vulnerable versions of the dependencies'
      ),
      Option(
        name: '--json',
        description: 'Output audit report in JSON format'
      ),
      Option(
        name: ['--dev', '-D'],
        description: 'Only audit dev dependencies'
      ),
      Option(
        name: ['--prod', '-P'],
        description: 'Only audit production dependencies'
      ),
      Option(
        name: '--no-optional',
        description: 'Don\'t audit optionalDependencies'
      ),
      Option(
        name: '--ignore-registry-errors',
        description: 'If the registry responds with a non-200 status code, the process should exit with 0. So the process will fail only if the registry actually successfully responds with found vulnerabilities'
      )
    ]
  ),
  Subcommand(
    name: ['list', 'ls'],
description : 'This command will output all the versions of packages that are installed, as well as their dependencies, in a tree-structure. \nPositional arguments are name-pattern@version-range identifiers, which will limit the results to only the packages named. For example, pnpm list "babel-*" "eslint-*" semver@5',
    options: [

      Option(
        name: ['--recursive', '-r'],
        // TS_UNCONVERTED_START (description)
// 'Perform command on every package in subdirectories or on every workspace package, when executed inside a workspace'
// TS_UNCONVERTED_END
        description: null
      ),
      Option(
        name: '--json',
        description: 'Log output in JSON format'
      ),
      Option(
        name: '--long',
        description: 'Show extended information'
      ),
      Option(
        name: '--parseable',
        description: 'Outputs package directories in a parseable format instead of their tree view'
      ),
      Option(
        name: '--global',
        description: 'List packages in the global install directory instead of in the current project'
      ),
      Option(
        name: '--depth',
        // TS_UNCONVERTED_START (description)
// 'Max display depth of the dependency tree.
// pnpm ls --depth 0 will list direct dependencies only. pnpm ls --depth -1 will list projects only. Useful inside a workspace when used with the -r option'
// TS_UNCONVERTED_END
        description: null,
        args: [
          Arg(
          name: 'numbe'
        )
        ]
      ),
      Option(
        name: ['--dev', '-D'],
        description: 'Only list dev dependencies'
      ),
      Option(
        name: ['--prod', '-P'],
        description: 'Only list production dependencies'
      ),
      Option(
        name: '--no-optional',
        description: 'Don\'t list optionalDependencies'
      ),
    ]
  ),
  Subcommand(
    name: 'outdated',
    // TS_UNCONVERTED_START (description)
// 'Checks for outdated packages. The check can be limited to a subset of the installed packages by providing arguments (patterns are supported)'
// TS_UNCONVERTED_END
    description: null,
    options: [

      Option(
        name: ['--recursive', '-r'],
        // TS_UNCONVERTED_START (description)
// 'Check for outdated dependencies in every package found in subdirectories, or in every workspace package when executed inside a workspace'
// TS_UNCONVERTED_END
        description: null
      ),
      Option(
        name: '--long',
        description: 'Print details'
      ),
      Option(
        name: '--global',
        description: 'List outdated global packages'
      ),
      Option(
        name: '--no-table',
        description: 'Prints the outdated dependencies in a list format instead of the default table. Good for small consoles'
      ),
      Option(
        name: '--compatible',
        description: 'Prints only versions that satisfy specifications in package.json'
      ),
      Option(
        name: ['--dev', '-D'],
        description: 'Only list dev dependencies'
      ),
      Option(
        name: ['--prod', '-P'],
        description: 'Only list production dependencies'
      ),
      Option(
        name: '--no-optional',
        description: 'Doesn\'t check optionalDependencies'
      )
    ]
  ),
  Subcommand(
    name: 'why',
    description: 'Shows all packages that depend on the specified package',
    args: [
      Arg(
      name: 'Scripts',
      filterStrategy: 'fuzzy',
      generators: dependenciesGenerator,
      isVariadic: true
    )
    ],
    options: [

      Option(
        name: ['--recursive', '-r'],
        description: 'Show the dependency tree for the specified package on every package in subdirectories or on every workspace package when executed inside a workspace'
      ),
      Option(
        name: '--json',
        description: 'Log output in JSON format'
      ),
      Option(
        name: '--long',
        description: 'Show verbose output'
      ),
      Option(
        name: '--parseable',
        description: 'Show parseable output instead of tree view'
      ),
      Option(
        name: '--global',
        description: 'List packages in the global install directory instead of in the current project'
      ),
      Option(
        name: ['--dev', '-D'],
        description: 'Only display the dependency tree for packages in devDependencies'
      ),
      Option(
        name: ['--prod', '-P'],
        description: 'Only display the dependency tree for packages in dependencies'
      ),
      FILTER_OPTION
    ]
  )
];

final List<FigSubcommand> SUBCOMMANDS_MISC = [

  Subcommand(
    name: 'publish',
    // TS_UNCONVERTED_START (description)
// 'Publishes a package to the registry.
// When publishing a package inside a workspace, the LICENSE file from the root of the workspace is packed with the package (unless the package has a license of its own).
// You may override some fields before publish, using the publishConfig field in package.json. You also can use the publishConfig.directory to customize the published subdirectory (usually using third party build tools).
// When running this command recursively (pnpm -r publish), pnpm will publish all the packages that have versions not yet published to the registry'
// TS_UNCONVERTED_END
    description: null,
    args: [
      Arg(
      name: 'Branch',
      generators: searchBranches
    )
    ],
    options: [

      Option(
        name: '--tag',
        // TS_UNCONVERTED_START (description)
// 'Publishes the package with the given tag. By default, pnpm publish updates the latest tag'
// TS_UNCONVERTED_END
        description: null,
        args: [
          Arg(
          name: '<tag>'
        )
        ]
      ),
      Option(
        name: '--dry-run',
        description: 'Does everything a publish would do except actually publishing to the registry'
      ),
      Option(
        name: '--ignore-scripts',
        description: 'Ignores any publish related lifecycle scripts (prepublishOnly, postpublish, and the like)',
      ),
      Option(
        name: '--no-git-checks',
 description: 'Don\'t check if current branch is your publish branch, clean, and up-to-date',
      ),
      Option(
        name: '--access',
        description: 'Tells the registry whether the published package should be public or restricted',
        args: [
          Arg(
          name: 'Type',
          suggestions: [

            FigSuggestion(name: 'public'),
            FigSuggestion(name: 'private')
          ]
        )
        ]
      ),
      Option(
        name: '--force',
        description: 'Try to publish packages even if their current version is already found in the registry'
      ),
      Option(
        name: '--report-summary',
        description: 'Save the list of published packages to pnpm-publish-summary.json. Useful when some other tooling is used to report the list of published packages'
      ),
      FILTER_OPTION
    ]
  ),
  Subcommand(
    name: ['recursive', 'm', 'multi', '-r'],
    description: 'Runs a pnpm command recursively on all subdirectories in the package or every available workspace',
    subcommands:  recursiveSubcommands,
    options: [
      Option(
        name: '--link-workspace-packages',
        // TS_UNCONVERTED_START (description)
// 'Link locally available packages in workspaces of a monorepo into node_modules instead of re-downloading them from the registry. This emulates functionality similar to yarn workspaces.
// When this is set to deep, local packages can also be linked to subdependencies.
// Be advised that it is encouraged instead to use npmrc for this setting, to enforce the same behaviour in all environments. This option exists solely so you may override that if necessary'
// TS_UNCONVERTED_END
        description: null,
        args: [
          Arg(
          name: 'bool or \'deep\'',
          suggestions: [

          ]
        )
        ]
      ),
      Option(
        name: '--workspace-concurrency',
        description: 'Set the maximum number of tasks to run simultaneously. For unlimited concurrency use Infinity',
        args: [
          Arg(
          name: '<number'
        )
        ]
      ),
      Option(
        name: '--bail',
        description: 'Stops when a task throws an error'
      ),
      Option(
        name: '--no-bail',
        description: 'Don\'t stop when a task throws an error'
      ),
      Option(
        name: '--sort',
        // TS_UNCONVERTED_START (description)
// 'Packages are sorted topologically (dependencies before dependents)'
// TS_UNCONVERTED_END
        description: null
      ),
      Option(
        name: '--no-sort',
        description: 'Disable packages sorting'
      ),
      Option(
        name: '--reverse',
        description: 'The order of packages is reversed'
      ),
      FILTER_OPTION,
    ]
  ),
  Subcommand(
    name: 'server',
    description: 'Manage a store server',
    subcommands: [

      Subcommand(
        name: 'start',
        description: 'Starts a server that performs all interactions with the store. Other commands will delegate any store-related tasks to this server',
        options: [

          Option(
            name: '--background',
            // TS_UNCONVERTED_START (description)
// 'Runs the server in the background, similar to daemonizing on UNIX systems'
// TS_UNCONVERTED_END
            description: null
          ),
          Option(
            name: '--network-concurrency',
            description: 'The maximum number of network requests to process simultaneously',
            args: [
              Arg(
              name: 'numbe'
            )
            ]
          ),
          Option(
            name: '--protocol',
            // TS_UNCONVERTED_START (description)
// 'The communication protocol used by the server. When this is set to auto, IPC is used on all systems except for Windows, which uses TCP'
// TS_UNCONVERTED_END
            description: null,
            args: [
              Arg(
              name: 'Type',
              suggestions: [

                FigSuggestion(name: 'auto'),
                FigSuggestion(name: 'tcp'),
                FigSuggestion(name: 'ipc')
              ]
            )
            ]
          ),
          Option(
            name: '--port',
            // TS_UNCONVERTED_START (description)
// 'The port number to use when TCP is used for communication. If a port is specified and the protocol is set to auto, regardless of system type, the protocol is automatically set to use TCP'
// TS_UNCONVERTED_END
            description: null,
            args: [
              Arg(
              name: 'port numbe'
            )
            ]
          ),
          Option(
            name: '--store-dir',
            description: 'The directory to use for the content addressable store',
            args: [
              Arg(
              name: 'Path',
              template: 'filepath'
            )
            ]
          ),
          Option(
            name: '--lock',
            description: 'Set to make the package store immutable to external processes while the server is running or not'
          ),
          Option(
            name: '--no-lock',
            description: 'Set to make the package store mutable to external processes while the server is running or not'
          ),
          Option(
            name: '--ignore-stop-requests',
            description: 'Prevents you from stopping the server using pnpm server stop'
          ),
          Option(
            name: '--ignore-upload-requests',
            description: 'Prevents creating a new side effect cache during install'
          )
        ]
      ),
      Subcommand(
        name: 'stop',
        description: 'Stops the store server'
      ),
      Subcommand(
        name: 'status',
        description: 'Prints information about the running server'
      )
    ]
  ),
  Subcommand(
    name: 'store',
    description: 'Managing the package store',
    subcommands: [

      Subcommand(
        name: 'status',
        // TS_UNCONVERTED_START (description)
// 'Checks for modified packages in the store.
// Returns exit code 0 if the content of the package is the same as it was at the time of unpacking'
// TS_UNCONVERTED_END
        description: null
      ),
      Subcommand(
        name: 'add',
        // TS_UNCONVERTED_START (description)
// 'Functionally equivalent to pnpm add,
// except this adds new packages to the store directly without modifying any projects or files outside of the store'
// TS_UNCONVERTED_END
        description: null
      ),
      Subcommand(
        name: 'prune',
        // TS_UNCONVERTED_START (description)
// 'Removes orphan packages from the store.
// Pruning the store will save disk space, however may slow down future installations involving pruned packages.
// Ultimately, it is a safe operation, however not recommended if you have orphaned packages from a package you intend to reinstall.
// Please read the FAQ for more information on unreferenced packages and best practices.
// Please note that this is prohibited when a store server is running'
// TS_UNCONVERTED_END
        description: null
      ),
      Subcommand(
        name: 'path',
        description: 'Returns the path to the active store directory'
      )
    ]
  ),
  Subcommand(
    name: 'init',
    description: 'Creates a basic package.json file in the current directory, if it doesn\'t exist already'
  ),
  Subcommand(
    name: 'doctor',
    description: 'Checks for known common issues with pnpm configuration'
  )
];


/// 合并所有子命令
final List<FigSubcommand> subcommands = [
  ...SUBCOMMANDS_MANAGE_DEPENDENCIES,
  ...SUBCOMMANDS_REVIEW_DEPS,
  ...SUBCOMMANDS_RUN_SCRIPTS,
  ...SUBCOMMANDS_MISC,
];

/// 递归子命令名称列表
final List<String> recursiveSubcommandsNames = [
  'add',
  'exec',
  'install',
  'list',
  'outdated',
  'publish',
  'rebuild',
  'remove',
  'run',
  'test',
  'unlink',
  'update',
  'why',
];

/// 过滤出递归子命令
final List<FigSubcommand> recursiveSubcommands = subcommands.where((subcommand) {
  if (subcommand.name is List<String>) {
    final names = subcommand.name as List<String>;
    return names.any((name) => recursiveSubcommandsNames.contains(name));
  } else if (subcommand.name is String) {
    final name = subcommand.name as String;
    return recursiveSubcommandsNames.contains(name);
  }
  return false;
}).toList();


/// Completion spec for 'pnpm' CLI
final FigSpec pnpmSpec = FigSpec(
  name: 'pnpm',
  description: 'Fast, disk space efficient package manager',
  args: [
    Arg(
      name: 'Scripts',
      filterStrategy: 'fuzzy',
      generators: npmScriptsGenerator,
      isVariadic: true,
    )
  ],
  filterStrategy: 'fuzzy',
  subcommands: subcommands,
  options: COMMON_OPTIONS,
  generateSpec: (List<String> tokens, dynamic executeShellCommand) async {
    final gen = yarnDependenciesGenerator;
    final postProcess = gen.postProcess;
    if (postProcess == null) return null;
    final script = gen.script;
    if (script is! List || script.isEmpty) return null;
    final scriptList = script;
    try {
      final result = await executeShellCommand(
        command: scriptList[0].toString(),
        args: scriptList.length > 1
            ? scriptList.sublist(1).map((e) => e.toString()).toList()
            : <String>[],
      );
      final suggestions = postProcess(result.stdout, tokens);
      final names = suggestions
          .map((e) => e.name)
          .whereType<String>()
          .toList();
      final subcommandsList = names
          .where((name) => nodeClis.contains(name))
          .map((name) => Subcommand(
                name: name,
                loadSpec: name,
                icon: 'fig://icon?type=package',
              ))
          .toList();
      return FigSpec(
        name: 'pnpm',
        subcommands: subcommandsList,
      );
    } catch (_) {
      return null;
    }
  },
);
