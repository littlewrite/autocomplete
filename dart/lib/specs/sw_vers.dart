// Auto-generated from TypeScript source: sw_vers.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sw_vers` CLI
final FigSpec sw_versSpec = FigSpec(
  name: 'sw_vers',
  description: 'Print macOS version information',
  options: [

    Option(
      name: '-productName',
      description: 'Print product name'
    ),
    Option(
      name: '-productVersion',
      description: 'Print product version'
    ),
    Option(
      name: '-buildVersion',
      description: 'Print build version'
    )
  ]
);
