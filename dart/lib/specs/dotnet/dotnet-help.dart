// Auto-generated from TypeScript source: dotnet-help.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `help` CLI
final FigSpec helpSpec = FigSpec(
  name: 'help',
  description: 'The dotnet help command opens up the reference page for more detailed information about the specified command at docs.microsoft.com',
  args: [
    Arg(
    name: 'command',
    description: 'Name of the .NET CLI command'
  )
  ]
);
