// Auto-generated from TypeScript source: dd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<FigSuggestion> convValues = [
  FigSuggestion(
      name: 'ascii',
      icon: 'fig://icon?type=string',
      description:
          'The same as \'unblock\' except characters are translated from EBCDIC to ASCII'),
  FigSuggestion(
      name: 'oldascii',
      icon: 'fig://icon?type=string',
      description:
          'The same as \'unblock\' except characters are translated from EBCDIC to ASCII'),
  FigSuggestion(
      name: 'block',
      icon: 'fig://icon?type=string',
      description:
          'Treats the input as a sequence of newline or EOF-terminated variable length records of independent input and output block boundaries'),
  FigSuggestion(
      name: 'ebcdic',
      icon: 'fig://icon?type=string',
      description:
          'The same as the \'block\' value except that characters are translated from ASCII to EBCDIC after the records are converted'),
  FigSuggestion(
      name: 'ibm',
      icon: 'fig://icon?type=string',
      description:
          'The same as the \'block\' value except that characters are translated from ASCII to EBCDIC after the records are converted'),
  FigSuggestion(
      name: 'oldebcdic',
      icon: 'fig://icon?type=string',
      description:
          'The same as the \'block\' value except that characters are translated from ASCII to EBCDIC after the records are converted'),
  FigSuggestion(
      name: 'oldibm',
      icon: 'fig://icon?type=string',
      description:
          'The same as the \'block\' value except that characters are translated from ASCII to EBCDIC after the records are converted'),
  FigSuggestion(
      name: 'lcase',
      icon: 'fig://icon?type=string',
      description: 'Transform uppercase characters into lowercase characters'),
  FigSuggestion(
      name: 'noerror',
      icon: 'fig://icon?type=string',
      description: 'Do not stop processing on an input error'),
  FigSuggestion(
      name: 'notrunc',
      icon: 'fig://icon?type=string',
      description:
          'Do not truncate the output file. This will preserve any blocks in the output file not explicitly written by dd'),
  FigSuggestion(
      name: 'osync',
      icon: 'fig://icon?type=string',
      description: 'Pad the final output block to the full output block size'),
  FigSuggestion(
      name: 'sparse',
      icon: 'fig://icon?type=string',
      description:
          'If one or more output blocks would consist solely of NUL bytes, try to seek the output file by the required space instead of filling them with NULs, resulting in a sparse file'),
  FigSuggestion(
      name: 'swab',
      icon: 'fig://icon?type=string',
      description: 'Swap every pair of input bytes'),
  FigSuggestion(
      name: 'sync',
      icon: 'fig://icon?type=string',
      description: 'Pad every input block to the input buffer size'),
  FigSuggestion(
      name: 'ucase',
      icon: 'fig://icon?type=string',
      description: 'Transform lowercase characters into uppercase characters'),
  FigSuggestion(
      name: 'unblock',
      icon: 'fig://icon?type=string',
      description:
          'Treats the input as a sequence of fixed length records independent of input and output block boundaries')
];

/// Completion spec for `dd` CLI
final FigSpec ddSpec = FigSpec(
    name: 'dd',
    description: 'Convert and copy a file',
    parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
    options: [
      Option(
          name: 'bs',
          description: 'Set input and output block size',
          args: [Arg(name: 'size')]),
      Option(
          name: 'cbs',
          description: 'Set the conversion record size',
          args: [Arg(name: 'size')]),
      Option(
          name: 'count',
          description: 'Copy this many input blocks',
          args: [Arg(name: 'number')]),
      Option(
          name: 'files',
          description: 'Copy this many files before terminating',
          args: [Arg(name: 'number')]),
      Option(
          name: 'ibs',
          description: 'Set the input block size',
          args: [Arg(name: 'size', defaultValue: '512')]),
      Option(
          name: 'if',
          description: 'Read an input file instead of stdin',
          priority: 60,
          args: [Arg(name: 'file', template: 'filepaths')]),
      Option(
          name: 'iseek',
          description: 'Seek this many blocks on the input file',
          args: [Arg(name: 'blocks')]),
      Option(
          name: 'obs',
          description: 'Set the output block size',
          args: [Arg(name: 'size', defaultValue: '512')]),
      Option(
          name: 'of',
          description: 'Write to an output file instead of stdout',
          priority: 59,
          args: [Arg(name: 'file', template: 'filepaths')]),
      Option(
          name: 'oseek',
          description: 'Seek this many blocks on the output file',
          args: [Arg(name: 'blocks')]),
      Option(
          name: 'seek',
          description:
              'Seek this many blocks from the beginning of the output before copying',
          args: [Arg(name: 'blocks')]),
      Option(
          name: 'skip',
          description:
              'Skip this many blocks from the beginning of the input before copying',
          args: [Arg(name: 'blocks')]),
      Option(
        name: 'conv',
        description: 'Convert input data (comma-separated list)',
        args: [
          Arg(
            name: 'value',
            generators: FigGenerator(
              getQueryTerm: ',',
              custom: convValues,
            ),
          ),
        ],
      ),
    ]);
