// Auto-generated from TypeScript source: configure.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `configure` CLI
final FigSpec configureSpec = FigSpec(
  name: 'configure',
  description: 'Manage Azure CLI configuration. This command is interactive',
  options: [

    Option(
      name: ['--defaults', '-d'],
      description: 'Space-separated \'name=value\' pairs for common argument defaults',
      args: [
        Arg(
        name: 'default'
      )
      ]
    ),
    Option(
      name: ['--list-defaults', '-l'],
      description: 'List all applicable defaults',
      args: [
        Arg(
        name: 'list-defaults',
        suggestions: [

          FigSuggestion(name: 'false'),
          FigSuggestion(name: 'true')
        ]
      )
      ]
    ),
    Option(
      name: '--scope',
      description: 'Scope of defaults. Using "local" for settings only effective under current folder',
      args: [
        Arg(
        name: 'scope',
        suggestions: [

          FigSuggestion(name: 'global'),
          FigSuggestion(name: 'local')
        ]
      )
      ]
    )
  ]
);
