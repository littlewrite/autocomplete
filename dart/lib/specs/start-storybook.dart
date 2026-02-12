// Auto-generated from TypeScript source: start-storybook.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `start-storybook` CLI
final FigSpec startStorybookSpec = FigSpec(
  name: 'start-storybook',
  description: 'Storybook start CLI tools',
  options: [
    Option(
      name: ['-p', '--port'],
      description: 'Port to run Storybook',
      args: [
        Arg(
        name: 'port'
      )
      ]
    ),
    Option(
      name: ['-h', '--host'],
      description: 'Host to run Storybook',
      args: [
        Arg(
        name: 'host'
      )
      ]
    )
  ]
);
