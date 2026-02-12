// Auto-generated from TypeScript source: mob.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mob` CLI
final FigSpec mobSpec = FigSpec(
  name: 'mob',
  description: 'Fast git handover for remote collaboration with mob.sh',
  subcommands: [
    Subcommand(
      name: ['start', 's'],
      description: 'Start session from base branch in wip branch',
      options: [
        Option(
          name: ['--include-uncommitted-changes', '-i'],
          description: 'Move uncommitted changes to wip branch'
        ),
        Option(
          name: ['--branch', '-b'],
          description: 'Set wip branch to \'mob/<base-branch>/<branch-postfix>\'',
          args: [
            Arg(
            name: 'branch-postfix'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'minutes',
        description: 'Start a <minutes> timer',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['next', 'n'],
      description: 'Handover changes in wip branch to next person',
      options: [
        Option(
          name: ['--stay', '-s'],
          description: 'Stay on wip branch (default)'
        ),
        Option(
          name: ['--return-to-base-branch', '-r'],
          description: 'Return to base branch'
        ),
        Option(
          name: ['--message', '-m'],
          description: 'Override commit message',
          args: [
            Arg(
            name: 'commit-message'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['done', 'd'],
      description: 'Squashes all changes in wip branch to index in base branch',
      options: [
        Option(
          name: '--no-squash',
          description: 'Squash no commits from wip branch, only merge wip branch'
        ),
        Option(
          name: '--squash',
          description: 'Squash all commits from wip branch'
        ),
        Option(
          name: '--squash-wip',
          description: 'Squash wip commits from wip branch, maintaining manual commits'
        )
      ]
    ),
    Subcommand(
      name: 'reset',
      description: 'Removes local and remote wip branch',
      options: [
        Option(
          name: ['--branch', '-b'],
          description: 'Set wip branch to \'mob/<base-branch>/<branch-postfix>\'',
          args: [
            Arg(
            name: 'branch-postfix'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'clean',
      description: 'Removes all orphan wip branches'
    ),
    Subcommand(
      name: ['timer', 't'],
      description: 'Start a <minutes> timer',
      args: [
        Arg(
        name: 'minutes'
      )
      ]
    ),
    Subcommand(
      name: 'break',
      description: 'Start a <minutes> break timer',
      args: [
        Arg(
        name: 'minutes'
      )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Show the status of the current session'
    ),
    Subcommand(
      name: 'fetch',
      description: 'Fetch remote state'
    ),
    Subcommand(
      name: ['branch', 'b'],
      description: 'Show remote wip branches'
    ),
    Subcommand(
      name: 'config',
      description: 'Show all configuration options'
    ),
    Subcommand(
      name: 'version',
      description: 'Show the version'
    ),
    Subcommand(
      name: 'help',
      description: 'Show help'
    ),
    Subcommand(
      name: 'moo',
      description: 'Moo!'
    )
  ],
  options: [
    Option(
      name: '--debug',
      description: 'Enable verbose logging'
    )
  ]
);
