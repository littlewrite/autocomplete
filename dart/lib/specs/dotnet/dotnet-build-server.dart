// Auto-generated from TypeScript source: dotnet-build-server.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `build-server` CLI
final FigSpec buildServerSpec = FigSpec(
  name: 'build-server',
  description: 'Interacts with servers started by a build',
  subcommands: [
    Subcommand(
      name: 'shutdown',
      description: 'Shuts down build servers that are started from dotnet. By default, all servers are shut down',
      options: [
        Option(
          name: '--msbuild',
          description: 'Shuts down the MSBuild build server'
        ),
        Option(
          name: '--razor',
          description: 'Shuts down the Razor build server'
        ),
        Option(
          name: '--vbcscompiler',
          description: 'Shuts down the VB/C# compiler build server'
        )
      ]
    )
  ]
);
