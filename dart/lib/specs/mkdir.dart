// Auto-generated from TypeScript source: mkdir.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mkdir` CLI
final FigSpec mkdirSpec = FigSpec(
  name: 'mkdir',
  description: 'Make directories',
  args: [
    Arg(
    name: 'directory name',
    template: 'folders'
  )
  ],
  options: [
    Option(
      name: ['-m', '--mode'],
      description: 'Set file mode (as in chmod), not a=rwx - umask',
      args: [
        Arg(
        name: 'mod'
      )
      ]
    ),
    Option(
      name: ['-p', '--parents'],
      description: 'No error if existing, make parent directories as needed'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Print a message for each created directory'
    ),
    Option(
      name: ['-Z', '--context'],
      description: 'Set the SELinux security context of each created directory',
      args: [
        Arg(
        name: 'contex'
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Display this help and exit'
    ),
    Option(
      name: '--version',
      description: 'Output version information and exit'
    )
  ]
);
