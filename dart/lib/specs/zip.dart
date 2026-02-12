// Auto-generated from TypeScript source: zip.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `zip` CLI
final FigSpec zipSpec = FigSpec(
  name: 'zip',
  description: 'Package and compress (archive) files into zip file',
  args: [
    Arg(
      name: 'name',
      description: 'Name of archive'
    ),
    Arg(
      name: 'dir',
      template: 'folders'
    )
  ],
  options: [
    Option(
      name: '-r',
      description: 'Package and compress a directory and its contents, recursively'
    ),
    Option(
      name: '-e'
    ),
    Option(
      name: '-s',
      args: [
        Arg(
        name: 'split size'
      )
      ]
    ),
    Option(
      name: '-d',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-9',
      description: 'Archive a directory and its contents with the highest level [9] of compression'
    )
  ]
);
