// AI-generated from TypeScript source: ncu.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec ncuSpec = FigSpec(
  name: 'ncu',
  description:
      'Upgrade your npm package.json dependencies to the latest versions, ignoring specified versions',
  parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
  args: [
    FigArg(
      name: 'filter',
      description:
          'A list or regex of package names to check (all others will be ignored)',
      isOptional: true,
      isVariadic: true,
    ),
  ],
  options: [
    FigOption(
      name: ['--cache'],
      description:
          'Cache versions to a local cache file. Default --cacheFile is ~/.ncu-cache.json and default --cacheExpiration is 10 minutes',
    ),
    FigOption(
      name: ['--cacheClear'],
      description:
          'Clear the default cache, or the cache file specified by --cacheFile',
    ),
    FigOption(
      name: ['--cacheExpiration'],
      dependsOn: ['--cache'],
      description:
          'Cache expiration in minutes. Only works with --cache. (default: 10)',
      args: [
        FigArg(
          name: 'min',
          defaultValue: '10',
        )
      ],
    ),
    FigOption(
      name: ['--cacheFile'],
      dependsOn: ['--cache'],
      description:
          'Filepath for the cache file. Only works with --cache. (default: "~/.ncu-cache.json")',
      args: [
        FigArg(
          name: 'path',
          template: 'filepaths',
          defaultValue: '~/.ncu-cache.json',
        )
      ],
    ),
    FigOption(
      name: ['--color'],
      description: 'Force color in terminal',
    ),
    FigOption(
      name: ['--concurrency'],
      description:
          'Max number of concurrent HTTP requests to registry. (default: 8)',
      args: [
        FigArg(
          name: 'n',
          defaultValue: '8',
        )
      ],
    ),
    FigOption(
      name: ['--configFileName'],
      description: 'Config file name. (default: .ncurc.{json,yml,js,cjs})',
      args: [
        FigArg(
          name: 's',
          template: 'filepaths',
          defaultValue: '.ncurc.{json,yml,js,cjs}',
        )
      ],
    ),
    FigOption(
      name: ['--configFilePath'],
      description:
          'Directory of .ncurc config file. (default: directory of packageFile)',
      args: [
        FigArg(
          name: 'path',
          template: 'folders',
          defaultValue: 'directory of packageFile',
        )
      ],
    ),
    FigOption(
      name: ['--cwd'],
      description: 'Working directory in which npm will be executed',
      args: [
        FigArg(
          name: 'path',
          template: 'folders',
        )
      ],
    ),
    FigOption(
      name: ['--deep'],
      description:
          'Run recursively in current working directory. Alias of (--packageFile \'**/package.json\')',
    ),
    FigOption(
      name: ['--dep'],
      description:
          'Check one or more sections of dependencies only: dev, optional, peer, prod, or packageManager (comma-delimited). (default: ["prod","dev","optional"])',
      args: [
        FigArg(
          name: 'value',
          suggestions: [
            FigSuggestion(name: 'dev'),
            FigSuggestion(name: 'optional'),
            FigSuggestion(name: 'peer'),
            FigSuggestion(name: 'prod'),
            FigSuggestion(name: 'packageManager'),
          ],
          defaultValue: 'prod,dev,optional',
        )
      ],
    ),
    FigOption(
      name: ['--deprecated'],
      description: 'Include deprecated packages',
    ),
    FigOption(
      name: ['--doctor', '-d'],
      description:
          'Iteratively installs upgrades and runs tests to identify breaking upgrades. Requires -u to execute. Run "ncu --help --doctor" for details',
    ),
    FigOption(
      name: ['--doctorInstall'],
      description:
          'Specifies the install script to use in doctor mode. (default: npm install/yarn)',
      args: [
        FigArg(
          name: 'command',
          defaultValue: 'npm install/yarn',
        )
      ],
    ),
    FigOption(
      name: ['--doctorTest'],
      description:
          'Specifies the test script to use in doctor mode. (default: npm test)',
      args: [
        FigArg(
          name: 'command',
          defaultValue: 'npm test',
        )
      ],
    ),
    FigOption(
      name: ['--enginesNode'],
      description:
          'Include only packages that satisfy engines.node as specified in the package file',
    ),
    FigOption(
      name: ['--errorLevel', '-e'],
      description:
          'Set the error level. 1: exits with error code 0 if no errors occur. 2: exits with error code 0 if no packages need updating (useful for continuous integration). (default: 1)',
      args: [
        FigArg(
          name: 'n',
          defaultValue: '1',
        )
      ],
    ),
    FigOption(
      name: ['--filter', '-f'],
      description:
          'Include only package names matching the given string, wildcard, glob, comma-or-space-delimited list, /regex/, or predicate function',
      args: [FigArg(name: 'p')],
    ),
    FigOption(
      name: ['--filterResults'],
      description:
          'Filters out upgrades based on a user provided function. Run "ncu --help --filterResults" for details',
    ),
    FigOption(
      name: ['--filterVersion'],
      description:
          'Filter on package version using comma-or-space-delimited list, /regex/, or predicate function',
      args: [FigArg(name: 'p')],
    ),
    FigOption(
      name: ['--format'],
      description:
          'Modify the output formatting or show additional information. Specify one or more comma-delimited values: group, ownerChanged, repo, time, lines. Run "ncu --help --format" for details. (default: [])',
      args: [
        FigArg(
          name: 'value',
          suggestions: [
            FigSuggestion(name: 'group'),
            FigSuggestion(name: 'ownerChanged'),
            FigSuggestion(name: 'repo'),
            FigSuggestion(name: 'time'),
            FigSuggestion(name: 'lines'),
          ],
        )
      ],
    ),
    FigOption(
      name: ['--global', '-g'],
      description: 'Check global packages instead of in the current project',
    ),
    FigOption(
      name: ['--groupFunction'],
      description:
          'Customize how packages are divided into groups when using --format group. Run "ncu --help --groupFunction" for details',
    ),
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help',
    ),
    FigOption(
      name: ['--interactive', '-i'],
      description:
          'Enable interactive prompts for each dependency; implies -u unless one of the json options are set',
    ),
    FigOption(
      name: ['--jsonAll', '-j'],
      description: 'Output new package file instead of human-readable message',
    ),
    FigOption(
      name: ['--jsonDeps'],
      description:
          'Like jsonAll but only lists dependencies, devDependencies, optionalDependencies, etc of the new package data',
    ),
    FigOption(
      name: ['--jsonUpgraded'],
      description: 'Output upgraded dependencies in json',
    ),
    FigOption(
      name: ['--loglevel', '-l'],
      description:
          'Amount to log: silent, error, minimal, warn, info, verbose, silly. (default: "warn")',
      args: [
        FigArg(
          name: 'n',
          suggestions: [
            FigSuggestion(name: 'silent'),
            FigSuggestion(name: 'error'),
            FigSuggestion(name: 'minimal'),
            FigSuggestion(name: 'warn'),
            FigSuggestion(name: 'info'),
            FigSuggestion(name: 'verbose'),
            FigSuggestion(name: 'silly'),
          ],
          defaultValue: 'warn',
        )
      ],
    ),
    FigOption(
      name: ['--mergeConfig'],
      description:
          'Merges nested configs with the root config file for --deep or --packageFile options. (default: false)',
    ),
    FigOption(
      name: ['--minimal', '-m'],
      description:
          'Do not upgrade newer versions that are already satisfied by the version range according to semver',
    ),
    FigOption(
      name: ['--packageData'],
      description: 'Package file data (you can also use stdin)',
      args: [FigArg(name: 'value')],
    ),
    FigOption(
      name: ['--packageFile'],
      description: 'Package file(s) location. (default: ./package.json)',
      args: [
        FigArg(
          name: 'path|glob',
          template: 'filepaths',
          defaultValue: './package.json',
        )
      ],
    ),
    FigOption(
      name: ['--packageManager', '-p'],
      description:
          'Npm, yarn, pnpm, deno, staticRegistry (default: npm). Run "ncu --help --packageManager" for details',
      args: [
        FigArg(
          name: 's',
          suggestions: [
            FigSuggestion(name: 'npm'),
            FigSuggestion(name: 'yarn'),
            FigSuggestion(name: 'pnpm'),
            FigSuggestion(name: 'deno'),
            FigSuggestion(name: 'staticRegistry'),
          ],
          defaultValue: 'npm',
        )
      ],
    ),
    FigOption(
      name: ['--peer'],
      description:
          'Check peer dependencies of installed packages and filter updates to compatible versions. Run "ncu --help --peer" for details',
    ),
    FigOption(
      name: ['--pre'],
      description:
          'Include prerelease versions, e.g. -alpha.0, -beta.5, -rc.2. Automatically set to 1 when --target is newest or greatest, or when the current version is a prerelease. (default: 0)',
      args: [
        FigArg(
          name: 'n',
          defaultValue: '0',
        )
      ],
    ),
    FigOption(
      name: ['--prefix'],
      description: 'Current working directory of npm',
      args: [
        FigArg(
          name: 'path',
          template: 'folders',
        )
      ],
    ),
    FigOption(
      name: ['--registry', '-r'],
      description:
          'Third-party npm registry. Run "ncu --help --registry" for details',
      args: [FigArg(name: 'uri')],
    ),
    FigOption(
      name: ['--reject', '-x'],
      description:
          'Exclude packages matching the given string, wildcard, glob, comma-or-space-delimited list, /regex/, or predicate function',
      args: [FigArg(name: 'p')],
    ),
    FigOption(
      name: ['--rejectVersion'],
      description:
          'Exclude package.json versions using comma-or-space-delimited list, /regex/, or predicate function',
      args: [FigArg(name: 'p')],
    ),
    FigOption(
      name: ['--removeRange'],
      description: 'Remove version ranges from the final package version',
    ),
    FigOption(
      name: ['--retry'],
      description:
          'Number of times to retry failed requests for package info. (default: 3)',
      args: [
        FigArg(
          name: 'n',
          defaultValue: '3',
        )
      ],
    ),
    FigOption(
      name: ['--root'],
      description:
          'Runs updates on the root project in addition to specified workspaces. Only allowed with --workspace or --workspaces. (default: false)',
    ),
    FigOption(
      name: ['--silent', '-s'],
      description: 'Don\'t output anything. Alias for --loglevel silent',
    ),
    FigOption(
      name: ['--stdin'],
      description: 'Read package.json from stdin',
    ),
    FigOption(
      name: ['--target', '-t'],
      description:
          'Determines the version to upgrade to: latest, newest, greatest, minor, patch, @[tag], or [function]. (default: latest) Run "ncu --help --target" for details',
      args: [
        FigArg(
          name: 'value',
          suggestions: [
            FigSuggestion(name: 'latest'),
            FigSuggestion(name: 'newest'),
            FigSuggestion(name: 'greatest'),
            FigSuggestion(name: 'minor'),
            FigSuggestion(name: 'patch'),
          ],
          defaultValue: 'latest',
        )
      ],
    ),
    FigOption(
      name: ['--timeout'],
      description:
          'Global timeout in milliseconds. (default: no global timeout and 30 seconds per npm-registry-fetch)',
      args: [FigArg(name: 'ms')],
    ),
    FigOption(
      name: ['--upgrade', '-u'],
      description:
          'Overwrite package file with upgraded versions instead of just outputting to console',
    ),
    FigOption(
      name: ['--verbose'],
      description:
          'Log additional information for debugging. Alias for --loglevel verbose',
    ),
    FigOption(
      name: ['--version', '-v'],
      description: 'Output the version number of npm-check-updates',
    ),
    FigOption(
      name: ['--workspace', '-w'],
      description:
          'Run on one or more specified workspaces. Add --root to also upgrade the root project. (default: [])',
      args: [FigArg(name: 's')],
    ),
    FigOption(
      name: ['--workspaces', '-ws'],
      description:
          'Run on all workspaces. Add --root to also upgrade the root project',
    ),
  ],
);
