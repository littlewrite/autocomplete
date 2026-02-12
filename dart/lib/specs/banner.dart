// Auto-generated from TypeScript source: banner.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `banner` CLI
final FigSpec bannerSpec = FigSpec(
  name: 'banner',
  description: 'Prints a large, high quality banner on the standard output',
  args: [
    Arg(
    name: 'tex'
  )
  ],
  options: [
    Option(
      name: '-t',
      description: 'Enable trace'
    ),
    Option(
      name: '-d',
      description: 'Enable debug'
    ),
    Option(
      name: '-w',
      description: 'Change the output from a width of 132 to width, suitable for a narrow terminal'
    )
  ]
);
