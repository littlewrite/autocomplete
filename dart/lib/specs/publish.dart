// Auto-generated from TypeScript source: publish.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `publish` CLI
final FigSpec publishSpec = FigSpec(
  name: 'publish',
  description: '',
  subcommands: [
    Subcommand(
      name: 'new',
      description: 'Set up a new website in the current folder'
    ),
    Subcommand(
      name: 'run',
      description: 'Generate and run a localhost server on default port 8000 for the website in the current folder',
      options: [
        Option(
          name: ['-p', '--port'],
          description: 'Customize the port',
          args: [
            Arg(
            name: 'port',
            defaultValue: '8000'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Generate and deploy the website in the current folder'
    ),
    Subcommand(
      name: 'generate',
      description: 'Generate the website in the current folder'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for publish'
    )
  ]
);
