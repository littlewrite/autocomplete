// Auto-generated from TypeScript source: uniq.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `uniq` CLI
final FigSpec uniqSpec = FigSpec(
  name: 'uniq',
  description: 'Report or omit repeated line',
  options: [

    Option(
      name: ['-c', '--count'],
      description: 'Prefix lines by the number of occurrences'
    ),
    Option(
      name: ['-d', '--repeated'],
      description: 'Only print duplicate lines'
    ),
    Option(
      name: ['-D', '--all-repeated'],
      description: 'Print all duplicate lines. Delimiting is done with blank lines',
      args: [
        Arg(
        name: 'delimit-method',
        defaultValue: 'none',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'none'),
          FigSuggestion(name: 'prepend'),
          FigSuggestion(name: 'separate')
        ]
      )
      ]
    ),
    Option(
      name: ['-f', '--skip-fields'],
      description: 'Avoid comparing the first N fields',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: ['-i', '--ignore-case'],
      description: 'Ignore differences in case when comparing'
    ),
    Option(
      name: ['-s', '--skip-chars'],
      description: 'Avoid comparing the first N characters',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: ['-u', '--unique'],
      description: 'Only print unique lines'
    ),
    Option(
      name: ['-z', '--zero-terminated'],
      description: 'End lines with 0 byte, not newline'
    ),
    Option(
      name: ['-w', '--check-chars'],
      description: 'Compare no more than N characters in lines',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Display this help and exit'
    ),
    Option(
      name: '--version',
      description: 'Output version information and exit'
    )
  ],
  args: [

    Arg(
      name: 'input',
      isOptional: true,
      template: ['filepaths', 'folders']
    ),
    Arg(
      name: 'output',
      isOptional: true
    )
  ]
);
