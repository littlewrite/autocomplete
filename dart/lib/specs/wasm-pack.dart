// Auto-generated from TypeScript source: wasm-pack.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wasm-pack` CLI
final FigSpec wasmPackSpec = FigSpec(
  name: 'wasm-pack',
  description: '',
  subcommands: [

    Subcommand(
      name: 'build',
      icon: '🏗️',
      description: 'Build an npm package'
    ),
    Subcommand(
      name: 'help',
      description: 'Prints this message or the help of the given subcommand(s)',
      args: [
        Arg(
        name: 'subcommand',
        isOptional: true,
        template: 'help'
      )
      ]
    ),
    Subcommand(
      name: ['login', 'adduser', 'add-user'],
      icon: '👤',
      description: 'Add an npm registry user account'
    ),
    Subcommand(
      name: 'new',
      icon: '🐑',
      description: 'Create a new project with a template'
    ),
    Subcommand(
      name: 'pack',
      icon: '📦',
      description: 'Create a tarball of the npm package (does not publish)'
    ),
    Subcommand(
      name: 'publish',
      icon: '🎆',
      description: 'Pack and publish a package to npm'
    ),
    Subcommand(
      name: 'test',
      description: 'Run tests for WebAssembly module'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for wasm-pack or for the given subcommand(s)'
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Suppress output from stdout'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Show version for wasm-pack'
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Log verbosity is based off the number of v used'
    ),
    Option(
      name: ['--log-level', '-l'],
      description: 'The maximum level of messages that should be logged by wasm-pack',
      args: [
        Arg(
        name: 'log-level',
        defaultValue: 'info',
        suggestions: [

          FigSuggestion(name: 'info'),
          FigSuggestion(name: 'warn'),
          FigSuggestion(name: 'error')
        ]
      )
      ]
    )
  ]
);
