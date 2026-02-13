// Auto-generated from TypeScript source: ni.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ni` CLI
final FigSpec niSpec = FigSpec(
  name: 'ni',
  description: 'Use the right package manager - install',
  options: [

    Option(
      name: '-g',
      description: 'Operates in \'global\' mode, so that packages are installed into the prefix folder instead of the current working directory'
    ),
    Option(
      name: '-D',
      description: 'Package will appear in your `devDependencies`'
    ),
    Option(
      name: '-P',
      description: 'Save package to your `peerDependencies`'
    ),
    Option(
      name: '-O',
      description: 'Save package to your `optionalDependencies`'
    ),
    Option(
      name: '--frozen',
      description: 'Don\'t generate a lockfile and fail if an update is needed'
    ),
    Option(
      name: '-C',
      description: 'Change directory',
      args: [

        Arg(
          name: 'directory',
          description: 'The directory to move',
          template: 'folders'
        ),
        Arg(
          name: 'target',
          description: 'The target directory',
          template: 'folders'
        )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Output usage information'
    )
  ],
  args: [
    Arg(
    name: 'package',
    isVariadic: true
  )
  ]
);
