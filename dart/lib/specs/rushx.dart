// Auto-generated from TypeScript source: rushx.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rushx` CLI
final FigSpec rushxSpec = FigSpec(
  name: 'rushx',
  description: 'Run arbitrary package scripts for rush project. analogous to npm run',
  args: [
    Arg(
    name: 'Scripts',
    description: 'Script to run from your package.json',
    filterStrategy: 'fuzzy'
  )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Show this help message and exit'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Hide rushx startup information'
    )
  ]
);
