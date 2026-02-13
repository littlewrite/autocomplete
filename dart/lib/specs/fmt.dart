// Auto-generated from TypeScript source: fmt.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fmt` CLI
final FigSpec fmtSpec = FigSpec(
  name: 'fmt',
  description: 'Simple text formatter',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [

    Option(
      name: '-c'
    ),
    Option(
      name: '-m'
    ),
    Option(
      name: '-n'
    ),
    Option(
      name: '-p'
    ),
    Option(
      name: '-s'
    ),
    Option(
      name: '-d',
      args: [
        Arg(
        name: 'chars',
        suggestions: [

          FigSuggestion(name: '.'),
          FigSuggestion(name: '?'),
          FigSuggestion(name: '!')
        ],
        defaultValue: '.'
      )
      ]
    ),
    Option(
      name: '-l',
      args: [
        Arg(
        name: 'number',
        suggestions: [

          FigSuggestion(name: '8')
        ],
        defaultValue: '8'
      )
      ]
    ),
    Option(
      name: '-t',
      args: [
        Arg(
        name: 'number',
        suggestions: [

          FigSuggestion(name: '8')
        ],
        defaultValue: '8'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'File(s) to format',
    isOptional: true,
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
