// Auto-generated from TypeScript source: xxd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `xxd` CLI
final FigSpec xxdSpec = FigSpec(
  name: 'xxd',
  description: 'Make a hexdump or do the reverse',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  options: [
    Option(
      name: ['-help', '-h'],
      description: 'Show help for xxd'
    ),
    Option(
      name: ['-autoskip', '-a'],
      description: 'Toggle autoskip: A single \'*\' replaces nul-lines.  Default off'
    ),
    Option(
      name: ['-bits', '-b'],
      description: 'Switch to bits (binary digits) dump, rather than hexdump',
      exclusiveOn: ['-postscript', '-plain', '-ps', '-p', '-r', '-i']
    ),
    Option(
      name: ['-cols', '-c'],
      description: 'Format <cols> octets per line. Default 16',
      args: [
        Arg(
        name: 'cols'
      )
      ]
    ),
    Option(
      name: ['-capitalize', '-C'],
      description: 'Capitalize variable names in C include file style, when using -i'
    ),
    Option(
      name: ['-EBCDIC', '-E'],
      description: 'Change the character encoding in the righthand column from ASCII to EBCDIC',
      exclusiveOn: ['-postscript', '-plain', '-ps', '-p', '-r', '-i']
    ),
    Option(
      name: '-e',
      description: 'Switch to little-endian hexdump'
    ),
    Option(
      name: ['-groupsize', '-g'],
      description: 'Separate the output of every <bytes> bytes',
      args: [
        Arg(
        name: 'bytes'
      )
      ]
    ),
    Option(
      name: ['-include', '-i'],
      description: 'Output in C include file style',
      exclusiveOn: ['-EBCDIC', '-E', '-bits', '-b']
    ),
    Option(
      name: ['-len', '-l'],
      description: 'Stop after writing <len> octets',
      args: [
        Arg(
        name: 'len'
      )
      ]
    ),
    Option(
      name: ['-name', '-n'],
      description: 'Override the variable name output when -i is used',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: '-o',
      description: 'Add <offset> to the displayed file position',
      args: [
        Arg(
        name: 'offset'
      )
      ]
    ),
    Option(
      name: ['-postscript', '-plain', '-ps', '-p'],
      description: 'Output in postscript continuous hexdump style',
      exclusiveOn: ['-EBCDIC', '-E', '-bits', '-b']
    ),
    Option(
      name: ['-revert', '-r'],
      description: 'Reverse operation: convert (or patch) hexdump into binary',
      exclusiveOn: ['-EBCDIC', '-E', '-bits', '-b']
    ),
    Option(
      name: '-seek',
      description: 'When used after -r: revert with <offset> added to file positions found in hexdump',
      args: [
        Arg(
        name: 'offset'
      )
      ]
    ),
    Option(
      name: '-u',
      description: 'Use upper case hex letters. Default is lower case'
    ),
    Option(
      name: ['-version', '-v'],
      description: 'Show version string'
    )
  ],
  args: [
    Arg(
      name: 'infile',
      template: 'filepaths'
    ),
    Arg(
      name: 'outfile',
      template: 'filepaths'
    )
  ]
);
