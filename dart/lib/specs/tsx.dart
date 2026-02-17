// Auto-generated from TypeScript source: tsx.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tsx` CLI
final FigSpec tsxSpec = FigSpec(
  name: 'tsx',
  description: 'Run TypeScript file using tsx',
  subcommands: [

    Subcommand(
      name: 'watch',
      description: 'Run the script and watch for changes'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for tsx',
      isPersistent: true
    ),
    Option(
      name: '--no-cache',
      description: 'Disable caching',
      isPersistent: true
    ),
    Option(
      name: '--clear-screen',
      description: 'Disable clearing the screen on rerun',
      isPersistent: true,
      insertValue: '--clear-screen=false',
      dependsOn: ['watch']
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show version'
    ),
    Option(
      name: '--tsconfig',
      description: 'Custom tsconfig.json path',
      args: [
        Arg(
        name: 'tsconfig.json path'
      )
      ]
    )
  ]
);
