// Auto-generated from TypeScript source: truncate.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `truncate` CLI
final FigSpec truncateSpec = FigSpec(
  name: 'truncate',
  description: 'Shrink or extend the size of a file to the specified size',
  options: [

    Option(
      name: ['--no-create', '-c'],
      description: 'Do not create any files'
    ),
    Option(
      name: ['--io-blocks', '-o'],
      description: 'Treat SIZE as number of IO blocks instead of bytes'
    ),
    Option(
      name: ['--reference', '-r'],
      description: 'Base size on RFILE',
      args: [
        Arg(
        name: 'RFILE'
      )
      ]
    ),
    Option(
      name: ['--size', '-s'],
      description: 'Set or adjust the file size by SIZE bytes',
      args: [
        Arg(
        name: 'SIZE',
        description: 'The SIZE argument is an integer and optional unit; units are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000). Binary prefixes can be used, too: KiB=K, MiB=M, and so on'
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Show help for truncate'
    ),
    Option(
      name: '--version',
      description: 'Output version information and exit'
    )
  ],
  args: [
    Arg(
    name: 'FILE',
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
