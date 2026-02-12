// Auto-generated from TypeScript source: for.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `for` CLI
final FigSpec forSpec = FigSpec(
  name: 'for',
  description: 'Perform a set of commands multiple times',
  args: [
    Arg(
      name: 'var'
    ),
    Arg(
      suggestions: [
        FigSuggestion(name: 'in')
      ]
    ),
    Arg(
      name: 'values',
      isVariadic: true
    )
  ]
);
