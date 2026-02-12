// Auto-generated from TypeScript source: basenc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `basenc` CLI
final FigSpec basencSpec = FigSpec(
  name: 'basenc',
  description: 'Encode/decode data and print to standard output',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Display this help and exit'
    ),
    Option(
      name: '--base64',
      description: 'Same as \'base64\' program (RFC4648 section 4)'
    ),
    Option(
      name: '--base64url',
      description: 'File- and url-safe base64 (RFC4648 section 5)'
    ),
    Option(
      name: '--base32',
      description: 'Same as \'base32\' program (RFC4648 section 6)'
    ),
    Option(
      name: '--base32hex',
      description: 'Extended hex alphabet base32 (RFC4648 section 7)'
    ),
    Option(
      name: '--base16',
      description: 'Hex encoding (RFC4648 section 8)'
    ),
    Option(
      name: '--base2msbf',
      description: 'Bit string with most significant bit (msb) first'
    ),
    Option(
      name: '--base2lsbf',
      description: 'Bit string with least significant bit (lsb) first'
    ),
    Option(
      name: ['--decode', '-d'],
      description: 'Decode data'
    ),
    Option(
      name: ['--ignore-garbage', '-i'],
      description: 'When decoding, ignore non-alphabet characters'
    ),
    Option(
      name: ['--wrap', '-w'],
      description: 'Wrap encoded lines after COLS character (default 76).  Use 0 to disable line wrapping',
      args: [
        Arg(
        name: 'COLS',
        suggestions: [
          FigSuggestion(name: '76'),
          FigSuggestion(name: '78'),
          FigSuggestion(name: '80'),
          FigSuggestion(name: '100'),
          FigSuggestion(name: '120'),
          FigSuggestion(name: '160'),
          FigSuggestion(name: '0')
        ],
        defaultValue: '76'
      )
      ]
    ),
    Option(
      name: '--z85',
      description: 'Ascii85-like encoding (ZeroMQ spec:32/Z85); when encoding, input length must be a multiple of 4; when decoding, input length must be a multiple of 5'
    ),
    Option(
      name: '--version',
      description: 'Output version information and exit'
    )
  ],
  args: [
    Arg(
    name: 'FILE',
    description: 'File(s) to encode/decode',
    template: 'filepaths'
  )
  ]
);
