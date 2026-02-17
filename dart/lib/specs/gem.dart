// AI-generated from TypeScript source: gem.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// Gem 搜索生成器（与 gem.ts 一致：script + postProcess）
final FigGenerator gems = FigGenerator(
  trigger: true,
  script: (List<String> tokens) {
    final searchTerm = tokens.isNotEmpty ? tokens.last : '';
    return [
      'gem',
      'search',
      '--both',
      '--no-versions',
      '--no-details',
      '--quiet',
      '--norc',
      searchTerm,
    ];
  },
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .where((line) => line.isNotEmpty && !line.startsWith('*'))
        .map((name) => FigSuggestion(name: name.trim()))
        .toList();
  },
);

/// HTTP 代理选项
final List<FigOption> httpProxyOptions = [
  FigOption(
    name: ['-p', '--http-proxy'],
    description: 'Use HTTP proxy for remote operations',
    exclusiveOn: ['--no-http-proxy'],
    args: [
      FigArg(
        name: 'URL',
        description: 'The URL',
        isOptional: true,
      ),
    ],
  ),
  FigOption(
    name: '--no-http-proxy',
    description: 'Do not use HTTP proxy for remote operations',
    exclusiveOn: ['--http-proxy'],
  ),
];

/// 本地/远程操作选项
final List<FigOption> localRemoteOptions = [
  FigOption(
    name: ['-l', '--local'],
    description: 'Restrict operations to the LOCAL domain',
    exclusiveOn: ['--remote', '--both'],
  ),
  FigOption(
    name: ['-r', '--remote'],
    description: 'Restrict operations to the REMOTE domain',
    exclusiveOn: ['--local', '--both'],
  ),
  FigOption(
    name: ['-b', '--both'],
    description: 'Allow LOCAL and REMOTE operations',
    exclusiveOn: ['--remote', '--local'],
  ),
  FigOption(
    name: ['-B', '--bulk-threshold'],
    description:
        'Threshold for switching to bulk synchronization (default 1000)',
    args: [
      FigArg(
        name: 'COUNT',
        description: 'The threshold',
      ),
    ],
  ),
  FigOption(
    name: '--clear-sources',
    description: 'Clear the gem sources',
  ),
  FigOption(
    name: ['-s', '--source'],
    description: 'Append URL to list of remote gem sources',
    args: [
      FigArg(
        name: 'URL',
        description: 'The URL',
      ),
    ],
  ),
  ...httpProxyOptions,
];

/// 已安装选项
final List<FigOption> installedOptions = [
  FigOption(
    name: ['-i', '--installed'],
    description: 'Check for installed gem',
    exclusiveOn: ['--no-installed'],
  ),
  FigOption(
    name: ['-I', '--no-installed'],
    description: 'Check for not installed gem',
    exclusiveOn: ['--installed'],
  ),
  FigOption(
    name: ['-v', '--version'],
    description: 'Specify version of gem to list for use with --installed',
    args: [
      FigArg(
        name: 'VERSION',
        description: 'The version of gem',
      ),
    ],
  ),
];

/// 显示选项
final List<FigOption> displayOptions = [
  FigOption(
    name: ['-a', '--all'],
    description: 'Display all gem versions',
  ),
  FigOption(
    name: ['-e', '--exact'],
    description: 'Name of gem(s) to query on matches the provided STRING',
  ),
  FigOption(
    name: '--prerelease',
    description: 'Allow prerelease versions of a gem',
    exclusiveOn: ['--no-prerelease'],
  ),
  FigOption(
    name: '--no-prerelease',
    description: 'Do not allow prerelease versions of a gem',
    exclusiveOn: ['--prerelease'],
  ),
];

/// 版本选项
final List<FigOption> versionsOptions = [
  FigOption(
    name: '--versions',
    description: 'Display only gem names',
    exclusiveOn: ['--no-versions'],
  ),
  FigOption(
    name: '--no-versions',
    description: 'Display not only gem names',
    exclusiveOn: ['--versions'],
  ),
];

/// 认证选项
final List<FigOption> authenticationOptions = [
  FigOption(
    name: '--host',
    description:
        'Use another gemcutter-compatible host (e.g. https://rubygems.org)',
    args: [
      FigArg(
        name: 'HOST',
        description: 'The host',
      ),
    ],
  ),
  FigOption(
    name: ['-k', '--key'],
    description: 'Use the given API key',
    args: [
      FigArg(
        name: 'KEYNAME',
        description: 'The API key',
      ),
    ],
  ),
  FigOption(
    name: '--otp',
    description:
        'Digit code for multifactor authentication You can also use the environment variable GEM_HOST_OTP_CODE',
    args: [
      FigArg(
        name: 'CODE',
        description: 'The GEM host otp code',
      ),
    ],
  ),
];

/// Completion spec for `gem` CLI
final FigSpec gemSpec =
    FigSpec(name: 'gem', description: 'Ruby package manager', subcommands: [
  Subcommand(
      name: 'help',
      description: 'Help about any command',
      args: [Arg(name: 'command', isOptional: true, template: 'hel')]),
  Subcommand(
      name: ['install', 'i'],
      description: 'Install a gem into the local repository',
      args: [Arg(name: 'GEMNAME', generators: gems)],
      options: [
        Option(
            name: '--platform',
            description: 'Specify the platform of gem to install',
            args: [Arg(name: 'PLATFORM', description: 'The platform of gem')])
      ]),
  Subcommand(
      name: 'cert',
      description: 'Manage RubyGems certificates and signing settings',
      options: [
        Option(
            name: ['-a', '--add'],
            description: 'Add a trusted certificate',
            args: [
              Arg(
                  name: 'CERT',
                  description: 'The trusted certificate',
                  template: 'filepaths')
            ]),
        Option(
            name: ['-l', '--list'],
            description:
                'List trusted certificates where the subject contains FILTER',
            args: [
              Arg(name: 'FILTER', description: 'The filter', isOptional: true)
            ]),
        Option(
            name: ['-r', '--remove'],
            description:
                'Remove trusted certificates where the subject contains FILTER',
            args: [Arg(name: 'FILTER', description: 'The filter')]),
        Option(
            name: ['-b', '--build'],
            description:
                'Build private key and self-signed certificate for EMAIL_ADDR',
            args: [Arg(name: 'EMAIL_ADDR', description: 'The email address')]),
        Option(
            name: ['-C', '--certificate'],
            description: 'Signing certificate for --sign',
            args: [
              Arg(
                  name: 'CERT',
                  description: 'The certificate',
                  template: 'filepaths')
            ]),
        Option(
            name: ['-K', '--private-key'],
            description: 'Key for --sign or --build',
            args: [
              Arg(name: 'KEY', description: 'The key', template: 'filepaths')
            ]),
        Option(
            name: ['-A', '--key-algorithm'],
            description: 'Select which key algorithm to use for --build',
            args: [Arg(name: 'ALGORITHM', description: 'The algorithm')]),
        Option(
            name: ['-s', '--sign'],
            description:
                'Signs CERT with the key from -K and the certificate from -C',
            args: [
              Arg(
                  name: 'CERT',
                  description: 'The certificate',
                  template: 'filepaths')
            ]),
        Option(
            name: ['-d', '--days'],
            description: 'Days before the certificate expires',
            args: [
              Arg(name: 'NUMBER_OF_DAYS', description: 'The number of days')
            ]),
        Option(name: [
          '-R',
          '--re-sign'
        ], description: 'Re-signs the certificate from -C with the key from -K')
      ]),
  Subcommand(
      name: 'check',
      description: 'Check a gem repository for added or missing files',
      args: [
        Arg(name: 'GEMNAME', generators: gems, isOptional: true)
      ],
      options: [
        Option(
            name: ['-a', '--alien'],
            description:
                'Report \'unmanaged\' or rogue files in the gem repository',
            exclusiveOn: ['--no-alien']),
        Option(
            name: '--no-alien',
            description:
                'Report \'managed\' or rogue files in the gem repository',
            exclusiveOn: ['--alien']),
        Option(
            name: '--doctor',
            description: 'Clean up uninstalled gems and broken specifications',
            exclusiveOn: ['--no-doctor']),
        Option(
            name: '--no-doctor',
            description:
                'Do not clean up uninstalled gems and broken specifications',
            exclusiveOn: ['--doctor']),
        Option(
            name: '--dry-run',
            description:
                'Do not remove files, only report what would be removed',
            exclusiveOn: ['--no-dry-run']),
        Option(
            name: '--no-dry-run',
            description: 'Remove files',
            exclusiveOn: ['--dry-run']),
        Option(
            name: '--gems',
            description: 'Check installed gems for problems',
            exclusiveOn: ['--no-gems']),
        Option(
            name: '--no-gems',
            description: 'Check not installed gems for problems',
            exclusiveOn: ['--gems']),
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to check',
            args: [Arg(name: 'VERSION', description: 'The version of the gem')])
      ]),
  Subcommand(
      name: 'cleanup',
      description: 'Clean up old versions of installed gems',
      args: [
        Arg(
            name: 'GEMNAME',
            description: 'Name of gem to cleanup',
            generators: gems,
            isOptional: true)
      ],
      options: [
        Option(
            name: ['-n', '-d', '--dry-run'],
            description: 'Do not uninstall gems'),
        Option(
            name: ['-D', '--check-development'],
            description:
                'Check development dependencies while uninstalling (default: true)',
            exclusiveOn: ['--no-check-development']),
        Option(
            name: '--no-check-development',
            description:
                'Do not check development dependencies while uninstalling',
            exclusiveOn: ['--check-development']),
        Option(
            name: '--user-install',
            description: 'Cleanup in user’s home directory instead of GEM_HOME',
            exclusiveOn: ['--no-user-install']),
        Option(
            name: '--no-user-install',
            description: 'Cleanup in GEM_HOME instead of user’s home directory',
            exclusiveOn: ['--user-install'])
      ]),
  Subcommand(
      name: 'contents',
      description: 'Display the contents of the installed gems',
      args: [
        Arg(
            name: 'GEMNAME',
            description: 'Name of gem to list contents for',
            generators: gems)
      ],
      options: [
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to contents',
            args: [
              Arg(name: 'VERSION', description: 'The version of the gem')
            ]),
        Option(name: '--all', description: 'Contents for all gems'),
        Option(
            name: ['-s', '--spec-dir'],
            description: 'Search for gems under specific paths',
            args: [Arg(name: 'DIR', template: 'filepaths')]),
        Option(
            name: ['-l', '--lib-only'],
            description: 'Only return files in the Gem’s lib_dirs',
            exclusiveOn: ['--no-lib-only']),
        Option(
            name: '--no-lib-only',
            description: 'Not only return files in the Gem’s lib_dirs',
            exclusiveOn: ['--lib-only']),
        Option(
            name: '--prefix',
            description: 'Don’t include installed path prefix',
            exclusiveOn: ['--no-prefix']),
        Option(
            name: '--no-prefix',
            description: 'Include installed path prefix',
            exclusiveOn: ['--prefix']),
        Option(
            name: '--show-install-dir',
            description: 'Show only the gem install dir',
            exclusiveOn: ['--no-show-install-dir']),
        Option(
            name: '--no-show-install-dir',
            description: 'Do not show only the gem install dir',
            exclusiveOn: ['--show-install-dir'])
      ]),
  Subcommand(
      name: 'dependency',
      description: 'Show the dependencies of an installed gem',
      args: [
        Arg(
            name: 'REGEXP',
            description:
                'Show dependencies for gems whose names start with REGEXP')
      ],
      options: [
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to dependency',
            args: [Arg(name: 'VERSION', description: 'The version of gem')]),
        Option(
            name: '--platform',
            description: 'Specify the platform of gem to dependency',
            args: [Arg(name: 'PLATFORM', description: 'The platform of gem')]),
        Option(
            name: '--prerelease',
            description: 'Allow prerelease versions of a gem',
            exclusiveOn: ['--no-prerelease']),
        Option(
            name: '--no-prerelease',
            description: 'Do not allow prerelease versions of a gem',
            exclusiveOn: ['--prerelease']),
        Option(
            name: ['-R', '--reverse-dependencies'],
            description: 'Include reverse dependencies in the output',
            exclusiveOn: ['--no-reverse-dependencies']),
        Option(
            name: '--no-reverse-dependencies',
            description: 'Do not include reverse dependencies in the output',
            exclusiveOn: ['--reverse-dependencies']),
        Option(name: '--pipe', description: 'Pipe Format (name --version ver)'),
        ...localRemoteOptions
      ]),
  Subcommand(
      name: 'environment',
      description: 'Display information about the RubyGems environment',
      args: [
        Arg(suggestions: [
          FigSuggestion(
              name: 'home',
              description:
                  'Display the path where gems are installed. Aliases: gemhome, gemdir, GEM_HOME'),
          FigSuggestion(
              name: 'path',
              description:
                  'Display path used to search for gems. Aliases: gempath, GEM_PATH'),
          FigSuggestion(
              name: 'user_gemhome',
              description:
                  'Display the path where gems are installed when --user-install is given. Aliases: user_gemdir'),
          FigSuggestion(
              name: 'version', description: 'Display the gem format version'),
          FigSuggestion(
              name: 'remotesources',
              description: 'Display the remote gem servers'),
          FigSuggestion(
              name: 'platform',
              description: 'Display the supported gem platforms')
        ], isOptional: true)
      ]),
  Subcommand(
      name: 'fetch',
      description: 'Download a gem and place it in the current directory',
      args: [
        Arg(
            name: 'GEMNAME',
            description: 'Name of gem to download',
            generators: gems)
      ],
      options: [
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to fetch',
            args: [
              Arg(name: 'VERSION', description: 'The version of the gem')
            ]),
        Option(
            name: '--platform',
            description: 'Specify the platform of gem to fetch',
            args: [Arg(name: 'PLATFORM', description: 'The platform of gem')]),
        Option(
            name: '--prerelease',
            description: 'Allow prerelease versions of a gem',
            exclusiveOn: ['--no-prerelease']),
        Option(
            name: '--no-prerelease',
            description: 'Do not allow prerelease versions of a gem',
            exclusiveOn: ['--prerelease']),
        Option(
            name: '--suggestions',
            description: 'Suggest alternates when gems are not found',
            exclusiveOn: ['--no-suggestions']),
        Option(
            name: '--no-suggestions',
            description: 'Do not suggest alternates when gems are not found',
            exclusiveOn: ['--suggestions']),
        Option(
            name: ['-B', '--bulk-threshold'],
            description:
                'Threshold for switching to bulk synchronization (default 1000)',
            args: [Arg(name: 'COUNT', description: 'The threshold')]),
        Option(
            name: ['-s', '--source'],
            description: 'Append URL to list of remote gem sources',
            args: [Arg(name: 'URL', description: 'The URL')]),
        Option(name: '--clear-sources', description: 'Clear the gem sources'),
        ...httpProxyOptions
      ]),
  Subcommand(
      name: 'generate_index',
      description: 'Generates the index files for a gem server directory',
      options: [
        Option(
            name: ['-d', '--directory'],
            description: 'Repository base dir containing gems subdir',
            args: [
              Arg(name: 'DIRNAME', template: 'folders', filterStrategy: 'fuzzy')
            ]),
        Option(
            name: '--modern',
            description: 'Generate indexes for RubyGems (always true)',
            exclusiveOn: ['--no-modern']),
        Option(
            name: '--no-modern',
            description: 'Do not generate indexes for RubyGems',
            exclusiveOn: ['--modern']),
        Option(
            name: '--update',
            description:
                'Update modern indexes with gems added since the last update')
      ]),
  Subcommand(
      name: 'info',
      description: 'Show information for the given gem',
      args: [
        Arg(
            name: 'GEMNAME',
            description: 'Name of the gem to print information about',
            generators: gems)
      ],
      options: [
        Option(
            name: '-I',
            description: 'Equivalent to --no-installed',
            exclusiveOn: ['--installed']),
        ...displayOptions,
        ...installedOptions,
        ...versionsOptions
      ]),
  Subcommand(
      name: 'lock',
      description: 'Generate a lockdown list of gems',
      args: [
        Arg(
            name: 'GEMNAME-VERSION',
            description: 'Name and the version of gem to lock, ex: rails-1.0.0')
      ],
      options: [
        Option(
            name: ['-s', '--strict'],
            description: 'Fail if unable to satisfy a dependency',
            exclusiveOn: ['--no-strict']),
        Option(
            name: '--no-strict',
            description: 'Do not fail if unable to satisfy a dependency',
            exclusiveOn: ['--strict'])
      ]),
  Subcommand(
      name: 'mirror',
      description: 'Mirror all gem files (requires rubygems-mirror)'),
  Subcommand(name: 'open', description: 'Open gem sources in editor', args: [
    Arg(
        name: 'GEMNAME',
        description: 'Name of the gem to print information about',
        generators: gems)
  ], options: [
    Option(
        name: ['-e', '--editor'],
        description:
            'Prepends COMMAND to gem path. Could be used to specify editor',
        args: [
          Arg(name: 'COMMAND', description: 'The prepends command to gem path')
        ]),
    Option(
        name: ['-v', '--version'],
        description: 'Opens specific gem version',
        args: [Arg(name: 'VERSION', description: 'The specify version of gem')])
  ]),
  Subcommand(
      name: 'pristine',
      description:
          'Restores installed gems to pristine condition from files located in the gem cache',
      args: [
        Arg(
            name: 'GEMNAME',
            description: 'Name of the gem to print information about',
            generators: gems,
            isOptional: true)
      ],
      options: [
        Option(
            name: '--all',
            description: 'Restore all installed gems to pristine condition'),
        Option(
            name: '--skip',
            description: 'Restore all installed gems to pristine condition',
            args: [
              Arg(
                  name: 'GEMNAME',
                  description: 'Name of the gem to print information about',
                  generators: gems)
            ],
            dependsOn: [
              '--all'
            ]),
        Option(
            name: '--extensions',
            description:
                'Restore gems with extensions in addition to regular gems',
            exclusiveOn: ['--no-extensions']),
        Option(
            name: '--no-extensions',
            description:
                'Do not restore gems with extensions in addition to regular gems',
            exclusiveOn: ['--extensions']),
        Option(
            name: '--only-executables',
            description: 'Only restore executables'),
        Option(name: '--only-plugins', description: 'Only restore plugins'),
        Option(
            name: ['-E', '--env-shebang'],
            description: 'Rewrite executables with a shebang of /usr/bin/env',
            exclusiveOn: ['--no-env-shebang']),
        Option(
            name: '--no-env-shebang',
            description:
                'Do not rewrite executables with a shebang of /usr/bin/env',
            exclusiveOn: ['--env-shebang']),
        Option(
            name: ['-i', '--install-dir'],
            description: 'Gem repository to get binstubs and plugins installed',
            args: [
              Arg(name: 'DIR', template: 'folders', filterStrategy: 'fuzzy')
            ]),
        Option(
            name: ['-n', '--bindir'],
            description: 'Directory where executables are located',
            args: [
              Arg(name: 'DIR', template: 'folders', filterStrategy: 'fuzzy')
            ]),
        Option(
            name: ['-v', '--version'],
            description:
                'Specify version of gem to restore to pristine condition',
            args: [
              Arg(name: 'VERSION', description: 'The specify version of gem')
            ])
      ]),
  Subcommand(
      name: 'query',
      description: 'Query gem information in local or remote repositories',
      options: [
        Option(
            name: ['-n', '--name-matches'],
            description:
                'Name of gem(s) to query on matches the provided REGEXP',
            args: [Arg(name: 'REGEXP', description: 'The rule of the regexp')]),
        Option(
            name: '-I',
            description: 'Equivalent to --no-installed',
            exclusiveOn: ['--installed']),
        Option(
            name: ['-d', '--details'],
            description: 'Display detailed information of gem(s)',
            exclusiveOn: ['--no-details']),
        Option(
            name: '--no-details',
            description: 'Do not display detailed information of gem(s)',
            exclusiveOn: ['--details']),
        ...displayOptions,
        ...installedOptions,
        ...versionsOptions,
        ...localRemoteOptions
      ]),
  Subcommand(
      name: 'rdoc',
      description: 'Generates RDoc for pre-installed gems',
      args: [
        Arg(
            name: 'GEMNAME',
            description: 'Gem to generate documentation for (unless –all)',
            generators: gems,
            isOptional: true)
      ],
      options: [
        Option(
            name: '--all',
            description:
                'Generate RDoc/RI documentation for all installed gems'),
        Option(
            name: '--rdoc',
            description: 'Generate RDoc HTML',
            exclusiveOn: ['--no-rdoc']),
        Option(
            name: '--no-rdoc',
            description: 'Do not generate RDoc HTML',
            exclusiveOn: ['--rdoc']),
        Option(
            name: '--ri',
            description: 'Generate RI data',
            exclusiveOn: ['--no-ri']),
        Option(
            name: '--no-ri',
            description: 'Do not generate RI data',
            exclusiveOn: ['--ri']),
        Option(
            name: '--overwrite',
            description: 'Overwrite installed documents',
            exclusiveOn: ['--no-overwrite']),
        Option(
            name: '--no-overwrite',
            description: 'Do not overwrite installed documents',
            exclusiveOn: ['--overwrite']),
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to rdoc',
            args: [
              Arg(name: 'VERSION', description: 'The specify version of gem')
            ])
      ]),
  Subcommand(
      name: 'search',
      description: 'Display remote gems whose name matches REGEXP',
      args: [
        Arg(
            name: 'REGEXP',
            description: 'Regexp to look for in gem name',
            isOptional: true)
      ],
      options: [
        Option(
            name: '-I',
            description: 'Equivalent to --no-installed',
            exclusiveOn: ['--installed']),
        Option(
            name: ['-d', '--details'],
            description: 'Display detailed information of gem(s)',
            exclusiveOn: ['--no-details']),
        Option(
            name: '--no-details',
            description: 'Do not display detailed information of gem(s)',
            exclusiveOn: ['--details']),
        ...displayOptions,
        ...installedOptions,
        ...versionsOptions,
        ...localRemoteOptions
      ]),
  Subcommand(
      name: 'signin',
      description:
          'Sign in to any gemcutter-compatible host. It defaults to https://rubygems.org',
      options: [
        Option(
            name: '--host',
            description:
                'Use another gemcutter-compatible host (e.g. https://rubygems.org)',
            args: [Arg(name: 'HOST', description: 'The host')]),
        Option(
            name: '--otp',
            description:
                'Digit code for multifactor authentication You can also use the environment variable GEM_HOST_OTP_CODE',
            args: [Arg(name: 'CODE', description: 'The GEM host otp code')])
      ]),
  Subcommand(
      name: 'signout', description: 'Sign out from all the current sessions'),
  Subcommand(
      name: 'sources',
      description:
          'Manage the sources and cache file RubyGems uses to search for gems',
      options: [
        Option(
            name: ['-a', '--add'],
            description: 'Add source',
            args: [Arg(name: 'SOURCE_URI', description: 'The source URI')]),
        Option(name: ['-l', '--list'], description: 'List sources'),
        Option(
            name: ['-r', '--remove'],
            description: 'Remove source',
            args: [Arg(name: 'SOURCE_URI', description: 'The source URI')]),
        Option(
            name: ['-c', '--clear-all'],
            description: 'Remove all sources (clear the cache)'),
        Option(name: ['-u', '--update'], description: 'Update source cache'),
        Option(
            name: ['-f', '--force'],
            description:
                'Do not show any confirmation prompts and behave as if \'yes\' was always answered',
            exclusiveOn: ['--no-force']),
        Option(
            name: '--no-force',
            description:
                'Show any confirmation prompts and behave as if \'yes\' was always answered',
            exclusiveOn: ['--force']),
        ...httpProxyOptions
      ]),
  Subcommand(
      name: 'specification',
      description: 'Display gem specification (in yaml)',
      args: [
        Arg(
            name: 'GEMFILE',
            description: 'Name of gem to show the gemspec for',
            generators: gems),
        Arg(name: 'FIELD', description: 'Name of gemspec field to show')
      ],
      options: [
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to examine',
            args: [Arg(name: 'VERSION', description: 'The version of gem')]),
        Option(
            name: '--platform',
            description: 'Specify the platform of gem to specification',
            args: [Arg(name: 'PLATFORM', description: 'The platform of gem')]),
        Option(
            name: '--prerelease',
            description: 'Allow prerelease versions of a gem',
            exclusiveOn: ['--no-prerelease']),
        Option(
            name: '--no-prerelease',
            description: 'Do not allow prerelease versions of a gem',
            exclusiveOn: ['--prerelease']),
        Option(
            name: '--all',
            description: 'Output specifications for all versions of the gem'),
        Option(name: '--ruby', description: 'Output ruby format'),
        Option(name: '--yaml', description: 'Output YAML format'),
        Option(name: '--marshal', description: 'Output Marshal format')
      ]),
  Subcommand(name: 'stale', description: 'List gems along with access times'),
  Subcommand(
      name: 'unpack',
      description: 'Unpack an installed gem to the current directory',
      args: [
        Arg(
            name: 'GEMNAME',
            description: 'Name of gem to unpack',
            generators: gems)
      ],
      options: [
        Option(
            name: '--target',
            description: 'Target directory for unpacking',
            args: [
              Arg(name: 'DIR', template: 'folders', filterStrategy: 'fuzzy')
            ]),
        Option(name: '--spec', description: 'Unpack the gem specification'),
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to unpack',
            args: [
              Arg(name: 'VERSION', description: 'The specify version of gem')
            ])
      ]),
  Subcommand(
      name: 'yank',
      description: 'Remove a pushed gem from the index',
      args: [
        Arg(name: 'GEM', description: 'Name of gem', generators: gems)
      ],
      options: [
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to dependency',
            args: [Arg(name: 'VERSION', description: 'The version of gem')]),
        Option(
            name: '--platform',
            description: 'Specify the platform of gem to dependency',
            args: [Arg(name: 'PLATFORM', description: 'The platform of gem')]),
        ...authenticationOptions
      ]),
  Subcommand(
      name: 'uninstall',
      description: 'Uninstall gems from the local repository',
      args: [
        Arg(name: 'GEMNAME', generators: gems)
      ],
      options: [
        Option(
            name: ['-a', '--all'],
            description: 'Uninstall all matching versions'),
        Option(
            name: ['-I', '--ignore-dependencies'],
            description: 'Ignore dependency requirements while uninstalling'),
        Option(
            name: ['-D', '--check-development'],
            description:
                'Check development dependencies while uninstalling (default: false)'),
        Option(
            name: ['-x', '--executables'],
            description:
                'Uninstall applicable executables without confirmation'),
        Option(
            name: ['-i', '--install-dir'],
            description: 'Directory to uninstall gem from',
            args: [
              Arg(name: 'DIR', template: 'folders', filterStrategy: 'fuzzy')
            ]),
        Option(
            name: ['-n', '--bindir'],
            description: 'Directory to remove executables from',
            args: [
              Arg(name: 'DIR', template: 'folders', filterStrategy: 'fuzzy')
            ]),
        Option(
            name: '--user-install',
            description:
                'Uninstall from user’s home directory in addition to GEM_HOME'),
        Option(
            name: '--format-executable',
            description:
                'Assume executable names match Ruby’s prefix and suffix'),
        Option(
            name: '--force',
            description:
                'Uninstall all versions of the named gems ignoring dependencies'),
        Option(
            name: '--abort-on-dependent',
            description:
                'Prevent uninstalling gems that are depended on by other gems'),
        Option(
            name: ['-v', '--version'],
            description: 'Specify version of gem to uninstall',
            args: [
              Arg(name: 'VERSION', description: 'The specify version of gem')
            ]),
        Option(
            name: '--platform',
            description: 'Specify the platform of gem to uninstall',
            args: [Arg(name: 'PLATFORM', description: 'The platform of gem')]),
        Option(
            name: '--vendor',
            description:
                'Uninstall gem from the vendor directory. Only for use by gem repackagers')
      ]),
  Subcommand(
      name: 'list',
      description: 'Display local gems whose name matches REGEXP',
      args: [
        Arg(
            name: 'REGEXP',
            description: 'Regexp to look for in gem name',
            isOptional: true)
      ],
      options: [
        Option(
            name: ['-d', '--details'],
            description: 'Display detailed information of gem(s)',
            exclusiveOn: ['--no-details']),
        Option(
            name: '--no-details',
            description: 'Do not display detailed information of gem(s)',
            exclusiveOn: ['--details']),
        Option(
            name: ['-u', '--update-sources'],
            description: '[Deprecated] Update local source cache',
            exclusiveOn: ['--no-update-sources']),
        Option(
            name: '--no-update-sources',
            description: '[Deprecated] Do not update local source cache',
            exclusiveOn: ['--update-sources']),
        ...displayOptions,
        ...installedOptions,
        ...versionsOptions,
        ...localRemoteOptions
      ]),
  Subcommand(name: 'build', description: 'Build a gem from a gemspec', args: [
    Arg(
        name: 'GEMSPEC_FILE',
        description: 'Gemspec file name to build a gem for')
  ], options: [
    Option(
        name: '--platform',
        description: 'Specify the platform of gem to build',
        args: [Arg(name: 'PLATFORM', description: 'The platform of gem')]),
    Option(name: '--force', description: 'Skip validation of the spec'),
    Option(
        name: '--strict',
        description: 'Consider warnings as errors when validating the spec'),
    Option(
        name: ['-o', '--output'],
        description: 'Output gem with the given filename',
        args: [Arg(name: 'FILE', description: 'The filename')]),
    Option(
        name: '-C',
        description:
            'Run as if gem build was started in <PATH> instead of the current working directory',
        args: [
          Arg(name: 'PATH', description: 'The filename', template: 'folders')
        ])
  ]),
  Subcommand(
      name: 'push',
      description: 'Push a gem up to the gem server',
      args: [Arg(name: 'GEM', description: 'Built gem to push up')],
      options: [...authenticationOptions, ...httpProxyOptions]),
  Subcommand(
      name: 'server',
      description:
          'Starts up a web server that hosts the RDoc (requires rubygems-server)'),
  Subcommand(
      name: 'owner',
      description: 'Manage gem owners of a gem on the push server',
      args: [
        Arg(name: 'GEMNAME', generators: gems)
      ],
      options: [
        Option(
            name: ['-a', '--add'],
            description: 'Add an owner by user identifier',
            args: [Arg(name: 'NEW_OWNER', description: 'The new owner')]),
        Option(
            name: ['-r', '--remove'],
            description: 'Remove an owner by user identifier',
            args: [Arg(name: 'OLD_OWNER', description: 'The old owner')]),
        ...authenticationOptions
      ]),
  Subcommand(
      name: 'which',
      description: 'Find the location of a library file you can require',
      args: [
        Arg(name: 'FILE', template: 'filepaths')
      ],
      options: [
        Option(name: ['-a', '--all'], description: 'Show all matching files'),
        Option(
            name: ['-g', '--gems-first'],
            description: 'Search gems before non-gems')
      ]),
  Subcommand(
      name: 'outdated',
      description: 'Display all gems that need updates',
      options: [
        Option(
            name: '--platform',
            description: 'Specify the platform of gem to outdated',
            args: [Arg(name: 'PLATFORM', isVariadic: true)])
      ]),
  Subcommand(
      name: 'update',
      description: 'Update installed gems to the latest version',
      args: [
        Arg(
            name: 'GEMNAME',
            description: 'The gem(s) you want to update',
            isVariadic: true,
            isOptional: true)
      ],
      options: [
        Option(
            name: '--system',
            description: 'Update the RubyGems system software',
            args: [Arg(name: 'VERSION', isOptional: true)]),
        Option(
            name: '--platform',
            description: 'Update the RubyGems system software',
            args: [Arg(name: 'PLATFORM')]),
        Option(
            name: '--prerelease',
            description:
                'Allow prerelease versions of a gem as update targets'),
        Option(
            name: ['--install-dir', '-i'],
            description: 'Gem repository directory to get installed gems',
            args: [Arg(name: 'DIR', template: 'folders')]),
        Option(
            name: ['--bindir', '-n'],
            description:
                'Directory where executables will be placed when the gem is installed',
            args: [Arg(name: 'DIR', template: 'folders')]),
        Option(
            name: '--document',
            description: 'Generate documentation for installed gems',
            args: [
              Arg(name: 'TYPES', suggestions: [
                FigSuggestion(name: 'rdoc'),
                FigSuggestion(name: 'ri')
              ])
            ]),
        Option(
            name: '--build-root',
            description:
                'Temporary installation root. Useful for building packages. Do not use this when installing remote gems',
            args: [Arg(name: 'DIR', template: 'folders')]),
        Option(
            name: '--vendor',
            description:
                'Install gem into the vendor directory. Only for use by gem repackagers'),
        Option(
            name: ['--no-document', '-N'],
            description: 'Disable documentation generation'),
        Option(
            name: ['--env-shebang', '-E'],
            description:
                'Rewrite the shebang line on installed scripts to use /usr/bin/env'),
        Option(
            name: ['--force', '-f'],
            description: 'Force gem to install, bypassing dependency checks'),
        Option(
            name: ['--wrappers', '-w'],
            description:
                'Use bin wrappers for executables. Not available on dosish platforms'),
        Option(
            name: ['--trust-policy', '-P'],
            description: 'Specify gem trust policy',
            args: [Arg(name: 'POLICY')]),
        Option(
            name: '--ignore-dependencies',
            description: 'Do not install any required dependent gems'),
        Option(
            name: '--format-executable',
            description: 'Make installed executable names match Ruby'),
        Option(
            name: '--user-install',
            description:
                'Install in user\'s home directory instead of GEM_HOME'),
        Option(
            name: '--development',
            description: 'Install additional development dependencies'),
        Option(
            name: '--development-all',
            description:
                'Install development dependencies for all gems (including dev deps themselves)'),
        Option(
            name: '--conservative',
            description:
                'Don\'t attempt to upgrade gems already meeting version requirement'),
        Option(
            name: '--minimal-deps',
            description:
                'Don\'t upgrade any dependencies that already meet version requirements'),
        Option(
            name: '--post-install-message',
            description: 'Print post install message'),
        Option(
            name: ['--file', '-g'],
            description:
                'Read from a gem dependencies API file and install the listed gems',
            args: [Arg(name: 'FILE', template: 'filepaths')]),
        Option(
            name: '--without',
            description:
                'Omit the named groups (comma separated) when installing from a gem dependencies file',
            args: [Arg(name: 'GROUPS')]),
        Option(
            name: '--default',
            description:
                'Add the gem\'s full specification to specifications/default and extract only its bin'),
        Option(
            name: '--explain',
            description:
                'Rather than install the gems, indicate which would be installed'),
        Option(
            name: '--lock',
            description: 'Create a lock file (when used with -g/--file)'),
        Option(
            name: '--suggestions',
            description: 'Suggest alternates when gems are not found',
            exclusiveOn: ['--no-suggestions'])
      ])
], options: [
  Option(
      name: ['--help', '-h'],
      description: 'Show help for gem',
      isPersistent: true),
  Option(
      name: ['-V', '--verbose'],
      description: 'Set the verbose level of output',
      exclusiveOn: ['--no-verbose'],
      isPersistent: true),
  Option(
      name: '--no-verbose',
      description: 'Do not set the verbose level of output',
      exclusiveOn: ['--verbose'],
      isPersistent: true),
  Option(
      name: ['-q', '--quiet'],
      description: 'Silence command progress meter',
      isPersistent: true),
  Option(
      name: '--silent',
      description: 'Silence RubyGems output',
      isPersistent: true),
  Option(
      name: '-config-file',
      description: 'Use this config file instead of default',
      args: [
        Arg(name: 'FILE', description: 'The config file', template: 'filepaths')
      ],
      isPersistent: true),
  Option(
      name: '--backtrace',
      description: 'Show stack backtrace on errors',
      isPersistent: true),
  Option(
      name: '--debug',
      description: 'Turn on Ruby debugging',
      isPersistent: true),
  Option(
      name: '--norc',
      description: 'Avoid loading any .gemrc file',
      isPersistent: true),
  Option(name: ['-v', '--version'], description: 'Show the gem version')
]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (gems)
// const gems: Fig.Generator = {
//   trigger: () => true,
//   custom: async (tokens, executeShellCommand) => {
//     const searchTerm = tokens[tokens.length - 1];
//     const { stdout } = await executeShellCommand({
//       command: "gem",
//       args: [
//         "search",
//         "--both",
//         "--no-versions",
//         "--no-details",
//         "--quiet",
//         "--norc",
//         searchTerm,
//       ],
//     });
//     return stdout
//       .trim()
//       .split("\n")
//       .filter((line) => line && !line.startsWith("*"))
//       .map((name) => ({ name }));
//   },
// };
// TS_GENERATOR_BLOCK_END
