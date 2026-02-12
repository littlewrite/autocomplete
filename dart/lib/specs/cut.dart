// Auto-generated from TypeScript source: cut.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cut` CLI
final FigSpec cutSpec = FigSpec(
  name: 'cut',
  description: 'Cut out selected portions of each line of a file',
  args: [
    Arg(
    template: 'filepaths',
    isOptional: true,
    isVariadic: true
  )
  ],
  options: [
    Option(
      name: '-b',
      description: 'Byte positions as a comma or - separated list of numbers',
      args: [
        Arg(
        name: 'list',
        description: 'Specifies byte positions'
      )
      ]
    ),
    Option(
      name: '-c',
      description: 'Column positions as a comma or - separated list of numbers',
      args: [
        Arg(
        name: 'list',
        description: 'Specifies column positions'
      )
      ]
    ),
    Option(
      name: '-f',
      description: 'Field positions as a comma or - separated list of numbers',
      args: [
        Arg(
        name: 'list',
        description: 'Specifies column positions'
      )
      ]
    ),
    Option(
      name: '-n',
      description: 'Do not split multi-byte characters'
    ),
    Option(
      name: '-d',
      description: 'Use delim as the field delimiter character instead of the tab character',
      args: [
        Arg(
        name: 'delim',
        description: 'Field deliminator to use instead of the tab character',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-s',
      description: 'Suppress lines with no field delimiter characters.  unless specified, lines with no delimiters are passed through unmodified'
    ),
    Option(
      name: '-w',
      description: 'Use whitespace (spaces and tabs) as the delimiter.  Consecutive spaces and tabs count as one single field separator'
    )
  ]
);
