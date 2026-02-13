// Auto-generated from TypeScript source: wing.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wing` CLI
final FigSpec wingSpec = FigSpec(
  name: 'wing',
  subcommands: [

    Subcommand(
      name: 'run',
      description: 'Runs a Wing executable in the Wing Console',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'executable',
        description: 'Executable .wx fil'
      )
      ]
    ),
    Subcommand(
      name: 'compile',
      description: 'Compiles a Wing program',
      options: [

        Option(
          name: ['-o', '--out-dir'],
          description: 'Output directory',
          args: [
            Arg(
            name: 'out-dir'
          )
          ]
        ),
        Option(
          name: ['-t', '--target'],
          description: 'Target platform (options: \'tf-aws\', \'sim\')',
          args: [
            Arg(
            name: 'target',
            defaultValue: 'tf-aw'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'entrypoint',
        description: 'Program .w entrypoin'
      )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrades the Wing toolchain to the latest version',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      priority: 49,
      args: [
        Arg(
        name: 'command',
        isOptional: true,
        template: 'hel'
      )
      ]
    )
  ]
);
