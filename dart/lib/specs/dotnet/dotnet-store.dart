// Auto-generated from TypeScript source: dotnet-store.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `store` CLI
final FigSpec storeSpec = FigSpec(
  name: 'store',
  description: 'Dotnet store stores the specified assemblies in the runtime package store. By default, assemblies are optimized for the target runtime and framework. For more information, see the runtime package store topic',
  options: [
    Option(
      name: ['-f', '--framework'],
      description: 'Specifies the target framework. The target framework has to be specified in the project file',
      args: [
        Arg(
        name: 'framework'
      )
      ]
    ),
    Option(
      name: ['-m', '--manifest'],
      description: 'The package store manifest file is an XML file that contains the list of packages to store. The format of the manifest file is compatible with the SDK-style project format. So, a project file that references the desired packages can be used with the -m|--manifest option to store assemblies in the runtime package store',
      isRepeatable: true,
      args: [
        Arg(
        name: 'manifest'
      )
      ]
    ),
    Option(
      name: ['-r', '--runtime'],
      description: 'The runtime identifier to target',
      args: [
        Arg(
        name: 'runtime'
      )
      ]
    ),
    Option(
      name: '--framework-version',
      description: 'Specifies the .NET SDK version. This option enables you to select a specific framework version beyond the framework specified by the -f|--framework option',
      args: [
        Arg(
        name: 'version'
      )
      ]
    ),
    Option(
      name: ['-o', '--output'],
      description: 'Specifies the path to the runtime package store. If not specified, it defaults to the store subdirectory of the user profile .NET installation directory',
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--skip-optimization',
      description: 'Skips the optimization phase'
    ),
    Option(
      name: '--skip-symbols',
      description: 'Skips symbol generation. Currently, you can only generate symbols on Windows and Linux'
    ),
    Option(
      name: ['-v', '--verbosity'],
      description: 'Sets the verbosity level of the command. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic]. For more information, see LoggerVerbosity',
      args: [
        Arg(
        name: 'verbosity',
        suggestions: [
          FigSuggestion(name: 'quiet'),
          FigSuggestion(name: 'minimal'),
          FigSuggestion(name: 'normal'),
          FigSuggestion(name: 'detailed'),
          FigSuggestion(name: 'diagnostic')
        ]
      )
      ]
    ),
    Option(
      name: ['-w', '--working-dir'],
      description: 'The working directory used by the command. If not specified, it uses the obj subdirectory of the current directory',
      args: [
        Arg(
        name: 'directory',
        template: 'folders'
      )
      ]
    )
  ]
);
