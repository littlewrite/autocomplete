// Auto-generated from TypeScript source: clear.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `clear` CLI
final FigSpec clearSpec = FigSpec(
  name: 'clear',
  description: 'Clear the terminal screen',
  options: [
    Option(
      name: '-T',
      description: 'Indicates the type of terminal',
      args: [
        Arg(
        name: 'type'
      )
      ]
    ),
    Option(
      name: '-V',
      description: 'Reports version of ncurses used in this program, and exits'
    ),
    Option(
      name: '-x',
      description: 'Do not attempt to clear terminal\'s scrollback buffer using the extended E3 capability'
    )
  ]
);
