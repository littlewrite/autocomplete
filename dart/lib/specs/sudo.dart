// Auto-generated from TypeScript source: sudo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sudo` CLI
final FigSpec sudoSpec = FigSpec(
  name: 'sudo',
  description: 'Execute a command as the superuser or another user',
  options: [
    Option(
      name: ['-g', '--group'],
      description: 'Run command as the specified group name or ID',
      args: [
        Arg(
        name: 'group',
        description: 'Group name or ID'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help message and exit'
    ),
    Option(
      name: ['-u', '--user'],
      description: 'Run command as specified user name or ID',
      args: [
        Arg(
        name: 'user',
        description: 'User name or ID'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'command',
    description: 'Command to run with elevated permissions'
  )
  ]
);
