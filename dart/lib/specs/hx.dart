// Auto-generated from TypeScript source: hx.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hx` CLI
final FigSpec hxSpec = FigSpec(
  name: 'hx',
  description: 'A post-modern text editor',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  args: [
    Arg(
    name: 'files',
    template: ['filepaths', 'folders'],
    isVariadic: true
  )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Show help'
    ),
    Option(
      name: '--tutor',
      description: 'Open the tutorial'
    ),
    Option(
      name: '--health',
      description: 'Check for errors in editor setup',
      args: [
        Arg(
        name: 'language',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-v',
      description: 'Increases logging verbosity',
      isRepeatable: true
    ),
    Option(
      name: ['-g', '--grammar'],
      description: 'Fetch or build tree-sitter grammars',
      args: [
        Arg(
        name: 'action',
        suggestions: [

          FigSuggestion(
            name: 'fetch',
            icon: 'fig://icon?type=command'
          ),
          FigSuggestion(
            name: 'build',
            icon: 'fig://icon?type=command'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version information'
    )
  ]
);
