// Auto-generated from TypeScript source: btop.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `btop` CLI
final FigSpec btopSpec = FigSpec(
  name: 'btop',
  description: 'Beautifuler htop (interactive process viewer)',
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Shows help for btop'
    ),
    Option(
      name: ['--low-color', '-lc'],
      description: 'Disables truecolor, converts 24-bit colors to 256-color'
    ),
    Option(
      name: ['--tty_on', '-t'],
      description: 'Forces ON tty mode, max 16 colors and tty friendly graph symbol',
      exclusiveOn: ['--tty_off']
    ),
    Option(
      name: ['--tty_off', '+t'],
      description: 'Forces OFF tty mode',
      exclusiveOn: ['--tty_on']
    ),
    Option(
      name: ['--preset', '-p'],
      description: 'Start with preset',
      args: [
        Arg(
        name: 'id',
        suggestions: [

          FigSuggestion(name: '0'),
          FigSuggestion(name: '1'),
          FigSuggestion(name: '2'),
          FigSuggestion(name: '3'),
          FigSuggestion(name: '4'),
          FigSuggestion(name: '5'),
          FigSuggestion(name: '6'),
          FigSuggestion(name: '7'),
          FigSuggestion(name: '8'),
          FigSuggestion(name: '9')
        ]
      )
      ]
    ),
    Option(
      name: '--utf-force',
      description: 'Force start even if no UTF-8 locale was detected'
    ),
    Option(
      name: '--debug',
      description: 'Starts in DEBUG mode: shows microsecond timer for information collect and screen draw functions and sets loglevel to DEBUG'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Shows the version of btop'
    )
  ]
);
