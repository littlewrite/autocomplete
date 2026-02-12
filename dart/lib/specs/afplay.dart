// Auto-generated from TypeScript source: afplay.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `afplay` CLI
final FigSpec afplaySpec = FigSpec(
  name: 'afplay',
  description: 'Audio File Play',
  args: [
    Arg(
    template: 'filepaths',
    name: 'play the song in the path'
  )
  ],
  options: [
    Option(
      name: ['-v', '--volume'],
      args: [
        Arg(
        name: '0 (silent) - 1 (normal) - 255 (very loud)'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help'
    ),
    Option(
      name: '--leaks',
      description: 'Run leaks analysis'
    ),
    Option(
      name: ['-t', '--time'],
      args: [
        Arg(
        name: 'TIME'
      )
      ]
    ),
    Option(
      name: ['-r', '--rate'],
      args: [
        Arg(
        name: 'RATE'
      )
      ]
    ),
    Option(
      name: ['-q', '--rQuality'],
      args: [
        Arg(
        name: 'QUALITY',
        description: '0 (low) -1 (high)'
      )
      ]
    ),
    Option(
      name: ['-d', '--debug']
    )
  ]
);
