// Auto-generated from TypeScript source: subl.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `subl` CLI
final FigSpec sublSpec = FigSpec(
  name: 'subl',
  description: 'Sublime Text',
  args: [
    Arg(
    name: 'files|directories',
    isVariadic: true,
    isOptional: true,
    template: ['folders', 'filepaths']
  )
  ],
  options: [
    Option(
      name: '--project',
      description: 'Load the given project',
      args: [
        Arg(
        name: 'project'
      )
      ]
    ),
    Option(
      name: '--command',
      description: 'Run the given command',
      args: [
        Arg(
        name: 'command'
      )
      ]
    ),
    Option(
      name: ['-n', '--new-window'],
      description: 'Open a new window',
      exclusiveOn: ['-a']
    ),
    Option(
      name: ['-a', '--add'],
      description: 'Add folders to the current window',
      exclusiveOn: ['-n']
    ),
    Option(
      name: '--launch-or-new-window',
      description: 'Only open a new window if the application is open'
    ),
    Option(
      name: ['-w', '--wait'],
      description: 'Wait for the files to be closed before returning'
    ),
    Option(
      name: ['-b', '--background'],
      description: 'Don\'t activate the application'
    ),
    Option(
      name: ['-s', '--stay'],
      description: 'Keep the application activated after closing the file'
    ),
    Option(
      name: '--safe-mode',
      description: 'Launch using a clean environment'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show a help message and exit'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show the version and exit'
    )
  ]
);
