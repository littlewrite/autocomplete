// Auto-generated from TypeScript source: asar.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `asar` CLI
final FigSpec asarSpec = FigSpec(
  name: 'asar',
  description: 'A simple extensive tar-like archive format with indexing',
  subcommands: [

    Subcommand(
      name: ['pack', 'p'],
      description: 'Create asar archive',
      args: [

        Arg(
          name: 'directory',
          description: 'The directory you want to archive'
        ),
        Arg(
          name: 'output',
          description: 'The name of the output file'
        )
      ]
    ),
    Subcommand(
      name: ['list', 'l'],
      description: 'List files of asar archive',
      args: [
        Arg(
        name: 'archive',
        description: 'The archive file'
      )
      ]
    ),
    Subcommand(
      name: ['extract-file', 'ef'],
      description: 'Extract one file from archive',
      args: [

        Arg(
          name: 'archive',
          description: 'The archive file'
        ),
        Arg(
          name: 'filename',
          description: 'The name of the file you want to extract'
        )
      ]
    ),
    Subcommand(
      name: ['extract', 'e'],
      description: 'Extract archive',
      args: [

        Arg(
          name: 'archive',
          description: 'The archive file'
        ),
        Arg(
          name: 'directory',
          description: 'The directory you want to extract to'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for asar'
    ),
    Option(
      name: ['--V', '--version'],
      description: 'Output the version number'
    )
  ]
);
