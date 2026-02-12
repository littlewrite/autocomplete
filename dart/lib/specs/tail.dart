// Auto-generated from TypeScript source: tail.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tail` CLI
final FigSpec tailSpec = FigSpec(
  name: 'tail',
  description: 'Display the last part of a file',
  args: [
    Arg(
    isVariadic: true,
    template: 'filepaths'
  )
  ],
  options: [
    Option(
      name: '-f',
      description: 'Wait for additional data to be appended'
    ),
    Option(
      name: '-r',
      description: 'Display in reverse order'
    )
  ]
);
