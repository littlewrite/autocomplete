// Auto-generated from TypeScript source: boards.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `boards` CLI
final FigSpec boardsSpec = FigSpec(
  name: 'boards',
  description: 'Manage Azure Boards.\n\n\t\tThis command group is a part of the azure-devops extension',
  subcommands: [

    Subcommand(
      name: 'area',
      description: 'Manage area paths',
      subcommands: [

        Subcommand(
          name: 'project',
          description: 'Manage areas for a project',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create area',
              options: [

                Option(
                  name: '--name',
                  description: 'Name of the area',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--path',
                  description: 'Absolute path of an area. Creates an area at root level if --path is not specified. Example:\\ProjectName\\Area\\AreaName',
                  args: [
                    Arg(
                    name: 'pat'
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
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete area',
              options: [

                Option(
                  name: '--path',
                  description: 'Absolute path of an area. Example:\\ProjectName\\Area\\AreaName',
                  args: [
                    Arg(
                    name: 'pat'
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List areas for a project',
              options: [

                Option(
                  name: '--depth',
                  description: 'Depth of child nodes to be fetched. Example: --depth 3',
                  args: [
                    Arg(
                    name: 'dept'
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
                  name: '--path',
                  description: 'Absolute path of an area. Example:\\ProjectName\\Area\\AreaName',
                  args: [
                    Arg(
                    name: 'pat'
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
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show area details for a project',
              options: [

                Option(
                  name: '--id',
                  description: 'Area ID',
                  args: [
                    Arg(
                    name: 'i'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update area',
              options: [

                Option(
                  name: '--path',
                  description: 'Absolute path of an area. Example:\\ProjectName\\Area\\AreaName',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--child-id',
                  description: 'Move an existing area and add as child node for this area',
                  args: [
                    Arg(
                    name: 'child-i'
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
                  name: '--name',
                  description: 'New name of the area',
                  args: [
                    Arg(
                    name: 'nam'
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'team',
          description: 'Manage areas for a team',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add area to a team',
              options: [

                Option(
                  name: '--path',
                  description: 'Area path. Example:\\ProjectName\\AreaName',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--team',
                  description: 'The name or id of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                  name: '--include-sub-areas',
                  description: 'Include child nodes of this area',
                  args: [
                    Arg(
                    name: 'include-sub-areas',
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
                  name: '--set-as-default',
                  description: 'Set this area path as default area for this team. Default: False'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List areas for a team',
              options: [

                Option(
                  name: '--team',
                  description: 'The name or id of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove area from a team',
              options: [

                Option(
                  name: '--path',
                  description: 'Area path. Example:\\ProjectName\\AreaName',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--team',
                  description: 'The name or id of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update team area',
              options: [

                Option(
                  name: '--path',
                  description: 'Area path. Example:\\ProjectName\\AreaName',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--team',
                  description: 'The name or id of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                  name: '--include-sub-areas',
                  description: 'Include child nodes of this area',
                  args: [
                    Arg(
                    name: 'include-sub-areas',
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
                  name: '--set-as-default',
                  description: 'Set as default team area path. Default: False'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'iteration',
      description: 'Manage iterations',
      subcommands: [

        Subcommand(
          name: 'project',
          description: 'Manage iterations for a project',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create iteration',
              options: [

                Option(
                  name: '--name',
                  description: 'Name of the iteration',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--finish-date',
                  description: 'Finish date of the iteration. Example : "2019-06-21"',
                  args: [
                    Arg(
                    name: 'finish-dat'
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
                  name: '--path',
                  description: 'Absolute path of an iteration. Creates an iteration at root level if --path is not specified. Example:\\ProjectName\\Iteration\\IterationName',
                  args: [
                    Arg(
                    name: 'pat'
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
                  name: '--start-date',
                  description: 'Start date of the iteration. Example : "2019-06-03"',
                  args: [
                    Arg(
                    name: 'start-dat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete iteration',
              options: [

                Option(
                  name: '--path',
                  description: 'Absolute path of an iteration. Example:\\ProjectName\\Iteration\\IterationName',
                  args: [
                    Arg(
                    name: 'pat'
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List iterations for a project',
              options: [

                Option(
                  name: '--depth',
                  description: 'Depth of child nodes to be fetched. Example: --depth 3',
                  args: [
                    Arg(
                    name: 'dept'
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
                  name: '--path',
                  description: 'Absolute path of an iteration. Example:\\ProjectName\\Iteration\\IterationName',
                  args: [
                    Arg(
                    name: 'pat'
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
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show iteration details for a project',
              options: [

                Option(
                  name: '--id',
                  description: 'Iteration ID',
                  args: [
                    Arg(
                    name: 'i'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update project iteration',
              options: [

                Option(
                  name: '--path',
                  description: 'Absolute path of an iteration. Example:\\ProjectName\\Iteration\\IterationName',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--child-id',
                  description: 'Move an existing iteration and add as child node for this iteration',
                  args: [
                    Arg(
                    name: 'child-i'
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
                  name: '--finish-date',
                  description: 'Finish date of the iteration. Example : "2019-06-21"',
                  args: [
                    Arg(
                    name: 'finish-dat'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'New name of the iteration',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--start-date',
                  description: 'Start date of the iteration. Example : "2019-06-03"',
                  args: [
                    Arg(
                    name: 'start-dat'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'team',
          description: 'Manage iterations for a team',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add iteration to a team',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier of the iteration',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--team',
                  description: 'Name or ID of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List iterations for a team',
              options: [

                Option(
                  name: '--team',
                  description: 'The name or id of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                  name: '--timeframe',
                  description: 'A filter for which iterations are returned based on relative time. Only Current is supported currently',
                  args: [
                    Arg(
                    name: 'timefram'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-work-items',
              description: 'List work-items for an iteration',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier of the iteration',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--team',
                  description: 'Name or ID of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove iteration from a team',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier of the iteration',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--team',
                  description: 'Name or ID of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                )
              ]
            ),
            Subcommand(
              name: 'set-backlog-iteration',
              description: 'Set backlog iteration for a team',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier of the iteration which needs to be set as backlog iteration',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--team',
                  description: 'Name or ID of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                )
              ]
            ),
            Subcommand(
              name: 'set-default-iteration',
              description: 'Set default iteration for a team',
              options: [

                Option(
                  name: '--team',
                  description: 'Name or ID of the team',
                  args: [
                    Arg(
                    name: 'tea'
                  )
                  ]
                ),
                Option(
                  name: '--default-iteration-macro',
                  description: 'Default iteration macro. Example: @CurrentIteration',
                  args: [
                    Arg(
                    name: 'default-iteration-macr'
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
                  name: '--id',
                  description: 'Identifier of the iteration which needs to be set as default',
                  args: [
                    Arg(
                    name: 'i'
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
                )
              ]
            ),
            Subcommand(
              name: 'show-backlog-iteration',
              description: 'Show backlog iteration for a team',
              options: [

                Option(
                  name: '--team',
                  description: 'Name or ID of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                )
              ]
            ),
            Subcommand(
              name: 'show-default-iteration',
              description: 'Show default iteration for a team',
              options: [

                Option(
                  name: '--team',
                  description: 'Name or ID of the team',
                  args: [
                    Arg(
                    name: 'tea'
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
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'query',
      description: 'Query for a list of work items',
      options: [

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
          name: '--id',
          description: 'The ID of an existing query. Required unless --path or --wiql are specified',
          args: [
            Arg(
            name: 'i'
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
          name: '--path',
          description: 'The path of an existing query. Ignored if --id is specified',
          args: [
            Arg(
            name: 'pat'
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
          name: '--wiql',
          description: 'The query in Work Item Query Language format. Ignored if --id or --path is specified',
          args: [
            Arg(
            name: 'wiq'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'work-item',
      description: 'Manage work items',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a work item',
          options: [

            Option(
              name: '--title',
              description: 'Title of the work item',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Name of the work item type (e.g. Bug)',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: '--area',
              description: 'Area the work item is assigned to (e.g. Demos)',
              args: [
                Arg(
                name: 'are'
              )
              ]
            ),
            Option(
              name: '--assigned-to',
              description: 'Name of the person the work item is assigned-to (e.g. fabrikam)',
              args: [
                Arg(
                name: 'assigned-t'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description of the work item',
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
              name: '--discussion',
              description: 'Comment to add to a discussion in a work item',
              args: [
                Arg(
                name: 'discussio'
              )
              ]
            ),
            Option(
              name: ['--fields', '-f'],
              description: 'Space separated "field=value" pairs for custom fields you would like to set. In case of multiple fields : "field1=value1" "field2=value2". Refer https://aka.ms/azure-devops-cli-field-api for more details on fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--iteration',
              description: 'Iteration path of the work item (e.g. Demos\\Iteration 1)',
              args: [
                Arg(
                name: 'iteratio'
              )
              ]
            ),
            Option(
              name: '--open',
              description: 'Open the work item in the default web browser'
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
              name: '--reason',
              description: 'Reason for the state of the work item',
              args: [
                Arg(
                name: 'reaso'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a work item',
          options: [

            Option(
              name: '--id',
              description: 'Unique id of the work item',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--destroy',
              description: 'Permanently delete this work item'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details for a work item',
          options: [

            Option(
              name: '--id',
              description: 'The ID of the work item',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--as-of',
              description: 'Work item details as of a particular date and time. Provide a date or date time string. Assumes local time zone. Example: \'2019-01-20\', \'2019-01-20 00:20:00\'. For UTC, append \'UTC\' to the date time string, \'2019-01-20 00:20:00 UTC\'',
              args: [
                Arg(
                name: 'as-o'
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
              name: '--expand',
              description: 'The expand parameters for work item attributes',
              args: [
                Arg(
                name: 'expand',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'fields'),
                  FigSuggestion(name: 'links'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'relations')
                ]
              )
              ]
            ),
            Option(
              name: ['--fields', '-f'],
              description: 'Comma-separated list of requested fields. Example:System.Id,System.AreaPath. Refer https://aka.ms/azure-devops-cli-field-api for more details on fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--open',
              description: 'Open the work item in the default web browser'
            ),
            Option(
              name: ['--organization', '--org'],
              description: 'Azure DevOps organization URL. You can configure the default organization using az devops configure -d organization=ORG_URL. Required if not configured as default or picked up via git config. Example: https://dev.azure.com/MyOrganizationName/',
              args: [
                Arg(
                name: 'organizatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update work items',
          options: [

            Option(
              name: '--id',
              description: 'The id of the work item to update',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--area',
              description: 'Area the work item is assigned to (e.g. Demos)',
              args: [
                Arg(
                name: 'are'
              )
              ]
            ),
            Option(
              name: '--assigned-to',
              description: 'Name of the person the work item is assigned-to (e.g. fabrikam)',
              args: [
                Arg(
                name: 'assigned-t'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description of the work item',
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
              name: '--discussion',
              description: 'Comment to add to a discussion in a work item',
              args: [
                Arg(
                name: 'discussio'
              )
              ]
            ),
            Option(
              name: ['--fields', '-f'],
              description: 'Space separated "field=value" pairs for custom fields you would like to set. Refer https://aka.ms/azure-devops-cli-field-api for more details on fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--iteration',
              description: 'Iteration path of the work item (e.g. Demos\\Iteration 1)',
              args: [
                Arg(
                name: 'iteratio'
              )
              ]
            ),
            Option(
              name: '--open',
              description: 'Open the work item in the default web browser'
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
              name: '--reason',
              description: 'Reason for the state of the work item',
              args: [
                Arg(
                name: 'reaso'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'State of the work item (e.g. active)',
              args: [
                Arg(
                name: 'stat'
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'Title of the work item',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'relation',
          description: 'Manage work item relations',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add relation(s) to work item',
              options: [

                Option(
                  name: '--id',
                  description: 'The ID of the work item',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--relation-type',
                  description: 'Relation type to create. Example: parent, child',
                  args: [
                    Arg(
                    name: 'relation-typ'
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
                  name: '--target-id',
                  description: 'ID(s) of work-items to create relation with. Multiple values can be passed comma separated. Example: 1,2',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-url',
                  description: 'URL(s) of work-items to create relation with. Multiple values can be passed comma separated',
                  args: [
                    Arg(
                    name: 'target-ur'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-type',
              description: 'List work item relations supported in the organization',
              options: [

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
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove relation(s) from work item',
              options: [

                Option(
                  name: '--id',
                  description: 'The ID of the work item',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--relation-type',
                  description: 'Relation type to remove. Example: parent, child',
                  args: [
                    Arg(
                    name: 'relation-typ'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'ID(s) of work-items to remove relation from. Multiple values can be passed comma separated. Example: 1,2',
                  args: [
                    Arg(
                    name: 'target-i'
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get work item, fill relations with friendly name',
              options: [

                Option(
                  name: '--id',
                  description: 'The ID of the work item',
                  args: [
                    Arg(
                    name: 'i'
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
                )
              ]
            )
          ]
        )
      ]
    )
  ]
);
