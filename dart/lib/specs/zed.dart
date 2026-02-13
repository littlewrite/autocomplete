// Auto-generated from TypeScript source: zed.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `zed` CLI
final FigSpec zedSpec = FigSpec(
  name: 'zed',
  description: 'A lightning-fast, collaborative code editor written in Rust',
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Print help information'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print Zed\'s version and the app path'
    ),
    Option(
      name: ['-w', '--wait'],
      description: 'Wait for all of the given paths to be closed before exiting'
    ),
    Option(
      name: ['-b', '--bundle-path'],
      description: 'Custom Zed.app path',
      args: [
        Arg(
        name: 'bundle_path',
        template: 'folders'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'path',
    description: 'A sequence of space-separated paths that you want to open',
    isOptional: true,
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
