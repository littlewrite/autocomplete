// AI-generated from TypeScript source: brew.ts
// Generated at: 2026-02-13
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final FigGenerator formulaeGenerator = FigGenerator(
  script: ['brew', 'list', '-1'],
  postProcess: (out, [tokens]) {
    return out
        .split('\n')
        .where((line) => !line.contains('='))
        .map((formula) => FigSuggestion(
              name: formula,
              icon: '🍺',
              description: 'Installed formula',
            ))
        .toList();
  },
);

final FigGenerator generateAllFormulae = FigGenerator(
  script: ['brew', 'formulae'],
  postProcess: (out, [tokens]) {
    return out
        .split('\n')
        .map((formula) => FigSuggestion(
              name: formula,
              icon: '🍺',
              description: 'Formula',
              priority: 51,
            ))
        .toList();
  },
);

final FigGenerator generateAllCasks = FigGenerator(
  script: ['brew', 'casks'],
  postProcess: (out, [tokens]) {
    return out
        .split('\n')
        .map((cask) => FigSuggestion(
              name: cask,
              icon: '🍺',
              description: 'Cask',
              priority: 52,
            ))
        .toList();
  },
);

final List<FigOption> commonOptions = [
  FigOption(
      name: ['-d', '--debug'],
      description: 'Display any debugging information'),
  FigOption(
      name: ['-q', '--quiet'], description: 'Make some output more quiet'),
  FigOption(
      name: ['-v', '--verbose'], description: 'Make some output more verbose'),
  FigOption(name: ['-h', '--help'], description: 'Show help message')
];

/// Completion spec for `brew` CLI
final FigSpec brewSpec = FigSpec(
    name: 'brew',
    description: 'Package manager for macOS',
    subcommands: [
      FigSubcommand(
          name: 'list',
          description: 'List all installed formulae',
          options: [
            ...commonOptions,
            FigOption(
                name: ['--formula', '--formulae'],
                description:
                    'List only formulae, or treat all named arguments as formulae'),
            FigOption(
                name: ['--cask', '--casks'],
                description:
                    'List only casks, or treat all named arguments as casks'),
            FigOption(
                name: '--unbrewed',
                description:
                    'List files in Homebrew\'s prefix not installed by Homebrew. (disabled; replaced by brew --prefix --unbrewed)'),
            FigOption(
                name: '--full-name',
                description:
                    'Print formulae with fully-qualified names. Unless --full-name, --versions or'),
            FigOption(
                name: '--pinned',
                description:
                    'List only pinned formulae, or only the specified (pinned) formulae if formula are provided'),
            FigOption(
                name: '--versions',
                description:
                    'Show the version number for installed formulae, or only the specified formulae if formula are provided'),
            FigOption(
                name: '--multiple',
                description:
                    'Only show formulae with multiple versions installed'),
            FigOption(
                name: '--pinned',
                description:
                    'List only pinned formulae, or only the specified (pinned) formulae if formula are provided. See also pin, unpin'),
            FigOption(
                name: '-1',
                description:
                    'Force output to be one entry per line. This is the default when output is not to a terminal'),
            FigOption(
                name: '-l',
                description:
                    'List formulae and/or casks in long format. Has no effect when a formula or cask name is passed as an argument'),
            FigOption(
                name: '-r',
                description:
                    'Reverse the order of the formulae and/or casks sort to list the oldest entries first. Has no effect when a formula or cask name is passed as an argument'),
            FigOption(
                name: '-t',
                description:
                    'Sort formulae and/or casks by time modified, listing most recently modified first. Has no effect when a formula or cask name is passed as an argument')
          ],
          args: [
            FigArg(
                isOptional: true,
                isVariadic: true,
                name: 'formula',
                generators: [formulaeGenerator])
          ]),
      FigSubcommand(
          name: 'ls',
          description: 'List all installed formulae',
          options: [
            ...commonOptions,
            FigOption(
                name: '--formula',
                description:
                    'List only formulae, or treat all named arguments as formulae'),
            FigOption(
                name: '--cask',
                description:
                    'List only casks, or treat all named arguments as casks'),
            FigOption(
                name: '--unbrewed',
                description:
                    'List files in Homebrew\'s prefix not installed by Homebrew. (disabled; replaced by brew --prefix --unbrewed)'),
            FigOption(
                name: '--full-name',
                description:
                    'Print formulae with fully-qualified names. Unless --full-name, --versions or'),
            FigOption(
                name: '--pinned',
                description:
                    'List only pinned formulae, or only the specified (pinned) formulae if formula are provided'),
            FigOption(
                name: '--versions',
                description:
                    'Show the version number for installed formulae, or only the specified formulae if formula are provided'),
            FigOption(
                name: '--multiple',
                description:
                    'Only show formulae with multiple versions installed'),
            FigOption(
                name: '--pinned',
                description:
                    'List only pinned formulae, or only the specified (pinned) formulae if formula are provided'),
            FigOption(
                name: '-1',
                description:
                    'Force output to be one entry per line. This is the default when output is not to a terminal'),
            FigOption(
                name: '-l',
                description:
                    'List formulae and/or casks in long format. Has no effect when a formula or cask name is passed as an argument'),
            FigOption(
                name: '-r',
                description:
                    'Reverse the order of the formulae and/or casks sort to list the oldest entries first. Has no effect when a formula or cask name is passed as an argument'),
            FigOption(
                name: '-t',
                description:
                    'Sort formulae and/or casks by time modified, listing most recently modified first. Has no effect when a formula or cask name is passed as an argument')
          ],
          args: [
            FigArg(
                isOptional: true,
                isVariadic: true,
                name: 'formula',
                generators: [formulaeGenerator])
          ]),
      FigSubcommand(
          name: 'leaves',
          description:
              'List installed formulae that are not dependencies of another installed formula',
          options: [
            FigOption(
                name: ['-r', '--installed-on-request'],
                description: 'Show manually installed formula'),
            FigOption(
                name: ['-p', '--installed-as-dependency'],
                description: 'Show installed formula as dependencies')
          ]),
      FigSubcommand(
          name: 'doctor',
          description: 'Check your system for potential problems',
          options: [
            ...commonOptions,
            FigOption(
                name: '--list-checks', description: 'List all audit methods'),
            FigOption(
                name: ['-D', '--audit-debug'],
                description: 'Enable debugging and profiling of audit methods')
          ]),
      FigSubcommand(
          name: ['abv', 'info'],
          description:
              'Display brief statistics for your Homebrew installation',
          args: [
            FigArg(
                isVariadic: true,
                isOptional: true,
                name: 'formula',
                description: 'Formula or cask to summarize',
                generators: [generateAllFormulae, generateAllCasks])
          ],
          options: [
            FigOption(
                name: ['--cask', '--casks'],
                description:
                    'List only casks, or treat all named arguments as casks'),
            FigOption(
                name: '--analytics',
                description:
                    'List global Homebrew analytics data or, if specified, installation and build error data for formula'),
            FigOption(
                name: '--days',
                description: 'How many days of analytics data to retrieve',
                exclusiveOn: [
                  '--analytics'
                ],
                args: [
                  FigArg(
                      name: 'days',
                      description: 'Number of days of data to retrieve',
                      suggestions: [
                        const FigSuggestion(name: '30'),
                        const FigSuggestion(name: '90'),
                        const FigSuggestion(name: '365')
                      ])
                ]),
            FigOption(
                name: '--category',
                description: 'Which type of analytics data to retrieve',
                exclusiveOn: ['--analytics'],
                // TS_UNCONVERTED_START (generators)
                // generators: FigGenerator(...)
                // TS_UNCONVERTED_END
                args: [FigArg()]),
            FigOption(
                name: '--github',
                description:
                    'Open the GitHub source page for formula in a browser'),
            FigOption(
                name: '--json', description: 'Print a JSON representation'),
            FigOption(
                name: '--installed',
                exclusiveOn: ['--json'],
                description:
                    'Print JSON of formulae that are currently installed'),
            FigOption(
                name: '--all',
                exclusiveOn: ['--json'],
                description: 'Print JSON of all available formulae'),
            FigOption(
                name: ['-v', '--verbose'],
                description: 'Show more verbose analytics data for formulae'),
            FigOption(
                name: '--formula',
                description: 'Treat all named arguments as formulae'),
            FigOption(
                name: '--cash',
                description: 'Treat all named arguments as casks'),
            FigOption(
                name: ['-d', '--debug'],
                description: 'Display any debugging information'),
            FigOption(
                name: ['-q', '--quiet'],
                description: 'List only the names of outdated kegs'),
            FigOption(
                name: ['-h', '--help'],
                description: 'Get help with services command')
          ]),
      FigSubcommand(
          name: 'update',
          description: 'Fetch the newest version of Homebrew and all formulae',
          options: [
            FigOption(
                name: ['-f', '--force'],
                description: 'Always do a slower, full update check'),
            FigOption(
                name: ['-v', '--verbose'],
                description:
                    'Print the directories checked and git operations performed'),
            FigOption(
                name: ['-d', '--debug'],
                description:
                    'Display a trace of all shell commands as they are executed'),
            FigOption(name: ['-h', '--help'], description: 'Show help message'),
            FigOption(
                name: '--merge',
                description:
                    'Use git merge to apply updates (rather than git rebase)'),
            FigOption(
                name: '--preinstall',
                description:
                    'Run on auto-updates (e.g. before brew install). Skips some slower steps')
          ]),
      FigSubcommand(
          name: 'outdated',
          description:
              'List installed casks and formulae that have an updated version available',
          options: [
            FigOption(
                name: ['-d', '--debug'],
                description: 'Display any debugging information'),
            FigOption(
                name: ['-q', '--quiet'],
                description: 'List only the names of outdated kegs'),
            FigOption(
                name: ['-v', '--verbose'],
                description: 'Include detailed version information'),
            FigOption(
                name: ['-h', '--help'],
                description: 'Show help message for the outdated command'),
            FigOption(name: '--cask', description: 'List only outdated casks'),
            FigOption(
                name: '--fetch-HEAD',
                description:
                    'Fetch the upstream repository to detect if the HEAD installation of the formula is outdated'),
            FigOption(
                name: '--formula', description: 'List only outdated formulae'),
            FigOption(
                name: '--greedy',
                description:
                    'Print outdated casks with auto_updates or version :latest'),
            FigOption(
                name: '--greedy-latest',
                description:
                    'Print outdated casks including those with version :latest'),
            FigOption(
                name: '--greedy-auto-updates',
                description:
                    'Print outdated casks including those with auto_updates true'),
            FigOption(
                name: '--json', description: 'Print output in JSON format')
          ]),
      FigSubcommand(
          name: 'pin',
          description: 'Pin formula, preventing them from being upgraded',
          options: commonOptions,
          args: [
            FigArg(
                isVariadic: true,
                name: 'formula',
                generators: [formulaeGenerator])
          ]),
      FigSubcommand(
          name: 'unpin',
          description: 'Unpin formula, allowing them to be upgraded',
          options: commonOptions,
          args: [
            FigArg(
                isVariadic: true,
                name: 'formula',
                generators: [formulaeGenerator])
          ]),
      FigSubcommand(
          name: 'upgrade',
          description:
              'Upgrade outdated casks and outdated, unpinned formulae using the same options they were originally installed with, plus any appended brew formula options',
          options: [
            FigOption(
                name: ['-d', '--debug'],
                description:
                    'If brewing fails, open an interactive debugging session with access to IRB or a shell inside the temporary build directory'),
            FigOption(
                name: ['-f', '--force'],
                description:
                    'Install formulae without checking for previously installed keg-only or non-migrated versions. When installing casks, overwrite existing files (binaries and symlinks are excluded, unless originally from the same cask)'),
            FigOption(
                name: ['-v', '--verbose'],
                description: 'Print the verification and postinstall steps'),
            FigOption(
                name: ['-n', '--dry-run'],
                description:
                    'Show what would be upgraded, but do not actually upgrade anything'),
            FigOption(
                name: ['-s', '--build-from-source'],
                description:
                    'Compile formula from source even if a bottle is provided. Dependencies will still be installed from bottles if they are available'),
            FigOption(
                name: ['-i', '--interactive'],
                description: 'Download and patch formula, then open a shell'),
            FigOption(
                name: ['-g', '--git'], description: 'Create a Git repository'),
            FigOption(
                name: ['-q', '--quiet'],
                description: 'Make some output more quiet'),
            FigOption(name: ['-h', '--help'], description: 'Show this message'),
            FigOption(
                name: ['--formula', '--formulae'],
                description:
                    'Treat all named arguments as formulae. If no named arguments are specified, upgrade only outdated formulae'),
            FigOption(
                name: '--env',
                description: 'Disabled other than for internal Homebrew use'),
            FigOption(
                name: '--ignore-dependencies',
                description:
                    'An unsupported Homebrew development flag to skip installing any dependencies of any kind. If the dependencies are not already present, the formula will have issues. If you\'re not developing Homebrew, consider adjusting your PATH rather than using this flag'),
            FigOption(
                name: '--only-dependencies',
                description:
                    'Install the dependencies with specified options but do not install the formula itself'),
            FigOption(
                name: '--cc',
                description:
                    'Attempt to compile using the specified compiler, which should be the name of the compiler\'s executable',
                args: [
                  FigArg(name: 'compiler', suggestions: [
                    const FigSuggestion(name: 'gcc-7'),
                    const FigSuggestion(name: 'llvm_clang'),
                    const FigSuggestion(name: 'clang')
                  ])
                ]),
            FigOption(
                name: '--force-bottle',
                description:
                    'Install from a bottle if it exists for the current or newest version of macOS, even if it would not normally be used for installation'),
            FigOption(
                name: '--include-test',
                description:
                    'Install testing dependencies required to run brew test formula'),
            FigOption(
                name: '--HEAD',
                description:
                    'If formula defines it, install the HEAD version, aka. main, trunk, unstable, master'),
            FigOption(
                name: '--fetch-HEAD',
                description:
                    'Fetch the upstream repository to detect if the HEAD installation of the formula is outdated. Otherwise, the repository\'s HEAD will only be checked for updates when a new stable or development version has been released'),
            FigOption(
                name: '--ignore-pinned',
                description:
                    'Set a successful exit status even if pinned formulae are not upgraded'),
            FigOption(
                name: '--keep-tmp',
                description:
                    'Retain the temporary files created during installation'),
            FigOption(
                name: '--build-bottle',
                description:
                    'Prepare the formula for eventual bottling during installation, skipping any post-install steps'),
            FigOption(
                name: '--bottle-arch',
                description:
                    'Optimise bottles for the specified architecture rather than the oldest architecture supported by the version of macOS the bottles are built on'),
            FigOption(
                name: '--display-times',
                description:
                    'Print install times for each formula at the end of the run'),
            FigOption(
                name: ['--cask', '--casks'],
                description:
                    'Treat all named arguments as casks. If no named arguments are specified, upgrade only outdated casks'),
            FigOption(
                name: '--binaries',
                description:
                    'Disable/enable linking of helper executables (default: enabled)',
                exclusiveOn: ['--no-binaries']),
            FigOption(
                name: '--no-binaries',
                description:
                    'Disable/enable linking of helper executables (default: enabled)',
                exclusiveOn: ['--binaries']),
            FigOption(
                name: '--require-sha',
                description: 'Require all casks to have a checksum'),
            FigOption(
                name: '--no-quarantine',
                description:
                    'Disable the quarantine mechanism (may be unsafe)'),
            FigOption(
                name: '--skip-cask-deps',
                description: 'Skip installing cask dependencies'),
            FigOption(
                name: '--zap',
                description: 'Remove all files associated with a cask')
          ]),
      FigSubcommand(
          name: 'unlink',
          description: 'Remove symlinks for formula from Homebrew\'s prefix',
          args: [
            FigArg(
                isOptional: true,
                isVariadic: true,
                name: 'formula',
                generators: [formulaeGenerator])
          ],
          options: [
            FigOption(
                name: ['-n', '--dry-run'],
                description:
                    'List files which would be unlinked without actually unlinking or deleting any files')
          ]),
      FigSubcommand(
          name: 'formulae', description: 'List all available formulae'),
      FigSubcommand(name: 'casks', description: 'List all available casks'),
      FigSubcommand(name: 'edit', description: '', args: [
        FigArg(
            isVariadic: true,
            isOptional: true,
            name: 'formula',
            description: 'Formula or cask to install',
            generators: [generateAllFormulae, generateAllCasks])
      ], options: [
        ...commonOptions,
        FigOption(
            name: ['--formula', '--formulae'],
            description: 'Treat all named arguments as formulae'),
        FigOption(
            name: ['--cask', '--casks'],
            description: 'Treat all named arguments as casks')
      ]),
      FigSubcommand(
          name: ['home', 'homepage'],
          description:
              'Open a formula, cask\'s homepage in a browser, or open Homebrew\'s own homepage if no argument is provided',
          args: [
            FigArg(
                isVariadic: true,
                isOptional: true,
                name: 'formula',
                description: 'Formula or cask to open homepage for',
                generators: [generateAllFormulae, generateAllCasks])
          ],
          options: [
            ...commonOptions,
            FigOption(
                name: ['--formula', '--formulae'],
                description: 'Treat all named arguments as formulae'),
            FigOption(
                name: ['--cask', '--casks'],
                description: 'Treat all named arguments as casks')
          ]),
      FigSubcommand(
          name: 'alias',
          description: 'Manage custom user created brew aliases',
          options: [
            FigOption(
                name: '--edit', description: 'Edit aliases in a text editor'),
            FigOption(
                name: ['-d', '--debug'],
                description: 'Display any debugging information'),
            FigOption(
                name: ['-q', '--quiet'],
                description: 'Make some output more quiet'),
            FigOption(
                name: ['-v', '--verbose'],
                description: 'Make some output more verbose'),
            FigOption(name: ['-h', '--help'], description: 'Show help message')
          ],
          args: [
            FigArg(
                name: 'alias',
                // TS_UNCONVERTED_START (generators)
                // generateAliases
                // TS_UNCONVERTED_END
                generators: null,
                description: 'Display the alias command',
                isOptional: true)
          ]),
      FigSubcommand(
          name: 'developer',
          description:
              'Display the current state of Homebrew\'s developer mode',
          args: [
            FigArg(
                name: 'state',
                description:
                    'Turn Homebrew\'s developer mode on or off respectively',
                suggestions: [
                  const FigSuggestion(name: 'on'),
                  const FigSuggestion(name: 'off')
                ],
                isOptional: true)
          ])
    ],
    options: [
      FigOption(name: '--version', description: 'The current Homebrew version')
    ],
    args: [
      FigArg(
          name: 'alias',
          // TS_UNCONVERTED_START (generators)
          // generateAliases
          // TS_UNCONVERTED_END
          generators: null,
          description: 'Custom user defined brew alias',
          isOptional: true)
    ]);
