// Auto-generated from TypeScript source: source.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `source` CLI
final FigSpec sourceSpec = FigSpec(
  name: 'source',
  description: 'Source files in shell',
  args: [
    Arg(
    isVariadic: true,
    name: 'File to source',
    template: 'filepaths'
  )
  ]
);
