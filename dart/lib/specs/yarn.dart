// AI-generated from TypeScript source: yarn.ts
// Generated at: 2026-02-16

import 'dart:convert';

import 'package:autocomplete/specs/npm.dart';
import 'package:autocomplete/src/spec.dart';

// 类型定义（假设已定义）
typedef FigExecuteCommandFunction = Future<ShellCommandResult> Function({
  required String command,
  required List<String> args,
});

typedef FigShellContext = Map<String, dynamic>;

class ShellCommandResult {
  final String stdout;
  final String stderr;
  final int status;

  ShellCommandResult({
    required this.stdout,
    required this.stderr,
    required this.status,
  });
}

// yarnScriptParserDirectives
final Map<String, dynamic> yarnScriptParserDirectives = {
  'alias': (String token, FigExecuteCommandFunction executeShellCommand) async {
    final npmPrefixResult = await executeShellCommand(
      command: 'npm',
      args: ['prefix'],
    );

    if (npmPrefixResult.status != 0) {
      throw Exception('npm prefix command failed');
    }

    final packageJsonResult = await executeShellCommand(
      command: 'cat',
      args: ['${npmPrefixResult.stdout.trim()}/package.json'],
    );

    final packageContent =
        jsonDecode(packageJsonResult.stdout) as Map<String, dynamic>;
    final scripts = packageContent['scripts'] as Map<String, dynamic>?;
    final script = scripts?[token];

    if (script == null) {
      throw Exception('Script not found: \'$token\'');
    }
    return script;
  },
};

// nodeClis
final Set<String> nodeClis = {
  'vue',
  'vite',
  'nuxt',
  'react-native',
  'degit',
  'expo',
  'jest',
  'next',
  'electron',
  'prisma',
  'eslint',
  'prettier',
  'tsc',
  'typeorm',
  'babel',
  'remotion',
  'autocomplete-tools',
  'redwood',
  'rw',
  'create-completion-spec',
  'publish-spec-to-team',
  'capacitor',
  'cap',
};

// getGlobalPackagesGenerator (uses script+postProcess; TS had custom async)
final FigGenerator getGlobalPackagesGenerator = FigGenerator(
  script: ['bash', '-c', 'cat "\$(yarn global dir)/package.json"'],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.trim().isEmpty) return <FigSuggestion>[];
    try {
      final packageContent = jsonDecode(out) as Map<String, dynamic>;
      final dependencyScripts =
          packageContent['dependencies'] as Map<String, dynamic>? ?? {};
      final devDependencyScripts =
          packageContent['devDependencies'] as Map<String, dynamic>? ?? {};
      final dependencies = <String>[];
      dependencies.addAll(dependencyScripts.keys);
      dependencies.addAll(devDependencyScripts.keys);
      final tokenSet = tokens ?? [];
      final filteredDependencies = dependencies
          .where((dependency) => !tokenSet.contains(dependency))
          .toList();
      return filteredDependencies
          .map((dependencyName) => FigSuggestion(
                name: dependencyName,
                icon: '📦',
              ))
          .toList();
    } catch (e) {
      return <FigSuggestion>[];
    }
  },
);

// allDependenciesGenerator
final FigGenerator allDependenciesGenerator = FigGenerator(
  script: ['yarn', 'list', '--depth=0', '--json'],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.trim().isEmpty) return <FigSuggestion>[];

    try {
      final packageContent = jsonDecode(out) as Map<String, dynamic>;
      final trees = packageContent['data']?['trees'] as List<dynamic>?;

      if (trees == null) return <FigSuggestion>[];

      return trees.map<FigSuggestion>((dependency) {
        final name =
            (dependency as Map<String, dynamic>)['name']?.toString() ?? '';
        final packageName = name.split('@')[0];
        return FigSuggestion(
          name: packageName,
          icon: '📦',
        );
      }).toList();
    } catch (e) {
      print('Error in allDependenciesGenerator: $e');
      return <FigSuggestion>[];
    }
  },
);

// configList
final FigGenerator configList = FigGenerator(
  script: ['yarn', 'config', 'list'],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.trim().isEmpty) {
      return <FigSuggestion>[];
    }

    try {
      final startIndex = out.indexOf('{');
      final endIndex = out.indexOf('}');

      if (startIndex == -1 || endIndex == -1) {
        return <FigSuggestion>[];
      }

      String output = out.substring(startIndex, endIndex + 1);

      output = output
          .replaceAll("'", '"')
          .replaceAll('lastUpdateCheck', '"lastUpdateCheck"')
          .replaceAll('registry', '"registry"');

      final configObject = jsonDecode(output) as Map<String, dynamic>;

      return configObject.keys
          .map((key) => FigSuggestion(
                name: key,
              ))
          .toList();
    } catch (e) {
      print('Error in configList: $e');
      return <FigSuggestion>[];
    }
  },
);

// dependenciesGenerator (yarn version)
final FigGenerator yarnDependenciesGenerator = FigGenerator(
  script: [
    'bash',
    '-c',
    "until [[ -f package.json ]] || [[ \$PWD = '/' ]]; do cd ..; done; cat package.json",
  ],
  postProcess: (String out, [List<String>? context]) {
    final tokens = context ?? [];

    if (out.trim().isEmpty) {
      return <FigSuggestion>[];
    }

    try {
      final packageContent = jsonDecode(out) as Map<String, dynamic>;
      final dependencies =
          packageContent['dependencies'] as Map<String, dynamic>? ?? {};
      final devDependencies =
          packageContent['devDependencies'] as Map<String, dynamic>? ?? {};
      final optionalDependencies =
          packageContent['optionalDependencies'] as Map<String, dynamic>? ?? {};

      final allDependencies = <String, dynamic>{};
      allDependencies.addAll(dependencies);
      allDependencies.addAll(devDependencies);
      allDependencies.addAll(optionalDependencies);

      return allDependencies.keys
          .where((pkgName) => !tokens.any((current) => current == pkgName))
          .map((pkgName) {
        String description;
        if (dependencies.containsKey(pkgName)) {
          description = 'dependency';
        } else if (optionalDependencies.containsKey(pkgName)) {
          description = 'optionalDependency';
        } else {
          description = 'devDependency';
        }

        return FigSuggestion(
          name: pkgName,
          icon: '📦',
          description: description,
        );
      }).toList();
    } catch (e) {
      print('Error in yarn dependencies generator: $e');
      return <FigSuggestion>[];
    }
  },
);

final FigGenerator createCLIsGenerator = FigGenerator(
  script: (List<String> context) {
    if (context.isEmpty || context.last.isEmpty) return null;
    final searchTerm = 'create-${context.last}';
    return [
      'curl',
      '-s',
      '-H',
      'Accept: application/json',
      'https://api.npms.io/v2/search?q=$searchTerm&size=20',
    ];
  },
  cache: FigCache(
    ttl: 100 * 24 * 60 * 60 * 3, // 3 days
  ),
  postProcess: (String out, [List<String>? tokens]) {
    try {
      final jsonData = jsonDecode(out) as Map<String, dynamic>;
      final results = jsonData['results'] as List<dynamic>?;

      if (results == null) return <FigSuggestion>[];

      return results
          .map<FigSuggestion?>((item) {
            final packageData = (item as Map<String, dynamic>)['package']
                as Map<String, dynamic>?;
            if (packageData == null) return null;
            final packageName = packageData['name']?.toString() ?? '';
            final description = packageData['description']?.toString() ?? '';
            return FigSuggestion(
              name: packageName.startsWith('create-')
                  ? packageName.substring(7)
                  : packageName,
              description: description,
              icon: '⚡',
            );
          })
          .whereType<FigSuggestion>()
          .toList();
    } catch (e) {
      print('Error parsing create CLI results: $e');
      return <FigSuggestion>[];
    }
  },
);

final List<Option> commonOptions = [
  Option(name: ['-s', '--silent'], description: 'Skip Yarn console logs'),
  Option(
      name: '--no-default-rc',
      description:
          'Prevent Yarn from automatically detecting yarnrc and npmrc files'),
  Option(
      name: '--use-yarnrc',
      description:
          'Specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )',
      args: [Arg(name: 'path', template: 'filepath')]),
  Option(
      name: '--verbose',
      description: 'Output verbose messages on internal operations'),
  Option(
      name: '--offline',
      description:
          'Trigger an error if any required dependencies are not available in local cache'),
  Option(
      name: '--prefer-offline',
      description:
          'Use network only if dependencies are not available in local cache'),
  Option(
      name: ['--enable-pnp', '--pnp'],
      description: 'Enable the Plug\'n\'Play installation'),
  Option(
      name: '--json', description: 'Format Yarn log messages as lines of JSON'),
  Option(name: '--ignore-scripts', description: 'Don\'t run lifecycle scripts'),
  Option(name: '--har', description: 'Save HAR output of network traffic'),
  Option(name: '--ignore-platform', description: 'Ignore platform checks'),
  Option(name: '--ignore-engines', description: 'Ignore engines check'),
  Option(
      name: '--ignore-optional', description: 'Ignore optional dependencies'),
  Option(
      name: '--force',
      description:
          'Install and build packages even if they were built before, overwrite lockfile'),
  Option(
      name: '--skip-integrity-check',
      description: 'Run install without checking if node_modules is installed'),
  Option(
      name: '--check-files',
      description: 'Install will verify file tree of packages for consistency'),
  Option(
      name: '--no-bin-links',
      description: 'Don\'t generate bin links when setting up packages'),
  Option(name: '--flat', description: 'Only allow one version of a package'),
  Option(
      name: ['--prod', '--production'],
      description:
          'Instruct Yarn to ignore NODE_ENV and take its production-or-not status from this flag instead'),
  Option(
      name: '--no-lockfile', description: 'Don\'t read or generate a lockfile'),
  Option(name: '--pure-lockfile', description: 'Don\'t generate a lockfile'),
  Option(
      name: '--frozen-lockfile',
      description:
          'Don\'t generate a lockfile and fail if an update is needed'),
  Option(
      name: '--update-checksums',
      description: 'Update package checksums from current repository'),
  Option(
      name: '--link-duplicates',
      description: 'Create hardlinks to the repeated modules in node_modules'),
  Option(
      name: '--link-folder',
      description: 'Specify a custom folder to store global links',
      args: [Arg(name: 'path', template: 'folder')]),
  Option(
      name: '--global-folder',
      description: 'Specify a custom folder to store global packages',
      args: [Arg(name: 'path', template: 'folder')]),
  Option(
      name: '--modules-folder',
      description:
          'Rather than installing modules into the node_modules folder relative to the cwd, output them here',
      args: [Arg(name: 'path', template: 'folder')]),
  Option(
      name: '--preferred-cache-folder',
      description:
          'Specify a custom folder to store the yarn cache if possible',
      args: [Arg(name: 'path', template: 'folder')]),
  Option(
      name: '--cache-folder',
      description:
          'Specify a custom folder that must be used to store the yarn cache',
      args: [Arg(name: 'path', template: 'folder')]),
  Option(
      name: '--mutex',
      description: 'Use a mutex to ensure only one yarn instance is executing',
      args: [Arg(name: 'type[:specifier')]),
  Option(name: '--emoji', description: 'Enables emoji in output', args: [
    Arg(defaultValue: 'true', suggestions: [
      FigSuggestion(name: 'true'),
      FigSuggestion(name: 'false')
    ])
  ]),
  Option(
      name: '--cwd',
      description: 'Working directory to use',
      args: [Arg(name: 'cwd', template: 'folder')]),
  Option(
      name: ['--proxy', '--https-proxy'],
      description: '',
      args: [Arg(name: 'hos')]),
  Option(
      name: '--registry',
      description: 'Override configuration registry',
      args: [Arg(name: 'ur')]),
  Option(name: '--no-progress', description: 'Disable progress bar'),
  Option(
      name: '--network-concurrency',
      description: 'Maximum number of concurrent network requests',
      args: [Arg(name: 'numbe')]),
  Option(
      name: '--network-timeout',
      description: 'TCP timeout for network requests',
      args: [Arg(name: 'millisecond')]),
  Option(
      name: '--non-interactive',
      description: 'Do not show interactive prompts'),
  Option(
      name: '--scripts-prepend-node-path',
      description: 'Prepend the node executable dir to the PATH in scripts'),
  Option(
      name: '--no-node-version-check',
      description:
          'Do not warn when using a potentially unsupported Node version'),
  Option(
      name: '--focus',
      description:
          'Focus on a single workspace by installing remote copies of its sibling workspaces'),
  Option(
      name: '--otp',
      description: 'One-time password for two factor authentication',
      args: [Arg(name: 'otpcod')])
];

/// Completion spec for `yarn` CLI
final FigSpec yarnSpec = FigSpec(
    name: 'yarn',
    description: 'Manage packages and run scripts',
    args: [
      Arg(
        generators: npmScriptsGenerator,
        filterStrategy: FilterStrategy.fuzzy,
        isOptional: true,
      )
    ],
    options: [
      Option(
          name: '--disable-pnp',
          description: 'Disable the Plug\'n\'Play installation'),
      Option(
          name: '--emoji',
          description: 'Enable emoji in output (default: true)',
          args: [
            Arg(name: 'bool', suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ])
          ]),
      Option(
          name: ['--enable-pnp', '--pnp'],
          description: 'Enable the Plug\'n\'Play installation'),
      Option(
          name: '--flat', description: 'Only allow one version of a package'),
      Option(
          name: '--focus',
          description:
              'Focus on a single workspace by installing remote copies of its sibling workspaces'),
      Option(
          name: '--force',
          description:
              'Install and build packages even if they were built before, overwrite lockfile'),
      Option(
          name: '--frozen-lockfile',
          description:
              'Don\'t generate a lockfile and fail if an update is needed'),
      Option(
          name: '--global-folder',
          description: 'Specify a custom folder to store global packages',
          args: [Arg(template: 'folders')]),
      Option(name: '--har', description: 'Save HAR output of network traffic'),
      Option(name: '--https-proxy', description: '', args: [
        Arg(name: 'path', suggestions: [FigSuggestion(name: 'https://')])
      ]),
      Option(name: '--ignore-engines', description: 'Ignore engines check'),
      Option(
          name: '--ignore-optional',
          description: 'Ignore optional dependencies'),
      Option(name: '--ignore-platform', description: 'Ignore platform checks'),
      Option(
          name: '--ignore-scripts',
          description: 'Don\'t run lifecycle scripts'),
      Option(
          name: '--json',
          description:
              'Format Yarn log messages as lines of JSON (see jsonlines.org)'),
      Option(
          name: '--link-duplicates',
          description:
              'Create hardlinks to the repeated modules in node_modules'),
      Option(
          name: '--link-folder',
          description: 'Specify a custom folder to store global links',
          args: [Arg(template: 'folders')]),
      Option(
          name: '--modules-folder',
          description:
              'Rather than installing modules into the node_modules folder relative to the cwd, output them here',
          args: [Arg(template: 'folders')]),
      Option(
          name: '--mutex',
          description:
              'Use a mutex to ensure only one yarn instance is executing',
          args: [
            Arg(name: 'type', suggestions: [FigSuggestion(name: ':')]),
            Arg(name: 'specifier', suggestions: [FigSuggestion(name: ':')])
          ]),
      Option(
          name: '--network-concurrency',
          description: 'Maximum number of concurrent network requests',
          args: [Arg(name: 'number')]),
      Option(
          name: '--network-timeout',
          description: 'TCP timeout for network requests',
          args: [Arg(name: 'milliseconds')]),
      Option(
          name: '--no-bin-links',
          description: 'Don\'t generate bin links when setting up packages'),
      Option(
          name: '--no-default-rc',
          description:
              'Prevent Yarn from automatically detecting yarnrc and npmrc files'),
      Option(
          name: '--no-lockfile',
          description: 'Don\'t read or generate a lockfile'),
      Option(
          name: '--non-interactive',
          description: 'Do not show interactive prompts'),
      Option(
          name: '--no-node-version-check',
          description:
              'Do not warn when using a potentially unsupported Node version'),
      Option(name: '--no-progress', description: 'Disable progress bar'),
      Option(
          name: '--offline',
          description:
              'Trigger an error if any required dependencies are not available in local cache'),
      Option(
          name: '--otp',
          description: 'One-time password for two factor authentication',
          args: [Arg(name: 'otpcode')]),
      Option(
          name: '--prefer-offline',
          description:
              'Use network only if dependencies are not available in local cache'),
      Option(
          name: '--preferred-cache-folder',
          description:
              'Specify a custom folder to store the yarn cache if possible',
          args: [Arg(template: 'folders')]),
      Option(name: ['--prod', '--production'], description: '', args: [Arg()]),
      Option(name: '--proxy', description: '', args: [Arg(name: 'host')]),
      Option(
          name: '--pure-lockfile', description: 'Don\'t generate a lockfile'),
      Option(
          name: '--registry',
          description: 'Override configuration registry',
          args: [Arg(name: 'url')]),
      Option(
          name: ['-s', '--silent'],
          description:
              'Skip Yarn console logs, other types of logs (script output) will be printed'),
      Option(
          name: '--scripts-prepend-node-path',
          description: 'Prepend the node executable dir to the PATH in scripts',
          args: [
            Arg(suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ])
          ]),
      Option(
          name: '--skip-integrity-check',
          description:
              'Run install without checking if node_modules is installed'),
      Option(name: '--strict-semver', description: ''),
      ...commonOptions,
      Option(
          name: ['-v', '--version'], description: 'Output the version number'),
      Option(name: ['-h', '--help'], description: 'Output usage information')
    ],
    subcommands: [
      Subcommand(
          name: 'add',
          description: 'Installs a package and any packages that it depends on',
          args: [
            Arg(
                name: 'package',
                generators: npmSearchGenerator,
                isVariadic: true)
          ],
          options: [
            ...commonOptions,
            Option(name: [
              '-W',
              '--ignore-workspace-root-check'
            ], description: 'Required to run yarn add inside a workspace root'),
            Option(
                name: ['-D', '--dev'],
                description: 'Save package to your `devDependencies`'),
            Option(
                name: ['-P', '--peer'],
                description: 'Save package to your `peerDependencies`'),
            Option(
                name: ['-O', '--optional'],
                description: 'Save package to your `optionalDependencies`'),
            Option(
                name: ['-E', '--exact'],
                description: 'Install exact version',
                dependsOn: ['--latest']),
            Option(
                name: ['-T', '--tilde'],
                description:
                    'Install most recent release with the same minor version'),
            Option(
                name: ['-A', '--audit'],
                description: 'Run vulnerability audit on installed packages'),
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'audit',
          description:
              'Perform a vulnerability audit against the installed packages',
          options: [
            Option(name: '--summary', description: 'Only print the summary'),
            Option(
                name: '--groups',
                description:
                    'Only audit dependencies from listed groups. Default: devDependencies, dependencies, optionalDependencies',
                args: [Arg(name: 'group_name', isVariadic: true)]),
            Option(
                name: '--level',
                description:
                    'Only print advisories with severity greater than or equal to one of the following: info|low|moderate|high|critical. Default: info',
                args: [
                  Arg(name: 'severity', suggestions: [
                    FigSuggestion(name: 'info'),
                    FigSuggestion(name: 'low'),
                    FigSuggestion(name: 'moderate'),
                    FigSuggestion(name: 'high'),
                    FigSuggestion(name: 'critical')
                  ])
                ]),
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'autoclean',
          description:
              'Cleans and removes unnecessary files from package dependencies',
          options: [
            Option(
                name: ['-h', '--help'],
                description: 'Output usage information'),
            Option(
                name: ['-i', '--init'],
                description:
                    'Creates the .yarnclean file if it does not exist, and adds the default entries'),
            Option(
                name: ['-f', '--force'],
                description:
                    'If a .yarnclean file exists, run the clean process')
          ]),
      Subcommand(
          name: 'bin',
          description: 'Displays the location of the yarn bin folder',
          options: [
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'cache',
          description: 'Yarn cache list will print out every cached package',
          options: [
            ...commonOptions,
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ],
          subcommands: [
            Subcommand(name: 'clean', description: 'Clear global cache'),
            Subcommand(
                name: 'dir', description: 'Print yarn’s global cache path'),
            Subcommand(
                name: 'list',
                description: 'Print out every cached package',
                options: [
                  Option(
                      name: '--pattern',
                      description: 'Filter cached packages by pattern',
                      args: [Arg(name: 'pattern')])
                ])
          ]),
      Subcommand(name: 'config', description: 'Configure yarn', options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ], subcommands: [
        Subcommand(
            name: 'set',
            description: 'Sets the config key to a certain value',
            options: [
              Option(name: ['-g', '--global'], description: 'Set global config')
            ]),
        Subcommand(
            name: 'get',
            description: 'Print the value for a given key',
            args: [Arg(generators: configList)]),
        Subcommand(
            name: 'delete',
            description: 'Deletes a given key from the config',
            args: [Arg(generators: configList)]),
        Subcommand(
            name: 'list', description: 'Displays the current configuration')
      ]),
      Subcommand(
          name: 'create',
          description: 'Creates new projects from any create-* starter kits',
          args: [
            Arg(name: 'cli', generators: createCLIsGenerator)
          ],
          options: [
            ...commonOptions,
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(name: 'exec', description: '', options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
      Subcommand(
          name: 'generate-lock-entry',
          description: 'Generates a lock file entry',
          options: [
            Option(
                name: '--use-manifest',
                description:
                    'Specify which manifest file to use for generating lock entry',
                args: [Arg(template: 'filepaths')]),
            Option(
                name: '--resolved',
                description: 'Generate from <*.tgz>#<hash>',
                args: [Arg(template: 'filepaths')]),
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'global',
          description: 'Manage yarn globally',
          subcommands: [
            Subcommand(
                name: 'add',
                description:
                    'Install globally packages on your operating system',
                args: [
                  Arg(
                      name: 'package',
                      generators: npmSearchGenerator,
                      isVariadic: true)
                ]),
            Subcommand(
                name: 'bin',
                description:
                    'Displays the location of the yarn global bin folder'),
            Subcommand(
                name: 'dir',
                description:
                    'Displays the location of the global installation folder'),
            Subcommand(
                name: 'ls',
                description: 'List globally installed packages (deprecated)'),
            Subcommand(
                name: 'list', description: 'List globally installed packages'),
            Subcommand(
                name: 'remove',
                description: 'Remove globally installed packages',
                args: [
                  Arg(
                      name: 'package',
                      filterStrategy: FilterStrategy.fuzzy,
                      generators: getGlobalPackagesGenerator,
                      isVariadic: true)
                ],
                options: [
                  ...commonOptions,
                  Option(
                      name: ['-W', '--ignore-workspace-root-check'],
                      description:
                          'Required to run yarn remove inside a workspace root'),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Output usage information')
                ]),
            Subcommand(
                name: 'upgrade',
                description: 'Upgrade globally installed packages',
                options: [
                  ...commonOptions,
                  Option(
                      name: ['-S', '--scope'],
                      description: 'Upgrade packages under the specified scope',
                      args: [Arg(name: 'scop')]),
                  Option(
                      name: ['-L', '--latest'],
                      description: 'List the latest version of packages'),
                  Option(
                      name: ['-E', '--exact'],
                      description:
                          'Install exact version. Only used when --latest is specified',
                      dependsOn: ['--latest']),
                  Option(
                      name: ['-P', '--pattern'],
                      description: 'Upgrade packages that match pattern',
                      args: [Arg(name: 'patter')]),
                  Option(
                      name: ['-T', '--tilde'],
                      description:
                          'Install most recent release with the same minor version. Only used when --latest is specified'),
                  Option(
                      name: ['-C', '--caret'],
                      description:
                          'Install most recent release with the same major version. Only used when --latest is specified',
                      dependsOn: ['--latest']),
                  Option(
                      name: ['-A', '--audit'],
                      description:
                          'Run vulnerability audit on installed packages'),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Output usage information')
                ]),
            Subcommand(
                name: 'upgrade-interactive',
                description:
                    'Display the outdated packages before performing any upgrade',
                options: [
                  Option(
                      name: '--latest',
                      description:
                          'Use the version tagged latest in the registry')
                ])
          ],
          options: [
            ...commonOptions,
            Option(
                name: '--prefix',
                description: 'Bin prefix to use to install binaries',
                args: [Arg(name: 'prefix')]),
            Option(
                name: '--latest',
                description: 'Bin prefix to use to install binaries'),
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(name: 'help', description: 'Output usage information'),
      Subcommand(
          name: 'import',
          description:
              'Generates yarn.lock from an npm package-lock.json file'),
      Subcommand(name: 'info', description: 'Show information about a package'),
      Subcommand(
          name: 'init',
          description: 'Interactively creates or updates a package.json file',
          options: [
            ...commonOptions,
            Option(name: ['-y', '--yes'], description: 'Use default options'),
            Option(
                name: ['-p', '--private'],
                description: 'Use default options and private true'),
            Option(
                name: ['-i', '--install'],
                description: 'Install a specific Yarn release',
                args: [Arg(name: 'version')]),
            Option(
                name: '-2', description: 'Generates the project using Yarn 2'),
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'install',
          description:
              'Install all the dependencies listed within package.json',
          options: [
            ...commonOptions,
            Option(
                name: ['-A', '--audit'],
                description: 'Run vulnerability audit on installed packages'),
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(name: 'licenses', description: '', subcommands: [
        Subcommand(
            name: 'list', description: 'List licenses for installed packages'),
        Subcommand(
            name: 'generate-disclaimer',
            description: 'List of licenses from all the packages')
      ]),
      Subcommand(
          name: 'link',
          description: 'Symlink a package folder during development',
          args: [
            Arg(isOptional: true, name: 'package')
          ],
          options: [
            ...commonOptions,
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'list',
          description:
              'Lists all dependencies for the current working directory',
          options: [
            Option(
                name: '--depth',
                description: 'Restrict the depth of the dependencies'),
            Option(
                name: '--pattern',
                description: 'Filter the list of dependencies by the pattern')
          ]),
      Subcommand(
          name: 'login', description: 'Store registry username and email'),
      Subcommand(
          name: 'logout', description: 'Clear registry username and email'),
      Subcommand(name: 'node', description: ''),
      Subcommand(
          name: 'outdated',
          description: 'Checks for outdated package dependencies',
          options: [
            ...commonOptions,
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'owner',
          description: 'Manage package owners',
          subcommands: [
            Subcommand(
                name: 'list',
                description: 'Lists all of the owners of a package',
                args: [Arg(name: 'package')]),
            Subcommand(
                name: 'add',
                description: 'Adds the user as an owner of the package',
                args: [Arg(name: 'package')]),
            Subcommand(
                name: 'remove',
                description: 'Removes the user as an owner of the package',
                args: [Arg(name: 'user'), Arg(name: 'package')])
          ]),
      Subcommand(
          name: 'pack',
          description:
              'Creates a compressed gzip archive of package dependencies',
          options: [
            Option(
                name: '--filename',
                description:
                    'Creates a compressed gzip archive of package dependencies and names the file filename')
          ]),
      Subcommand(
          name: 'policies',
          description: 'Defines project-wide policies for your project',
          subcommands: [
            Subcommand(
                name: 'set-version',
                description: 'Will download the latest stable release',
                options: [
                  Option(
                      name: '--rc',
                      description: 'Download the latest rc release')
                ])
          ]),
      Subcommand(
          name: 'publish',
          description: 'Publishes a package to the npm registry',
          args: [
            Arg(name: 'Tarball or Folder', template: 'folder')
          ],
          options: [
            ...commonOptions,
            Option(
                name: ['-h', '--help'],
                description: 'Output usage information'),
            Option(
                name: '--major',
                description: 'Auto-increment major version number'),
            Option(
                name: '--minor',
                description: 'Auto-increment minor version number'),
            Option(
                name: '--patch',
                description: 'Auto-increment patch version number'),
            Option(
                name: '--premajor',
                description: 'Auto-increment premajor version number'),
            Option(
                name: '--preminor',
                description: 'Auto-increment preminor version number'),
            Option(
                name: '--prepatch',
                description: 'Auto-increment prepatch version number'),
            Option(
                name: '--prerelease',
                description: 'Auto-increment prerelease version number'),
            Option(
                name: '--preid',
                description: 'Add a custom identifier to the prerelease',
                args: [Arg(name: 'prei')]),
            Option(
                name: '--message',
                description: 'Message',
                args: [Arg(name: 'messag')]),
            Option(
                name: '--no-git-tag-version',
                description: 'No git tag version'),
            Option(
                name: '--no-commit-hooks',
                description: 'Bypass git hooks when committing new version'),
            Option(
                name: '--access',
                description: 'Access',
                args: [Arg(name: 'acces')]),
            Option(name: '--tag', description: 'Tag', args: [Arg(name: 'ta')])
          ]),
      Subcommand(
          name: 'remove',
          description: 'Remove installed package',
          args: [
            Arg(
                filterStrategy: FilterStrategy.fuzzy,
                generators: dependenciesGenerator,
                isVariadic: true)
          ],
          options: [
            ...commonOptions,
            Option(
                name: ['-W', '--ignore-workspace-root-check'],
                description:
                    'Required to run yarn remove inside a workspace root'),
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'run',
          description: 'Runs a defined package script',
          options: [
            ...commonOptions,
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ],
          args: [
            Arg(
                name: 'script',
                description: 'Script to run from your package.json',
                generators: npmScriptsGenerator,
                filterStrategy: 'fuzzy'),
            Arg(
                name: 'env',
                suggestions: [FigSuggestion(name: 'env')],
                description: 'Lists environment variables available to scripts',
                isOptional: true)
          ]),
      Subcommand(
          name: 'tag', description: 'Add, remove, or list tags on a package'),
      Subcommand(
          name: 'team',
          description: 'Maintain team memberships',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Create a new team',
                args: [Arg(name: '<scope:team>')]),
            Subcommand(
                name: 'destroy',
                description: 'Destroys an existing team',
                args: [Arg(name: '<scope:team>')]),
            Subcommand(
                name: 'add',
                description: 'Add a user to an existing team',
                args: [Arg(name: '<scope:team>'), Arg(name: '<user>')]),
            Subcommand(
                name: 'remove',
                description: 'Remove a user from a team they belong to',
                args: [Arg(name: '<scope:team> <user>')]),
            Subcommand(
                name: 'list',
                description:
                    'If performed on an organization name, will return a list of existing teams under that organization. If performed on a team, it will instead return a list of all users belonging to that particular team',
                args: [Arg(name: '<scope>|<scope:team>')])
          ]),
      Subcommand(
          name: 'unlink',
          description: 'Unlink a previously created symlink for a package'),
      Subcommand(name: 'unplug', description: ''),
      Subcommand(
          name: 'upgrade',
          description:
              'Upgrades packages to their latest version based on the specified range',
          args: [
            Arg(
                name: 'package',
                generators: dependenciesGenerator,
                filterStrategy: FilterStrategy.fuzzy,
                isVariadic: true,
                isOptional: true)
          ],
          options: [
            ...commonOptions,
            Option(
                name: ['-S', '--scope'],
                description: 'Upgrade packages under the specified scope',
                args: [Arg(name: 'scop')]),
            Option(
                name: ['-L', '--latest'],
                description: 'List the latest version of packages'),
            Option(
                name: ['-E', '--exact'],
                description:
                    'Install exact version. Only used when --latest is specified',
                dependsOn: ['--latest']),
            Option(
                name: ['-P', '--pattern'],
                description: 'Upgrade packages that match pattern',
                args: [Arg(name: 'patter')]),
            Option(
                name: ['-T', '--tilde'],
                description:
                    'Install most recent release with the same minor version. Only used when --latest is specified'),
            Option(
                name: ['-C', '--caret'],
                description:
                    'Install most recent release with the same major version. Only used when --latest is specified',
                dependsOn: ['--latest']),
            Option(
                name: ['-A', '--audit'],
                description: 'Run vulnerability audit on installed packages'),
            Option(
                name: ['-h', '--help'], description: 'Output usage information')
          ]),
      Subcommand(
          name: 'upgrade-interactive',
          description: 'Upgrades packages in interactive mode',
          options: [
            Option(
                name: '--latest',
                description: 'Use the version tagged latest in the registry')
          ]),
      Subcommand(
          name: 'version',
          description: 'Update version of your package',
          options: [
            ...commonOptions,
            Option(
                name: ['-h', '--help'],
                description: 'Output usage information'),
            Option(
                name: '--new-version',
                description: 'New version',
                args: [Arg(name: 'versio')]),
            Option(
                name: '--major',
                description: 'Auto-increment major version number'),
            Option(
                name: '--minor',
                description: 'Auto-increment minor version number'),
            Option(
                name: '--patch',
                description: 'Auto-increment patch version number'),
            Option(
                name: '--premajor',
                description: 'Auto-increment premajor version number'),
            Option(
                name: '--preminor',
                description: 'Auto-increment preminor version number'),
            Option(
                name: '--prepatch',
                description: 'Auto-increment prepatch version number'),
            Option(
                name: '--prerelease',
                description: 'Auto-increment prerelease version number'),
            Option(
                name: '--preid',
                description: 'Add a custom identifier to the prerelease',
                args: [Arg(name: 'prei')]),
            Option(
                name: '--message',
                description: 'Message',
                args: [Arg(name: 'messag')]),
            Option(
                name: '--no-git-tag-version',
                description: 'No git tag version'),
            Option(
                name: '--no-commit-hooks',
                description: 'Bypass git hooks when committing new version'),
            Option(
                name: '--access',
                description: 'Access',
                args: [Arg(name: 'acces')]),
            Option(name: '--tag', description: 'Tag', args: [Arg(name: 'ta')])
          ]),
      Subcommand(
          name: 'versions',
          description:
              'Displays version information of the currently installed Yarn, Node.js, and its dependencies'),
      Subcommand(
          name: 'why',
          description: 'Show information about why a package is installed',
          args: [
            Arg(
                name: 'package',
                filterStrategy: FilterStrategy.fuzzy,
                generators: allDependenciesGenerator)
          ],
          options: [
            ...commonOptions,
            Option(
                name: ['-h', '--help'],
                description: 'Output usage information'),
            Option(
                name: '--peers',
                description:
                    'Print the peer dependencies that match the specified name'),
            Option(
                name: ['-R', '--recursive'],
                description:
                    'List, for each workspace, what are all the paths that lead to the dependency')
          ]),
      Subcommand(
        name: 'workspace',
        description: 'Manage workspace',
        filterStrategy: FilterStrategy.fuzzy,
      )
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (getGlobalPackagesGenerator)
// const getGlobalPackagesGenerator: Fig.Generator = {
//   custom: async (tokens, executeCommand, generatorContext) => {
//     const { stdout: yarnGlobalDir } = await executeCommand({
//       command: "yarn",
//       args: ["global", "dir"],
//     });
// 
//     const { stdout } = await executeCommand({
//       command: "cat",
//       // eslint-disable-next-line @withfig/fig-linter/no-useless-arrays
//       args: [`${yarnGlobalDir.trim()}/package.json`],
//     });
// 
//     if (stdout.trim() == "") return [];
// 
//     try {
//       const packageContent = JSON.parse(stdout);
//       const dependencyScripts = packageContent["dependencies"] || {};
//       const devDependencyScripts = packageContent["devDependencies"] || {};
//       const dependencies = [
//         ...Object.keys(dependencyScripts),
//         ...Object.keys(devDependencyScripts),
//       ];
// 
//       const filteredDependencies = dependencies.filter(
//         (dependency) => !tokens.includes(dependency)
//       );
// 
//       return filteredDependencies.map((dependencyName) => ({
//         name: dependencyName,
//         icon: "📦",
//       }));
//     } catch (e) {}
// 
//     return [];
//   }
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (allDependenciesGenerator)
// const allDependenciesGenerator: Fig.Generator = {
//   script: ["yarn", "list", "--depth=0", "--json"],
//   postProcess: (out) => {
//     if (out.trim() == "") return [];
// 
//     try {
//       const packageContent = JSON.parse(out);
//       const dependencies = packageContent.data.trees;
//       return dependencies.map((dependency: { name: string }) => ({
//         name: dependency.name.split("@")[0],
//         icon: "📦",
//       }));
//     } catch (e) {}
//     return [];
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (configList)
// const configList: Fig.Generator = {
//   script: ["yarn", "config", "list"],
//   postProcess: function (out) {
//     if (out.trim() == "") {
//       return [];
//     }
// 
//     try {
//       const startIndex = out.indexOf("{");
//       const endIndex = out.indexOf("}");
//       let output = out.substring(startIndex, endIndex + 1);
//       // TODO: fix hacky code
//       // reason: JSON parse was not working without double quotes
//       output = output
//         .replace(/\'/gi, '"')
//         .replace("lastUpdateCheck", '"lastUpdateCheck"')
//         .replace("registry", '"lastUpdateCheck"');
//       const configObject = JSON.parse(output);
//       if (configObject) {
//         return Object.keys(configObject).map((key) => ({ name: key }));
//       }
//     } catch (e) {}
// 
//     return [];
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (dependenciesGenerator)
// const dependenciesGenerator: Fig.Generator = {
//   script: [
//     "bash",
//     "-c",
//     "until [[ -f package.json ]] || [[ $PWD = '/' ]]; do cd ..; done; cat package.json",
//   ],
//   postProcess: function (out, context = []) {
//     if (out.trim() === "") {
//       return [];
//     }
// 
//     try {
//       const packageContent = JSON.parse(out);
//       const dependencies = packageContent["dependencies"] ?? {};
//       const devDependencies = packageContent["devDependencies"];
//       const optionalDependencies = packageContent["optionalDependencies"] ?? {};
//       Object.assign(dependencies, devDependencies, optionalDependencies);
// 
//       return Object.keys(dependencies)
//         .filter((pkgName) => {
//           const isListed = context.some((current) => current === pkgName);
//           return !isListed;
//         })
//         .map((pkgName) => ({
//           name: pkgName,
//           icon: "📦",
//           description: dependencies[pkgName]
//             ? "dependency"
//             : optionalDependencies[pkgName]
//               ? "optionalDependency"
//               : "devDependency",
//         }));
//     } catch (e) {
//       console.error(e);
//       return [];
//     }
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (createCLIsGenerator)
// const createCLIsGenerator: Fig.Generator = {
//   script: function (context) {
//     if (context[context.length - 1] === "") return undefined;
//     const searchTerm = "create-" + context[context.length - 1];
//     return [
//       "curl",
//       "-s",
//       "-H",
//       "Accept: application/json",
//       `https://api.npms.io/v2/search?q=${searchTerm}&size=20`,
//     ];
//   }
// TS_GENERATOR_BLOCK_END

