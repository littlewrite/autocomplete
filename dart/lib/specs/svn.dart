// Auto-generated from TypeScript source: svn.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> globalOptions = [

  Option(
    name: '--username',
    insertValue: '--username \'{cursor}\'',
    description: 'Specify a username ARG',
    priority: 95,
    args: [
      Arg(
      name: 'username'
    )
    ]
  ),
  Option(
    name: '--password',
    insertValue: '--password \'{cursor}\'',
    description: 'Specify a password ARG',
    priority: 94,
    args: [
      Arg(
      name: 'password'
    )
    ]
  ),
  Option(
    name: '--password-from-stdin',
    insertValue: '--password-from-stdin \'{cursor}\'',
    description: 'Read password from stdin'
  ),
  Option(
    name: '--no-auth-cache',
    description: 'Do not cache authentication tokens'
  ),
  Option(
    name: '--non-interactive',
    description: 'Do no interactive prompting (default is to prompt only if standard input is a terminal device)'
  ),
  Option(
    name: '--force-interactive',
    description: 'Do interactive prompting even if standard input is not a terminal device'
  ),
  Option(
    name: '--trust-server-cert',
    insertValue: '--password \'{cursor}\'',
    description: 'Specify a password ARG',
    args: [
      Arg(
      name: 'message'
    )
    ]
  ),
  Option(
    name: '--trust-server-cert-failures',
    insertValue: '--password \'{cursor}\'',
    description: 'Specify a password ARG',
    args: [
      Arg(
      name: 'message'
    )
    ]
  ),
  Option(
    name: '--config-dir',
    insertValue: '--config-dir \'{cursor}\'',
    description: 'Read user configuration files from directory ARG',
    args: [
      Arg(
      name: 'message'
    )
    ]
  ),
  Option(
    name: '--config-option',
    insertValue: '--config-option \'{cursor}\'',
    description: 'Specify a password ARG',
    args: [
      Arg(
      name: 'message'
    )
    ]
  )
];

final List<FigSuggestion> subcommandsList = [

  FigSuggestion(
    name: 'add'
  ),
  FigSuggestion(
    name: 'auth'
  ),
  FigSuggestion(
    name: ['blame', 'praise', 'annotate', 'ann']
  ),
  FigSuggestion(
    name: 'cat'
  ),
  FigSuggestion(
    name: ['changelist', 'cl']
  ),
  FigSuggestion(
    name: ['checkout', 'co']
  ),
  FigSuggestion(
    name: 'cleanup'
  ),
  FigSuggestion(
    name: ['commit', 'ci']
  ),
  FigSuggestion(
    name: ['copy', 'cp']
  ),
  FigSuggestion(
    name: ['delete', 'del', 'remove', 'rm']
  ),
  FigSuggestion(
    name: ['diff', 'di']
  ),
  FigSuggestion(
    name: 'export'
  ),
  FigSuggestion(
    name: ['help', '?', 'h']
  ),
  FigSuggestion(
    name: 'import'
  ),
  FigSuggestion(
    name: 'info'
  ),
  FigSuggestion(
    name: ['list', 'ls']
  ),
  FigSuggestion(
    name: 'lock'
  ),
  FigSuggestion(
    name: 'log'
  ),
  FigSuggestion(
    name: 'merge'
  ),
  FigSuggestion(
    name: 'mergeinfo'
  ),
  FigSuggestion(
    name: 'mkdir'
  ),
  FigSuggestion(
    name: ['move', 'mv', 'rename', 'ren']
  ),
  FigSuggestion(
    name: 'patch'
  ),
  FigSuggestion(
    name: ['propdel', 'pdel', 'pd']
  ),
  FigSuggestion(
    name: ['propedit', 'pedit', 'pe']
  ),
  FigSuggestion(
    name: ['propget', 'pget', 'pg']
  ),
  FigSuggestion(
    name: ['proplist', 'plist', 'pl']
  ),
  FigSuggestion(
    name: ['propset', 'pset', 'ps']
  ),
  FigSuggestion(
    name: 'relocate'
  ),
  FigSuggestion(
    name: 'resolve'
  ),
  FigSuggestion(
    name: 'resolved'
  ),
  FigSuggestion(
    name: 'revert'
  ),
  FigSuggestion(
    name: ['status', 'stat', 'st']
  ),
  FigSuggestion(
    name: ['switch', 'sw']
  ),
  FigSuggestion(
    name: 'unlock'
  ),
  FigSuggestion(
    name: ['update', 'up']
  ),
  FigSuggestion(
    name: 'upgrade'
  )
];

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
        isOptional: true,
        suggestions: subcommandsList
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
        ),
        ...globalOptions
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
