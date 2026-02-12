// Auto-generated from TypeScript source: iex.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `iex` CLI
final FigSpec iexSpec = FigSpec(
  name: 'iex',
  description: 'Elixir Interactive Shell',
  options: [
    Option(
      name: '--dot-iex',
      description: 'Overrides default .iex.exs file and uses path instead; path can be empty, then no file will be loaded',
      args: [
        Arg(
        name: 'PATH',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--remsh',
      description: 'Connects to a node using a remote shell',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    )
  ]
);
