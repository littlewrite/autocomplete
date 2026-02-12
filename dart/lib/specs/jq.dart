// Auto-generated from TypeScript source: jq.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `jq` CLI
final FigSpec jqSpec = FigSpec(
  name: 'jq',
  description: 'Command-line JSON processor',
  args: [
    Arg(
      name: 'filter',
      description: 'Must be enclosed in single quotes'
    ),
    Arg(
      name: 'files',
      template: 'filepaths',
      isOptional: true,
      isVariadic: true
    )
  ]
);
