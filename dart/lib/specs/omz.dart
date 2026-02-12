// Auto-generated from TypeScript source: omz.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `omz` CLI
final FigSpec omzSpec = FigSpec(
  name: 'omz',
  description: 'Oh My Zsh',
  subcommands: [
    Subcommand(
      name: 'help',
      description: 'Print the help message'
    ),
    Subcommand(
      name: 'changelog',
      description: 'Print the changelog'
    ),
    Subcommand(
      name: 'plugin',
      description: 'Manage plugins',
      subcommands: [
        Subcommand(
          name: 'disable',
          description: 'Disable plugin(s)',
          args: [
            Arg(
            name: 'plugin'
          )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable plugin(s)',
          args: [
            Arg(
            name: 'plugin'
          )
          ]
        ),
        Subcommand(
          name: 'info',
          description: 'Get information of a plugin',
          args: [
            Arg(
            name: 'plugin'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all available Oh My Zsh plugins'
        ),
        Subcommand(
          name: 'load',
          description: 'Load plugin(s)',
          args: [
            Arg(
            name: 'plugin'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pr',
      description: 'Manage Oh My Zsh Pull Requests',
      subcommands: [
        Subcommand(
          name: 'clean',
          description: 'Delete all PR branches (ohmyzsh/pull-*)'
        ),
        Subcommand(
          name: 'test',
          description: 'Fetch PR #NUMBER and rebase against master',
          args: [
            Arg(
            name: 'PR_number_or_URL'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'reload',
      description: 'Reload the current zsh session'
    ),
    Subcommand(
      name: 'theme',
      description: 'Manage themes',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'List all available Oh My Zsh themes'
        ),
        Subcommand(
          name: 'set',
          description: 'Set a theme in your .zshrc file',
          args: [
            Arg(
            name: 'theme'
          )
          ]
        ),
        Subcommand(
          name: 'use',
          description: 'Load a theme',
          args: [
            Arg(
            name: 'theme'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update Oh My Zsh'
    ),
    Subcommand(
      name: 'version',
      description: 'Show the version'
    )
  ]
);
