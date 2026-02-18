// Auto-generated from TypeScript source: next.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `next` CLI
final FigSpec nextSpec = FigSpec(
  name: 'next',
  description: 'Recommend the possible next set of commands to take',
  options: [

    Option(
      name: ['--command', '-c'],
      description: 'Specify this parameter will only recommend commands'
    ),
    Option(
      name: ['--scenario', '-s'],
      description: 'Specify this parameter will only recommend E2E scenarios'
    )
  ]
);
