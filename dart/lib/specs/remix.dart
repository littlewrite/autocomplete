// Auto-generated from TypeScript source: remix.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `remix` CLI
final FigSpec remixSpec = FigSpec(
  name: 'remix',
  description: 'Remix CLI to start, build and export your application',
  options: [

    Option(
      name: '--help',
      description: 'Output usage information'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Output the version number'
    )
  ],
  subcommands: [

    Subcommand(
      name: 'build',
      description: 'Create an optimized production build of your application',
      options: [

        Option(
          name: '--sourcemap',
          description: 'Enables production sourcemap'
        )
      ]
    ),
    Subcommand(
      name: 'dev',
      description: 'Start the application in development mode'
    ),
    Subcommand(
      name: 'setup',
      description: 'Prepare node_modules/remix folder (after installation of packages)'
    ),
    Subcommand(
      name: 'routes',
      description: 'Generate the route config of the application',
      options: [

        Option(
          name: '--json',
          description: 'Print the route config as JSON'
        )
      ]
    )
  ]
);
