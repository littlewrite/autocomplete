// Auto-generated from TypeScript source: head.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `head` CLI
final FigSpec headSpec = FigSpec(
  name: 'head',
  description: 'Output the first part of files',
  args: [
    Arg(
    name: 'file',
    template: 'filepaths'
  )
  ],
  options: [

    Option(
      name: ['-c', '--bytes'],
      description: 'Print the first [numBytes] bytes of each file',
      args: [
        Arg(
        name: 'numByte'
      )
      ]
    ),
    Option(
      name: ['-n', '--lines'],
      description: 'Print the first [numLines] lines instead of the first 10',
      args: [
        Arg(
        name: 'numLine'
      )
      ]
    ),
    Option(
      name: ['-q', '--quiet', '--silent'],
      description: 'Never print headers giving file names'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Always print headers giving file names'
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
