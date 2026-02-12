// Auto-generated from TypeScript source: shasum.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `shasum` CLI
final FigSpec shasumSpec = FigSpec(
  name: 'shasum',
  description: 'Print or Check SHA Checksums',
  args: [
    Arg(
    name: 'FILE',
    description: 'Files to compute/check SHA checksums. With no FILE, or when FILE is -, read standard input',
    template: 'filepaths',
    isOptional: true,
    isVariadic: true
  )
  ],
  options: [
    Option(
      name: ['-a', '--algorithm'],
      description: 'Select SHA algorithm',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: '1',
            description: 'SHA-1 (default)'
          ),
          FigSuggestion(
            name: '224',
            description: 'SHA-224'
          ),
          FigSuggestion(
            name: '256',
            description: 'SHA-256'
          ),
          FigSuggestion(
            name: '384',
            description: 'SHA-384'
          ),
          FigSuggestion(
            name: '512',
            description: 'SHA-512'
          ),
          FigSuggestion(
            name: '512224',
            description: 'SHA-512/224'
          ),
          FigSuggestion(
            name: '512256',
            description: 'SHA-512/256'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-b', '--binary'],
      description: 'Read in binary mode'
    ),
    Option(
      name: ['-c', '--check'],
      description: 'Read SHA sums from the FILEs and check them'
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
      name: ['-U', '--UNIVERSAL'],
      description: 'Read in Universal Newlines mode - produces same digest on Windows/Unix/Mac'
    ),
    Option(
      name: ['-0', '--01'],
      description: 'Read in BITS mode - ASCII \'0\' as 0-bit, ASCII \'1\' as 1-bit, others ignored'
    ),
    Option(
      name: '--ignore-missing',
      description: 'Don\'t fail or report status for missing files'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Don\'t print OK for each successfully verified file'
    ),
    Option(
      name: ['-s', '--status'],
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
      name: ['-h', '--help'],
      description: 'Display help and exit'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Output version information and exit'
    )
  ]
);
