// Auto-generated from TypeScript source: dotenv-vault.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dotenv-vault` CLI
final FigSpec dotenvVaultSpec = FigSpec(
  name: 'dotenv-vault',
  description: 'CLI for dotenv-vault',
  options: [
    Option(
      name: '--help',
      description: 'Get documentation for the command',
      isPersistent: true
    )
  ],
  subcommands: [
    Subcommand(
      name: 'new',
      description: 'Create your project',
      options: []
    ),
    Subcommand(
      name: 'login',
      description: 'Log in to dotenv-vault',
      options: []
    ),
    Subcommand(
      name: 'logout',
      description: 'Log out from dotenv-vault',
      options: []
    ),
    Subcommand(
      name: 'open',
      description: 'Opens project page in a browser',
      options: []
    ),
    Subcommand(
      name: 'push',
      description: 'Push .env securely',
      options: [],
      args: []
    ),
    Subcommand(
      name: 'pull',
      description: 'Pull .env securely',
      options: [],
      args: []
    ),
    Subcommand(
      name: 'versions',
      description: 'List version history',
      options: [],
      args: []
    ),
    Subcommand(
      name: 'whoami',
      description: 'Display the current logged in user',
      options: []
    ),
    Subcommand(
      name: 'status',
      description: 'Check dotenv-operational status',
      options: []
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for dotenv-vault'
    ),
    Subcommand(
      name: 'update',
      description: 'Update the dotenv-vault CLI',
      options: []
    )
  ]
);
