// Auto-generated from TypeScript source: rmdir.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rmdir` CLI
final FigSpec rmdirSpec = FigSpec(
  name: 'rmdir',
  description: 'Remove directories',
  args: [
    Arg(
    isVariadic: true,
    template: 'folders'
  )
  ],
  options: [
    Option(
      name: '-p',
      description: 'Remove each directory of path',
      isDangerous: true
    )
  ]
);
