// Auto-generated from TypeScript source: base64.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `base64` CLI
final FigSpec base64Spec = FigSpec(
  name: 'base64',
  description: 'Encode and decode using Base64 representation',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Display this help and exit'
    ),
    Option(
      name: ['--break', '-b'],
      description: 'Insert line breaks every count characters.  Default is 0, which generates an unbroken stream',
      args: [
        Arg(
        name: 'count',
        suggestions: [
          FigSuggestion(name: '0')
        ],
        defaultValue: '0'
      )
      ]
    ),
    Option(
      name: ['--decode', '-d', '-D'],
      description: 'Decode incoming Base64 stream into binary data'
    ),
    Option(
      name: ['--input', '-i'],
      description: 'Read input from input_file.  Default is stdin; passing - also represents stdin',
      args: [
        Arg(
        name: 'input_file',
        suggestions: [
          FigSuggestion(name: 'stdin'),
          FigSuggestion(name: '-')
        ],
        defaultValue: 'stdin',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--output', '-o'],
      description: 'Write output to output_file.  Default is stdout; passing - also represents stdout',
      args: [
        Arg(
        name: 'output_file',
        suggestions: [
          FigSuggestion(name: 'stdout'),
          FigSuggestion(name: '-')
        ],
        defaultValue: 'stdout',
        template: 'filepaths'
      )
      ]
    )
  ]
);
