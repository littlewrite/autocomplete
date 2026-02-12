// Auto-generated from TypeScript source: basename.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `basename` CLI
final FigSpec basenameSpec = FigSpec(
  name: 'basename',
  description: 'Return filename portion of pathname',
  options: [
    Option(
      name: '-a',
      description: 'Treat every argument as a string'
    ),
    Option(
      name: '-s',
      description: 'Suffix to remove from string',
      args: [
        Arg(
        name: 'suffix'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'string',
    description: 'String to operate on (typically filenames)',
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
