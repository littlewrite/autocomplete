// Auto-generated from TypeScript source: dotnet-pack.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pack` CLI
final FigSpec packSpec = FigSpec(
  name: 'pack',
  description: 'The dotnet pack command builds the project and creates NuGet packages. The result of this command is a NuGet package (that is, a .nupkg file)',
  args: [
    Arg(
    name: 'project',
    description: 'The project or solution to pack. It\'s either a path to a csproj, vbproj, or fsproj file, or to a solution file or directory. If not specified, the command searches the current directory for a project or solution file'
  )
  ],
  options: [

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
      name: '--force',
      description: 'Forces all dependencies to be resolved even if the last restore was successful. Specifying this flag is the same as deleting the project.assets.json file'
    ),
    Option(
      name: '--include-source',
      description: 'Includes the debug symbols NuGet packages in addition to the regular NuGet packages in the output directory. The sources files are included in the src folder within the symbols package'
    ),
    Option(
      name: '--include-symbols',
      description: 'Includes the debug symbols NuGet packages in addition to the regular NuGet packages in the output directory'
    ),
    Option(
      name: '--interactive',
      description: 'Allows the command to stop and wait for user input or action. For example, to complete authentication. Available since .NET Core 3.0 SDK'
    ),
    Option(
      name: '--no-build',
      description: 'Doesn\'t build the project before packing. It also implicitly sets the --no-restore flag'
    ),
    Option(
      name: '--no-dependencies',
      description: 'Ignores project-to-project references and only restores the root project'
    ),
    Option(
      name: '--no-restore',
      description: 'Doesn\'t execute an implicit restore when running the command'
    ),
    Option(
      name: '--nologo',
      description: 'Doesn\'t display the startup banner or the copyright message. Available since .NET Core 3.0 SDK'
    ),
    Option(
      name: ['-o', '--output'],
      description: 'Places the built packages in the directory specified',
      args: [
        Arg(
        name: 'directory',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--runtime',
      description: 'Specifies the target runtime to restore packages for. For a list of Runtime Identifiers (RIDs), see the RID catalog',
      args: [
        Arg(
        name: 'runtime'
      )
      ]
    ),
    Option(
      name: ['-s', '--serviceable'],
      description: 'Sets the serviceable flag in the package'
    ),
    Option(
      name: '--version-suffix',
      description: 'Defines the value for the \$(VersionSuffix) MSBuild property in the project',
      args: [
        Arg(
        name: 'suffix'
      )
      ]
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
    )
  ]
);
