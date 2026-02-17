// Auto-generated from TypeScript source: sha1sum.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sha1sum` CLI
final FigSpec sha1sumSpec = FigSpec(
  name: 'sha1sum',
  description: 'Print or check SHA1 (160-bit) checksums',
  options: [

    Option(
      name: ['-b', '--binary'],
      description: 'Read in binary mode'
    ),
    Option(
      name: ['-c', '--check'],
      description: 'Read SHA1 sums from the FILEs and check them'
    ),
    Option(
      name: '--tag',
      description: 'Create a BSD-style checksum'
    ),
    Option(
      name: ['-t', '--text'],
      description: 'Read in text mode (default)'
    ),
    Option(
      name: ['-z', '--zero'],
      description: 'End each output line with NUL, not newline, and disable file name escaping'
    ),
    Option(
      name: '--ignore-missing',
      description: 'Don\'t fail or report status for missing files'
    ),
    Option(
      name: '--quiet',
      description: 'Don\'t print OK for each successfully verified file'
    ),
    Option(
      name: '--status',
      description: 'Don\'t output anything, status code shows success'
    ),
    Option(
      name: '--strict',
      description: 'Exit non-zero for improperly formatted checksum lines'
    ),
    Option(
      name: ['-w', '--warn'],
      description: 'Warn about improperly formatted checksum lines'
    ),
    Option(
      name: '--help',
      description: 'Output help message and exit'
    ),
    Option(
      name: '--version',
      description: 'Output version information and exit'
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'With no FILE, or when FILE is -, read standard input',
    template: 'filepaths',
    suggestions: [

      FigSuggestion(name: '-')
    ],
    isOptional: true
  )
  ]
);
