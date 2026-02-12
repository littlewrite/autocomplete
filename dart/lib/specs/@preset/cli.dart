// Auto-generated from TypeScript source: cli.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `preset` CLI
final FigSpec presetSpec = FigSpec(
  name: 'preset',
  description: 'Elegant, ecosystem-agnostic scaffolding tool',
  subcommands: [
    Subcommand(
      name: 'apply',
      description: 'Apply a preset'
    ),
    Subcommand(
      name: 'init',
      description: 'Create a new preset',
      args: [
        Arg(
        name: 'target-directory',
        description: 'Directory in which to apply the preset',
        template: 'folders',
        isOptional: true
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for preset'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Show the version number'
    ),
    Option(
      name: '--no-interaction',
      description: 'Disable interactions',
      isPersistent: true
    ),
    Option(
      name: '--debug',
      description: 'Display debug information instead of standard output',
      isPersistent: true
    ),
    Option(
      name: '--silent',
      description: 'Do not print anything',
      isPersistent: true
    )
  ]
);
