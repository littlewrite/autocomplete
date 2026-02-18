// Auto-generated from TypeScript source: interactive.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `interactive` CLI
final FigSpec interactiveSpec = FigSpec(
  name: 'interactive',
  description: 'Start interactive mode. Installs the Interactive extension if not installed already',
  options: [

    Option(
      name: ['--style', '-s'],
      description: 'The colors of the shell',
      args: [
        Arg(
        name: 'style',
        suggestions: [

          FigSuggestion(name: 'bg'),
          FigSuggestion(name: 'br'),
          FigSuggestion(name: 'contrast'),
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'grey'),
          FigSuggestion(name: 'halloween'),
          FigSuggestion(name: 'neon'),
          FigSuggestion(name: 'none'),
          FigSuggestion(name: 'pastel'),
          FigSuggestion(name: 'primary'),
          FigSuggestion(name: 'purple'),
          FigSuggestion(name: 'quiet')
        ]
      )
      ]
    ),
    Option(
      name: '--update',
      description: 'Update the Interactive extension to the latest available',
      args: [
        Arg(
        name: 'updat'
      )
      ]
    )
  ]
);
