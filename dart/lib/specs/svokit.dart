// Auto-generated from TypeScript source: svokit.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `svokit` CLI
final FigSpec svokitSpec = FigSpec(
  name: 'svokit',
  description: 'Runs built svokit project',
  subcommands: [

    Subcommand(
      name: 'setup',
      description: 'Creates svokit config (experimental)'
    ),
    Subcommand(
      name: 'run',
      description: 'Runs build svokit project'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for svokit'
    )
  ]
);
