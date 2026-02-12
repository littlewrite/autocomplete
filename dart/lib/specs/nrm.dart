// Auto-generated from TypeScript source: nrm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nrm` CLI
final FigSpec nrmSpec = FigSpec(
  name: 'nrm',
  description: 'Use the right package manage - remove',
  options: [
    Option(
      name: '-g',
      description: 'Operates in \'global\' mode, so that packages are removed from the prefix folder instead of the current working directory'
    ),
    Option(
      name: '-D',
      description: 'Package will be removed from your `devDependencies`'
    ),
    Option(
      name: '-P',
      description: 'Remove package from your `peerDependencies`'
    ),
    Option(
      name: '-O',
      description: 'Remove package from your `optionalDependencies`'
    ),
    Option(
      name: '--frozen',
      description: 'Don\'t generate a lockfile and fail if an update is needed'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Output usage information'
    )
  ],
  args: [
    Arg(
    name: 'package',
    filterStrategy: 'fuzzy',
    isVariadic: true
  )
  ]
);
