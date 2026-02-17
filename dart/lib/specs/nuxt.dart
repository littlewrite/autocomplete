// Auto-generated from TypeScript source: nuxt.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nuxt` CLI
final FigSpec nuxtSpec = FigSpec(
  name: 'nuxt',
  description: '',
  subcommands: [

    Subcommand(
      name: 'dev',
      description: 'Launch the development server'
    ),
    Subcommand(
      name: 'start',
      description: 'Start the production server (after running nuxt build). Use it for Node.js hosting like Heroku, Digital Ocean, etc'
    ),
    Subcommand(
      name: 'generate',
      description: 'Build the application (if needed), generate every route as a HTML file and statically export to dist/ directory (used for static hosting)'
    ),
    Subcommand(
      name: 'build',
      description: 'Build and optimize your application with webpack for production'
    ),
    Subcommand(
      name: 'webpack',
      description: 'Inspect the webpack config',
      subcommands: [

        Subcommand(
          name: 'subcommands coming soon'
        )
      ],
      options: [

        Option(
          name: '--name',
          description: 'Bundle name to inspect. (client, server, modern)'
        ),
        Option(
          name: '--dev',
          description: 'Inspect webpack config for dev mode'
        ),
        Option(
          name: '--depth',
          description: 'Inspection depth. Defaults to 2 to prevent verbose output'
        ),
        Option(
          name: '--no-colors',
          description: 'Disable ANSI colors (disabled by default when TTY is not available or when piping to a file)'
        )
      ]
    )
  ]
);
