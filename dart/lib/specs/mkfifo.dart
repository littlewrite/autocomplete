// Auto-generated from TypeScript source: mkfifo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mkfifo` CLI
final FigSpec mkfifoSpec = FigSpec(
  name: 'mkfifo',
  description: 'Make FIFOs (first-in, first-out)',
  options: [
    Option(
      name: '-m',
      description: 'Set the file permission bits of newly-created fifos to mode, without respect to the current umask; the mode is specified as in chmod(1)',
      args: [
        Arg(
        name: 'MODE',
        suggestions: [
          FigSuggestion(name: '0666'),
          FigSuggestion(name: '0644'),
          FigSuggestion(name: '0444')
        ],
        defaultValue: '0666'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'FIFO',
    description: 'FIFO(s) to create',
    isVariadic: true
  )
  ]
);
