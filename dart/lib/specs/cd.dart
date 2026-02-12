// Auto-generated from TypeScript source: cd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cd` CLI
final FigSpec cdSpec = FigSpec(
  name: 'cd',
  description: 'Change the shell working directory',
  args: [
    Arg(
    filterStrategy: 'fuzzy',
    suggestions: [
      FigSuggestion(
        name: '-',
        description: 'Switch to the last used folder',
        hidden: true
      ),
      FigSuggestion(
        name: '~',
        description: 'Switch to the home directory',
        hidden: true
      )
    ]
  )
  ]
);
