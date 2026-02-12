// Auto-generated from TypeScript source: lima.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `lima` CLI
final FigSpec limaSpec = FigSpec(
  name: 'lima',
  description: 'Lima is an alias for "limactl shell \$LIMA_INSTANCE"',
  args: [
    Arg(
    name: 'COMMAND',
    isVariadic: true,
    isOptional: true
  )
  ],
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Help for lima'
    )
  ]
);
