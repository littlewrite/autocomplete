// Auto-generated from TypeScript source: next.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> hostPortOptions = [
  Option(
      name: ['-p', '--port'],
      description: 'A port number on which to start the application',
      args: [Arg()]),
  Option(
      name: ['-H', '--hostname'],
      description: 'Hostname on which to start the application',
      args: [Arg()])
];

/// Completion spec for `next` CLI
final FigSpec nextSpec = FigSpec(
    name: 'next',
    description: 'Next.js CLI to start, build and export your application',
    options: [
      Option(name: ['-h', '--help'], description: 'Output usage information'),
      Option(
          name: ['-v', '--version'], description: 'Output the version number')
    ],
    subcommands: [
      Subcommand(
          name: 'build',
          description:
              'Create an optimized production build of your application',
          options: [
            Option(
                name: '--profile', description: 'Enable production profiling'),
            Option(
                name: '--debug',
                description: 'Enable more verbose build output')
          ]),
      Subcommand(
          name: 'dev',
          description: 'Start the application in development mode',
          options: hostPortOptions),
      Subcommand(
          name: 'start',
          description: 'Start the application in production mode',
          options: hostPortOptions),
      Subcommand(
          name: 'export',
          description: 'Exports the application for production deployment',
          options: [
            Option(
                name: '-s', description: 'Do not print any messages to console')
          ]),
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
                      description: 'Enable Next.js\' telemetry collection'),
                  FigSuggestion(
                      name: 'disable',
                      description: 'Disable Next.js\' telemetry collection')
                ])
          ])
    ]);
