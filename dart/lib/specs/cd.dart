// AI-generated from TypeScript source: cd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cd` CLI
final FigSpec cdSpec = FigSpec(
    name: 'cd',
    description: 'Change the shell working directory',
    args: [
      Arg(
          template: 'folders',
          filterStrategy: 'fuzzy',
          // Add an additional hidden suggestion so users can execute on it if they want to
          suggestions: [
            const FigSuggestion(
                name: '-',
                description: 'Switch to the last used folder',
                hidden: true),
            const FigSuggestion(
                name: '~',
                description: 'Switch to the home directory',
                hidden: true)
          ])
    ]);
