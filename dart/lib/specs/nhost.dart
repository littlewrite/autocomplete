// Auto-generated from TypeScript source: nhost.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nhost` CLI
final FigSpec nhostSpec = FigSpec(
  name: 'nhost',
  description: 'Nhost\'s command-line',
  subcommands: [
    Subcommand(
      name: 'deploy',
      description: 'Deploy local migrations and metadata changes to Nhost production'
    ),
    Subcommand(
      name: 'dev',
      description: 'Start Nhost project for local development'
    ),
    Subcommand(
      name: 'down',
      description: 'Stop and remove local Nhost backend started by `nhost dev`'
    ),
    Subcommand(
      name: ['env', 'env:ls'],
      description: 'List environment variables'
    ),
    Subcommand(
      name: 'env:pull',
      description: 'Sync remote environment variables to your local environment'
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for nhost'
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize current working directory as a Nhost project'
    ),
    Subcommand(
      name: 'link',
      description: 'Link Nhost Project'
    ),
    Subcommand(
      name: 'login',
      description: 'Login to your Nhost account',
      options: [
        Option(
          name: ['--email', '-e'],
          description: 'Email address',
          args: [
            Arg(
            name: 'email'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Logout from your Nhost account'
    )
  ]
);
