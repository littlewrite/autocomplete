// Auto-generated from TypeScript source: trunk.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

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
        )
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
