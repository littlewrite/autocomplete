// Auto-generated from TypeScript source: bc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bc` CLI
final FigSpec bcSpec = FigSpec(
  name: 'bc',
  description: 'An arbitrary precision calculator language',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Print the usage and exit'
    ),
    Option(
      name: ['--interactive', '-i'],
      description: 'Force interactive mode'
    ),
    Option(
      name: ['--mathlib', '-l'],
      description: 'Define the standard math library'
    ),
    Option(
      name: ['--warn', '-w'],
      description: 'Give warnings for extensions to POSIX bc'
    ),
    Option(
      name: ['--standard', '-s'],
      description: 'Process exactly the POSIX bc language'
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Do not print the normal GNU bc welcome'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Print the version number and copyright and quit'
    )
  ],
  args: [
    Arg(
    name: 'file',
    isOptional: true,
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
