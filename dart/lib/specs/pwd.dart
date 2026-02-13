// Auto-generated from TypeScript source: pwd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pwd` CLI
final FigSpec pwdSpec = FigSpec(
  name: 'pwd',
  description: 'Return working directory name',
  options: [

    Option(
      name: '-L',
      description: 'Display the logical current working directory'
    ),
    Option(
      name: '-P',
      description: 'Display the physical current working directory'
    )
  ]
);
