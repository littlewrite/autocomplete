// Auto-generated from TypeScript source: dotnet-list.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `list` CLI
final FigSpec listSpec = FigSpec(
  name: 'list',
  args: [
    Arg(
    name: 'project',
    description: 'The project or solution file to operate on. If not specified, the command searches the current directory for one. If more than one solution or project is found, an error is thrown',
    isOptional: true
  )
  ],
  subcommands: [

    Subcommand(
      name: 'package',
      description: 'The dotnet list package command provides a convenient option to list all NuGet package references for a specific project or a solution. You first need to build the project in order to have the assets needed for this command to process',
      options: [

        Option(
          name: '--config',
          description: 'The NuGet sources to use when searching for newer packages. Requires the --outdated option',
          args: [
            Arg(
            name: 'source'
          )
          ]
        ),
        Option(
          name: '--deprecated',
          description: 'Displays packages that have been deprecated'
        ),
        Option(
          name: '--framework',
          description: 'Displays only the packages applicable for the specified target framework. To specify multiple frameworks, repeat the option multiple times. For example: --framework netcoreapp2.2 --framework netstandard2.0',
          args: [
            Arg(
            name: 'framework'
          )
          ]
        ),
        Option(
          name: '--highest-minor',
          description: 'Considers only the packages with a matching major version number when searching for newer packages. Requires the --outdated or --deprecated option'
        ),
        Option(
          name: '--highest-patch',
          description: 'Considers only the packages with a matching major and minor version numbers when searching for newer packages. Requires the --outdated or --deprecated option'
        ),
        Option(
          name: '--include-prerelease',
          description: 'Considers packages with prerelease versions when searching for newer packages. Requires the --outdated or --deprecated option'
        ),
        Option(
          name: '--include-transitive',
          description: 'Lists transitive packages, in addition to the top-level packages. When specifying this option, you get a list of packages that the top-level packages depend on'
        ),
        Option(
          name: '--interactive',
          description: 'Allows the command to stop and wait for user input or action. For example, to complete authentication. Available since .NET Core 3.0 SDK'
        ),
        Option(
          name: '--outdated',
          description: 'Lists packages that have newer versions available'
        ),
        Option(
          name: ['-s', '--source'],
          description: 'The NuGet sources to use when searching for newer packages. Requires the --outdated or --deprecated option'
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
          name: '--vulnerable',
          description: 'Lists packages that have known vulnerabilities. Cannot be combined with --deprecated or --outdated options'
        )
      ]
    ),
    Subcommand(
      name: 'reference',
      description: 'The dotnet list reference command provides a convenient option to list project references for a given project'
    )
  ]
);
