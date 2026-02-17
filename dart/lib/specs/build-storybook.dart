// Auto-generated from TypeScript source: build-storybook.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `build-storybook` CLI
final FigSpec buildStorybookSpec = FigSpec(
  name: 'build-storybook',
  description: 'Storybook build CLI tools',
  options: [

    Option(
      name: ['-o', '--output-dir'],
      description: 'Directory where to store built files',
      args: [
        Arg(
        name: 'directory',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-w', '--watch'],
      description: 'Enables watch mode'
    ),
    Option(
      name: '--loglevel',
      description: 'Controls level of logging during build',
      args: [
        Arg(
        name: 'level',
        suggestions: [

          FigSuggestion(name: 'silly'),
          FigSuggestion(name: 'verbose'),
          FigSuggestion(name: 'info'),
          FigSuggestion(name: 'warn'),
          FigSuggestion(name: 'error'),
          FigSuggestion(name: 'silent')
        ],
        defaultValue: 'info'
      )
      ]
    )
  ]
);
