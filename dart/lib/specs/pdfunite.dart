// Auto-generated from TypeScript source: pdfunite.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pdfunite` CLI
final FigSpec pdfuniteSpec = FigSpec(
  name: 'pdfunite',
  description: 'Combine multiple pdfs',
  options: [
    Option(
      name: '-v',
      description: 'Print copyright and version info'
    ),
    Option(
      name: ['-h', '--help', '-?'],
      description: 'Print usage information'
    )
  ],
  args: [
    Arg(
    isVariadic: true
  )
  ]
);
