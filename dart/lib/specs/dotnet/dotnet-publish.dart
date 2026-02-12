// Auto-generated from TypeScript source: dotnet-publish.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `publish` CLI
final FigSpec publishSpec = FigSpec(
  name: 'publish',
  description: 'Dotnet publish compiles the application, reads through its dependencies specified in the project file, and publishes the resulting set of files to a directory',
  args: [
    Arg(
    name: 'project',
    description: 'The project or solution to publish',
    isOptional: true
  )
  ],
  options: [
    Option(
      name: ['-a', '--arch'],
      description: 'Specifies the target architecture. This is a shorthand syntax for setting the Runtime Identifier (RID), where the provided value is combined with the default RID. For example, on a win-x64 machine, specifying --arch x86 sets the RID to win-x86. If you use this option, don\'t use the -r|--runtime option. Available since .NET 6 Preview 7',
      args: [
        Arg(
        name: 'arch',
        suggestions: [
          FigSuggestion(name: 'x86'),
          FigSuggestion(name: 'x64'),
          FigSuggestion(name: 'arm'),
          FigSuggestion(name: 'arm64')
        ]
      )
      ]
    ),
    Option(
      name: ['-c', '--configuration'],
      description: 'Defines the build configuration. The default for most projects is Debug, but you can override the build configuration settings in your project',
      args: [
        Arg(
        name: 'configuration',
        suggestions: [
          FigSuggestion(name: 'Debug'),
          FigSuggestion(name: 'Release')
        ]
      )
      ]
    ),
    Option(
      name: ['-f', '--framework'],
      description: 'Publishes the application for the specified target framework. You must specify the target framework in the project file',
      args: [
        Arg(
        name: 'framework'
      )
      ]
    ),
    Option(
      name: '--force',
      description: 'Forces all dependencies to be resolved even if the last restore was successful. Specifying this flag is the same as deleting the project.assets.json file'
    ),
    Option(
      name: '--interactive',
      description: 'Allows the command to stop and wait for user input or action. For example, to complete authentication. Available since .NET Core 3.0 SDK'
    ),
    Option(
      name: '--manifest',
      description: 'Specifies one or several target manifests to use to trim the set of packages published with the app. The manifest file is part of the output of the dotnet store command. To specify multiple manifests, add a --manifest option for each manifest',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--no-build',
      description: 'Doesn\'t build the project before publishing. It also implicitly sets the --no-restore flag'
    ),
    Option(
      name: '--no-dependencies',
      description: 'Ignores project-to-project references and only restores the root project'
    ),
    Option(
      name: '--nologo',
      description: 'Doesn\'t display the startup banner or the copyright message. Available since .NET Core 3.0 SDK'
    ),
    Option(
      name: '--no-restore',
      description: 'Doesn\'t execute an implicit restore when running the command'
    ),
    Option(
      name: ['-o', '--output'],
      description: 'Specifies the path for the output directory',
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--os',
      description: 'Specifies the target operating system (OS). This is a shorthand syntax for setting the Runtime Identifier (RID), where the provided value is combined with the default RID. For example, on a win-x64 machine, specifying --os os sets the RID to os-x64. If you use this option, don\'t use the -r|--runtime option. Available since .NET 6 Preview 7',
      args: [
        Arg(
        name: 'os'
      )
      ]
    ),
    Option(
      name: '--self-contained',
      description: 'Publishes the .NET runtime with your application so the runtime doesn\'t need to be installed on the target machine. Default is true if a runtime identifier is specified and the project is an executable project (not a library project)',
      args: [
        Arg(
        name: 'self-contained',
        defaultValue: 'true',
        isOptional: true,
        suggestions: [
          FigSuggestion(name: 'true'),
          FigSuggestion(name: 'false')
        ]
      )
      ]
    ),
    Option(
      name: '--no-self-contained',
      description: 'Equivalent to --self-contained false. Available since .NET Core 3.0 SDK'
    ),
    Option(
      name: ['-r', '--runtime'],
      description: 'Publishes the application for a given runtime. For a list of Runtime Identifiers (RIDs), see the RID catalog',
      args: [
        Arg(
        name: 'runtime'
      )
      ]
    ),
    Option(
      name: ['-v', '--verbosity'],
      description: 'Sets the verbosity level of the command. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic]. The default is minimal. For more information, see LoggerVerbosity',
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
      name: '--version-suffix',
      description: 'Defines the version suffix to replace the asterisk (*) in the version field of the project file',
      args: [
        Arg(
        name: 'suffix'
      )
      ]
    )
  ]
);
