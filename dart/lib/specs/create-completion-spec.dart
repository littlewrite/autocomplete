// Auto-generated from TypeScript source: create-completion-spec.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `create-completion-spec` CLI
final FigSpec createCompletionSpecSpec = FigSpec(
  name: 'create-completion-spec',
  description: 'Setup fig folder and create spec with the given name',
  subcommands: [
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      priority: 49,
      args: [
        Arg(
        name: 'command'
      )
      ]
    )
  ],
  options: [
    Option(
      name: '--here',
      description: 'Set if the spec should be created in the current folder'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ],
  args: [
    Arg(
    name: 'nam'
  )
  ]
);
