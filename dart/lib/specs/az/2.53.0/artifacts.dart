// Auto-generated from TypeScript source: artifacts.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `artifacts` CLI
final FigSpec artifactsSpec = FigSpec(
  name: 'artifacts',
  description: 'Manage Azure Artifacts',
  subcommands: [

    Subcommand(
      name: 'universal',
      description: 'Manage Universal Packages',
      subcommands: [

        Subcommand(
          name: 'download',
          description: 'Download a package',
          options: [

            Option(
              name: '--feed',
              description: 'Name or ID of the feed',
              args: [
                Arg(
                name: 'fee'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the package, e.g. \'foo-package\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Directory to place the package contents',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'Version of the package, e.g. 1.0.0',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--detect',
              description: 'Automatically detect organization',
              args: [
                Arg(
                name: 'detect',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--file-filter',
              description: 'Wildcard filter for file download',
              args: [
                Arg(
                name: 'file-filte'
              )
              ]
            ),
            Option(
              name: ['--organization', '--org'],
              description: 'Azure DevOps organization URL. You can configure the default organization using az devops configure -d organization=ORG_URL. Required if not configured as default or picked up via git config. Example: https://dev.azure.com/MyOrganizationName/',
              args: [
                Arg(
                name: 'organizatio'
              )
              ]
            ),
            Option(
              name: ['--project', '-p'],
              description: 'Name or ID of the project. You can configure the default project using az devops configure -d project=NAME_OR_ID. Required if not configured as default or picked up via git config',
              args: [
                Arg(
                name: 'projec'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope of the feed: \'project\' if the feed was created in a project, and \'organization\' otherwise',
              args: [
                Arg(
                name: 'scope',
                suggestions: [

                  FigSuggestion(name: 'organization'),
                  FigSuggestion(name: 'project')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'publish',
          description: 'Publish a package to a feed',
          options: [

            Option(
              name: '--feed',
              description: 'Name or ID of the feed',
              args: [
                Arg(
                name: 'fee'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the package, e.g. \'foo-package\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Directory containing the package contents',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'Version of the package, e.g. \'1.0.0\'',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description of the package',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--detect',
              description: 'Automatically detect organization',
              args: [
                Arg(
                name: 'detect',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--organization', '--org'],
              description: 'Azure DevOps organization URL. You can configure the default organization using az devops configure -d organization=ORG_URL. Required if not configured as default or picked up via git config. Example: https://dev.azure.com/MyOrganizationName/',
              args: [
                Arg(
                name: 'organizatio'
              )
              ]
            ),
            Option(
              name: ['--project', '-p'],
              description: 'Name or ID of the project. You can configure the default project using az devops configure -d project=NAME_OR_ID. Required if not configured as default or picked up via git config',
              args: [
                Arg(
                name: 'projec'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope of the feed: \'project\' if the feed was created in a project, and \'organization\' otherwise',
              args: [
                Arg(
                name: 'scope',
                suggestions: [

                  FigSuggestion(name: 'organization'),
                  FigSuggestion(name: 'project')
                ]
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
