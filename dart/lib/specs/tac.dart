// Auto-generated from TypeScript source: tac.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tac` CLI
final FigSpec tacSpec = FigSpec(
  name: 'tac',
  description: 'Concatenate and print files in reverse',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: '--help',
      description: 'Display this help and exit'
    ),
    Option(
      name: ['--before', '-b'],
      description: 'Attach the separator before instead of after'
    ),
    Option(
      name: ['--regex', '-r'],
      description: 'Interpret the separator as a regular expression'
    ),
    Option(
      name: ['--separator', '-s'],
      description: 'Use STRING as the separator instead of newline',
      args: [
        Arg(
        name: 'STRING'
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
    template: 'filepaths'
  )
  ]
);
