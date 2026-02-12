// Auto-generated from TypeScript source: where.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `where` CLI
final FigSpec whereSpec = FigSpec(
  name: 'where',
  description: 'For each name, indicate how it should be interpreted',
  args: [
    Arg(
    name: 'names',
    isVariadic: true
  )
  ],
  options: [
    Option(
      name: '-w',
      description: 'For each name, print \'name: word\', where \'word\' is the kind of command'
    ),
    Option(
      name: '-p',
      description: 'Do a path search for the name, even if it\'s an alias/function/builtin'
    ),
    Option(
      name: '-m',
      description: 'The arguments are taken as patterns (pattern characters must be quoted)'
    ),
    Option(
      name: '-s',
      description: 'If the pathname contains symlinks, print the symlink-free name as well'
    ),
    Option(
      name: '-S',
      description: 'Print intermediate symlinks and the resolved name'
    ),
    Option(
      name: '-x',
      description: 'Expand tabs when outputting shell function',
      args: [
        Arg(
        name: 'nu'
      )
      ]
    )
  ]
);
