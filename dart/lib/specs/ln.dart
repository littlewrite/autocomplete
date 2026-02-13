// Auto-generated from TypeScript source: ln.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ln` CLI
final FigSpec lnSpec = FigSpec(
  name: 'ln',
  description: 'Create (default hard) symbolic links to files',
  options: [

    Option(
      name: '-s',
      description: 'Create a symbolic link'
    ),
    Option(
      name: '-v',
      description: 'Verbose'
    ),
    Option(
      name: '-F',
      description: 'If link name already exists replace it'
    ),
    Option(
      name: '-h',
      description: 'Don\'t follow symbolic links'
    ),
    Option(
      name: '-f',
      description: 'If link name already exists unlink the old one before creating the new one'
    ),
    Option(
      name: '-i',
      description: 'Prompt if proposed link already exists'
    ),
    Option(
      name: '-n',
      description: 'Same as -h don\'t follow symbolic links'
    )
  ]
);
