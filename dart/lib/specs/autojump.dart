// Auto-generated from TypeScript source: autojump.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `autojump` CLI
final FigSpec autojumpSpec = FigSpec(
  name: 'autojump',
  description: 'A faster way to navigate your filesystem',
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Show the help message and exit'
    ),
    Option(
      name: ['-a', '--add'],
      description: 'Add path',
      args: [
        Arg(
        name: 'directory',
        template: ['folders']
      )
      ]
    ),
    Option(
      name: ['-i', '--increase'],
      description: 'Increase current directory weight',
      args: [
        Arg(
        name: 'weight'
      )
      ]
    ),
    Option(
      name: ['-d', '--decrease'],
      description: 'Decrease current directory weight',
      args: [
        Arg(
        name: 'weight'
      )
      ]
    ),
    Option(
      name: '--complete',
      description: 'Used for tab completion'
    ),
    Option(
      name: '--purge',
      description: 'Remove non-existent paths from database'
    ),
    Option(
      name: ['-s', '--stat'],
      description: 'Show database entries and their key weights'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show version information'
    )
  ]
);
