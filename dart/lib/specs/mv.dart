// Auto-generated from TypeScript source: mv.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mv` CLI
final FigSpec mvSpec = FigSpec(
  name: 'mv',
  description: 'Move & rename files and folders',
  args: [
    Arg(
      name: 'source',
      isVariadic: true,
      template: ['filepaths', 'folders']
    ),
    Arg(
      name: 'target',
      template: ['filepaths', 'folders']
    )
  ],
  options: [
    Option(
      name: '-f',
      description: 'Do not prompt for confirmation before overwriting the destination path',
      exclusiveOn: ['-i', '-n']
    ),
    Option(
      name: '-i',
      description: 'Cause mv to write a prompt to standard error before moving a file that would overwrite an existing file',
      exclusiveOn: ['-f', '-n']
    ),
    Option(
      name: '-n',
      description: 'Do not overwrite existing file',
      exclusiveOn: ['-f', '-i']
    ),
    Option(
      name: '-v',
      description: 'Cause mv to be verbose, showing files after they are moved'
    )
  ]
);
