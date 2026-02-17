// AI-generated from TypeScript source: conda.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// 获取已安装的 conda 包的生成器
final FigGenerator getInstalledPackages = FigGenerator(
  script: ['conda', 'list'],
  postProcess: (String out, [List<String>? tokens]) {
    final lines = out.split('\n');
    final installedPackages = <FigSuggestion>[];

    for (int i = 3; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isNotEmpty) {
        final packageName = line.split(RegExp(r'\s+'))[0];
        installedPackages.add(FigSuggestion(
          name: packageName,
          icon: '🐍',
        ));
      }
    }
    return installedPackages;
  },
);

/// 获取所有 conda 包的生成器（注释版 - 需要实现 script 函数时使用）
// final FigGenerator getAllCondaPackages = FigGenerator(
//   script: (context) {
//     // Dart 不支持直接传递函数到 script 属性
//     // 需要扩展 FigGenerator 类或使用自定义逻辑
//     if (context.last == '') return '';
//     final searchTerm = context.last;
//     return "conda search '*$searchTerm*'";
//   },
//   postProcess: (String out, [List<String>? tokens]) {
//     final lines = out.split('\n');
//     final allPackages = <FigSuggestion>[];
//     if (lines.isNotEmpty) {
//       allPackages.add(FigSuggestion(name: lines[0]));
//     }
//     return allPackages;
//   },
// );

/// 获取 conda 环境的生成器
final FigGenerator getCondaEnvironments = FigGenerator(
  script: ['conda', 'env', 'list'],
  scriptTimeout: 10000,
  cache: FigCache(
    ttl: 10000,
    strategy: 'stale-while-revalidate',
  ),
  postProcess: (String out, [List<String>? tokens]) {
    final lines = out.split('\n');
    final installedPackages = <FigSuggestion>[];

    for (int i = 2; i < lines.length; i++) {
      final envName = lines[i].split(' ')[0];
      installedPackages.add(FigSuggestion(
        name: envName,
        icon: '🐍',
      ));
    }
    return installedPackages;
  },
);

/// 获取 conda 配置的生成器
final FigGenerator getCondaConfigs = FigGenerator(
  script: ['conda', 'config', '--show'],
  postProcess: (String out, [List<String>? tokens]) {
    final lines = out.split('\n');
    final configs = <FigSuggestion>[];

    for (int i = 2; i < lines.length; i++) {
      final configName = lines[i].split(':')[0];
      if (configName.isNotEmpty && !configName.contains('-')) {
        configs.add(FigSuggestion(
          name: configName.trim(),
          icon: '🐍',
        ));
      }
    }
    return configs;
  },
);

final List<Option> name_options = [
  FigOption(
    name: ['-n', '--name'],
    description: 'Name of environment',
    args: [
      FigArg(
        name: 'Environment',
      ),
    ],
  ),
  FigOption(
    name: ['-p', '--prefix'],
    description: 'Full path to environment location (i.e. prefix)',
    args: [
      FigArg(
        name: 'path',
        template: 'filepaths',
      ),
    ],
  ),
];

final List<Option> remove_options = [
  Option(
      name: '--dev',
      description:
          'Use sys.executable -m conda in wrapper scripts instead of CONDA_EXE. This is mainly for use during tests where we test new conda source against old Python versions'),
  ...name_options,
  Option(
      name: ['-c', '--channel'],
      description:
          'They are given (including local directories using the \'file://\' syntax or simply a path like \'/home/conda/mychan\' or \'../mychan\'). Then, the defaults or channels from .condarc are searched (unless --override-channels is given). You can use \'defaults\' to get the default packages for conda. You can also use any name and the .condarc channel_alias value will be prepended. The default channel_alias is http://conda.anaconda.org/',
      args: [Arg()]),
  Option(
      name: '--use-local',
      description: 'Use locally built packages. Identical to \'-c local\''),
  Option(
      name: '--override-channels',
      description:
          'Do not search default or .condarc channels. Requires --channel'),
  Option(
      name: '--repodata-fn',
      description:
          'Specify name of repodata on remote server. Conda will try whatever you specify, but will ultimately fall back to repodata.json if your specs are not satisfiable with what you specify here. This is used to employ repodata that is reduced in time scope. You may pass this flag more than once. Leftmost entries are tried first, and the fallback to repodata.json is added for you automatically',
      args: [Arg()]),
  Option(
      name: '--all',
      description: 'Remove all packages, i.e., the entire environment'),
  Option(
      name: '--features', description: 'Remove features (instead of packages)'),
  Option(
      name: ['--force-remove', '--force'],
      description:
          'Forces removal of a package without removing packages that depend on it. Using this option will usually leave your environment in a broken and inconsistent state'),
  Option(name: '--no-pin', description: 'Ignore pinned file'),
  Option(
      name: ['-C', '--use-index-cache'],
      description: 'Use cache of channel index files, even if it has expired'),
  Option(
      name: ['-k', '--insecure'],
      description:
          'Allow conda to perform insecure SSL connections and transfers. Equivalent to setting \'ssl_verify\' to \'false\''),
  Option(
      name: '--offline',
      description: 'Offline mode. Don\'t connect to the Internet'),
  Option(
      name: ['-d', '--dry-run'],
      description: 'Only display what would have been done'),
  Option(
      name: '--json',
      description:
          'Report all output as json. Suitable for using conda programmatically'),
  Option(name: ['-q', '--quiet'], description: 'Do not display progress bar'),
  Option(
      name: ['-v', '--verbose'],
      description:
          'Can be used multiple times. Once for INFO, twice for DEBUG, three times for TRACE',
      isRepeatable: true),
  Option(name: ['-y', '--yes'], description: 'Do not ask for confirmation')
];

final List<Option> update_options = [
  Option(
      name: '--file',
      description:
          'Read package versions from the given file. Repeated file specifications can be passed (e.g. --file=file1 --file=file2)',
      args: [Arg(template: 'filepaths')]),
  ...name_options,
  Option(
      name: ['-c', '--channel'],
      description:
          'They are given (including local directories using the \'file://\' syntax or simply a path like \'/home/conda/mychan\' or \'../mychan\'). Then, the defaults or channels from .condarc are searched (unless --override-channels is given). You can use \'defaults\' to get the default packages for conda. You can also use any name and the .condarc channel_alias value will be prepended. The default channel_alias is http://conda.anaconda.org/',
      args: [Arg()]),
  Option(
      name: '--use-local',
      description: 'Use locally built packages. Identical to \'-c local\''),
  Option(
      name: '--override-channels',
      description:
          'Do not search default or .condarc channels. Requires --channel'),
  Option(
      name: '--repodata-fn',
      description:
          'Specify name of repodata on remote server. Conda will try whatever you specify, but will ultimately fall back to repodata.json if your specs are not satisfiable with what you specify here. This is used to employ repodata that is reduced in time scope. You may pass this flag more than once. Leftmost entries are tried first, and the fallback to repodata.json is added for you automatically',
      args: [Arg()]),
  Option(
      name: '--strict-channel-priority',
      description:
          'Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel'),
  Option(
      name: '--no-channel-priority',
      description:
          'Package version takes precedence over channel priority. Overrides the value given by conda config --show channel_priority'),
  Option(
      name: '--no-deps',
      description:
          'Do not install, update, remove, or change dependencies. This WILL lead to broken environments and inconsistent behavior. Use at your own risk'),
  Option(name: '--only-deps', description: 'Only install dependencies'),
  Option(name: '--no-pin', description: 'Ignore pinned file'),
  Option(
      name: '--force-reinstall',
      description:
          'Ensure that any user-requested package for the current operation is uninstalled and reinstalled, even if that package already exists in the environment'),
  Option(
      name: ['--freeze-installed', '--no-update-deps'],
      description: 'Do not update or change already-installed dependencies'),
  Option(name: '--update-deps', description: 'Update dependencies'),
  Option(
      name: ['-S', '--satisfied-skip-solve'],
      description:
          'Exit early and do not run the solver if the requested specs are satisfied. Also skips aggressive updates as configured by \'aggressive_update_packages\'. Similar to the default behavior of \'pip install\''),
  Option(
      name: ['--update-all', '--all'],
      description: 'Update all installed packages in the environment'),
  Option(
      name: '--update-specs',
      description: 'Update based on provided specifications'),
  Option(
      name: '--copy',
      description:
          'Install all packages using copies instead of hard- or soft-linking'),
  Option(
      name: '--clobber',
      description:
          'Allow clobbering of overlapping file paths within packages, and suppress related warnings'),
  Option(
      name: ['-C', '--use-index-cache'],
      description: 'Use cache of channel index files, even if it has expired'),
  Option(
      name: ['-k', '--insecure'],
      description:
          'Allow conda to perform insecure SSL connections and transfers. Equivalent to setting \'ssl_verify\' to \'false\''),
  Option(
      name: '--offline',
      description: 'Offline mode. Don\'t connect to the Internet'),
  Option(
      name: ['-d', '--dry-run'],
      description: 'Only display what would have been done'),
  Option(
      name: '--json',
      description:
          'Report all output as json. Suitable for using conda programmatically'),
  Option(name: ['-q', '--quiet'], description: 'Do not display progress bar'),
  Option(
      name: ['-v', '--verbose'],
      description:
          'Can be used multiple times. Once for INFO, twice for DEBUG, three times for TRACE',
      isRepeatable: true),
  Option(name: ['-y', '--yes'], description: 'Do not ask for confirmation'),
  Option(
      name: '--download-only',
      description:
          'Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix'),
  Option(
      name: '--show-channel-urls',
      description:
          'Show channel urls. Overrides the value given by conda config --show show_channel_urls')
];

final List<FigSuggestion> installedPackages = [];

final List<FigSuggestion> configs = [];

/// Completion spec for `conda` CLI
final FigSpec condaSpec =
    FigSpec(name: 'conda', description: 'Conda package manager', subcommands: [
  Subcommand(name: 'activate', description: 'Activate an environment', args: [
    Arg(generators: getCondaEnvironments)
  ], options: [
    Option(
        name: '--stack',
        description:
            'Stack the environment being activated on top of the previous active environment'),
    Option(
        name: '--no-stack',
        description:
            'Do not stack the environment. Overrides \'auto_stack\' setting')
  ]),
  Subcommand(name: 'deactivate', description: 'Deactivate an environment'),
  Subcommand(
      name: 'clean',
      description: 'Remove unused packages and caches',
      args: [
        Arg()
      ],
      options: [
        Option(
            name: ['-a', '--all'],
            description:
                'Remove index cache, lock files, unused cache packages, and tarballs'),
        Option(
            name: ['-i', '--index-cache'], description: 'Remove index cache'),
        Option(
            name: ['-p', '--packages'],
            description: 'Remove unused packages from writable package caches'),
        Option(
            name: ['-t', '--tarballs'],
            description: 'Remove cached package tarballs'),
        Option(
            name: ['-f', '--force-pkgs-dirs'],
            description: 'Remove all writable package caches'),
        Option(
            name: ['-c', '--tempfiles'],
            description:
                'Remove temporary files that could not be deleted earlier due to being in-use. Argument is path(s) to prefix(es) where files should be found and removed',
            args: [Arg(template: 'filepaths', isVariadic: true)]),
        Option(
            name: ['-d', '--dry-run'],
            description: 'Only display what would have been done'),
        Option(
            name: '--json',
            description:
                'Report all output as json. Suitable for using conda programmatically'),
        Option(
            name: ['-q', '--quiet'],
            description: 'Do not display progress bar'),
        Option(
            name: ['-v', '--verbose'],
            description:
                'Can be used multiple times. Once for INFO, twice for DEBUG, three times for TRACE',
            isRepeatable: true),
        Option(
            name: ['-y', '--yes'], description: 'Do not ask for confirmation')
      ]),
  Subcommand(
      name: 'compare',
      description: 'Compare packages between conda environments',
      args: [
        Arg(
            name: 'file',
            description:
                'Path to the environment file that is to be compared against',
            template: 'filepaths')
      ],
      options: [
        ...name_options,
        Option(
            name: ['-h', '--help'],
            description: 'Show this help message and exit'),
        Option(
            name: '--json',
            description:
                'Report all output as json. Suitable for using conda programmatically'),
        Option(
            name: ['-v', '--verbose'],
            description:
                'Use once for info, twice for debug, three times for trace'),
        Option(
            name: ['-q', '--quiet'], description: 'Do not display progress bar')
      ]),
  Subcommand(
      name: 'config',
      description:
          'Modify configuration values in .condarc. This is modeled after the git config command. Writes to the user .condarc file by default',
      options: [
        Option(
            name: '--json',
            description:
                'Report all output as json. Suitable for using conda programmatically'),
        Option(
            name: ['-v', '--verbose'],
            description:
                'Use once for info, twice for debug, three times for trace'),
        Option(
            name: ['-q', '--quiet'],
            description: 'Do not display progress bar'),
        Option(
            name: '--system',
            description:
                'Write to the system .condarc file at \'/home/docs/checkouts/readthedocs.org/user_builds/continuumio-conda/conda/latest/.condarc\''),
        Option(
            name: '--env',
            description:
                'Write to the active conda environment .condarc file (<no active environment>). If no environment is active, write to the user config file (/home/docs/.condarc)'),
        Option(
            name: '--file',
            description: 'Write to the given file',
            args: [Arg(name: 'Target File', template: 'filepaths')]),
        Option(
            name: '--show',
            description:
                'Display configuration values as calculated and compiled. If no arguments given, show information for all configuration values',
            args: [
              Arg(
                  name: 'Configuration values',
                  isOptional: true,
                  isVariadic: true,
                  generators: getCondaConfigs)
            ]),
        Option(
            name: '--show-sources',
            description: 'Display all identified configuration sources'),
        Option(
            name: '--validate',
            description: 'Validate all configuration sources'),
        Option(
            name: '--describe',
            description:
                'Describe given configuration parameters. If no arguments given, show information for all configuration parameters',
            args: [
              Arg(
                  name: 'Configuration values',
                  isOptional: true,
                  isVariadic: true,
                  generators: getCondaConfigs)
            ]),
        Option(
            name: '--write-default',
            description:
                'Write the default configuration to a file. Equivalent to conda config --describe > ~/.condarc'),
        Option(
            name: '--get',
            description: 'Get a configuration value',
            args: [Arg(name: 'key', isOptional: true, isVariadic: true)]),
        Option(
            name: '--append',
            description: 'Add one configuration value to the end of a list key',
            args: [Arg(name: 'key'), Arg(name: 'value')]),
        Option(
            name: ['--prepend', '--add'],
            description:
                'Add one configuration value to the beginning of a list key',
            args: [Arg(name: 'key'), Arg(name: 'value')]),
        Option(
            name: '--set',
            description: 'Set a boolean or string key',
            args: [Arg(name: 'key'), Arg(name: 'value')]),
        Option(
            name: '--remove',
            description:
                'Remove a configuration value from a list key. This removes all instances of the value',
            args: [Arg(name: 'key'), Arg(name: 'value')]),
        Option(
            name: '--remove-key',
            description: 'Remove a configuration key (and all its values)',
            args: [Arg(name: 'key')]),
        Option(
            name: '--stdin',
            description:
                'Apply configuration information given in yaml format piped through stdin')
      ]),
  Subcommand(
      name: 'create',
      description:
          'Create a new conda environment from a list of specified packages',
      args: [
        Arg(
            name: 'package_spec',
            description:
                'Packages to install or update in the conda environment',
            isOptional: true,
            isVariadic: true)
      ],
      options: [
        Option(
            name: '--clone',
            description: 'Path to (or name of) existing local environment',
            args: [Arg(generators: getCondaEnvironments)]),
        Option(
            name: '--file',
            description:
                'Read package versions from the given file. Repeated file specifications can be passed (e.g. --file=file1 --file=file2)',
            args: [Arg(template: 'filepaths')]),
        Option(
            name: '--dev',
            description:
                'Use sys.executable -m conda in wrapper scripts instead of CONDA_EXE. This is mainly for use during tests where we test new conda source against old Python versions'),
        ...name_options,
        Option(
            name: ['-c', '--channel'],
            description:
                'They are given (including local directories using the \'file://\' syntax or simply a path like \'/home/conda/mychan\' or \'../mychan\'). Then, the defaults or channels from .condarc are searched (unless --override-channels is given). You can use \'defaults\' to get the default packages for conda. You can also use any name and the .condarc channel_alias value will be prepended. The default channel_alias is http://conda.anaconda.org/',
            args: [Arg()]),
        Option(
            name: '--use-local',
            description:
                'Use locally built packages. Identical to \'-c local\''),
        Option(
            name: '--override-channels',
            description:
                'Do not search default or .condarc channels. Requires --channel'),
        Option(
            name: '--repodata-fn',
            description:
                'Specify name of repodata on remote server. Conda will try whatever you specify, but will ultimately fall back to repodata.json if your specs are not satisfiable with what you specify here. This is used to employ repodata that is reduced in time scope. You may pass this flag more than once. Leftmost entries are tried first, and the fallback to repodata.json is added for you automatically',
            args: [Arg()]),
        Option(
            name: '--strict-channel-priority',
            description:
                'Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel'),
        Option(
            name: '--no-channel-priority',
            description:
                'Package version takes precedence over channel priority. Overrides the value given by conda config --show channel_priority'),
        Option(
            name: '--no-deps',
            description:
                'Do not install, update, remove, or change dependencies. This WILL lead to broken environments and inconsistent behavior. Use at your own risk',
            isDangerous: true),
        Option(name: '--only-deps', description: 'Only install dependencies'),
        Option(name: '--no-pin', description: 'Ignore pinned file'),
        Option(
            name: '--no-default-packages',
            description: 'Ignore create_default_packages in the .condarc file'),
        Option(
            name: '--copy',
            description:
                'Install all packages using copies instead of hard- or soft-linking'),
        Option(
            name: ['-C', '--use-index-cache'],
            description:
                'Use cache of channel index files, even if it has expired'),
        Option(
            name: ['-k', '--insecure'],
            description:
                'Allow conda to perform insecure SSL connections and transfers. Equivalent to setting \'ssl_verify\' to \'false\''),
        Option(
            name: '--offline',
            description: 'Offline mode. Don\'t connect to the Internet'),
        Option(
            name: ['-d', '--dry-run'],
            description: 'Only display what would have been done'),
        Option(
            name: '--json',
            description:
                'Report all output as json. Suitable for using conda programmatically'),
        Option(
            name: ['-q', '--quiet'],
            description: 'Do not display progress bar'),
        Option(
            name: ['-v', '--verbose'],
            description:
                'Can be used multiple times. Once for INFO, twice for DEBUG, three times for TRACE',
            isRepeatable: true),
        Option(
            name: ['-y', '--yes'], description: 'Do not ask for confirmation'),
        Option(
            name: '--download-only',
            description:
                'Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix'),
        Option(
            name: '--show-channel-urls',
            description:
                'Show channel urls. Overrides the value given by conda config --show show_channel_urls')
      ]),
  Subcommand(
      name: 'help',
      description:
          'Displays a list of available conda commands and their help strings'),
  Subcommand(
      name: 'info',
      description: 'Display information about current conda install',
      options: [
        Option(name: ['-a', '--all'], description: 'Show all information'),
        Option(name: '--base', description: 'Display base environment path'),
        Option(
            name: ['-e', '--envs'],
            description: 'List all known conda environments'),
        Option(
            name: ['-s', '--system'],
            description: 'List environment variables'),
        Option(
            name: '--unsafe-channels',
            description: 'Display list of channels with tokens exposed'),
        Option(
            name: '--json',
            description:
                'Report all output as json. Suitable for using conda programmatically'),
        Option(
            name: ['-v', '--verbose'],
            description:
                'Use once for info, twice for debug, three times for trace'),
        Option(
            name: ['-q', '--quiet'], description: 'Do not display progress bar')
      ]),
  Subcommand(
      name: 'init',
      description: 'Initialize conda for shell interaction. [Experimental]'),
  Subcommand(
      name: 'install',
      description:
          'Installs a list of packages into a specified conda environment',
      args: [
        Arg(
            name: 'package spec',
            description:
                'Packages to install or update in the conda environment',
            isVariadic: true)
      ],
      options: [
        Option(
            name: '--revision',
            description: 'Revert to the specified REVISION',
            args: [Arg()]),
        Option(
            name: '--file',
            description:
                'Read package versions from the given file. Repeated file specifications can be passed (e.g. --file=file1 --file=file2)',
            args: [Arg(template: 'filepaths')]),
        Option(
            name: '--dev',
            description:
                'Use sys.executable -m conda in wrapper scripts instead of CONDA_EXE. This is mainly for use during tests where we test new conda source against old Python versions'),
        ...name_options,
        Option(
            name: ['-c', '--channel'],
            description:
                'They are given (including local directories using the \'file://\' syntax or simply a path like \'/home/conda/mychan\' or \'../mychan\'). Then, the defaults or channels from .condarc are searched (unless --override-channels is given). You can use \'defaults\' to get the default packages for conda. You can also use any name and the .condarc channel_alias value will be prepended. The default channel_alias is http://conda.anaconda.org/',
            args: [Arg()]),
        Option(
            name: '--use-local',
            description:
                'Use locally built packages. Identical to \'-c local\''),
        Option(
            name: '--override-channels',
            description:
                'Do not search default or .condarc channels. Requires --channel'),
        Option(
            name: '--repodata-fn',
            description:
                'Specify name of repodata on remote server. Conda will try whatever you specify, but will ultimately fall back to repodata.json if your specs are not satisfiable with what you specify here. This is used to employ repodata that is reduced in time scope. You may pass this flag more than once. Leftmost entries are tried first, and the fallback to repodata.json is added for you automatically',
            args: [Arg()]),
        Option(
            name: '--strict-channel-priority',
            description:
                'Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel'),
        Option(
            name: '--no-channel-priority',
            description:
                'Package version takes precedence over channel priority. Overrides the value given by conda config --show channel_priority'),
        Option(
            name: '--no-deps',
            description:
                'Do not install, update, remove, or change dependencies. This WILL lead to broken environments and inconsistent behavior. Use at your own risk'),
        Option(name: '--only-deps', description: 'Only install dependencies'),
        Option(name: '--no-pin', description: 'Ignore pinned file'),
        Option(
            name: '--force-reinstall',
            description:
                'Ensure that any user-requested package for the current operation is uninstalled and reinstalled, even if that package already exists in the environment'),
        Option(
            name: ['--freeze-installed', '--no-update-deps'],
            description:
                'Do not update or change already-installed dependencies'),
        Option(name: '--update-deps', description: 'Update dependencies'),
        Option(
            name: ['-S', '--satisfied-skip-solve'],
            description:
                'Exit early and do not run the solver if the requested specs are satisfied. Also skips aggressive updates as configured by \'aggressive_update_packages\'. Similar to the default behavior of \'pip install\''),
        Option(
            name: ['--update-all', '--all'],
            description: 'Update all installed packages in the environment'),
        Option(
            name: '--update-specs',
            description: 'Update based on provided specifications'),
        Option(
            name: '--copy',
            description:
                'Install all packages using copies instead of hard- or soft-linking'),
        Option(
            name: ['-m', '--mkdir'],
            description: 'Create the environment directory if necessary'),
        Option(
            name: '--clobber',
            description:
                'Allow clobbering of overlapping file paths within packages, and suppress related warnings'),
        Option(
            name: ['-C', '--use-index-cache'],
            description:
                'Use cache of channel index files, even if it has expired'),
        Option(
            name: ['-k', '--insecure'],
            description:
                'Allow conda to perform insecure SSL connections and transfers. Equivalent to setting \'ssl_verify\' to \'false\''),
        Option(
            name: '--offline',
            description: 'Offline mode. Don\'t connect to the Internet'),
        Option(
            name: ['-d', '--dry-run'],
            description: 'Only display what would have been done'),
        Option(
            name: '--json',
            description:
                'Report all output as json. Suitable for using conda programmatically'),
        Option(
            name: ['-q', '--quiet'],
            description: 'Do not display progress bar'),
        Option(
            name: ['-v', '--verbose'],
            description:
                'Can be used multiple times. Once for INFO, twice for DEBUG, three times for TRACE',
            isRepeatable: true),
        Option(
            name: ['-y', '--yes'], description: 'Do not ask for confirmation'),
        Option(
            name: '--download-only',
            description:
                'Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix'),
        Option(
            name: '--show-channel-urls',
            description:
                'Show channel urls. Overrides the value given by conda config --show show_channel_urls')
      ]),
  Subcommand(
      name: 'list',
      description: 'List linked packages in a conda environment',
      args: [
        Arg(
            name: 'regex',
            description: 'List only packages matching this regular expression',
            isOptional: true)
      ],
      options: [
        Option(
            name: '--show-channel-urls',
            description:
                'Show channel urls. Overrides the value given by conda config --show show_channel_urls'),
        Option(
            name: ['-c', '--canonical'],
            description:
                'Output canonical names of packages only. Implies --no-pip'),
        Option(
            name: ['-f', '--full-name'],
            description: 'Only search for full names, i.e., ^<regex>\$'),
        Option(
            name: '--explicit',
            description:
                'List explicitly all installed conda packaged with URL (output may be used by conda create --file)'),
        Option(
            name: '--md5',
            description: 'Add MD5 hashsum when using --explicit'),
        Option(
            name: ['-e', '--export'],
            description:
                'Output requirement string only (output may be used by conda create --file)'),
        Option(
            name: ['-r', '--revisions'],
            description: 'List the revision history and exit'),
        Option(
            name: '--no-pip',
            description: 'Do not include pip-only installed packages'),
        ...name_options,
        Option(
            name: '--json',
            description:
                'Report all output as json. Suitable for using conda programmatically'),
        Option(
            name: ['-v', '--verbose'],
            description:
                'Use once for info, twice for debug, three times for trace'),
        Option(
            name: ['-q', '--quiet'], description: 'Do not display progress bar')
      ]),
  Subcommand(
      name: 'package',
      description: 'Low-level conda package utility. (EXPERIMENTAL)',
      options: [
        Option(
            name: ['-w', '--which'],
            description:
                'Given some PATH print which conda package the file came from',
            args: [Arg(name: 'Path', isVariadic: true)]),
        Option(
            name: ['-r', '--reset'],
            description: 'Remove all untracked files and exit'),
        Option(
            name: ['-u', '--untracked'],
            description: 'Display all untracked files and exit'),
        Option(
            name: '--pkg-name',
            description: 'Package name of the created package',
            args: [Arg()]),
        Option(
            name: '--pkg-version',
            description: 'Package version of the created package',
            args: [Arg()]),
        Option(
            name: '--pkg-build',
            description: 'Package build number of the created package',
            args: [Arg()]),
        ...name_options
      ]),
  Subcommand(
      name: 'remove',
      description:
          'Remove a list of packages from a specified conda environment',
      args: [
        Arg(
            name: 'package name',
            isVariadic: true,
            generators: getInstalledPackages)
      ],
      options: [
        ...remove_options
      ]),
  Subcommand(name: 'uninstall', description: 'Alias for conda remove', args: [
    Arg(
        name: 'package name',
        isVariadic: true,
        generators: getInstalledPackages)
  ], options: [
    ...remove_options
  ]),
  Subcommand(
      name: 'run',
      description: 'Run an executable in a conda environment. [Experimental]',
      args: [
        Arg(name: 'executable', template: 'filepaths')
      ],
      options: [
        ...name_options,
        Option(
            name: ['-v', '--verbose'],
            description:
                'Use once for info, twice for debug, three times for trace'),
        Option(
            name: '--dev',
            description:
                'Sets `CONDA_EXE` to `python -m conda`, assuming the CWD contains the root of conda development sources'),
        Option(
            name: '--debug-wrapper-scripts',
            description:
                'When this is set, where implemented, the shell wrapper scripts will echo to stderr a lot of debugging information'),
        Option(
            name: '--cwd',
            description:
                'Current working directory for command to run in. Defaults to cwd',
            args: [Arg()]),
        Option(
            name: '--no-capture-output',
            description: 'Don\'t capture stdout/stderr'),
        Option(
            name: '--live-stream',
            description:
                'Display the output for the subprocess stdout and stderr on real time')
      ]),
  Subcommand(
      name: 'search',
      description:
          'Search for packages and display associated information. The input is a MatchSpec, a query language for conda packages. See examples below',
      args: [
        Arg(name: 'quer')
      ],
      options: [
        Option(
            name: '--envs',
            description:
                'Search all of the current user\'s environments. If run as Administrator (on Windows) or UID 0 (on unix), search all known environments on the system'),
        Option(
            name: ['-i', '--info'],
            description: 'Provide detailed information about each package'),
        Option(
            name: ['--subdir', '--platform'],
            description:
                'Search the given subdir. Should be formatted like \'osx-64\', \'linux-32\', \'win-64\', and so on. The default is to search the current platform',
            args: [Arg()]),
        Option(
            name: ['-c', '--channel'],
            description:
                'They are given (including local directories using the \'file://\' syntax or simply a path like \'/home/conda/mychan\' or \'../mychan\'). Then, the defaults or channels from .condarc are searched (unless --override-channels is given). You can use \'defaults\' to get the default packages for conda. You can also use any name and the .condarc channel_alias value will be prepended. The default channel_alias is http://conda.anaconda.org/',
            args: [Arg()]),
        Option(
            name: '--use-local',
            description:
                'Use locally built packages. Identical to \'-c local\''),
        Option(
            name: '--override-channels',
            description:
                'Do not search default or .condarc channels. Requires --channel'),
        Option(
            name: '--repodata-fn',
            description:
                'Specify name of repodata on remote server. Conda will try whatever you specify, but will ultimately fall back to repodata.json if your specs are not satisfiable with what you specify here. This is used to employ repodata that is reduced in time scope. You may pass this flag more than once. Leftmost entries are tried first, and the fallback to repodata.json is added for you automatically',
            args: [Arg()]),
        Option(
            name: ['-C', '--use-index-cache'],
            description:
                'Use cache of channel index files, even if it has expired'),
        Option(
            name: ['-k', '--insecure'],
            description:
                'Allow conda to perform insecure SSL connections and transfers. Equivalent to setting \'ssl_verify\' to \'false\''),
        Option(
            name: '--offline',
            description: 'Offline mode. Don\'t connect to the Internet'),
        Option(
            name: '--json',
            description:
                'Report all output as json. Suitable for using conda programmatically'),
        Option(
            name: ['-v', '--verbose'],
            description:
                'Use once for info, twice for debug, three times for trace'),
        Option(
            name: ['-q', '--quiet'], description: 'Do not display progress bar')
      ]),
  Subcommand(
      name: 'update',
      description: 'Updates conda packages to the latest compatible version',
      args: [
        Arg(
            name: 'package',
            isVariadic: true,
            suggestions: [
              FigSuggestion(
                  name: 'conda', description: 'Update conda', icon: '⭐️')
            ],
            generators: getInstalledPackages)
      ],
      options: [
        ...update_options
      ]),
  Subcommand(name: 'upgrade', description: 'Alias for conda update', args: [
    Arg(
        name: 'package',
        isVariadic: true,
        suggestions: [
          FigSuggestion(name: 'conda', description: 'Update conda', icon: '⭐️')
        ],
        generators: getInstalledPackages)
  ], options: [
    ...update_options
  ]),
  Subcommand(name: 'build', description: '', args: [Arg()]),
  Subcommand(
      name: 'convert',
      description:
          'Various tools to convert conda packages. Takes a pure Python package build for one platform and converts it to work on one or more other platforms, or all',
      args: [
        Arg(
            name: 'files',
            description: 'Package files to convert',
            isVariadic: true,
            template: 'filepaths')
      ],
      options: [
        Option(
            name: ['-h', '--help'],
            description: 'Show this help message and exit'),
        Option(
            name: ['-p', '--platform'],
            description: 'Platform to convert the packages to',
            args: [
              Arg(suggestions: [
                FigSuggestion(name: 'osx-64'),
                FigSuggestion(name: 'osx-arm64'),
                FigSuggestion(name: 'linux-32'),
                FigSuggestion(name: 'linux-64'),
                FigSuggestion(name: 'linux-ppc64'),
                FigSuggestion(name: 'linux-ppc64le'),
                FigSuggestion(name: 'linux-s390x'),
                FigSuggestion(name: 'linux-armv6l'),
                FigSuggestion(name: 'linux-armv7l'),
                FigSuggestion(name: 'linux-aarch64'),
                FigSuggestion(name: 'win-32'),
                FigSuggestion(name: 'win-64'),
                FigSuggestion(name: 'all')
              ])
            ]),
        Option(
            name: ['--dependencies', '-d'],
            description:
                'Additional (besides python) dependencies of the converted package',
            args: [
              Arg(name: 'Dependencies', isOptional: true, isVariadic: true)
            ]),
        Option(
            name: '--show-imports',
            description:
                'Show Python imports for compiled parts of the package'),
        Option(
            name: ['-f', '--force'],
            description:
                'Force convert, even when a package has compiled C extensions'),
        Option(
            name: ['-o', '--output-dir'],
            description:
                'Directory to write the output files. The packages will be organized in platform/ subdirectories, e.g., win-32/package-1.0-py27_0.tar.bz2',
            args: [Arg(name: 'Output Directory')]),
        Option(name: ['-v', '--verbose'], description: 'Print verbose output'),
        Option(
            name: '--dry-run',
            description: 'Only display what would have been done'),
        Option(
            name: ['-q', '--quiet'], description: 'Don\'t print as much output')
      ]),
  Subcommand(name: 'debug', description: '', args: [Arg()]),
  Subcommand(name: 'develop', description: '', args: [Arg()]),
  Subcommand(name: 'env', description: '', args: [
    Arg()
  ], subcommands: [
    Subcommand(name: 'list'),
    Subcommand(name: 'remove', options: [
      Option(name: '-n', args: [Arg(name: 'environment variable')])
    ])
  ]),
  Subcommand(name: 'index', description: '', args: [Arg()]),
  Subcommand(name: 'inspect', description: '', args: [Arg()]),
  Subcommand(name: 'metapackage', description: '', args: [Arg()]),
  Subcommand(name: 'render', description: '', args: [Arg()]),
  Subcommand(name: 'server', description: '', args: [Arg()]),
  Subcommand(name: 'skeleton', description: '', args: [Arg()]),
  Subcommand(name: 'verify', description: '', args: [Arg()])
], options: [
  Option(
      name: ['-h', '--help'], description: 'Show this help message and exit'),
  Option(
      name: ['-V', '--version'],
      description: 'Show the conda version number and exit')
]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (getInstalledPackages)
// const getInstalledPackages: Fig.Generator = {
//   script: ["conda", "list"],
//   postProcess: function (out) {
//     const lines = out.split("\n");
//     const installedPackages = [];
//     for (let i = 3; i < lines.length; i++) {
//       const line = lines[i].trim();
//       if (line) {
//         const packageName = line.split(/\s+/)[0];
//         installedPackages.push({
//           name: packageName,
//           icon: "🐍",
//         });
//       }
//     }
//     return installedPackages;
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (getAllCondaPackages)
// const getAllCondaPackages: Fig.Generator = {
// //   //script: ["conda", "search", "-q"],
// //   script: function (context) {
// //     if (context[context.length - 1] === "") return "";
// //     const searchTerm = context[context.length - 1];
// //     return "conda search '*{searchTerm}*'";
// //   },
// //   postProcess: function (out) {
// //     const lines = out.split("\n");
// //     const allPackages = [];
// //     allPackages.push({name: lines[0]});
// //     // for (let i = 1; i < lines.length; i++) {
// //     //   allPackages.push({
// //     //     name: lines[i],
// //     //     icon: "🐍",
// //     //   });
// //     // }
// //     return allPackages;
// //   },
// // };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (getCondaEnvironments)
// const getCondaEnvironments: Fig.Generator = {
//   script: ["conda", "env", "list"],
//   scriptTimeout: 10000,
//   cache: {
//     ttl: 10000,
//     strategy: "stale-while-revalidate",
//   },
//   postProcess: function (out) {
//     const lines = out.split("\n");
//     const installedPackages: Fig.Suggestion[] = [];
//     for (let i = 2; i < lines.length; i++) {
//       var env_name = lines[i].split(" ")[0];
//       installedPackages.push({
//         name: env_name,
//         icon: "🐍",
//       });
//     }
//     return installedPackages;
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (getCondaConfigs)
// const getCondaConfigs: Fig.Generator = {
//   script: ["conda", "config", "--show"],
//   postProcess: function (out) {
//     const lines = out.split("\n");
//     const configs: Fig.Suggestion[] = [];
//     for (let i = 2; i < lines.length; i++) {
//       var config_name = lines[i].split(":")[0];
//       if (config_name.includes("-") == false) {
//         configs.push({
//           name: config_name,
//           icon: "🐍",
//         });
//       }
//     }
//     return configs;
//   },
// };
// TS_GENERATOR_BLOCK_END
