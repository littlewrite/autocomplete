// Auto-generated from TypeScript source: yank.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `yank` CLI
final FigSpec yankSpec = FigSpec(
  name: 'yank',
  description: 'Yank terminal output to clipboard',
  options: [

    Option(
      name: '-i',
      description: 'Ignore case differences between pattern and the input'
    ),
    Option(
      name: '-l',
      description: 'Use the default delimiters except for space'
    ),
    Option(
      name: '-x',
      description: 'Use alternate screen'
    ),
    Option(
      name: '-v',
      description: 'Print the version'
    ),
    Option(
      name: '-d',
      description: 'All input characters not present in delim will be recognized as fields',
      args: [
        Arg(
        name: 'delim',
        description: 'Custom delimiters'
      )
      ]
    ),
    Option(
      name: '-g',
      description: 'Use pattern to recognize fields',
      args: [
        Arg(
        name: 'pattern',
        description: 'Pattern to recognize fields'
      )
      ]
    ),
    Option(
      name: '--',
      description: 'Use a command as the yank command',
      args: [
        Arg(
        name: 'command',
        description: 'Command to use as the yank command',
        isVariadic: true
      )
      ]
    )
  ]
);
