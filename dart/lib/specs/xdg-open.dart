// Auto-generated from TypeScript source: xdg-open.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `xdg-open` CLI
final FigSpec xdgOpenSpec = FigSpec(
  name: 'xdg-open',
  description: 'Opens a file or URL in the user\'s preferred application',
  args: [
    Arg(
    name: 'FILE or URL',
    template: 'filepaths'
  )
  ],
  options: [

    Option(
      name: '--help',
      description: 'Show command synopsis'
    ),
    Option(
      name: '--manual',
      description: 'Show manual page'
    ),
    Option(
      name: '--version',
      description: 'Show the xdg-utils version information'
    )
  ]
);
