// Auto-generated from TypeScript source: dirname.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dirname` CLI
final FigSpec dirnameSpec = FigSpec(
  name: 'dirname',
  description: 'Return directory portion of pathname',
  args: [
    Arg(
    name: 'string',
    description: 'String to operate on (typically filenames)',
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
