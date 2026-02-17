// Auto-generated from TypeScript source: elm-format.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `elm-format` CLI
final FigSpec elmFormatSpec = FigSpec(
  name: 'elm-format',
  description: 'Format your code in the Elm idiomatic way',
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for elm-format'
    ),
    Option(
      name: '--output',
      description: 'Write output to FILE instead of overwriting the given source file',
      args: [
        Arg(
        name: 'FILE',
        description: 'Name and location of output file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--yes',
      description: 'Reply \'yes\' to all automated prompts'
    ),
    Option(
      name: '--validate',
      description: 'Check if files are formatted without changing them'
    ),
    Option(
      name: '--stdin',
      description: 'Read from stdin, output to stdout'
    ),
    Option(
      name: '--elm-version',
      description: 'The Elm version of the source files being formatted',
      args: [
        Arg(
        name: 'VERSION',
        description: 'Valid values: 0.18, 0.19. Default: auto',
        isOptional: true
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'INPUT',
    template: 'filepaths'
  )
  ]
);
