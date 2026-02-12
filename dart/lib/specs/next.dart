// Auto-generated from TypeScript source: next.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `next` CLI
final FigSpec nextSpec = FigSpec(
  name: 'next',
  description: 'Next.js CLI to start, build and export your application',
  options: [
    Option(
      name: ['-h', '--help'],
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
          name: '--profile',
          description: 'Enable production profiling'
        ),
        Option(
          name: '--debug',
          description: 'Enable more verbose build output'
        )
      ]
    ),
    Subcommand(
      name: 'dev',
      description: 'Start the application in development mode'
    ),
    Subcommand(
      name: 'start',
      description: 'Start the application in production mode'
    ),
    Subcommand(
      name: 'export',
      description: 'Exports the application for production deployment',
      options: [
        Option(
          name: '-s',
          description: 'Do not print any messages to console'
        )
      ]
    ),
    Subcommand(
      name: 'telemetry',
      description: 'Allows you to control Next.js\' telemetry collection',
      args: [
        Arg(
        name: 'status',
        description: 'Turn Next.js\' telemetry collection on or off',
        suggestions: [
          FigSuggestion(
            name: 'enable',
            description: 'Enable Next.js\' telemetry collection'
          ),
          FigSuggestion(
            name: 'disable',
            description: 'Disable Next.js\' telemetry collection'
          )
        ]
      )
      ]
    )
  ]
);
