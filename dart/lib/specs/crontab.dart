// Auto-generated from TypeScript source: crontab.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `crontab` CLI
final FigSpec crontabSpec = FigSpec(
  name: 'crontab',
  description: 'Maintain crontab file for individual users',
  options: [
    Option(
      name: '-e',
      description: 'Edit the current crontab'
    ),
    Option(
      name: '-l',
      description: 'Display the current crontab'
    ),
    Option(
      name: '-r',
      description: 'Remove the current crontab',
      isDangerous: true
    ),
    Option(
      name: '-u',
      description: 'Specify the name of the user whose crontab is to be tweaked'
    )
  ]
);
