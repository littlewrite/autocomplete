// Auto-generated from TypeScript source: dd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dd` CLI
final FigSpec ddSpec = FigSpec(
  name: 'dd',
  description: 'Convert and copy a file',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  options: [
    Option(
      name: 'bs',
      description: 'Set input and output block size',
      args: [
        Arg(
        name: 'size'
      )
      ]
    ),
    Option(
      name: 'cbs',
      description: 'Set the conversion record size',
      args: [
        Arg(
        name: 'size'
      )
      ]
    ),
    Option(
      name: 'count',
      description: 'Copy this many input blocks',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: 'files',
      description: 'Copy this many files before terminating',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: 'ibs',
      description: 'Set the input block size',
      args: [
        Arg(
        name: 'size',
        defaultValue: '512'
      )
      ]
    ),
    Option(
      name: 'if',
      description: 'Read an input file instead of stdin',
      priority: 60,
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: 'iseek',
      description: 'Seek this many blocks on the input file',
      args: [
        Arg(
        name: 'blocks'
      )
      ]
    ),
    Option(
      name: 'obs',
      description: 'Set the output block size',
      args: [
        Arg(
        name: 'size',
        defaultValue: '512'
      )
      ]
    ),
    Option(
      name: 'of',
      description: 'Write to an output file instead of stdout',
      priority: 59,
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: 'oseek',
      description: 'Seek this many blocks on the output file',
      args: [
        Arg(
        name: 'blocks'
      )
      ]
    ),
    Option(
      name: 'seek',
      description: 'Seek this many blocks from the beginning of the output before copying',
      args: [
        Arg(
        name: 'blocks'
      )
      ]
    ),
    Option(
      name: 'skip',
      description: 'Skip this many blocks from the beginning of the input before copying',
      args: [
        Arg(
        name: 'blocks'
      )
      ]
    ),
    Option(
      name: 'conv',
      description: 'Convert input data (comma-separated list)',
      args: [
        Arg(
        name: 'value'
      )
      ]
    )
  ]
);
