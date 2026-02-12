// Auto-generated from TypeScript source: progressline.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `progressline` CLI
final FigSpec progresslineSpec = FigSpec(
  name: 'progressline',
  description: '⏳Track commands progress in a compact one-line format',
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for progressline'
    ),
    Option(
      name: ['--log-all', '-a'],
      description: 'Log all lines above the progress line'
    ),
    Option(
      name: ['--static-text', '-t'],
      description: 'Set static text to display instead of the latest stdin data',
      args: [
        Arg(
        name: 'text'
      )
      ]
    ),
    Option(
      name: ['--activity-style', '-s'],
      args: [
        Arg(
        name: 'style',
        defaultValue: 'dots',
        suggestions: [
          FigSuggestion(name: 'dots'),
          FigSuggestion(name: 'kitt'),
          FigSuggestion(name: 'snake')
        ]
      )
      ],
      description: 'Set style of the activity indicator'
    ),
    Option(
      name: ['--original-log-path', '-l'],
      description: 'Save the original log to a file',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--log-matches', '-m'],
      description: 'Log above progress line lines matching the given regular expressions',
      args: [
        Arg(
        name: 'regex'
      )
      ]
    )
  ]
);
