// Auto-generated from TypeScript source: tee.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tee` CLI
final FigSpec teeSpec = FigSpec(
  name: 'tee',
  description: 'Duplicate standard input',
  options: [
    Option(
      name: '-a',
      description: 'Append the output to the files rather than overwriting them'
    ),
    Option(
      name: '-i',
      description: 'Ignore the SIGINT signal'
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'Pathname of an output file',
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
