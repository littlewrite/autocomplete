// Auto-generated from TypeScript source: vale.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vale` CLI
final FigSpec valeSpec = FigSpec(
  name: 'vale',
  description: 'A syntax-aware linter for prose built with speed and extensibility in mind',
  subcommands: [

    Subcommand(
      name: 'ls-config',
      description: 'Print the current configuration to stdout'
    ),
    Subcommand(
      name: 'ls-metrics',
      description: 'Print the given file\'s internal metrics to stdout',
      args: [
        Arg(
        name: 'file',
        description: 'The path to a file you want to analyze'
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for vale'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Print the current version'
    ),
    Option(
      name: '--ignore-syntax',
      description: 'Lint all files line-by-line'
    ),
    Option(
      name: '--no-exit',
      description: 'Don\'t return a nonzero exit code on errors'
    ),
    Option(
      name: '--no-wrap',
      description: 'Don\'t wrap CLI output'
    ),
    Option(
      name: '--ext',
      description: 'An extension to associate with stdin',
      args: [
        Arg(
        name: 'ext',
        suggestions: [

          FigSuggestion(name: '.md'),
          FigSuggestion(name: '.rst'),
          FigSuggestion(name: '.adoc'),
          FigSuggestion(name: '.html')
        ]
      )
      ]
    ),
    Option(
      name: '--glob',
      description: 'A glob pattern',
      args: [
        Arg(
        name: 'glob'
      )
      ]
    ),
    Option(
      name: '--minAlertLevel',
      description: 'The minimum level to display',
      args: [
        Arg(
        name: 'level',
        suggestions: [

          FigSuggestion(name: 'suggestion'),
          FigSuggestion(name: 'warning'),
          FigSuggestion(name: 'error')
        ]
      )
      ]
    ),
    Option(
      name: '--output',
      description: 'The alert output style to use',
      args: [
        Arg(
        name: 'style',
        suggestions: [

          FigSuggestion(name: 'line'),
          FigSuggestion(name: 'JSON')
        ]
      )
      ]
    ),
    Option(
      name: '--config',
      description: 'A path to a .vale.ini file',
      args: [
        Arg(
        name: 'path'
      )
      ]
    )
  ],
  args: [
    Arg(
    template: ['filepaths', 'folders'],
    isVariadic: true
  )
  ]
);
