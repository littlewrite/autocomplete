// Auto-generated from TypeScript source: df.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `df` CLI
final FigSpec dfSpec = FigSpec(
  name: 'df',
  description: 'Display free disk space',
  args: [
    Arg(
    name: 'file or filesystem'
  )
  ],
  options: [

    Option(
      name: '-a',
      description: 'Show all mount points'
    ),
    Option(
      name: ['-b', '-P'],
      description: 'Use 512-byte blocks (default)',
      exclusiveOn: ['-g', '-k', '-m']
    ),
    Option(
      name: '-g',
      description: 'Use 1073741824-byte (1-Gbyte) blocks',
      exclusiveOn: ['-b', '-P', '-m', '-k']
    ),
    Option(
      name: '-m',
      description: 'Use 1048576-byte (1-Mbyte) blocks',
      exclusiveOn: ['-b', '-P', '-g', '-k']
    ),
    Option(
      name: '-k',
      description: 'Use 1024-byte (1-Kbyte) blocks',
      exclusiveOn: ['-b', '-P', '-g', '-m']
    ),
    Option(
      name: '-H',
      description: '"Human-readable" output, uses base 10 unit suffixes',
      exclusiveOn: ['-h']
    ),
    Option(
      name: '-h',
      description: '"Human-readable" output, uses base 2 unit suffixes',
      exclusiveOn: ['-H']
    ),
    Option(
      name: '-i',
      description: 'Include the number of free inodes'
    ),
    Option(
      name: '-l',
      description: 'Only display information about locally-mounted filesystems'
    ),
    Option(
      name: '-n',
      description: 'Print out the previously obtained statistics'
    ),
    Option(
      name: '-T',
      description: 'Only print out statistics for filesystems of the specified types (comma separated)',
      args: [
        Arg(
        name: 'filesystem'
      )
      ]
    )
  ]
);
