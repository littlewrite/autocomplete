// AI-generated from TypeScript source: composer.ts
import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

const String _composerIcon =
    'https://getcomposer.org/img/logo-composer-transparent5.png';

final FigGenerator _searchGenerator = FigGenerator(
  script: (List<String> tokens) {
    if (tokens.isEmpty) return [];
    final searchTerm = tokens.last;
    if (searchTerm.isEmpty) return [];

    return [
      'curl',
      '-s',
      '-H',
      'Accept: application/json',
      'https://packagist.org/search.json?q=$searchTerm&per_page=20',
    ];
  },
  postProcess: (String out, [List<String>? tokens]) {
    try {
      final json = jsonDecode(out);
      if (json is Map && json.containsKey('results')) {
        final results = json['results'] as List;
        return results.map((item) {
          return FigSuggestion(
            name: item['name'],
            description: item['description'],
            icon: '📦',
          );
        }).toList();
      }
    } catch (e) {
      // ignore
    }
    return [];
  },
);

final FigGenerator _packagesGenerator = FigGenerator(
  script: ['cat', 'composer.json'],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.trim().isEmpty) return [];
    try {
      final json = jsonDecode(out);
      final dependencies = json['require'] as Map<String, dynamic>? ?? {};
      final devDependencies =
          json['require-dev'] as Map<String, dynamic>? ?? {};

      final allDeps = {...dependencies, ...devDependencies};

      // Filter logic: dependency.match(PACKAGE_REGEXP) -> "^.*/.*$"
      // i.e. contains a slash
      return allDeps.keys
          .where((key) => key.contains('/'))
          .map((key) => FigSuggestion(name: key, icon: '📦'))
          .toList();
    } catch (e) {
      // ignore
    }
    return [];
  },
);

// Common options
final List<FigOption> _commonOptions = [
  FigOption(name: ['-h', '--help'], description: 'Display this help message'),
  FigOption(name: ['-q', '--quiet'], description: 'Do not output any message'),
  FigOption(
      name: ['-V', '--version'],
      description: 'Display this application version'),
  FigOption(
      name: '--ansi',
      description: 'Force ANSI output',
      exclusiveOn: ['--no-ansi']),
  FigOption(
      name: '--no-ansi',
      description: 'Disable ANSI output',
      exclusiveOn: ['--ansi']),
  FigOption(
      name: ['-n', '--no-interaction'],
      description: 'Do not ask any interactive question'),
  FigOption(
      name: '--profile',
      description: 'Display timing and memory usage information'),
  FigOption(name: '--no-plugins', description: 'Whether to disable plugins'),
  FigOption(
    name: ['-d', '--working-dir'],
    description: 'If specified, use the given directory as working directory',
    args: [FigArg(name: 'dir', template: 'folders')],
  ),
  FigOption(name: '--no-cache', description: 'Prevent use of the cache'),
  FigOption(
      name: ['-v', '--verbose'],
      description: 'Verbosity of messages: 1 for normal output'),
  FigOption(
      name: '-vv',
      description: 'Verbosity of messages: 2 for more verbose output'),
  FigOption(name: '-vvv', description: 'Verbosity of messages: 3 for debug'),
];

final FigSpec composerSpec = FigSpec(
  name: 'composer',
  description: 'Composer Command',
  icon: _composerIcon,
  subcommands: [
    FigSubcommand(
      name: 'require',
      description:
          'Adds required packages to your composer.json and installs them',
      icon: _composerIcon,
      args: [
        FigArg(
          name: 'packages',
          description: 'Package name (e.g. vendor/package)',
          isVariadic: true,
          generators: [_searchGenerator],
        ),
      ],
      options: [
        FigOption(name: '--dev', description: 'Add to require-dev'),
        FigOption(
            name: '--dry-run',
            description:
                'Simulate the command without actually modifying files'),
        FigOption(
            name: '--prefer-source',
            description: 'Install packages from source when available'),
        FigOption(
            name: '--prefer-dist',
            description: 'Install packages from dist when available'),
        FigOption(
            name: '--fixed',
            description: 'Write fixed version to the composer.json'),
        FigOption(
            name: '--no-update',
            description: 'Disables the automatic update of the dependencies'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'install',
      description:
          'Installs the project dependencies from the composer.lock file if present, or falls back on the composer.json',
      icon: _composerIcon,
      options: [
        FigOption(
            name: '--prefer-source',
            description: 'Install packages from source when available'),
        FigOption(
            name: '--prefer-dist',
            description: 'Install packages from dist when available'),
        FigOption(
            name: '--dry-run',
            description:
                'Simulate the command without actually modifying files'),
        FigOption(
            name: '--dev',
            description:
                'Enables installation of require-dev packages (enabled by default)'),
        FigOption(
            name: '--no-dev',
            description: 'Disables installation of require-dev packages'),
        FigOption(
            name: '--no-autoloader',
            description: 'Skips autoloader generation'),
        FigOption(
            name: '--no-scripts',
            description:
                'Skips the execution of all scripts defined in composer.json'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'update',
      description:
          'Updates your dependencies to the latest version according to composer.json, and updates the composer.lock file',
      icon: _composerIcon,
      args: [
        FigArg(
          name: 'packages',
          description: 'Packages to update',
          isVariadic: true,
          isOptional: true,
          generators: [_packagesGenerator],
        ),
      ],
      options: [
        FigOption(
            name: '--prefer-source',
            description: 'Install packages from source when available'),
        FigOption(
            name: '--prefer-dist',
            description: 'Install packages from dist when available'),
        FigOption(
            name: '--dry-run',
            description:
                'Simulate the command without actually modifying files'),
        FigOption(
            name: '--no-dev',
            description: 'Disables installation of require-dev packages'),
        FigOption(
            name: '--lock',
            description:
                'Only updates the lock file hash to suppress warning about the lock file being out of date'),
        FigOption(
            name: '--with-dependencies',
            description:
                'Add also dependencies of whitelisted packages to the whitelist'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'remove',
      description: 'Removes a package from the require or require-dev',
      icon: _composerIcon,
      args: [
        FigArg(
          name: 'packages',
          description: 'Packages to remove',
          isVariadic: true,
          generators: [_packagesGenerator],
        ),
      ],
      options: [
        FigOption(
            name: '--dev',
            description: 'Removes a package from the require-dev section'),
        FigOption(
            name: '--dry-run',
            description:
                'Simulate the command without actually modifying files'),
        FigOption(
            name: '--no-update',
            description: 'Disables the automatic update of the dependencies'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'init',
      description: 'Creates a basic composer.json file in current directory',
      icon: _composerIcon,
      options: [
        FigOption(
            name: '--name',
            description: 'Name of the package',
            args: [FigArg(name: 'name')]),
        FigOption(
            name: '--description',
            description: 'Description of package',
            args: [FigArg(name: 'description')]),
        FigOption(
            name: '--author',
            description: 'Author name of package',
            args: [FigArg(name: 'author')]),
        FigOption(name: '--type', description: 'Type of package', args: [
          FigArg(name: 'type', suggestions: const [
            FigSuggestion(name: 'library'),
            FigSuggestion(name: 'project'),
            FigSuggestion(name: 'metapackage'),
            FigSuggestion(name: 'composer-plugin')
          ])
        ]),
        FigOption(
            name: '--homepage',
            description: 'Homepage of package',
            args: [FigArg(name: 'homepage')]),
        FigOption(
            name: '--require',
            description: 'Package to require with a version constraint',
            args: [FigArg(name: 'package')]),
        FigOption(
            name: '--require-dev',
            description:
                'Package to require for development with a version constraint',
            args: [FigArg(name: 'package')]),
        FigOption(
            name: '--license',
            description: 'License of package',
            args: [FigArg(name: 'license')]),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'create-project',
      description: 'Create new project from a package into given directory',
      icon: _composerIcon,
      args: [
        FigArg(
            name: 'package',
            description: 'Package name',
            generators: [_searchGenerator]),
        FigArg(
            name: 'directory',
            description: 'Directory to create project in',
            isOptional: true,
            template: 'folders'),
        FigArg(name: 'version', description: 'Version', isOptional: true),
      ],
      options: [
        FigOption(
            name: '--stability',
            description: 'Minimum stability of package',
            args: [
              FigArg(name: 'stability', suggestions: const [
                FigSuggestion(name: 'stable'),
                FigSuggestion(name: 'RC'),
                FigSuggestion(name: 'beta'),
                FigSuggestion(name: 'alpha'),
                FigSuggestion(name: 'dev')
              ])
            ]),
        FigOption(
            name: '--prefer-source',
            description: 'Install packages from source when available'),
        FigOption(
            name: '--prefer-dist',
            description: 'Install packages from dist when available'),
        FigOption(
            name: '--repository',
            description: 'Add custom repositories',
            args: [FigArg(name: 'url')]),
        FigOption(
            name: '--add-repository',
            description: 'Add the repository to composer.json'),
        FigOption(
            name: '--no-install', description: 'Do not run install command'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'dump-autoload',
      description: 'Dumps the autoloader',
      icon: _composerIcon,
      options: [
        FigOption(
            name: '--optimize',
            description:
                'Optimizes PSR0 and PSR4 packages to be loaded with classmaps too, good for production.'),
        FigOption(
            name: '--classmap-authoritative',
            description:
                'Autoload classes from the classmap only. Implicitly enables --optimize.'),
        FigOption(
            name: '--apcu',
            description: 'Use APCu to cache found/not-found classes.'),
        FigOption(
            name: '--no-dev', description: 'Disables autoload-dev rules.'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'validate',
      description: 'Validates a composer.json and composer.lock',
      icon: _composerIcon,
      options: [
        FigOption(
            name: '--no-check-all',
            description:
                'Do not validate requires for stricter constraints than what is present in lock file'),
        FigOption(
            name: '--no-check-lock',
            description: 'Do not check if lock file is up to date'),
        FigOption(
            name: '--no-check-publish',
            description: 'Do not check if package is ready to be published'),
        FigOption(
            name: '--with-dependencies',
            description:
                'Also validate the composer.json of all installed dependencies'),
        FigOption(
            name: '--strict',
            description:
                'Return a non-zero exit code for warnings as well as errors'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'show',
      description: 'Shows information about packages',
      icon: _composerIcon,
      args: [
        FigArg(
            name: 'package',
            description: 'Package to inspect',
            isOptional: true,
            generators: [_packagesGenerator]),
        FigArg(
            name: 'version',
            description: 'Version to inspect',
            isOptional: true),
      ],
      options: [
        FigOption(
            name: '--all',
            description: 'List all packages available in all repositories'),
        FigOption(
            name: '--installed',
            description: 'List installed packages (default)'),
        FigOption(
            name: '--platform',
            description: 'List platform packages (php & extensions)'),
        FigOption(name: '--available', description: 'List available packages'),
        FigOption(
            name: '--self',
            description:
                'Show the version information for the composer command itself'),
        FigOption(name: '--name-only', description: 'List package names only'),
        FigOption(name: '--path', description: 'Show package paths'),
        FigOption(
            name: '--tree', description: 'List the dependencies as a tree'),
        FigOption(name: '--latest', description: 'Show the latest version'),
        FigOption(
            name: '--outdated',
            description:
                'Show the latest version but only for packages that are outdated'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'run-script',
      description: 'Runs the scripts defined in composer.json',
      icon: _composerIcon,
      args: [
        FigArg(name: 'script', description: 'Script name'),
        FigArg(
            name: 'args',
            description: 'Arguments to pass to the script',
            isVariadic: true,
            isOptional: true),
      ],
      options: [
        FigOption(
            name: '--timeout',
            description: 'Sets script timeout in seconds',
            args: [FigArg(name: 'seconds')]),
        FigOption(name: '--list', description: 'List defined scripts'),
        ..._commonOptions,
      ],
    ),
    FigSubcommand(
      name: 'config',
      description: 'Set config options',
      icon: _composerIcon,
      args: [
        FigArg(name: 'setting-key', description: 'Setting key'),
        FigArg(
            name: 'setting-value',
            description: 'Setting value',
            isVariadic: true,
            isOptional: true),
      ],
      options: [
        FigOption(
            name: '--global',
            description: 'Apply command to the global config file'),
        FigOption(name: '--editor', description: 'Open editor'),
        FigOption(
            name: '--auth',
            description: 'LLMs, Gitlab, Bitbucket, etc. authentication'),
        FigOption(name: '--unset', description: 'Unset the given setting-key'),
        FigOption(name: '--list', description: 'List configuration settings'),
        FigOption(
            name: '--file',
            description: 'Operate on a specific config file',
            args: [FigArg(name: 'file', template: 'filepaths')]),
        FigOption(
            name: '--absolute',
            description: 'Returns absolute paths when fetching config values'),
        ..._commonOptions,
      ],
    ),
  ],
  options: _commonOptions,
);
