// Auto-generated from TypeScript source: yomo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `yomo` CLI
final FigSpec yomoSpec = FigSpec(
  name: 'yomo',
  description: 'CLI interface for YoMo',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Initial an example StreamFunction',
      args: [
        Arg(
        name: 'function name',
        description: 'StreamFunction name to initialize locally'
      )
      ],
      options: [
        Option(
          name: '--rx',
          description: 'Generate Rx code template'
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Build a StreamFunction to WebAssembly',
      args: [
        Arg(
        name: '.go file',
        description: 'The .go file to build'
      )
      ],
      options: [
        Option(
          name: '--target',
          description: 'Build to wasm or binary',
          args: [
            Arg(
              name: 'wasm'
            ),
            Arg(
              name: 'binary'
            )
          ]
        ),
        Option(
          name: ['-m', '--modfile'],
          description: 'Custom go.mod filepath',
          args: [
            Arg(
            name: 'module'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run a wasm stream function',
      args: [
        Arg(
        name: '.wasm file',
        description: 'The .wasm file to run'
      )
      ],
      options: [
        Option(
          name: ['-z', '--zipper'],
          description: 'Zipper endpoint this StreamFunction will connect to'
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Specify the name of this StreamFunction'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for yomo'
    )
  ]
);
