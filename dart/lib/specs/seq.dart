// Auto-generated from TypeScript source: seq.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `seq` CLI
final FigSpec seqSpec = FigSpec(
  name: 'seq',
  description: 'Print sequences of numbers. (Defaults to increments of 1)',
  args: [
    Arg(
      name: 'first',
      description: 'Starting number in sequence'
    ),
    Arg(
      name: 'step',
      description: 'Increment interval',
      isOptional: true
    ),
    Arg(
      name: 'last',
      description: 'Last number in sequence',
      isOptional: true
    )
  ],
  options: [
    Option(
      name: ['-w', '--fixed-width'],
      description: 'Equalize the widths of all numbers by padding with zeros as necessary'
    ),
    Option(
      name: ['-s', '--separator'],
      description: 'String separator between numbers. Default is newline',
      args: [
        Arg(
        name: 'string',
        description: 'Separator'
      )
      ]
    ),
    Option(
      name: ['-f', '--format'],
      description: 'Use a printf(3) style format to print each number',
      args: [
        Arg(
        name: 'format',
        description: 'Print all numbers using format'
      )
      ]
    ),
    Option(
      name: ['-t', '--terminator'],
      description: 'Use string to terminate sequence of numbers',
      args: [
        Arg(
        name: 'string',
        description: 'Terminator'
      )
      ]
    )
  ]
);
