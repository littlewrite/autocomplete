// Auto-generated from TypeScript source: astro.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `astro` CLI
final FigSpec astroSpec = FigSpec(
  name: 'astro',
  description: 'CLI provided by Astro to develop, build, and preview your project from a terminal window',
  icon: 'https://astro.build/favicon.svg',
  subcommands: [

    Subcommand(
      name: 'add',
      description: 'Add an integration',
      options: [

        Option(
          name: '--yes',
          description: 'Accept all prompts'
        )
      ],
      args: [
        Arg(
        name: 'integration'
      )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Build your project and write it to disk',
      options: [

        Option(
          name: '--drafts',
          description: 'Include Markdown draft pages in the build'
        )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Check your project for errors',
      options: [

        Option(
          name: '--watch',
          description: 'Watch Astro files for changes and re-run checks'
        )
      ]
    ),
    Subcommand(
      name: 'dev',
      description: 'Starts the development server',
      options: [

        Option(
          name: '--port',
          description: 'Specify a port to listen on',
          args: [
            Arg(
            name: 'port',
            defaultValue: '3000'
          )
          ]
        ),
        Option(
          name: '--host',
          description: 'Listen on all addresses, including LAN and public addresses',
          args: [
            Arg(
            name: 'custom address',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--open',
          description: 'Automatically open the app in the browser on server start'
        )
      ]
    ),
    Subcommand(
      name: 'docs',
      description: 'Open documentation in your web browser'
    ),
    Subcommand(
      name: 'preview',
      description: 'Preview your build locally',
      options: [

        Option(
          name: '--open',
          description: 'Automatically open the app in the browser on server start'
        )
      ]
    ),
    Subcommand(
      name: 'sync',
      description: 'Generate content collection types'
    ),
    Subcommand(
      name: 'telemetry',
      description: 'Configure telemetry settings',
      subcommands: [

        Subcommand(
          name: 'enable',
          description: 'Enable anonymous data collection'
        ),
        Subcommand(
          name: 'disable',
          description: 'Disable anonymous data collection'
        ),
        Subcommand(
          name: 'reset',
          description: 'Reset anonymous data collection settings'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--config',
      description: 'Specify your config file',
      isPersistent: true,
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--root',
      description: 'Specify your project root folder',
      isPersistent: true,
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--site',
      description: 'Specify your project site',
      isPersistent: true,
      args: [
        Arg(
        name: 'url'
      )
      ]
    ),
    Option(
      name: '--base',
      description: 'Specify your project base',
      isPersistent: true,
      args: [
        Arg(
        name: 'pathname',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--verbose',
      description: 'Enable verbose logging',
      isPersistent: true
    ),
    Option(
      name: '--silent',
      description: 'Disable all logging',
      isPersistent: true
    ),
    Option(
      name: '--version',
      description: 'Show the version number and exit',
      isPersistent: true
    ),
    Option(
      name: '--help',
      description: 'Show help for astro',
      isPersistent: true
    )
  ]
);
