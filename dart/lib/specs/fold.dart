// Auto-generated from TypeScript source: fold.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fold` CLI
final FigSpec foldSpec = FigSpec(
  name: 'fold',
  description: 'Fold long lines for finite width output device',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: '-b'
    ),
    Option(
      name: '-s'
    ),
    Option(
      name: '-w',
      args: [
        Arg(
        name: 'width',
        suggestions: [
          FigSuggestion(name: '80'),
          FigSuggestion(name: '90'),
          FigSuggestion(name: '100'),
          FigSuggestion(name: '110'),
          FigSuggestion(name: '120')
        ],
        defaultValue: '80'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'File(s) to fold',
    isOptional: true,
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
