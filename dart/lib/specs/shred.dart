// Auto-generated from TypeScript source: shred.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `shred` CLI
final FigSpec shredSpec = FigSpec(
  name: 'shred',
  description: 'Overwrite a file to hide its contents, and optionally delete it',
  options: [
    Option(
      name: ['--force', '-f'],
      description: 'Change permissions to allow writing if necessary'
    ),
    Option(
      name: ['--iterations', '-n'],
      description: 'Overwrite N times instead of the default (3)',
      args: [
        Arg(
        name: 'N',
        suggestions: [
          FigSuggestion(name: '3'),
          FigSuggestion(name: '5'),
          FigSuggestion(name: '7')
        ],
        defaultValue: '3'
      )
      ]
    ),
    Option(
      name: '--random-source',
      description: 'Get random bytes from FILE',
      args: [
        Arg(
        name: 'FILE',
        suggestions: [
          FigSuggestion(name: '/dev/urandom'),
          FigSuggestion(name: '/dev/random')
        ],
        defaultValue: '/dev/urandom',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--size', '-s'],
      description: 'Shred this many bytes (suffixes like K, M, G accepted)',
      args: [
        Arg(
        name: 'N',
        suggestions: [
          FigSuggestion(name: '1K'),
          FigSuggestion(name: '1M'),
          FigSuggestion(name: '1G')
        ]
      )
      ]
    ),
    Option(
      name: '--remove',
      description: 'Like -u but give control on HOW to delete',
      args: [
        Arg(
        name: 'HOW',
        description: '\'unlink\' => use a standard unlink call, \'wipe\' => also first obfuscate bytes in the name, \'wipesync\' => also sync each obfuscated byte to the device',
        suggestions: [
          FigSuggestion(name: 'unlink'),
          FigSuggestion(name: 'wipe'),
          FigSuggestion(name: 'wipesync')
        ],
        defaultValue: 'wipesync'
      )
      ]
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Show progress'
    ),
    Option(
      name: ['--exact', '-x'],
      description: 'Do not round file sizes up to the next full block; this is the default for non-regular files'
    ),
    Option(
      name: ['--zero', '-z'],
      description: 'Add a final overwrite with zeros to hide shredding'
    ),
    Option(
      name: '--help',
      description: 'Display this help and exit'
    ),
    Option(
      name: '--version',
      description: 'Output version information and exit'
    )
  ],
  args: [
    Arg(
    name: 'FILE',
    description: 'File(s) to shred',
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
