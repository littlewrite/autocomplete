// Auto-generated from TypeScript source: rvm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rvm` CLI
final FigSpec rvmSpec = FigSpec(
  name: 'rvm',
  description: 'Ruby version manager',
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for rvm',
      isPersistent: true
    )
  ],
  subcommands: [
    Subcommand(
      name: 'use',
      description: 'Setup current shell to use a specific ruby version'
    ),
    Subcommand(
      name: 'reset',
      description: 'Remove default and current settings, exit the shell'
    ),
    Subcommand(
      name: 'info',
      description: 'Show information about the current ruby environment'
    ),
    Subcommand(
      name: 'list',
      description: 'List currently installed version'
    ),
    Subcommand(
      name: 'reload',
      description: 'Reload RVM source itself (useful after changing RVM source)'
    ),
    Subcommand(
      name: 'implode',
      description: 'Remove all ruby installations it manages'
    ),
    Subcommand(
      name: 'get',
      description: 'Upgrades RVM to the stable or git head branches'
    ),
    Subcommand(
      name: 'do',
      description: 'Runs a named ruby file against specified and/or all rubies'
    ),
    Subcommand(
      name: 'install',
      description: 'Install one or many ruby versions'
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Install new ruby, copy gemsets, make gems pristine, remove old rubies'
    ),
    Subcommand(
      name: 'reinstall',
      description: 'Remove ruby, install it, make gems pristine'
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstall one or many ruby versions, leaves their sources'
    ),
    Subcommand(
      name: 'remove',
      description: 'Remove one or many ruby versions, including their sources'
    )
  ]
);
