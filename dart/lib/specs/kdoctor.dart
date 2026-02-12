// Auto-generated from TypeScript source: kdoctor.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `kdoctor` CLI
final FigSpec kdoctorSpec = FigSpec(
  name: 'kdoctor',
  description: 'Tool that helps to set up the environment for Kotlin Multiplatform Mobile app development',
  options: [
    Option(
      name: '--version',
      description: 'Report a version of KDoctor'
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Report an extended information'
    ),
    Option(
      name: ['--all', '-a'],
      description: 'Run extra diagnostics'
    ),
    Option(
      name: '--team-ids',
      description: 'Report all available Apple dev team ids'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Usage info'
    )
  ]
);
