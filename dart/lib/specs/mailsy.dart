// Auto-generated from TypeScript source: mailsy.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mailsy` CLI
final FigSpec mailsySpec = FigSpec(
  name: 'mailsy',
  description: '⚡️ Quickly generate a disposable email straight from terminal',
  subcommands: [
    Subcommand(
      name: 'g',
      description: 'Generate a new email'
    ),
    Subcommand(
      name: 'm',
      description: 'Fetch messages from the inbox'
    ),
    Subcommand(
      name: 'd',
      description: 'Delete account'
    ),
    Subcommand(
      name: 'me',
      description: 'Show details of the account'
    ),
    Subcommand(
      name: 'help',
      description: 'Get help for a command',
      args: [
        Arg(
        name: 'command',
        isOptional: true,
        template: 'hel'
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['-v', '--version'],
      description: 'Output the current version'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49,
      isPersistent: true
    )
  ]
);
