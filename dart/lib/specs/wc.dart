// Auto-generated from TypeScript source: wc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wc` CLI
final FigSpec wcSpec = FigSpec(
  name: 'wc',
  description: 'World, line, character, and byte count',
  options: [

    Option(
      name: '-c',
      description: 'Output the number of bytes to the standard input'
    ),
    Option(
      name: '-l',
      description: 'Output the number of lines to the standard input'
    ),
    Option(
      name: '-m',
      description: 'Output the number of characters to the standard input'
    ),
    Option(
      name: '-w',
      description: 'Output the number of words to the standard input'
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'File to count in',
    template: 'filepaths',
    isOptional: true,
    isVariadic: true
  )
  ]
);
