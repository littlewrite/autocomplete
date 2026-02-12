// Auto-generated from TypeScript source: mas.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mas` CLI
final FigSpec masSpec = FigSpec(
  name: 'mas',
  description: 'A simple command line interface for the Mac App Store',
  subcommands: [
    Subcommand(
      name: 'account',
      description: 'Prints the primary account Apple ID'
    ),
    Subcommand(
      name: 'help',
      description: 'Display general or command-specific help'
    ),
    Subcommand(
      name: 'home',
      description: 'Opens MAS Preview app page in a browser'
    ),
    Subcommand(
      name: 'info',
      description: 'Display app information from the Mac App Store',
      args: [
        Arg(
        name: 'Application',
        description: 'The application you want to show info'
      )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install an application',
      args: [
        Arg(
        name: 'Application',
        description: 'The application you want to Install'
      )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Lists apps from the Mac App Store which are currently installed'
    ),
    Subcommand(
      name: 'lucky',
      description: 'Install the first result from the Mac App Store',
      args: [
        Arg(
        name: 'Application',
        description: 'The application you want to Install'
      )
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'Opens app page in AppStore.app',
      args: [
        Arg(
        name: 'Application',
        description: 'The application you want to Open'
      )
      ]
    ),
    Subcommand(
      name: 'outdated',
      description: 'Lists pending updates from the Mac App Store'
    ),
    Subcommand(
      name: 'purchase',
      description: 'Purchase and download free apps from the Mac App Store',
      args: [
        Arg(
        name: 'Application',
        description: 'The application you want to purchase'
      )
      ]
    ),
    Subcommand(
      name: 'reset',
      description: 'Resets the Mac App Store'
    ),
    Subcommand(
      name: 'search',
      description: 'Search for apps from the Mac App Store',
      args: [
        Arg(
        name: 'Application',
        description: 'The application you want to Search'
      )
      ]
    ),
    Subcommand(
      name: 'signin',
      description: 'Sign in to the Mac App Store'
    ),
    Subcommand(
      name: 'signout',
      description: 'Sign out of the Mac App Store'
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstall app installed from the Mac App Store',
      args: [
        Arg(
        name: 'Application',
        description: 'The application you want to uninstall'
      )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade outdated apps from the Mac App Store'
    ),
    Subcommand(
      name: 'vendor',
      description: 'Opens vendor\'s app page in a browser',
      args: [
        Arg(
        name: 'App ID',
        description: 'The application you want to open vendor\'s app'
      )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print version number'
    )
  ]
);
