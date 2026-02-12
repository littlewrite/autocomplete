// Auto-generated from TypeScript source: hostname.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hostname` CLI
final FigSpec hostnameSpec = FigSpec(
  name: 'hostname',
  description: 'Set or print name of current host system',
  options: [
    Option(
      name: '-f',
      description: 'Include domain information in the printed name'
    ),
    Option(
      name: '-s',
      description: 'Trim off any domain information from the printed name'
    ),
    Option(
      name: '-d',
      description: 'Only print domain information'
    )
  ],
  args: [
    Arg(
    name: 'hostname',
    description: 'The hostname to use for this machine'
  )
  ]
);
