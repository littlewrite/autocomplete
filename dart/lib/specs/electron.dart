// Auto-generated from TypeScript source: electron.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `electron` CLI
final FigSpec electronSpec = FigSpec(
  name: 'electron',
  description: 'Build cross platform desktop apps with JavaScript, HTML and CSS',
  args: [
    Arg(
    name: 'path',
    description: 'A path to an electron app',
    template: ['filepaths', 'folders']
  )
  ],
  options: [
    Option(
      name: ['-i', '--interactive'],
      description: 'Open a REPL to the main process'
    ),
    Option(
      name: ['-r', '--require'],
      description: 'Module to preload',
      args: [
        Arg(
        name: 'module',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print the version'
    ),
    Option(
      name: ['-a', '--abi'],
      description: 'Print the Node ABI version'
    )
  ]
);
