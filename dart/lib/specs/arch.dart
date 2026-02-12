// Auto-generated from TypeScript source: arch.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `arch` CLI
final FigSpec archSpec = FigSpec(
  name: 'arch',
  description: 'Print architecture type or run select architecture',
  parserDirectives: ParserDirectives(),
  options: [
    Option(
      name: '-32',
      description: 'Add the native 32-bit architecture to the list of architectures'
    ),
    Option(
      name: '-64',
      description: 'Add the native 64-bit architecture to the list of architectures'
    ),
    Option(
      name: '-c',
      description: 'Clear the environment that will be passed to the command'
    ),
    Option(
      name: '-d',
      description: 'Delete the named environment variable from the command\'s environment',
      isRepeatable: true,
      args: [
        Arg(
        name: 'envname'
      )
      ]
    ),
    Option(
      name: '-e',
      description: 'Assign the given value to the variable in the command\'s environment',
      isRepeatable: true,
      args: [
        Arg(
        name: 'envname=value'
      )
      ]
    ),
    Option(
      name: '-h',
      description: 'Print a help message and exit'
    )
  ],
  args: [
    Arg(
    name: 'program',
    template: 'filepaths',
    isVariadic: true
  )
  ]
);
