// Auto-generated from TypeScript source: ncu.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ncu` CLI
final FigSpec ncuSpec = FigSpec(
  name: 'ncu',
  description: 'Upgrade your npm package.json dependencies to the latest versions, ignoring specified versions',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  args: [
    Arg(
    name: 'filter',
    description: 'A list or regex of package names to check (all others will be ignored)',
    isOptional: true,
    isVariadic: true
  )
  ],
  options: []
);
