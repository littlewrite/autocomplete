// Auto-generated from TypeScript source: top.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `top` CLI
final FigSpec topSpec = FigSpec(
  name: 'top',
  description: 'Display Linux tasks',
  options: [
    Option(
      name: ['-h', '-v'],
      description: 'Show library version and usage prompt'
    ),
    Option(
      name: '-b',
      description: 'Starts top in Batch mode',
      args: [
        Arg(
        name: 'operation'
      )
      ]
    ),
    Option(
      name: '-c',
      description: 'Starts top with last remembered c state reversed',
      args: [
        Arg(
        name: 'toggle'
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Starts top with the last remembered \'i\' state reversed. When this toggle is Off, tasks that are idled or zombied will not be displayed',
      args: [
        Arg(
        name: 'toggle'
      )
      ]
    ),
    Option(
      name: '-s',
      description: 'Starts top with secure mode forced',
      args: [
        Arg(
        name: 'delay'
      )
      ]
    ),
    Option(
      name: '-pid',
      description: 'Monitor pids',
      args: [
        Arg(
        name: 'process ids',
        isVariadic: true
      )
      ]
    )
  ]
);
