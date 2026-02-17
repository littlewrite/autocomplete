// Auto-generated from TypeScript source: do-release-upgrade.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `do-release-upgrade` CLI
final FigSpec doReleaseUpgradeSpec = FigSpec(
  name: 'do-release-upgrade',
  description: 'Upgrade Ubuntu to latest release',
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Show help message and exit'
    ),
    Option(
      name: ['-d', '--devel-release'],
      description: 'If using the latest supported release, upgrade to the development release'
    ),
    Option(
      name: ['-p', '--proposed'],
      description: 'Try upgrading to the latest release using the upgrader from Ubuntu-proposed'
    ),
    Option(
      name: '-m',
      description: 'Run in a special upgrade mode'
    ),
    Option(
      name: '--mode',
      description: 'Run in a special upgrade mode'
    ),
    Option(
      name: '-f',
      description: 'Run the specified frontend'
    ),
    Option(
      name: '--frontend',
      description: 'Run the specified frontend'
    )
  ]
);
