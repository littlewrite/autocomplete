// Auto-generated from TypeScript source: dotnet-build.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `build` CLI
final FigSpec buildSpec = FigSpec(
  name: 'build',
  args: [
    Arg(
    name: 'project',
    description: 'The project or solution file to build. If a project or solution file isn\'t specified, MSBuild searches the current working directory for a file that has a file extension that ends in either proj or sln and uses that file',
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
        name: 'config'
      )
      ]
    ),
    Option(
      name: ['-f', '--framework'],
      description: 'Compiles for a specific framework. The framework must be defined in the project file'
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
      name: '--no-dependencies',
      description: 'Ignores project-to-project (P2P) references and only builds the specified root project'
    ),
    Option(
      name: '--no-incremental',
      description: 'Marks the build as unsafe for incremental build. This flag turns off incremental compilation and forces a clean rebuild of the project\'s dependency graph'
    ),
    Option(
      name: '--no-restore',
      description: 'Doesn\'t execute an implicit restore during build'
    ),
    Option(
      name: '--nologo',
      description: 'Doesn\'t display the startup banner or the copyright message. Available since .NET Core 3.0 SDK'
    ),
    Option(
      name: '--no-self-contained',
      description: 'Publishes the application as a framework dependent application. A compatible .NET runtime must be installed on the target machine to run the application'
    ),
    Option(
      name: ['-o', '--output'],
      description: 'Directory in which to place the built binaries. If not specified, the default path is ./bin/<configuration>/<framework>/. For projects with multiple target frameworks (via the TargetFrameworks property), you also need to define --framework when you specify this option',
      args: [
        Arg(
        name: 'directory',
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
      name: ['-r', '--runtime'],
      description: 'Specifies the target runtime. For a list of Runtime Identifiers (RIDs), see the RID catalog. If you use this option, use --self-contained or --no-self-contained also',
      args: [
        Arg(
        name: 'runtime'
      )
      ]
    ),
    Option(
      name: '--self-contained',
      description: 'Publishes the .NET runtime with the application so the runtime doesn\'t need to be installed on the target machine. The default is true if a runtime identifier is specified',
      args: [
        Arg(
        name: 'self-contained',
        isOptional: true,
        defaultValue: 'true',
        suggestions: [

          FigSuggestion(name: 'true'),
          FigSuggestion(name: 'false')
        ]
      )
      ]
    ),
    Option(
      name: '--source',
      description: 'The URI of the NuGet package source to use during the restore operation',
      args: [
        Arg(
        name: 'source'
      )
      ]
    ),
    Option(
      name: ['-v', '--verbosity'],
      description: 'Sets the verbosity level of the command. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic]. Not supported in every command. See specific command page to determine if this option is available',
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
      description: 'Sets the value of the \$(VersionSuffix) property to use when building the project. This only works if the \$(Version) property isn\'t set. Then, \$(Version) is set to the \$(VersionPrefix) combined with the \$(VersionSuffix), separated by a dash',
      args: [
        Arg(
        name: 'suffix'
      )
      ]
    )
  ]
);
