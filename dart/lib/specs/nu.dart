// Auto-generated from TypeScript source: nu.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nu` CLI
final FigSpec nuSpec = FigSpec(
  name: 'nu',
  description: 'Use the right package manage - upgrade',
  options: [

    Option(
      name: '-i',
      description: 'Display the outdated packages before performing any upgrade'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Output usage information'
    )
  ]
);
