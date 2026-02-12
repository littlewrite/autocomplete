// Auto-generated from TypeScript source: svn.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `svn` CLI
final FigSpec svnSpec = FigSpec(
  name: 'svn',
  description: 'The first content tracker',
  subcommands: [
    Subcommand(
      name: ['help', 'h'],
      description: 'Show help for svn',
      args: [
        Arg(
        name: 'subcommand',
        description: 'Help about specific subcommand',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['status', 'st'],
      description: 'Show the working tree status'
    ),
    Subcommand(
      name: 'info',
      description: 'Show information about a local or remote item'
    ),
    Subcommand(
      name: ['checkout', 'co'],
      description: 'Check out a working copy from a repository',
      args: [
        Arg(
        name: 'repository',
        description: 'The repository you want to checkout'
      )
      ]
    ),
    Subcommand(
      name: ['commit', 'ci'],
      description: 'Commit to a repository',
      options: [
        Option(
          name: ['-m', '--message'],
          insertValue: '-m \'{cursor}\'',
          description: 'Use the given message as the commit message',
          args: [
            Arg(
            name: 'message'
          )
          ],
          priority: 100
        )
      ]
    )
  ],
  options: [
    Option(
      name: '--version',
      isPersistent: false,
      description: 'Show help for svn'
    ),
    Option(
      name: '--verbose',
      dependsOn: ['--version'],
      description: 'Show help for svn'
    ),
    Option(
      name: '--quiet',
      dependsOn: ['--version'],
      description: 'Show help for svn'
    )
  ]
);
