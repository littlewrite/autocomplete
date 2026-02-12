// Auto-generated from TypeScript source: htop.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `htop` CLI
final FigSpec htopSpec = FigSpec(
  name: 'htop',
  description: 'Improved top (interactive process viewer)',
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for htop'
    ),
    Option(
      name: ['--no-color', '-C'],
      description: 'Use a monochrome color scheme'
    ),
    Option(
      name: ['--delay', '-d'],
      description: 'Delay between updates, in tenths of sec',
      args: [
        Arg(
        name: 'delay',
        suggestions: [
          FigSuggestion(name: '10'),
          FigSuggestion(name: '1'),
          FigSuggestion(name: '60')
        ]
      )
      ]
    ),
    Option(
      name: ['--filter', '-F'],
      description: 'Filter commands',
      args: [
        Arg(
        name: 'filter'
      )
      ]
    ),
    Option(
      name: ['--highlight-changes', '-H'],
      description: 'Highlight new and old processes',
      args: [
        Arg(
        name: 'delay',
        description: 'Delay between updates of highlights, in tenths of sec',
        suggestions: [
          FigSuggestion(name: '10'),
          FigSuggestion(name: '1'),
          FigSuggestion(name: '60')
        ],
        isOptional: true
      )
      ]
    ),
    Option(
      name: ['--no-mouse', '-M'],
      description: 'Disable the mouse'
    ),
    Option(
      name: ['--pid', '-p'],
      description: 'Show only the given PIDs',
      args: [
        Arg(
        name: 'PID',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['--sort-key', '-s'],
      description: 'Sort by COLUMN in list view',
      args: [
        Arg(
        name: 'column'
      )
      ]
    ),
    Option(
      name: ['--tree', '-t'],
      description: 'Show the tree view'
    ),
    Option(
      name: ['--user', '-u'],
      description: 'Show only processes for a given user (or \$USER)',
      args: [
        Arg(
        name: 'user',
        isOptional: true,
        suggestions: [
          FigSuggestion(name: '\$USER')
        ]
      )
      ]
    ),
    Option(
      name: ['--no-unicode', '-U'],
      description: 'Do not use unicode but plain ASCII'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Print version info'
    )
  ]
);
