// Auto-generated from TypeScript source: rm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rm` CLI
final FigSpec rmSpec = FigSpec(
  name: 'rm',
  description: 'Remove directory entries',
  args: [
    Arg(
    isVariadic: true,
    template: ['folders', 'filepaths']
  )
  ],
  options: [
    Option(
      name: ['-r', '-R'],
      description: 'Recursive. Attempt to remove the file hierarchy rooted in each file argument',
      isDangerous: true
    ),
    Option(
      name: '-P',
      description: 'Overwrite regular files before deleting them',
      isDangerous: true
    ),
    Option(
      name: '-d',
      description: 'Attempt to remove directories as well as other types of files'
    ),
    Option(
      name: '-f',
      description: '⚠️ Attempt to remove the files without prompting for confirmation',
      isDangerous: true
    ),
    Option(
      name: '-i',
      description: 'Request confirmation before attempting to remove each file'
    ),
    Option(
      name: '-v',
      description: 'Be verbose when deleting files'
    )
  ]
);
