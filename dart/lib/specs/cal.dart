// Auto-generated from TypeScript source: cal.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cal` CLI
final FigSpec calSpec = FigSpec(
  name: 'cal',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  description: 'Displays a calendar and the date of Easter',
  args: [
    Arg(
    name: 'year',
    description: 'Year to print calendar of'
  )
  ],
  options: [

    Option(
      name: '-h',
      description: 'Turns off highlighting of today'
    ),
    Option(
      name: '-j',
      description: 'Display Julian days (days one-based, numbered from January 1)'
    ),
    Option(
      name: '-m',
      description: 'Display the specified month.  If month is specified as a decimal number, it may be followed by the letter ‘f’ or ‘p’ to indicate the following or preceding month of that number, respectively',
      exclusiveOn: ['-y'],
      args: [
        Arg(
        name: 'month'
      )
      ]
    ),
    Option(
      name: '-y',
      description: 'Display a calendar for the specified year',
      exclusiveOn: ['-m']
    )
  ]
);
