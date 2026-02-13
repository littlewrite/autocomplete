// Auto-generated from TypeScript source: trunk.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> checkAndFormatSharedOptions = [

  Option(
    name: ['-a', '--all'],
    description: 'Run on all files instead of only changed files'
  ),
  Option(
    name: ['-n', '--no-fix'],
    description: 'Don\'t automatically apply fixes'
  ),
  Option(
    name: '--include-existing-autofixes',
    description: 'Show autofixes for existing issues'
  ),
  Option(
    name: '--force',
    description: 'Run on all files, even if ignored'
  ),
  Option(
    name: '--diff',
    description: 'Diff printing mode',
    args: [
      Arg(
      name: 'mode',
      suggestions: [

        FigSuggestion(name: 'none'),
        FigSuggestion(name: 'compact'),
        FigSuggestion(name: 'full')
      ]
    )
    ]
  ),
  Option(
    name: '--filter',
    description: 'Filter the set of executed linters and/or the returned codes; use a leading \'-\' to exclude a linter or code',
    args: [
      Arg(
      name: 'linter or code',
      isVariadic: true
    )
    ]
  ),
  Option(
    name: '--exclude',
    description: 'Shorthand for an inverse --filter',
    args: [
      Arg(
      name: 'linter or code',
      isVariadic: true
    )
    ]
  ),
  Option(
    name: ['-j', '--jobs'],
    description: 'Number of concurrent jobs (does not affect background linting)',
    args: [
      Arg(
      name: 'number'
    )
    ]
  ),
  Option(
    name: '--sample',
    description: 'Run each linter on N files (implies --no-fix and --all if no paths are given)',
    args: [

      Arg(
        name: 'N'
      ),
      Arg(
        name: 'paths',
        isOptional: true,
        isVariadic: true,
        template: 'filepaths'
      )
    ]
  ),
  Option(
    name: '--upstream',
    description: 'Upstream branch used to compute changed files (autodetected by default)',
    args: [
      Arg(
      name: 'branch'
    )
    ]
  )
];

/// Completion spec for `trunk` CLI
final FigSpec trunkSpec = FigSpec(
  name: 'trunk',
  description: 'An all-in-one tool for scalably checking, formatting, and monitoring code',
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Setup trunk in this repo',
      options: [

        Option(
          name: '--lock',
          description: 'Add sha256s to trunk.yaml for additional verification'
        ),
        Option(
          name: '--check-sample',
          description: 'Run `trunk check sample` without prompting',
          exclusiveOn: ['--nocheck-sample']
        ),
        Option(
          name: '--nocheck-sample',
          description: 'Do not run `trunk check sample` post-init',
          exclusiveOn: ['--check-sample']
        ),
        Option(
          name: '--force',
          description: 'Overwrite existing trunk.yaml'
        )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Universal code checker',
      options: [

        Option(
          name: ['-y', '--fix'],
          description: 'Automatically apply all fixes without prompting'
        ),
        ...checkAndFormatSharedOptions
      ],
      subcommands: [

        Subcommand(
          name: 'upgrade',
          description: 'Upgrade all linters to latest versions',
          args: [
            Arg(
            name: 'linters',
            description: 'Linter(s) to upgrade (upgrades all if none specified)',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Download all files needed for trunk to work offline',
          args: [
            Arg(
            name: 'tools',
            description: 'Tool(s) to download (if omitted, downloads all configured tools)',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable linters',
          args: [
            Arg(
            name: 'linters',
            description: 'Linter(s) to enable',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'disable',
          description: 'Disable linters',
          args: [
            Arg(
            name: 'linters',
            description: 'Linter(s) to disable',
            isVariadic: true
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'paths',
        isVariadic: true,
        isOptional: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'fmt',
      description: 'Universal code formatter',
      options: checkAndFormatSharedOptions,
      args: [
        Arg(
        name: 'paths',
        isVariadic: true,
        isOptional: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade trunk to the latest release'
    ),
    Subcommand(
      name: 'git-hooks',
      description: 'Git hooks',
      subcommands: [

        Subcommand(
          name: 'install',
          description: 'Install trunk git hooks'
        )
      ]
    ),
    Subcommand(
      name: 'cache',
      description: 'Cache management',
      subcommands: [

        Subcommand(
          name: 'clean',
          description: 'Clean the cache',
          options: [

            Option(
              name: '--all',
              description: 'Delete all files (including results cache)'
            ),
            Option(
              name: ['-n', '--dry-run'],
              description: 'Print all directories that would be cleaned out without running deletion'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'print-config',
      description: 'Print the resolved trunk config'
    ),
    Subcommand(
      name: 'daemon',
      description: 'Daemon management',
      subcommands: [

        Subcommand(
          name: 'launch',
          description: 'Start the trunk daemon if its not already running'
        ),
        Subcommand(
          name: 'shutdown',
          description: 'Shutdown the trunk daemon if it is running'
        ),
        Subcommand(
          name: 'status',
          description: 'Report daemon status'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Usage information',
      isPersistent: true
    ),
    Option(
      name: '--version',
      description: 'The version',
      isPersistent: true
    ),
    Option(
      name: ['-m', '--monitor'],
      description: 'Enable the trunk daemon to monitor file changes in your repo',
      isPersistent: true,
      args: [
        Arg(
        name: 'value',
        suggestions: [

          FigSuggestion(name: 'true'),
          FigSuggestion(name: 'false')
        ]
      )
      ]
    ),
    Option(
      name: '--ci',
      description: 'Run in continuous integration mode',
      isPersistent: true
    ),
    Option(
      name: ['-o', '--output'],
      description: 'Output format',
      isPersistent: true,
      args: [
        Arg(
        name: 'format',
        suggestions: [

          FigSuggestion(name: 'text'),
          FigSuggestion(name: 'json')
        ]
      )
      ]
    ),
    Option(
      name: '--no-progress',
      description: 'Don\'t show progress updates',
      isPersistent: true,
      exclusiveOn: ['--ci-progress']
    ),
    Option(
      name: '--ci-progress',
      description: 'Show updates every 30 seconds without clearing terminal screen (implicit with --ci)',
      isPersistent: true,
      exclusiveOn: ['--no-progress']
    ),
    Option(
      name: '--action_timeout',
      description: 'How long actions (downloads, lint runs, etc.) have to time out, with units (s, ms, etc)',
      isPersistent: true,
      args: [
        Arg(
        name: 'timeout'
      )
      ]
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Output details about what\'s happening under the hood',
      isPersistent: true
    )
  ]
);
