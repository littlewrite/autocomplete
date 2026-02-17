// AI-generated from TypeScript source: npm.ts
// Generated at: 2026-02-16

import 'dart:convert';

import 'package:autocomplete/src/spec.dart';

int atsInStr(String s) => RegExp(r'@').allMatches(s).length;

Subcommand uninstallSubcommand(dynamic named) {
  final name = named is List<String> ? named : [named as String];
  return Subcommand(
    name: name,
    description: 'Uninstall a package',
    args: [
      Arg(
        name: 'package',
        generators: dependenciesGenerator,
        filterStrategy: FilterStrategy.fuzzy,
        isVariadic: true,
      )
    ],
    options: npmUninstallOptions,
  );
}

final FigGenerator npmSearchGenerator = FigGenerator(
  trigger: {
    'on': 'change',
  },
  getQueryTerm: '@',
  cache: FigCache(ttl: 1000 * 60 * 60 * 24 * 2),
  script: (List<String> tokens) {
    final searchTerm = tokens.isNotEmpty ? tokens.last : '';
    if (searchTerm.isEmpty) return <String>[];
    final shouldGetVersion = searchTerm.startsWith('@')
        ? atsInStr(searchTerm) > 1
        : searchTerm.contains('@');
    if (shouldGetVersion) {
      final pkg = searchTerm.endsWith('@')
          ? searchTerm.substring(0, searchTerm.length - 1)
          : searchTerm;
      return [
        'curl',
        '-s',
        '-H',
        'Accept: application/vnd.npm.install-v1+json',
        'https://registry.npmjs.org/$pkg',
      ];
    }
    final encoded = Uri.encodeComponent(searchTerm);
    return [
      'curl',
      '-s',
      '-H',
      'Accept: application/json',
      'https://api.npms.io/v2/search/suggestions?q=$encoded&size=20',
    ];
  },
  postProcess: (String out, [List<String>? tokens]) {
    final searchTerm = (tokens != null && tokens.isNotEmpty) ? tokens.last : '';
    if (searchTerm.isEmpty) return <FigSuggestion>[];
    final shouldGetVersion = searchTerm.startsWith('@')
        ? atsInStr(searchTerm) > 1
        : searchTerm.contains('@');
    try {
      final data = jsonDecode(out) as Map<String, dynamic>;
      if (shouldGetVersion) {
        final versions = <FigSuggestion>[];
        final distTags = data['dist-tags'] as Map<String, dynamic>?;
        if (distTags != null) {
          for (final e in distTags.entries) {
            versions.add(FigSuggestion(
              name: e.key,
              description: e.value?.toString(),
            ));
          }
        }
        final vers = data['versions'] as Map<String, dynamic>?;
        if (vers != null) {
          final list = vers.keys.toList()..sort((a, b) => b.compareTo(a));
          versions.addAll(list.map((v) => FigSuggestion(name: v)));
        }
        return versions;
      }
      final results = data is List
          ? data as List
          : (data['results'] as List? ?? <dynamic>[]);
      return results.map<FigSuggestion>((item) {
        final p = item is Map ? item['package'] as Map? : null;
        final name = p?['name']?.toString() ?? '';
        final desc = p?['description']?.toString();
        return FigSuggestion(name: name, description: desc);
      }).toList();
    } catch (_) {
      return <FigSuggestion>[];
    }
  },
);

final FigGenerator workspaceGenerator = FigGenerator(
  script: ['bash', '-c', r'cat $(npm prefix)/package.json'],
  postProcess: (String out, [List<String>? _]) {
    final suggestions = <FigSuggestion>[];
    if (out.trim().isEmpty) return suggestions;
    try {
      final packageContent = jsonDecode(out) as Map<String, dynamic>;
      final workspaces = packageContent['workspaces'];
      if (workspaces != null && workspaces is List) {
        for (final w in workspaces) {
          suggestions.add(FigSuggestion(
            name: w.toString(),
            description: 'Workspaces',
          ));
        }
      }
    } catch (_) {}
    return suggestions;
  },
);

final FigGenerator dependenciesGenerator = FigGenerator(
  trigger: {'on': 'change'},
  script: (List<String> tokens) {
    if (tokens.contains('-g') || tokens.contains('--global')) {
      return ['bash', '-c', 'ls -1 \$(npm root -g)'];
    }
    return ['bash', '-c', 'cat \$(npm prefix)/package.json'];
  },
  postProcess: (String out, [List<String>? tokens]) {
    if (tokens != null &&
        (tokens.contains('-g') || tokens.contains('--global'))) {
      return out
          .split('\n')
          .where((s) => s.trim().isNotEmpty)
          .map((name) => FigSuggestion(
                name: name.trim(),
                icon: '📦',
                description: 'Global dependency',
              ))
          .toList();
    }
    try {
      final packageContent = jsonDecode(out) as Map<String, dynamic>;
      final dependencies =
          packageContent['dependencies'] as Map<String, dynamic>? ?? {};
      final devDependencies =
          packageContent['devDependencies'] as Map<String, dynamic>?;
      final optionalDependencies =
          packageContent['optionalDependencies'] as Map<String, dynamic>? ?? {};
      final all = <String, dynamic>{...dependencies};
      if (devDependencies != null) all.addAll(devDependencies);
      all.addAll(optionalDependencies);
      final listed = tokens?.toSet() ?? <String>{};
      return all.keys
          .where((pkgName) => !listed.contains(pkgName))
          .map((pkgName) {
        String desc = 'dependency';
        if (optionalDependencies.containsKey(pkgName))
          desc = 'optionalDependency';
        else if (devDependencies != null &&
            devDependencies.containsKey(pkgName)) desc = 'devDependency';
        return FigSuggestion(
          name: pkgName,
          icon: '📦',
          description: desc,
        );
      }).toList();
    } catch (_) {
      return <FigSuggestion>[];
    }
  },
);

final FigGenerator npmScriptsGenerator = FigGenerator(
  cache: FigCache(strategy: 'stale-while-revalidate', cacheByDirectory: true),
  script: [
    'bash',
    '-c',
    "until [[ -f package.json ]] || [[ \$PWD = '/' ]]; do cd ..; done; cat package.json",
  ],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.trim().isEmpty) return <FigSuggestion>[];
    try {
      final packageContent = jsonDecode(out) as Map<String, dynamic>;
      final scripts = packageContent['scripts'] as Map<String, dynamic>?;
      final figCompletions =
          packageContent['fig'] as Map<String, dynamic>? ?? {};
      if (scripts != null) {
        final npmClient =
            tokens != null && tokens.isNotEmpty ? tokens.first : null;
        final icon = npmClient == 'yarn'
            ? 'fig://icon?type=yarn'
            : 'fig://icon?type=npm';
        return scripts.entries.map((e) {
          final customScripts = figCompletions[e.key] as Map<String, dynamic>?;
          return FigSuggestion(
            name: e.key,
            icon: icon,
            description: customScripts?['description']?.toString() ??
                e.value?.toString(),
            priority: 51,
            insertValue: customScripts?['insertValue']?.toString(),
            replaceValue: customScripts?['replaceValue']?.toString(),
            displayName: customScripts?['displayName']?.toString(),
          );
        }).toList();
      }
    } catch (_) {}
    return <FigSuggestion>[];
  },
);

final Option globalOption = Option(
  name: ['-g', '--global'],
  description:
      "Operates in 'global' mode, so that packages are installed into the prefix folder instead of the current working directory",
);

final Option jsonOption = Option(
  name: '--json',
  description: 'Show output in json format',
);

final Option omitOption = Option(
  name: '--omit',
  description: 'Dependency types to omit from the installation tree on disk',
  args: [
    Arg(
      name: 'Package type',
      defaultValue: 'dev',
      suggestions: [
        FigSuggestion(name: 'dev'),
        FigSuggestion(name: 'optional'),
        FigSuggestion(name: 'peer'),
      ],
    )
  ],
  isRepeatable: 3,
);

final Option parseableOption = Option(
  name: ['-p', '--parseable'],
  description:
      'Output parseable results from commands that write to standard output',
);

final Option longOption = Option(
  name: ['-l', '--long'],
  description: 'Show extended information',
);

final List<Option> workSpaceOptions = [
  Option(
    name: ['-w', '--workspace'],
    description:
        'Enable running a command in the context of the configured workspaces of the current project',
    args: [
      Arg(name: 'workspace', generators: workspaceGenerator, isVariadic: true)
    ],
  ),
  Option(
    name: ['-ws', '--workspaces'],
    description:
        'Enable running a command in the context of all the configured workspaces',
  ),
];

final List<Option> npmUninstallOptions = [
  Option(
    name: ['-S', '--save'],
    description: 'Package will be removed from your dependencies',
  ),
  Option(
    name: ['-D', '--save-dev'],
    description: 'Package will appear in your `devDependencies`',
  ),
  Option(
    name: ['-O', '--save-optional'],
    description: 'Package will appear in your `optionalDependencies`',
  ),
  Option(name: '--no-save', description: 'Prevents saving to `dependencies`'),
  Option(name: '-g', description: 'Uninstall global package'),
  ...workSpaceOptions,
];

final List<Option> npmListOptions = [
  Option(
    name: ['-a', '-all'],
    description: 'Show all outdated or installed packages',
  ),
  jsonOption,
  longOption,
  parseableOption,
  Option(
    name: '--depth',
    description: 'The depth to go when recursing packages',
    args: [Arg(name: 'depth')],
  ),
  Option(
    name: '--link',
    description: 'Limits output to only those packages that are linked',
  ),
  Option(
    name: '--package-lock-only',
    description:
        'Current operation will only use the package-lock.json, ignoring node_modules',
  ),
  Option(
    name: '--no-unicode',
    description: 'Uses unicode characters in the tree output',
  ),
  globalOption,
  omitOption,
  ...workSpaceOptions,
];

final Option registryOption = Option(
  name: '--registry',
  description: 'The base URL of the npm registry',
  args: [Arg(name: 'registry')],
);

final Option verboseOption = Option(
  name: '--verbose',
  description: 'Show extra information',
  args: [Arg(name: 'verbose')],
);

final Option otpOption = Option(
  name: '--otp',
  description: 'One-time password from a two-factor authenticator',
  args: [Arg(name: 'otp')],
);

final Option ignoreScriptsOption = Option(
  name: '--ignore-scripts',
  description:
      'If true, npm does not run scripts specified in package.json files',
);

final Option scriptShellOption = Option(
  name: '--script-shell',
  description:
      'The shell to use for scripts run with the npm exec, npm run and npm init <pkg> commands',
  args: [Arg(name: 'script-shell')],
);

final Option dryRunOption = Option(
  name: '--dry-run',
  description:
      "Indicates that you don't want npm to make any changes and that it should only report what it would have done",
);

final List<FigSuggestion> suggestions = [];

/// Completion spec for `npm` CLI
final FigSpec npmSpec = FigSpec(
    name: 'npm',
    parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
    description: 'Node package manager',
    subcommands: [
      Subcommand(
          name: ['install', 'i', 'add'],
          description: 'Install a package and its dependencies',
          args: [
            Arg(
                name: 'package',
                isOptional: true,
                generators: npmSearchGenerator,
                isVariadic: true)
          ],
          options: [
            Option(
                name: ['-P', '--save-prod'],
                description:
                    'Package will appear in your `dependencies`. This is the default unless `-D` or `-O` are present'),
            Option(
                name: ['-D', '--save-dev'],
                description: 'Package will appear in your `devDependencies`'),
            Option(
                name: ['-O', '--save-optional'],
                description:
                    'Package will appear in your `optionalDependencies`'),
            Option(
                name: '--no-save',
                description: 'Prevents saving to `dependencies`'),
            Option(
                name: ['-E', '--save-exact'],
                description:
                    'Saved dependencies will be configured with an exact version rather than using npm\'s default semver range operator'),
            Option(
                name: ['-B', '--save-bundle'],
                description:
                    'Saved dependencies will also be added to your bundleDependencies list'),
            globalOption,
            Option(
                name: '--global-style',
                description:
                    'Causes npm to install the package into your local node_modules folder with the same layout it uses with the global node_modules folder'),
            Option(
                name: '--legacy-bundling',
                description:
                    'Causes npm to install the package such that versions of npm prior to 1.4, such as the one included with node 0.8, can install the package'),
            Option(
                name: '--legacy-peer-deps',
                description:
                    'Bypass peerDependency auto-installation. Emulate install behavior of NPM v4 through v6'),
            Option(
                name: '--strict-peer-deps',
                description:
                    'If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install failure'),
            Option(
                name: '--no-package-lock',
                description: 'Ignores package-lock.json files when installing'),
            registryOption,
            verboseOption,
            omitOption,
            ignoreScriptsOption,
            Option(
                name: '--no-audit',
                description:
                    'Submit audit reports alongside the current npm command to the default registry and all registries configured for scopes'),
            Option(
                name: '--no-bin-links',
                description:
                    'Tells npm to not create symlinks (or .cmd shims on Windows) for package executables'),
            Option(
                name: '--no-fund',
                description:
                    'Hides the message at the end of each npm install acknowledging the number of dependencies looking for funding'),
            dryRunOption,
            ...workSpaceOptions
          ]),
      Subcommand(
          name: ['run', 'run-script'],
          description: 'Run arbitrary package scripts',
          options: [
            ...workSpaceOptions,
            Option(
                name: '--if-present',
                description:
                    'Npm will not exit with an error code when run-script is invoked for a script that isn\'t defined in the scripts section of package.json'),
            Option(name: '--silent', description: ''),
            ignoreScriptsOption,
            scriptShellOption,
            Option(name: '--', args: [Arg(name: 'args', isVariadic: true)])
          ],
          args: [
            Arg(
                name: 'script',
                description: 'Script to run from your package.json',
                filterStrategy: 'fuzzy',
                generators: npmScriptsGenerator)
          ]),
      Subcommand(
          name: 'init',
          description: 'Trigger the initialization',
          options: [
            Option(
                name: ['-y', '--yes'],
                description:
                    'Automatically answer \'yes\' to any prompts that npm might print on the command line'),
            Option(
                name: '-w',
                description:
                    'Create the folders and boilerplate expected while also adding a reference to your project workspaces property',
                args: [Arg(name: 'di')])
          ]),
      Subcommand(
          name: 'access',
          description: 'Set access controls on private packages'),
      Subcommand(
          name: ['adduser', 'login'],
          description: 'Add a registry user account',
          options: [
            registryOption,
            Option(
                name: '--scope',
                description:
                    'Associate an operation with a scope for a scoped registry',
                args: [Arg(name: 'scope', description: 'Scope name')])
          ]),
      Subcommand(
          name: 'audit',
          description: 'Run a security audit',
          subcommands: [
            Subcommand(
                name: 'fix',
                description:
                    'If the fix argument is provided, then remediations will be applied to the package tree',
                options: [
                  dryRunOption,
                  Option(
                      name: ['-f', '--force'],
                      description:
                          'Removes various protections against unfortunate side effects, common mistakes, unnecessary performance degradation, and malicious input',
                      isDangerous: true),
                  ...workSpaceOptions
                ])
          ],
          options: [
            ...workSpaceOptions,
            Option(
                name: '--audit-level',
                description:
                    'The minimum level of vulnerability for npm audit to exit with a non-zero exit code',
                args: [
                  Arg(name: 'audit', suggestions: [
                    FigSuggestion(name: 'info'),
                    FigSuggestion(name: 'low'),
                    FigSuggestion(name: 'moderate'),
                    FigSuggestion(name: 'high'),
                    FigSuggestion(name: 'critical'),
                    FigSuggestion(name: 'none')
                  ])
                ]),
            Option(
                name: '--package-lock-only',
                description:
                    'Current operation will only use the package-lock.json, ignoring node_modules'),
            jsonOption,
            omitOption
          ]),
      Subcommand(
          name: 'bin',
          description: 'Print the folder where npm will install executables',
          options: [globalOption]),
      Subcommand(
          name: ['bugs', 'issues'],
          description: 'Report bugs for a package in a web browser',
          args: [
            Arg(
                name: 'package',
                isOptional: true,
                generators: npmSearchGenerator,
                isVariadic: true)
          ],
          options: [
            Option(
                name: '--no-browser',
                description: 'Display in command line instead of browser',
                exclusiveOn: ['--browser']),
            Option(
                name: '--browser',
                description:
                    'The browser that is called by the npm bugs command to open websites',
                args: [Arg(name: 'browse')],
                exclusiveOn: ['--no-browser']),
            registryOption
          ]),
      Subcommand(
          name: 'cache',
          description: 'Manipulates packages cache',
          subcommands: [
            Subcommand(
                name: 'add',
                description: 'Add the specified packages to the local cache'),
            Subcommand(
                name: 'clean',
                description: 'Delete all data out of the cache folder'),
            Subcommand(
                name: 'verify',
                description:
                    'Verify the contents of the cache folder, garbage collecting any unneeded data, and verifying the integrity of the cache index and all cached data')
          ],
          options: [
            Option(
                name: '--cache',
                args: [Arg(name: 'cach')],
                description: 'The location of npm\'s cache directory')
          ]),
      Subcommand(
          name: ['ci', 'clean-install', 'install-clean'],
          description: 'Install a project with a clean slate',
          options: [
            Option(
                name: '--audit',
                description:
                    'When "true" submit audit reports alongside the current npm command to the default registry and all registries configured for scopes',
                args: [
                  Arg(name: 'audit', suggestions: [
                    FigSuggestion(name: 'true'),
                    FigSuggestion(name: 'false')
                  ])
                ],
                exclusiveOn: [
                  '--no-audit'
                ]),
            Option(
                name: '--no-audit',
                description:
                    'Do not submit audit reports alongside the current npm command',
                exclusiveOn: ['--audit']),
            ignoreScriptsOption,
            scriptShellOption,
            verboseOption,
            registryOption
          ]),
      Subcommand(
          name: 'cit',
          description: 'Install a project with a clean slate and run tests'),
      Subcommand(
          name: 'clean-install-test',
          description: 'Install a project with a clean slate and run tests'),
      Subcommand(name: 'completion', description: 'Tab completion for npm'),
      Subcommand(
          name: ['config', 'c'],
          description: 'Manage the npm configuration files',
          subcommands: [
            Subcommand(
                name: 'set',
                description: 'Sets the config key to the value',
                args: [
                  Arg(name: 'key'),
                  Arg(name: 'value')
                ],
                options: [
                  Option(
                      name: ['-g', '--global'], description: 'Sets it globally')
                ]),
            Subcommand(
                name: 'get',
                description: 'Echo the config value to stdout',
                args: [Arg(name: 'ke')]),
            Subcommand(
                name: 'list',
                description: 'Show all the config settings',
                options: [
                  Option(
                      name: '-g',
                      description: 'Lists globally installed packages'),
                  Option(name: '-l', description: 'Also shows defaults'),
                  jsonOption
                ]),
            Subcommand(
                name: 'delete',
                description: 'Deletes the key from all configuration files',
                args: [Arg(name: 'ke')]),
            Subcommand(
                name: 'edit',
                description: 'Opens the config file in an editor',
                options: [
                  Option(
                      name: '--global', description: 'Edits the global config')
                ])
          ]),
      Subcommand(name: 'create', description: 'Create a package.json file'),
      Subcommand(
          name: ['dedupe', 'ddp'],
          description: 'Reduce duplication in the package tree'),
      Subcommand(
          name: 'deprecate',
          description: 'Deprecate a version of a package',
          options: [registryOption]),
      Subcommand(
          name: 'dist-tag', description: 'Modify package distribution tags'),
      Subcommand(
          name: ['docs', 'home'],
          description: 'Open documentation for a package in a web browser',
          args: [
            Arg(
                name: 'package',
                isOptional: true,
                generators: npmSearchGenerator,
                isVariadic: true)
          ],
          options: [
            ...workSpaceOptions,
            registryOption,
            Option(
                name: '--no-browser',
                description: 'Display in command line instead of browser',
                exclusiveOn: ['--browser']),
            Option(
                name: '--browser',
                description:
                    'The browser that is called by the npm docs command to open websites',
                args: [Arg(name: 'browse')],
                exclusiveOn: ['--no-browser'])
          ]),
      Subcommand(
          name: 'doctor',
          description: 'Check your npm environment',
          options: [registryOption]),
      Subcommand(
          name: 'edit',
          description: 'Edit an installed package',
          options: [
            Option(
                name: '--editor',
                description:
                    'The command to run for npm edit or npm config edit')
          ]),
      Subcommand(
          name: 'explore',
          description: 'Browse an installed package',
          args: [
            Arg(
                name: 'package',
                filterStrategy: 'fuzzy',
                generators: dependenciesGenerator)
          ]),
      Subcommand(name: 'fund', description: 'Retrieve funding information'),
      Subcommand(name: 'get', description: 'Echo the config value to stdout'),
      Subcommand(name: 'help', description: 'Get help on npm', args: [
        Arg(name: 'term', isVariadic: true, description: 'Terms to search for')
      ], options: [
        Option(
            name: '--viewer',
            description: 'The program to use to view help content',
            args: [Arg(name: 'viewer')])
      ]),
      Subcommand(
          name: 'help-search',
          description: 'Search npm help documentation',
          args: [Arg(name: 'text', description: 'Text to search for')],
          options: [longOption]),
      Subcommand(name: 'hook', description: 'Manage registry hooks'),
      Subcommand(
          name: 'install-ci-test',
          description: 'Install a project with a clean slate and run tests'),
      Subcommand(
          name: 'install-test',
          description: 'Install package(s) and run tests'),
      Subcommand(name: 'it', description: 'Install package(s) and run tests'),
      Subcommand(
          name: 'link',
          description: 'Symlink a package folder',
          args: [Arg(name: 'path', template: 'filepath')]),
      Subcommand(name: 'ln', description: 'Symlink a package folder'),
      Subcommand(
          name: 'logout',
          description: 'Log out of the registry',
          options: [
            registryOption,
            Option(
                name: '--scope',
                description:
                    'Associate an operation with a scope for a scoped registry',
                args: [Arg(name: 'scope', description: 'Scope name')])
          ]),
      Subcommand(
          name: ['ls', 'list'],
          description: 'List installed packages',
          options: npmListOptions,
          args: [Arg(name: '[@scope]/pkg', isVariadic: true)]),
      Subcommand(name: 'org', description: 'Manage orgs', subcommands: [
        Subcommand(
            name: 'set',
            description: 'Add a user to an org or manage roles',
            args: [
              Arg(name: 'orgname', description: 'Organization name'),
              Arg(name: 'username', description: 'User name'),
              Arg(name: 'role', isOptional: true, suggestions: [
                FigSuggestion(name: 'developer'),
                FigSuggestion(name: 'admin'),
                FigSuggestion(name: 'owner')
              ])
            ],
            options: [
              registryOption,
              otpOption
            ]),
        Subcommand(name: 'rm', description: 'Remove a user from an org', args: [
          Arg(name: 'orgname', description: 'Organization name'),
          Arg(name: 'username', description: 'User name')
        ], options: [
          registryOption,
          otpOption
        ]),
        Subcommand(
            name: 'ls',
            description:
                'List users in an org or see what roles a particular user has in an org',
            args: [
              Arg(name: 'orgname', description: 'Organization name'),
              Arg(name: 'username', description: 'User name', isOptional: true)
            ],
            options: [
              registryOption,
              otpOption,
              jsonOption,
              parseableOption
            ])
      ]),
      Subcommand(
          name: 'outdated',
          description: 'Check for outdated packages',
          args: [
            Arg(name: '[<@scope>/]<pkg>', isVariadic: true, isOptional: true)
          ],
          options: [
            Option(
                name: ['-a', '-all'],
                description: 'Show all outdated or installed packages'),
            jsonOption,
            longOption,
            parseableOption,
            Option(name: '-g', description: 'Checks globally'),
            ...workSpaceOptions
          ]),
      Subcommand(
          name: ['owner', 'author'],
          description: 'Manage package owners',
          subcommands: [
            Subcommand(
                name: 'ls',
                description:
                    'List all the users who have access to modify a package and push new versions. Handy when you need to know who to bug for help',
                args: [Arg(name: '[@scope/]pk')],
                options: [registryOption]),
            Subcommand(
                name: 'add',
                description:
                    'Add a new user as a maintainer of a package. This user is enabled to modify metadata, publish new versions, and add other owners',
                args: [Arg(name: 'user'), Arg(name: '[@scope/]pkg')],
                options: [registryOption, otpOption]),
            Subcommand(
                name: 'rm',
                description:
                    'Remove a user from the package owner list. This immediately revokes their privileges',
                args: [Arg(name: 'user'), Arg(name: '[@scope/]pkg')],
                options: [registryOption, otpOption])
          ]),
      Subcommand(
          name: 'pack',
          description: 'Create a tarball from a package',
          args: [
            Arg(name: '[<@scope>/]<pkg>')
          ],
          options: [
            jsonOption,
            dryRunOption,
            ...workSpaceOptions,
            Option(
                name: '--pack-destination',
                description: 'Directory in which npm pack will save tarballs',
                args: [
                  Arg(name: 'pack-destination', template: ['folders'])
                ])
          ]),
      Subcommand(
          name: 'ping',
          description: 'Ping npm registry',
          options: [registryOption]),
      Subcommand(
          name: 'pkg',
          description: 'Manages your package.json',
          subcommands: [
            Subcommand(
                name: 'get',
                description:
                    'Retrieves a value key, defined in your package.json file. It is possible to get multiple values and values for child fields',
                args: [
                  Arg(
                      name: 'field',
                      description:
                          'Name of the field to get. You can view child fields by separating them with a period',
                      isVariadic: true)
                ],
                options: [
                  jsonOption,
                  ...workSpaceOptions
                ]),
            Subcommand(
                name: 'set',
                description:
                    'Sets a value in your package.json based on the field value. It is possible to set multiple values and values for child fields',
                args: [
                  Arg(
                      name: 'field',
                      description:
                          'Name of the field to set. You can set child fields by separating them with a period',
                      isVariadic: true)
                ],
                options: [
                  jsonOption,
                  ...workSpaceOptions,
                  Option(
                      name: ['-f', '--force'],
                      description:
                          'Removes various protections against unfortunate side effects, common mistakes, unnecessary performance degradation, and malicious input. Allow clobbering existing values in npm pkg',
                      isDangerous: true)
                ]),
            Subcommand(
                name: 'delete',
                description: 'Deletes a key from your package.json',
                args: [
                  Arg(
                      name: 'key',
                      description:
                          'Name of the key to delete. You can delete child fields by separating them with a period',
                      isVariadic: true)
                ],
                options: [
                  ...workSpaceOptions,
                  Option(
                      name: ['-f', '--force'],
                      description:
                          'Removes various protections against unfortunate side effects, common mistakes, unnecessary performance degradation, and malicious input. Allow clobbering existing values in npm pkg',
                      isDangerous: true)
                ])
          ]),
      Subcommand(name: 'prefix', description: 'Display prefix', options: [
        Option(
            name: ['-g', '--global'],
            description: 'Print the global prefix to standard out')
      ]),
      Subcommand(
          name: 'profile',
          description: 'Change settings on your registry profile',
          subcommands: [
            Subcommand(
                name: 'get',
                description:
                    'Display all of the properties of your profile, or one or more specific properties',
                args: [
                  Arg(
                      name: 'property',
                      isOptional: true,
                      description: 'Property name')
                ],
                options: [
                  registryOption,
                  jsonOption,
                  parseableOption,
                  otpOption
                ]),
            Subcommand(
                name: 'set',
                description: 'Set the value of a profile property',
                args: [
                  Arg(
                      name: 'property',
                      description: 'Property name',
                      suggestions: [
                        FigSuggestion(name: 'email'),
                        FigSuggestion(name: 'fullname'),
                        FigSuggestion(name: 'homepage'),
                        FigSuggestion(name: 'freenode'),
                        FigSuggestion(name: 'twitter'),
                        FigSuggestion(name: 'github')
                      ]),
                  Arg(name: 'value', description: 'Property value')
                ],
                options: [
                  registryOption,
                  jsonOption,
                  parseableOption,
                  otpOption
                ],
                subcommands: [
                  Subcommand(
                      name: 'password',
                      description:
                          'Change your password. This is interactive, you\'ll be prompted for your current password and a new password')
                ]),
            Subcommand(
                name: 'enable-2fa',
                description: 'Enables two-factor authentication',
                args: [
                  Arg(
                      name: 'mode',
                      description:
                          'Mode for two-factor authentication. Defaults to auth-and-writes mode',
                      isOptional: true,
                      suggestions: [
                        FigSuggestion(
                            name: 'auth-only',
                            description:
                                'Require an OTP when logging in or making changes to your account\'s authentication'),
                        FigSuggestion(
                            name: 'auth-and-writes',
                            description:
                                'Requires an OTP at all the times auth-only does, and also requires one when publishing a module, setting the latest dist-tag, or changing access via npm access and npm owner')
                      ])
                ],
                options: [
                  registryOption,
                  otpOption
                ]),
            Subcommand(
                name: 'disable-2fa',
                description: 'Disables two-factor authentication',
                options: [registryOption, otpOption])
          ]),
      Subcommand(
          name: 'prune',
          description: 'Remove extraneous packages',
          args: [
            Arg(name: '[<@scope>/]<pkg>', isOptional: true)
          ],
          options: [
            omitOption,
            dryRunOption,
            jsonOption,
            Option(
                name: '--production',
                description:
                    'Remove the packages specified in your devDependencies'),
            ...workSpaceOptions
          ]),
      Subcommand(name: 'publish', description: 'Publish a package', args: [
        Arg(
            name: 'tarball|folder',
            isOptional: true,
            description:
                'A url or file path to a gzipped tar archive containing a single folder with a package.json file inside | A folder containing a package.json file',
            template: ['folders'])
      ], options: [
        Option(
            name: '--tag',
            description: 'Registers the published package with the given tag',
            args: [Arg(name: 'ta')]),
        ...workSpaceOptions,
        Option(
            name: '--access',
            description:
                'Sets scoped package to be publicly viewable if set to \'public\'',
            args: [
              Arg(defaultValue: 'restricted', suggestions: [
                FigSuggestion(name: 'restricted'),
                FigSuggestion(name: 'public')
              ])
            ]),
        dryRunOption,
        otpOption
      ]),
      Subcommand(
          name: ['rebuild', 'rb'],
          description: 'Rebuild a package',
          args: [Arg(name: '[<@scope>/]<pkg>[@<version>]')],
          options: [
            globalOption,
            ...workSpaceOptions,
            ignoreScriptsOption,
            Option(
                name: '--no-bin-links',
                description:
                    'Tells npm to not create symlinks (or .cmd shims on Windows) for package executables')
          ]),
      Subcommand(
          name: 'repo',
          description: 'Open package repository page in the browser',
          args: [
            Arg(
                name: 'package',
                isOptional: true,
                generators: npmSearchGenerator,
                isVariadic: true)
          ],
          options: [
            ...workSpaceOptions,
            Option(
                name: '--no-browser',
                description: 'Display in command line instead of browser',
                exclusiveOn: ['--browser']),
            Option(
                name: '--browser',
                description:
                    'The browser that is called by the npm repo command to open websites',
                args: [Arg(name: 'browse')],
                exclusiveOn: ['--no-browser'])
          ]),
      Subcommand(name: 'restart', description: 'Restart a package', options: [
        ignoreScriptsOption,
        scriptShellOption,
        Option(name: '--', args: [
          Arg(
              name: 'arg',
              description: 'Arguments to be passed to the restart script')
        ])
      ]),
      Subcommand(name: 'root', description: 'Display npm root', options: [
        Option(
            name: ['-g', '--global'],
            description:
                'Print the effective global node_modules folder to standard out')
      ]),
      Subcommand(
          name: ['search', 's', 'se', 'find'],
          description: 'Search for packages',
          args: [Arg(name: 'search terms', isVariadic: true)],
          options: [
            longOption,
            jsonOption,
            Option(name: '--color', description: 'Show colors', args: [
              Arg(
                  name: 'always',
                  suggestions: [FigSuggestion(name: 'always')],
                  description: 'Always show colors')
            ], exclusiveOn: [
              '--no-color'
            ]),
            Option(
                name: '--no-color',
                description: 'Do not show colors',
                exclusiveOn: ['--color']),
            parseableOption,
            Option(
                name: '--no-description',
                description: 'Do not show descriptions'),
            Option(
                name: '--searchopts',
                description:
                    'Space-separated options that are always passed to search',
                args: [Arg(name: 'searchopts')]),
            Option(
                name: '--searchexclude',
                description:
                    'Space-separated options that limit the results from search',
                args: [Arg(name: 'searchexclude')]),
            registryOption,
            Option(
                name: '--prefer-online',
                description:
                    'If true, staleness checks for cached data will be forced, making the CLI look for updates immediately even for fresh package data',
                exclusiveOn: ['--prefer-offline', '--offline']),
            Option(
                name: '--prefer-offline',
                description:
                    'If true, staleness checks for cached data will be bypassed, but missing data will be requested from the server',
                exclusiveOn: ['--prefer-online', '--offline']),
            Option(
                name: '--offline',
                description:
                    'Force offline mode: no network requests will be done during install',
                exclusiveOn: ['--prefer-online', '--prefer-offline'])
          ]),
      Subcommand(name: 'set', description: 'Sets the config key to the value'),
      Subcommand(
          name: 'set-script',
          description: 'Set tasks in the scripts section of package.json',
          args: [
            Arg(
                name: 'script',
                description:
                    'Name of the task to be added to the scripts section of package.json'),
            Arg(
                name: 'command',
                description: 'Command to run when script is called')
          ],
          options: workSpaceOptions),
      Subcommand(
          name: 'shrinkwrap',
          description: 'Lock down dependency versions for publication'),
      Subcommand(
          name: 'star',
          description: 'Mark your favorite packages',
          args: [
            Arg(name: 'pkg', description: 'Package to mark as favorite')
          ],
          options: [
            registryOption,
            Option(
                name: '--no-unicode',
                description: 'Do not use unicode characters in the tree output')
          ]),
      Subcommand(
          name: 'stars',
          description: 'View packages marked as favorites',
          args: [
            Arg(
                name: 'user',
                isOptional: true,
                description: 'View packages marked as favorites by <user>')
          ],
          options: [
            registryOption
          ]),
      Subcommand(name: 'start', description: 'Start a package', options: [
        ignoreScriptsOption,
        scriptShellOption,
        Option(name: '--', args: [
          Arg(
              name: 'arg',
              description: 'Arguments to be passed to the start script')
        ])
      ]),
      Subcommand(name: 'stop', description: 'Stop a package', options: [
        ignoreScriptsOption,
        scriptShellOption,
        Option(name: '--', args: [
          Arg(
              name: 'arg',
              description: 'Arguments to be passed to the stop script')
        ])
      ]),
      Subcommand(
          name: 'team',
          description: 'Manage organization teams and team memberships',
          subcommands: [
            Subcommand(
                name: 'create',
                args: [Arg(name: 'scope:tea')],
                options: [registryOption, otpOption]),
            Subcommand(
                name: 'destroy',
                args: [Arg(name: 'scope:tea')],
                options: [registryOption, otpOption]),
            Subcommand(
                name: 'add',
                args: [Arg(name: 'scope:team'), Arg(name: 'user')],
                options: [registryOption, otpOption]),
            Subcommand(
                name: 'rm',
                args: [Arg(name: 'scope:team'), Arg(name: 'user')],
                options: [registryOption, otpOption]),
            Subcommand(
                name: 'ls',
                args: [Arg(name: 'scope|scope:tea')],
                options: [registryOption, jsonOption, parseableOption])
          ]),
      Subcommand(
          name: ['test', 'tst', 't'],
          description: 'Test a package',
          options: [ignoreScriptsOption, scriptShellOption]),
      Subcommand(
          name: 'token',
          description: 'Manage your authentication tokens',
          subcommands: [
            Subcommand(
                name: 'list',
                description:
                    'Shows a table of all active authentication tokens',
                options: [jsonOption, parseableOption]),
            Subcommand(
                name: 'create',
                description: 'Create a new authentication token',
                options: [
                  Option(
                      name: '--read-only',
                      description:
                          'This is used to mark a token as unable to publish when configuring limited access tokens with the npm token create command'),
                  Option(
                      name: '--cidr',
                      description:
                          'This is a list of CIDR address to be used when configuring limited access tokens with the npm token create command',
                      isRepeatable: true,
                      args: [Arg(name: 'cidr')])
                ]),
            Subcommand(
                name: 'revoke',
                description:
                    'Immediately removes an authentication token from the registry. You will no longer be able to use it',
                args: [Arg(name: 'idtoke')])
          ],
          options: [
            registryOption,
            otpOption
          ]),
      uninstallSubcommand("uninstall"),
      uninstallSubcommand(["r", "rm"]),
      uninstallSubcommand("un"),
      uninstallSubcommand("remove"),
      uninstallSubcommand("unlink"),
      Subcommand(
          name: 'unpublish',
          description: 'Remove a package from the registry',
          args: [
            Arg(name: '[<@scope>/]<pkg>[@<version>]')
          ],
          options: [
            dryRunOption,
            Option(
                name: ['-f', '--force'],
                description:
                    'Allow unpublishing all versions of a published package. Removes various protections against unfortunate side effects, common mistakes, unnecessary performance degradation, and malicious input',
                isDangerous: true),
            ...workSpaceOptions
          ]),
      Subcommand(
          name: 'unstar',
          description: 'Remove an item from your favorite packages',
          args: [
            Arg(name: 'pkg', description: 'Package to unmark as favorite')
          ],
          options: [
            registryOption,
            otpOption,
            Option(
                name: '--no-unicode',
                description: 'Do not use unicode characters in the tree output')
          ]),
      Subcommand(
          name: ['update', 'upgrade', 'up'],
          description: 'Update a package',
          options: [
            Option(name: '-g', description: 'Update global package'),
            Option(
                name: '--global-style',
                description:
                    'Causes npm to install the package into your local node_modules folder with the same layout it uses with the global node_modules folder'),
            Option(
                name: '--legacy-bundling',
                description:
                    'Causes npm to install the package such that versions of npm prior to 1.4, such as the one included with node 0.8, can install the package'),
            Option(
                name: '--strict-peer-deps',
                description:
                    'If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install failure'),
            Option(
                name: '--no-package-lock',
                description: 'Ignores package-lock.json files when installing'),
            omitOption,
            ignoreScriptsOption,
            Option(
                name: '--no-audit',
                description:
                    'Submit audit reports alongside the current npm command to the default registry and all registries configured for scopes'),
            Option(
                name: '--no-bin-links',
                description:
                    'Tells npm to not create symlinks (or .cmd shims on Windows) for package executables'),
            Option(
                name: '--no-fund',
                description:
                    'Hides the message at the end of each npm install acknowledging the number of dependencies looking for funding'),
            Option(
                name: '--save',
                description:
                    'Update the semver values of direct dependencies in your project package.json'),
            dryRunOption,
            ...workSpaceOptions
          ]),
      Subcommand(
          name: 'version',
          description: 'Bump a package version',
          options: [
            ...workSpaceOptions,
            jsonOption,
            Option(
                name: '--allow-same-version',
                description:
                    'Prevents throwing an error when npm version is used to set the new version to the same value as the current version'),
            Option(
                name: '--no-commit-hooks',
                description:
                    'Do not run git commit hooks when using the npm version command'),
            Option(
                name: '--no-git-tag-version',
                description:
                    'Do not tag the commit when using the npm version command'),
            Option(
                name: '--preid',
                description:
                    'The "prerelease identifier" to use as a prefix for the "prerelease" part of a semver. Like the rc in 1.2.0-rc.8',
                args: [Arg(name: 'prerelease-id')]),
            Option(
                name: '--sign-git-tag',
                description:
                    'If set to true, then the npm version command will tag the version using -s to add a signature')
          ]),
      Subcommand(
          name: ['view', 'v', 'info', 'show'],
          description: 'View registry info',
          options: [...workSpaceOptions, jsonOption]),
      Subcommand(
          name: 'whoami',
          description: 'Display npm username',
          options: [registryOption])
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (npmSearchGenerator)
// const npmSearchGenerator: Fig.Generator = {
//   trigger: (newToken, oldToken) => {
//     // If the package name starts with '@', we want to trigger when
//     // the 2nd '@' is typed because we'll need to generate version
//     // suggetsions
//     // e.g. @typescript-eslint/types
//     if (oldToken.startsWith("@")) {
//       return !(atsInStr(oldToken) > 1 && atsInStr(newToken) > 1);
//     }
//
//     // If the package name doesn't start with '@', then trigger when
//     // we see the first '@' so we can generate version suggestions
//     return !(oldToken.includes("@") && newToken.includes("@"));
//   },
//   getQueryTerm: "@",
//   cache: {
//     ttl: 1000 * 60 * 60 * 24 * 2, // 2 days
//   },
//   custom: createNpmSearchHandler(),
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (workspaceGenerator)
// const workspaceGenerator: Fig.Generator = {
//   // script: "cat $(npm prefix)/package.json",
//   custom: async (tokens, executeShellCommand) => {
//     const { stdout: npmPrefix } = await executeShellCommand({
//       command: "npm",
//       // eslint-disable-next-line @withfig/fig-linter/no-useless-arrays
//       args: ["prefix"],
//     });
//
//     const { stdout: out } = await executeShellCommand({
//       command: "cat",
//       // eslint-disable-next-line @withfig/fig-linter/no-useless-arrays
//       args: [`${npmPrefix}/package.json`],
//     });
//
//     const suggestions: Fig.Suggestion[] = [];
//     try {
//       if (out.trim() == "") {
//         return suggestions;
//       }
//
//       const packageContent = JSON.parse(out);
//       const workspaces = packageContent["workspaces"];
//
//       if (workspaces) {
//         for (const workspace of workspaces) {
//           suggestions.push({
//             name: workspace,
//             description: "Workspaces",
//           });
//         }
//       }
//     } catch (e) {
//       console.log(e);
//     }
//     return suggestions;
//   }
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (dependenciesGenerator)
// const dependenciesGenerator: Fig.Generator = {
//   trigger: (newToken) => newToken === "-g" || newToken === "--global",
//   custom: async function (tokens, executeShellCommand) {
//     if (!tokens.includes("-g") && !tokens.includes("--global")) {
//       const { stdout: npmPrefix } = await executeShellCommand({
//         command: "npm",
//         // eslint-disable-next-line @withfig/fig-linter/no-useless-arrays
//         args: ["prefix"],
//       });
//       const { stdout: out } = await executeShellCommand({
//         command: "cat",
//         // eslint-disable-next-line @withfig/fig-linter/no-useless-arrays
//         args: [`${npmPrefix}/package.json`],
//       });
//       const packageContent = JSON.parse(out);
//       const dependencies = packageContent["dependencies"] ?? {};
//       const devDependencies = packageContent["devDependencies"];
//       const optionalDependencies = packageContent["optionalDependencies"] ?? {};
//       Object.assign(dependencies, devDependencies, optionalDependencies);
//
//       return Object.keys(dependencies)
//         .filter((pkgName) => {
//           const isListed = tokens.some((current) => current === pkgName);
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
//     } else {
//       const { stdout } = await executeShellCommand({
//         command: "bash",
//         args: ["-c", "ls -1 `npm root -g`"],
//       });
//       return stdout.split("\n").map((name) => ({
//         name,
//         icon: "📦",
//         description: "Global dependency",
//       }));
//     }
//   }
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (npmScriptsGenerator)
// const npmScriptsGenerator: Fig.Generator = {
//   cache: {
//     strategy: "stale-while-revalidate",
//     cacheByDirectory: true,
//   },
//   script: [
//     "bash",
//     "-c",
//     "until [[ -f package.json ]] || [[ $PWD = '/' ]]; do cd ..; done; cat package.json",
//   ],
//   postProcess: function (out, [npmClient]) {
//     if (out.trim() == "") {
//       return [];
//     }
//
//     try {
//       const packageContent = JSON.parse(out);
//       const scripts = packageContent["scripts"];
//       const figCompletions = packageContent["fig"] || {};
//
//       if (scripts) {
//         return Object.entries(scripts).map(([scriptName, scriptContents]) => {
//           const icon =
//             npmClient === "yarn"
//               ? "fig://icon?type=yarn"
//               : "fig://icon?type=npm";
//           const customScripts: Fig.Suggestion = figCompletions[scriptName];
//           return {
//             name: scriptName,
//             icon,
//             description: scriptContents as string,
//             priority: 51,
//             /**
//              * If there are custom definitions for the scripts
//              * we want to override the default values
//              * * /
//             ...customScripts,
//           };
//         });
//       }
//     } catch (e) {
//       console.error(e);
//     }
//
//     return [];
//   },
// };
// TS_GENERATOR_BLOCK_END
