// Auto-generated from TypeScript source: od.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `od` CLI
final FigSpec odSpec = FigSpec(
  name: 'od',
  description: 'Octal, decimal, hex, ASCII dump',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [

    Option(
      name: '-A',
      args: [
        Arg(
        name: 'base',
        suggestions: [

          FigSuggestion(name: 'd'),
          FigSuggestion(name: 'o'),
          FigSuggestion(name: 'x'),
          FigSuggestion(name: 'n')
        ],
        defaultValue: 'd'
      )
      ]
    ),
    Option(
      name: '-a',
      description: 'Output named characters.  Equivalent to -t a'
    ),
    Option(
      name: ['-B', '-o'],
      description: 'Output octal shorts.  Equivalent to -t o2'
    ),
    Option(
      name: '-b',
      description: 'Output octal bytes.  Equivalent to -t o1'
    ),
    Option(
      name: '-c',
      description: 'Output C-style escaped characters.  Equivalent to -t c'
    ),
    Option(
      name: '-D',
      description: 'Output unsigned decimal ints.  Equivalent to -t u4'
    ),
    Option(
      name: '-d',
      description: 'Output unsigned decimal shorts.  Equivalent to -t u2'
    ),
    Option(
      name: ['-e', '-F'],
      description: 'Output double-precision floating point numbers.  Equivalent to -t fD'
    ),
    Option(
      name: '-f',
      description: 'Output single-precision floating point numbers.  Equivalent to -t fF'
    ),
    Option(
      name: ['-H', '-X'],
      description: 'Output hexadecimal ints.  Equivalent to -t x4'
    ),
    Option(
      name: ['-h', '-x'],
      description: 'Output hexadecimal shorts.  Equivalent to -t x2'
    ),
    Option(
      name: ['-I', '-L', '-l'],
      description: 'Output signed decimal longs.  Equivalent to -t dL'
    ),
    Option(
      name: '-i',
      description: 'Output signed decimal ints.  Equivalent to -t dI'
    ),
    Option(
      name: '-j',
      args: [
        Arg(
        name: 'skip'
      )
      ]
    ),
    Option(
      name: '-N',
      description: 'Dump at most length bytes of input',
      args: [
        Arg(
        name: 'length'
      )
      ]
    ),
    Option(
      name: '-O',
      description: 'Output octal ints.  Equivalent to -t o4'
    ),
    Option(
      name: '-s',
      description: 'Output signed decimal shorts.  Equivalent to -t d2'
    ),
    Option(
      name: '-t',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(name: 'a'),
          FigSuggestion(name: 'c'),
          FigSuggestion(name: 'dC'),
          FigSuggestion(name: 'dS'),
          FigSuggestion(name: 'dI'),
          FigSuggestion(name: 'dL'),
          FigSuggestion(name: 'dn'),
          FigSuggestion(name: 'oC'),
          FigSuggestion(name: 'oS'),
          FigSuggestion(name: 'oI'),
          FigSuggestion(name: 'oL'),
          FigSuggestion(name: 'on'),
          FigSuggestion(name: 'uC'),
          FigSuggestion(name: 'uS'),
          FigSuggestion(name: 'uI'),
          FigSuggestion(name: 'uL'),
          FigSuggestion(name: 'un'),
          FigSuggestion(name: 'xC'),
          FigSuggestion(name: 'xS'),
          FigSuggestion(name: 'xI'),
          FigSuggestion(name: 'xL'),
          FigSuggestion(name: 'xn'),
          FigSuggestion(name: 'fF'),
          FigSuggestion(name: 'fD'),
          FigSuggestion(name: 'fL'),
          FigSuggestion(name: 'fn')
        ]
      )
      ]
    ),
    Option(
      name: '-v',
      description: 'Write all input data, instead of replacing lines of duplicate values with a \'*\''
    )
  ],
  args: [

    Arg(
      name: '[+]offset[.][Bb]',
      description: 'Offset',
      suggestions: [

        FigSuggestion(name: '+0b')
      ],
      defaultValue: '+0b',
      isOptional: true
    ),
    Arg(
      name: 'file',
      description: 'File name',
      template: 'filepaths',
      isOptional: true,
      isVariadic: true
    )
  ]
);
