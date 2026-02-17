// Auto-generated from TypeScript source: bcd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bcd` CLI
final FigSpec bcdSpec = FigSpec(
  name: 'bcd',
  description: 'Bookmark directories and move to them',
  options: [

    Option(
      name: ['-s', '--store'],
      description: 'Store the current directory as a bookmark',
      isRepeatable: true,
      args: [
        Arg(
        name: 'store',
        isOptional: true
      )
      ]
    ),
    Option(
      name: ['-r', '--remove'],
      description: 'Remove a specified bookmark',
      isRepeatable: true,
      args: [
        Arg(
        name: 'remove',
        isOptional: true
      )
      ]
    ),
    Option(
      name: ['-i', '--install'],
      description: 'Setup the shell init script'
    ),
    Option(
      name: ['-l', '--list'],
      description: 'List the stored bookmarks'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version information'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help information'
    )
  ],
  args: [
    Arg(
    name: 'bookmark',
    isOptional: true
  )
  ]
);
