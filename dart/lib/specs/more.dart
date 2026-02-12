// Auto-generated from TypeScript source: more.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `more` CLI
final FigSpec moreSpec = FigSpec(
  name: 'more',
  description: 'Opposite of less',
  options: [
    Option(
      name: ['-d', '--silent'],
      description: 'Prompt with \'[Press space to continue, \'q\' to quit.]\', and display \'[Press \'h\' for instructions.]\' instead of ringing the bell when an illegal key is pressed'
    ),
    Option(
      name: ['-l', '--logical'],
      description: 'Do not pause after any line containing a ^L (form feed)'
    ),
    Option(
      name: ['-f', '--no-pause'],
      description: 'Count logical lines, rather than screen lines'
    ),
    Option(
      name: ['-p', '--print-over'],
      description: 'Instead, clear the whole screen and then display the text'
    ),
    Option(
      name: ['-c', '--clean-print'],
      description: 'Instead, paint each screen from the top, clearing the remainder of each line as it is displayed'
    ),
    Option(
      name: ['-s', '--squeeze'],
      description: 'Squeeze multiple blank lines into one'
    ),
    Option(
      name: ['-u', '--plain'],
      description: 'Silently ignored as backwards compatibility'
    ),
    Option(
      name: ['-n', '--lines'],
      description: 'Specify the number of lines per screenful',
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Display help text'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Display version information'
    )
  ],
  args: [
    Arg(
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
