// Auto-generated from TypeScript source: w.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `w` CLI
final FigSpec wSpec = FigSpec(
  name: 'w',
  description: 'Display who is logged in and what they are doing',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [

    Option(
      name: '-h',
      description: 'Suppress the heading'
    ),
    Option(
      name: '-i',
      description: 'Output is sorted by idle time'
    )
  ],
  args: [
    Arg(
    name: 'user',
    isVariadic: true,
    isOptional: true
  )
  ]
);
