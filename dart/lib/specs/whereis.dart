// Auto-generated from TypeScript source: whereis.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `whereis` CLI
final FigSpec whereisSpec = FigSpec(
  name: 'whereis',
  description: 'Locate the binary, source, and manual page files for a command',
  options: [
    Option(
      name: '-b',
      description: 'Search only for binaries'
    ),
    Option(
      name: '-m',
      description: 'Search only for manual sections'
    ),
    Option(
      name: '-s',
      description: 'Search only for sources'
    ),
    Option(
      name: '-u',
      description: 'Search for unusual entries'
    ),
    Option(
      name: '-B',
      description: 'Search for binaries only in the specified directory',
      args: [
        Arg(
        name: 'directory',
        description: 'The directory to search in',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-M',
      description: 'Search for manual pages only in the specified directory',
      args: [
        Arg(
        name: 'directory',
        description: 'The directory to search in',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-S',
      description: 'Search for sources only in the specified directory',
      args: [
        Arg(
        name: 'directory',
        description: 'The directory to search in',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-f',
      description: 'Terminate the -B, -M, and -S options'
    )
  ],
  args: [
    Arg(
    name: 'Filename',
    description: 'The file to search for'
  )
  ]
);
