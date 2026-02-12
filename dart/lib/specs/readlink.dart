// Auto-generated from TypeScript source: readlink.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `readlink` CLI
final FigSpec readlinkSpec = FigSpec(
  name: 'readlink',
  description: 'Display file status',
  options: [
    Option(
      name: '-f',
      description: 'Display information using the specified format; similar to printf(3) formats in that they start with %, are then followed by a sequence of formatting characters, and end in a character that selects the field of the struct stat which is to be formatted',
      args: [
        Arg(
        name: 'format'
      )
      ]
    ),
    Option(
      name: '-n',
      description: 'Do not force a newline to appear at the end of each piece of output'
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'File(s) to readlink',
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
