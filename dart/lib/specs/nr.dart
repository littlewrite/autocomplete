// Auto-generated from TypeScript source: nr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nr` CLI
final FigSpec nrSpec = FigSpec(
  name: 'nr',
  description: 'Use the right package manager - run',
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Output usage information'
    )
  ],
  args: [
    Arg(
    name: 'script',
    description: 'The script to run',
    filterStrategy: 'fuzzy'
  )
  ],
  additionalSuggestions: [
    FigSuggestion(
      name: '-',
      insertValue: '-\n',
      description: 'Run the last command'
    )
  ]
);
