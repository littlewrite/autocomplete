// Auto-generated from TypeScript source: xcode-select.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `xcode-select` CLI
final FigSpec xcodeSelectSpec = FigSpec(
  name: 'xcode-select',
  description: 'Active developer directory for Xcode tools',
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Help message'
    ),
    Option(
      name: ['-p', '--print-path'],
      description: 'Display path to active developer directory'
    ),
    Option(
      name: ['-s', '--switch'],
      description: 'Set path to active developer directory',
      insertValue: '-s ',
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--install',
      description: 'Install Xcode command line tools'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Display version'
    ),
    Option(
      name: ['-r', '--reset'],
      description: 'Reset to the default CLT path'
    )
  ]
);
