// Auto-generated from TypeScript source: ldd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ldd` CLI
final FigSpec lddSpec = FigSpec(
  name: 'ldd',
  description: 'Print shared library dependencies',
  options: [

    Option(
      name: '--help',
      description: 'Show help for ldd'
    ),
    Option(
      name: '--version',
      description: 'Print version information and exit'
    ),
    Option(
      name: ['-d', '--data-relocs'],
      description: 'Process data relocations'
    ),
    Option(
      name: ['-r', '--function-relocs'],
      description: 'Process data and function relocations'
    ),
    Option(
      name: ['-u', '--unused'],
      description: 'Print unused direct dependencies'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Print all information'
    )
  ],
  args: [
    Arg(
    name: 'exe',
    template: 'filepaths',
    isVariadic: true
  )
  ]
);
