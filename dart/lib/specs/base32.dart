// Auto-generated from TypeScript source: base32.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `base32` CLI
final FigSpec base32Spec = FigSpec(
  name: 'base32',
  description: 'Base32 encode/decode data and print to standard output',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Display this help and exit'
    ),
    Option(
      name: ['--decode', '-d'],
      description: 'Decode data'
    ),
    Option(
      name: ['--ignore-garbage', '-i'],
      description: 'When decoding, ignore non-alphabet characters'
    ),
    Option(
      name: ['--wrap', '-w'],
      description: 'Wrap encoded lines after COLS character (default 76).  Use 0 to disable line wrapping',
      args: [
        Arg(
        name: 'COLS',
        suggestions: [
          FigSuggestion(name: '76'),
          FigSuggestion(name: '78'),
          FigSuggestion(name: '80'),
          FigSuggestion(name: '100'),
          FigSuggestion(name: '120'),
          FigSuggestion(name: '160'),
          FigSuggestion(name: '0')
        ],
        defaultValue: '76'
      )
      ]
    ),
    Option(
      name: '--version',
      description: 'Output version information and exit'
    )
  ],
  args: [
    Arg(
    name: 'FILE',
    description: 'File to base32 encode/decode',
    template: 'filepaths'
  )
  ]
);
