// Auto-generated from TypeScript source: twiggy.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `twiggy` CLI
final FigSpec twiggySpec = FigSpec(
  name: 'twiggy',
  description: 'A code-size profiler for WebAssembly',
  icon: '🌱',
  subcommands: [
    Subcommand(
      name: 'diff',
      description: 'Diff the old and new versions of a binary to see what sizes changed'
    ),
    Subcommand(
      name: 'dominators',
      icon: '🌲',
      description: 'Compute and display the dominator tree for a binary\'s call graph'
    ),
    Subcommand(
      name: 'garbage',
      icon: '🗑️',
      description: 'Find and display code and data that is not transitively referenced by any exports or public functions'
    ),
    Subcommand(
      name: 'help',
      description: 'Prints this message or the help of the given subcommand(s)',
      args: [
        Arg(
        name: 'subcommand',
        template: 'help'
      )
      ]
    ),
    Subcommand(
      name: 'monos',
      icon: '📈',
      description: 'List the generic function monomorphizations that are contributing to code bloat'
    ),
    Subcommand(
      name: 'paths',
      icon: '📁',
      description: 'Find and display the call paths to a function in the given binary\'s call graph'
    ),
    Subcommand(
      name: 'top',
      icon: '📈',
      description: 'List the top code size offenders in a binary'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Prints help information'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Prints version information'
    )
  ]
);
