// Auto-generated from TypeScript source: split.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `split` CLI
final FigSpec splitSpec = FigSpec(
  name: 'split',
  description: 'The split utility reads the given file and breaks it up into files of 1000 lines each (if no options are specified), leaving the file unchanged. If file is a single dash (\'-\') or absent, split reads from the standard input',
  options: [
    Option(
      name: '-a',
      description: 'Use suffix_length letters to form the suffix of the file name',
      args: [
        Arg(
        name: 'suffix_length'
      )
      ]
    ),
    Option(
      name: '-b',
      description: 'Create split files byte_count bytes in length. If k or K is appended to the number, the file is split into byte_count kilobyte pieces. If m or M is appended to the number, the file is split into byte_count megabyte pieces.  If g or G is appended to the number, the file is split into byte_count gigabyte pieces',
      args: [
        Arg(
        name: 'byte_count',
        description: 'N[K|k|M|m|G|g]'
      )
      ],
      exclusiveOn: ['-p']
    ),
    Option(
      name: '-d',
      description: 'Use a numeric suffix instead of a alphabetic suffix'
    ),
    Option(
      name: '-l',
      description: 'Create split files line_count lines in length',
      args: [
        Arg(
        name: 'line_count'
      )
      ],
      exclusiveOn: ['-p']
    ),
    Option(
      name: '-p',
      description: 'The file is split whenever an input line matches pattern, which is interpreted as an extended regular expression. The matching line will be the first line of the next output file. This option is incompatible with the -b and -l options',
      args: [
        Arg(
        name: 'pattern'
      )
      ],
      exclusiveOn: ['-b', '-l']
    )
  ],
  args: [
    Arg(
      name: 'file',
      description: 'The file to split',
      template: 'filepaths',
      isOptional: true
    ),
    Arg(
      name: 'prefix',
      description: 'Prefix for the names of the files into which the file is split',
      suggestions: [
        FigSuggestion(name: 'x')
      ],
      defaultValue: 'x',
      isOptional: true
    )
  ]
);
