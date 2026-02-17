// Auto-generated from TypeScript source: repos.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `repos` CLI
final FigSpec reposSpec = FigSpec(
  name: 'repos',
  description: 'Manage Azure Repos.\n\n\t\tThis command group is a part of the azure-devops extension',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a Git repository in a team project',
      options: [

        Option(
          name: '--name',
          description: 'Name for the new repository',
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
          name: '--open',
          description: 'Open the repository page in your web browser'
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
      name: 'delete',
      description: 'Delete a Git repository in a team project',
      options: [

        Option(
          name: '--id',
          description: 'ID of the repository',
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
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List Git repositories of a team project',
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
      description: 'Get the details of a Git repository',
      options: [

        Option(
          name: ['--repository', '-r'],
          description: 'Name or ID of the repository',
          args: [
            Arg(
            name: 'repositor'
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
          name: '--open',
          description: 'Open the repository page in your web browser'
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
      description: 'Update the Git repository',
      options: [

        Option(
          name: ['--repository', '-r'],
          description: 'Name or ID of the repository',
          args: [
            Arg(
            name: 'repositor'
          )
          ]
        ),
        Option(
          name: '--default-branch',
          description: 'Default branch to be set for the repository. Example: \'refs/heads/live\' or \'live\'',
          args: [
            Arg(
            name: 'default-branc'
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
          description: 'New name for the repository',
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
    ),
    Subcommand(
      name: 'import',
      description: 'Manage Git repositories import.\n\n\t\tThis command imports the public repo fabrikam-open-source to the empty Git repo fabrikam-open-source for the default configuration az devops configure --defaults organization=https://dev.azure.com/fabrikamprime project="Fabrikam Fiber"',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a git import request',
          options: [

            Option(
              name: ['--git-source-url', '--git-url'],
              description: 'Url of the source git repository',
              args: [
                Arg(
                name: 'git-source-ur'
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
              name: '--git-service-endpoint-id',
              description: 'Service Endpoint for connection to external endpoint',
              args: [
                Arg(
                name: 'git-service-endpoint-i'
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
              name: ['--repository', '-r'],
              description: 'Name or ID of the repository to create the import request in',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--requires-authorization',
              description: 'Flag to tell if source git repository is private'
            ),
            Option(
              name: '--user-name',
              description: 'User name in case source git repository is private',
              args: [
                Arg(
                name: 'user-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'policy',
      description: 'Manage branch policy',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a policy using a configuration file',
          options: [

            Option(
              name: ['--policy-configuration', '--config'],
              description: 'Local file path for configuration file. Please use \\backslash when typing in directory path',
              args: [
                Arg(
                name: 'policy-configuratio'
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
          name: 'delete',
          description: 'Delete a policy',
          options: [

            Option(
              name: ['--policy-id', '--id'],
              description: 'ID of the policy',
              args: [
                Arg(
                name: 'policy-i'
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
          description: 'List all policies in a project',
          options: [

            Option(
              name: '--branch',
              description: 'Branch name to filter results by exact match of branch name. The --repository-id parameter is required to use the branch filter. For example: --branch master',
              args: [
                Arg(
                name: 'branc'
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
              name: '--repository-id',
              description: 'ID of the repository to filter results by exact match of the repository ID. For example --repository-ID e556f204-53c9-4153-9cd9-ef41a11e3345',
              args: [
                Arg(
                name: 'repository-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show policy details',
          options: [

            Option(
              name: ['--policy-id', '--id'],
              description: 'ID of the policy',
              args: [
                Arg(
                name: 'policy-i'
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
          description: 'Update a policy using a configuration file',
          options: [

            Option(
              name: ['--policy-configuration', '--config'],
              description: 'Local file path for configuration file. Please use \\backslash when typing in directory path',
              args: [
                Arg(
                name: 'policy-configuratio'
              )
              ]
            ),
            Option(
              name: ['--policy-id', '--id'],
              description: 'ID of the policy',
              args: [
                Arg(
                name: 'policy-i'
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
          name: 'approver-count',
          description: 'Manage approver count policy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create approver count policy',
              options: [

                Option(
                  name: '--allow-downvotes',
                  description: 'Whether to allow downvotes or not',
                  args: [
                    Arg(
                    name: 'allow-downvotes',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--creator-vote-counts',
                  description: 'Whether the creator\'s vote counts or not',
                  args: [
                    Arg(
                    name: 'creator-vote-counts',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--minimum-approver-count',
                  description: 'Minimum number of approvers required. For example: 2',
                  args: [
                    Arg(
                    name: 'minimum-approver-coun'
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--reset-on-source-push',
                  description: 'Whether to reset source on push',
                  args: [
                    Arg(
                    name: 'reset-on-source-push',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
              description: 'Update approver count policy',
              options: [

                Option(
                  name: ['--policy-id', '--id'],
                  description: 'ID of the policy',
                  args: [
                    Arg(
                    name: 'policy-i'
                  )
                  ]
                ),
                Option(
                  name: '--allow-downvotes',
                  description: 'Whether to allow downvotes or not',
                  args: [
                    Arg(
                    name: 'allow-downvotes',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--creator-vote-counts',
                  description: 'Whether the creator\'s vote counts or not',
                  args: [
                    Arg(
                    name: 'creator-vote-counts',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
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
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--minimum-approver-count',
                  description: 'Minimum number of approvers required. For example: 2',
                  args: [
                    Arg(
                    name: 'minimum-approver-coun'
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
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--reset-on-source-push',
                  description: 'Whether to reset source on push',
                  args: [
                    Arg(
                    name: 'reset-on-source-push',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'build',
          description: 'Manage build policy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create build policy',
              options: [

                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--build-definition-id',
                  description: 'Build Definition Id',
                  args: [
                    Arg(
                    name: 'build-definition-i'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name for this build policy to identify the policy. For example: \'Manual queue policy\'',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--manual-queue-only',
                  description: 'Whether to allow only manual queue of builds',
                  args: [
                    Arg(
                    name: 'manual-queue-only',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--queue-on-source-update-only',
                  description: 'Queue Only on source update',
                  args: [
                    Arg(
                    name: 'queue-on-source-update-only',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--valid-duration',
                  description: 'Policy validity duration (in minutes)',
                  args: [
                    Arg(
                    name: 'valid-duratio'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
                  name: '--path-filter',
                  description: 'Filter path(s) on which the policy is applied. Supports absolute paths, wildcards and multiple paths separated by \';\'. Example: /WebApp/Models/Data.cs, /WebApp/* or *.cs,/WebApp/Models/Data.cs;ClientApp/Models/Data.cs',
                  args: [
                    Arg(
                    name: 'path-filte'
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
              description: 'Update build policy',
              options: [

                Option(
                  name: ['--policy-id', '--id'],
                  description: 'ID of the policy',
                  args: [
                    Arg(
                    name: 'policy-i'
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--build-definition-id',
                  description: 'Build Definition Id',
                  args: [
                    Arg(
                    name: 'build-definition-i'
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
                  name: '--display-name',
                  description: 'Display name for this build policy to identify the policy. For example: \'Manual queue policy\'',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--manual-queue-only',
                  description: 'Whether to allow only manual queue of builds',
                  args: [
                    Arg(
                    name: 'manual-queue-only',
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
                  name: '--path-filter',
                  description: 'Filter path(s) on which the policy is applied. Supports absolute paths, wildcards and multiple paths separated by \';\'. Example: /WebApp/Models/Data.cs, /WebApp/* or *.cs,/WebApp/Models/Data.cs;ClientApp/Models/Data.cs',
                  args: [
                    Arg(
                    name: 'path-filte'
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
                  name: '--queue-on-source-update-only',
                  description: 'Queue Only on source update',
                  args: [
                    Arg(
                    name: 'queue-on-source-update-only',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--valid-duration',
                  description: 'Policy validity duration (in minutes)',
                  args: [
                    Arg(
                    name: 'valid-duratio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'case-enforcement',
          description: 'Manage case enforcement policy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create case enforcement policy',
              options: [

                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
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
              description: 'Update case enforcement policy',
              options: [

                Option(
                  name: ['--policy-id', '--id'],
                  description: 'ID of the policy',
                  args: [
                    Arg(
                    name: 'policy-i'
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
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
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
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
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'comment-required',
          description: 'Manage comment required policy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create comment resolution required policy',
              options: [

                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
              description: 'Update comment resolution required policy',
              options: [

                Option(
                  name: ['--policy-id', '--id'],
                  description: 'ID of the policy',
                  args: [
                    Arg(
                    name: 'policy-i'
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
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
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'file-size',
          description: 'Manage file size policy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create file size policy',
              options: [

                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--maximum-git-blob-size',
                  description: 'Maximum git blob size in bytes. For example, to specify a 10byte limit, --maximum-git-blob-size 10',
                  args: [
                    Arg(
                    name: 'maximum-git-blob-siz'
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--use-uncompressed-size',
                  description: 'Whether to use uncompressed size',
                  args: [
                    Arg(
                    name: 'use-uncompressed-size',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
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
              description: 'Update file size policy',
              options: [

                Option(
                  name: ['--policy-id', '--id'],
                  description: 'ID of the policy',
                  args: [
                    Arg(
                    name: 'policy-i'
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
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
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--maximum-git-blob-size',
                  description: 'Maximum git blob size in bytes. For example, to specify a 10byte limit, --maximum-git-blob-size 10',
                  args: [
                    Arg(
                    name: 'maximum-git-blob-siz'
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
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--use-uncompressed-size',
                  description: 'Whether to use uncompressed size',
                  args: [
                    Arg(
                    name: 'use-uncompressed-size',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'merge-strategy',
          description: 'Manage merge strategy policy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create merge strategy policy',
              options: [

                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--allow-no-fast-forward',
                  description: 'Basic merge (no fast-forward) - Preserves nonlinear history exactly as it happened during development',
                  args: [
                    Arg(
                    name: 'allow-no-fast-forward',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--allow-rebase',
                  description: 'Rebase and fast-forward - Creates a linear history by replaying the source branch commits onto the target without a merge commit',
                  args: [
                    Arg(
                    name: 'allow-rebase',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--allow-rebase-merge',
                  description: 'Rebase with merge commit - Creates a semi-linear history by replaying the source branch commits onto the target and then creating a merge commit',
                  args: [
                    Arg(
                    name: 'allow-rebase-merge',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--allow-squash',
                  description: 'Squash merge - Creates a linear history by condensing the source branch commits into a single new commit on the target branch',
                  args: [
                    Arg(
                    name: 'allow-squash',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
              description: 'Update merge strategy policy',
              options: [

                Option(
                  name: ['--policy-id', '--id'],
                  description: 'ID of the policy',
                  args: [
                    Arg(
                    name: 'policy-i'
                  )
                  ]
                ),
                Option(
                  name: '--allow-no-fast-forward',
                  description: 'Basic merge (no fast-forward) - Preserves nonlinear history exactly as it happened during development',
                  args: [
                    Arg(
                    name: 'allow-no-fast-forward',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--allow-rebase',
                  description: 'Rebase and fast-forward - Creates a linear history by replaying the source branch commits onto the target without a merge commit',
                  args: [
                    Arg(
                    name: 'allow-rebase',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--allow-rebase-merge',
                  description: 'Rebase with merge commit - Creates a semi-linear history by replaying the source branch commits onto the target and then creating a merge commit',
                  args: [
                    Arg(
                    name: 'allow-rebase-merge',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--allow-squash',
                  description: 'Squash merge - Creates a linear history by condensing the source branch commits into a single new commit on the target branch',
                  args: [
                    Arg(
                    name: 'allow-squash',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
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
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'required-reviewer',
          description: 'Manage required reviewer policy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create required reviewer policy',
              options: [

                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--message',
                  description: 'Message',
                  args: [
                    Arg(
                    name: 'messag'
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--required-reviewer-ids',
                  description: 'Required reviewers email addresses separated by \';\'. For example: john@contoso.com;alice@contoso.com',
                  args: [
                    Arg(
                    name: 'required-reviewer-id'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
                  name: '--path-filter',
                  description: 'Filter path(s) on which the policy is applied. Supports absolute paths, wildcards and multiple paths separated by \';\'. Example: /WebApp/Models/Data.cs, /WebApp/* or *.cs,/WebApp/Models/Data.cs;ClientApp/Models/Data.cs',
                  args: [
                    Arg(
                    name: 'path-filte'
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
              description: 'Update required reviewer policy',
              options: [

                Option(
                  name: ['--policy-id', '--id'],
                  description: 'ID of the policy',
                  args: [
                    Arg(
                    name: 'policy-i'
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--message',
                  description: 'Message',
                  args: [
                    Arg(
                    name: 'messag'
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
                  name: '--path-filter',
                  description: 'Filter path(s) on which the policy is applied. Supports absolute paths, wildcards and multiple paths separated by \';\'. Example: /WebApp/Models/Data.cs, /WebApp/* or *.cs,/WebApp/Models/Data.cs;ClientApp/Models/Data.cs',
                  args: [
                    Arg(
                    name: 'path-filte'
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
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--required-reviewer-ids',
                  description: 'Required reviewers email addresses separated by \';\'. For example: john@contoso.com;alice@contoso.com',
                  args: [
                    Arg(
                    name: 'required-reviewer-id'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'work-item-linking',
          description: 'Manage work item linking policy',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create work item linking policy',
              options: [

                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
              description: 'Update work item linking policy',
              options: [

                Option(
                  name: ['--policy-id', '--id'],
                  description: 'ID of the policy',
                  args: [
                    Arg(
                    name: 'policy-i'
                  )
                  ]
                ),
                Option(
                  name: '--blocking',
                  description: 'Whether the policy should be blocking or not',
                  args: [
                    Arg(
                    name: 'blocking',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'Branch on which this policy should be applied. For example: master',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--branch-match-type',
                  description: 'Determines how the branch argument is used to apply a policy. If value is \'exact\', the policy will be applied on a branch which has an exact match on the --branch argument. If value is \'prefix\' the policy is applied across all branch folders that match the prefix provided by the --branch argument',
                  args: [
                    Arg(
                    name: 'branch-match-type',
                    suggestions: [

                      FigSuggestion(name: 'exact'),
                      FigSuggestion(name: 'prefix')
                    ]
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
                  name: '--enabled',
                  description: 'Whether the policy is enabled or not',
                  args: [
                    Arg(
                    name: 'enabled',
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
                  name: '--repository-id',
                  description: 'Id of the repository on which to apply the policy',
                  args: [
                    Arg(
                    name: 'repository-i'
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
      name: 'pr',
      description: 'Manage pull requests',
      subcommands: [

        Subcommand(
          name: 'checkout',
          description: 'Checkout the PR source branch locally, if no local changes are present',
          options: [

            Option(
              name: '--id',
              description: 'ID of the pull request',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--remote-name',
              description: 'Name of git remote against which PR is raised',
              args: [
                Arg(
                name: 'remote-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a pull request',
          options: [

            Option(
              name: '--auto-complete',
              description: 'Set the pull request to complete automatically when all policies have passed and the source branch can be merged into the target branch'
            ),
            Option(
              name: '--bypass-policy',
              description: 'Bypass required policies (if any) and completes the pull request once it can be merged'
            ),
            Option(
              name: '--bypass-policy-reason',
              description: 'Reason for bypassing the required policies',
              args: [
                Arg(
                name: 'bypass-policy-reaso'
              )
              ]
            ),
            Option(
              name: '--delete-source-branch',
              description: 'Delete the source branch after the pull request has been completed and merged into the target branch'
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description for the new pull request. Can include markdown. Each value sent to this arg will be a new line. For example: --description "First Line" "Second Line"',
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
              name: '--draft',
              description: 'Use this flag to create the pull request in draft/work in progress mode',
              args: [
                Arg(
                name: 'draft',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--merge-commit-message',
              description: 'Message displayed when commits are merged',
              args: [
                Arg(
                name: 'merge-commit-messag'
              )
              ]
            ),
            Option(
              name: '--open',
              description: 'Open the pull request in your web browser'
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
              name: ['--repository', '-r'],
              description: 'Name or ID of the repository to create the pull request in',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--reviewers',
              description: 'Additional users or groups to include as reviewers on the new pull request. Space separated',
              args: [
                Arg(
                name: 'reviewer'
              )
              ]
            ),
            Option(
              name: ['--source-branch', '-s'],
              description: 'Name of the source branch. Example: "dev"',
              args: [
                Arg(
                name: 'source-branc'
              )
              ]
            ),
            Option(
              name: '--squash',
              description: 'Squash the commits in the source branch when merging into the target branch'
            ),
            Option(
              name: ['--target-branch', '-t'],
              description: 'Name of the target branch. If not specified, defaults to the default branch of the target repository',
              args: [
                Arg(
                name: 'target-branc'
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'Title for the new pull request',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--transition-work-items',
              description: 'Transition any work items linked to the pull request into the next logical state. (e.g. Active -> Resolved)'
            ),
            Option(
              name: '--work-items',
              description: 'IDs of the work items to link to the new pull request. Space separated',
              args: [
                Arg(
                name: 'work-item'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List pull requests',
          options: [

            Option(
              name: '--creator',
              description: 'Limit results to pull requests created by this user',
              args: [
                Arg(
                name: 'creato'
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
              name: '--include-links',
              description: 'Include _links for each pull request'
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
              name: ['--repository', '-r'],
              description: 'Name or ID of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--reviewer',
              description: 'Limit results to pull requests where this user is a reviewer',
              args: [
                Arg(
                name: 'reviewe'
              )
              ]
            ),
            Option(
              name: '--skip',
              description: 'Number of pull requests to skip',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: ['--source-branch', '-s'],
              description: 'Limit results to pull requests that originate from this source branch',
              args: [
                Arg(
                name: 'source-branc'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Limit results to pull requests with this status',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'abandoned'),
                  FigSuggestion(name: 'active'),
                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'completed')
                ]
              )
              ]
            ),
            Option(
              name: ['--target-branch', '-t'],
              description: 'Limit results to pull requests that target this branch',
              args: [
                Arg(
                name: 'target-branc'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of pull requests to list',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set-vote',
          description: 'Vote on a pull request',
          options: [

            Option(
              name: '--id',
              description: 'ID of the pull request',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--vote',
              description: 'New vote value for the pull request',
              args: [
                Arg(
                name: 'vote',
                suggestions: [

                  FigSuggestion(name: 'approve'),
                  FigSuggestion(name: 'approve-with-suggestions'),
                  FigSuggestion(name: 'reject'),
                  FigSuggestion(name: 'reset'),
                  FigSuggestion(name: 'wait-for-author')
                ]
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
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a pull request',
          options: [

            Option(
              name: '--id',
              description: 'ID of the pull request',
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
              name: '--open',
              description: 'Open the pull request in your web browser'
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
          description: 'Update a pull request',
          options: [

            Option(
              name: '--id',
              description: 'ID of the pull request',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--auto-complete',
              description: 'Set the pull request to complete automatically when all policies have passed and the source branch can be merged into the target branch',
              args: [
                Arg(
                name: 'auto-complete',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--bypass-policy',
              description: 'Bypass required policies (if any) and completes the pull request once it can be merged',
              args: [
                Arg(
                name: 'bypass-policy',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--bypass-policy-reason',
              description: 'Reason for bypassing the required policies',
              args: [
                Arg(
                name: 'bypass-policy-reaso'
              )
              ]
            ),
            Option(
              name: '--delete-source-branch',
              description: 'Delete the source branch after the pull request has been completed and merged into the target branch',
              args: [
                Arg(
                name: 'delete-source-branch',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'New description for the pull request. Can include markdown. Each value sent to this arg will be a new line. For example: --description "First Line" "Second Line"',
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
              name: '--draft',
              description: 'Publish the PR or convert to draft mode',
              args: [
                Arg(
                name: 'draft',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--merge-commit-message',
              description: 'Message displayed when commits are merged',
              args: [
                Arg(
                name: 'merge-commit-messag'
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
              name: '--squash',
              description: 'Squash the commits in the source branch when merging into the target branch',
              args: [
                Arg(
                name: 'squash',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Set the new state of pull request',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'abandoned'),
                  FigSuggestion(name: 'active'),
                  FigSuggestion(name: 'completed')
                ]
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'New title for the pull request',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--transition-work-items',
              description: 'Transition any work items linked to the pull request into the next logical state. (e.g. Active -> Resolved)',
              args: [
                Arg(
                name: 'transition-work-items',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'policy',
          description: 'Manage pull request policy',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List policies of a pull request',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the pull request',
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
                  name: '--skip',
                  description: 'Number of policies to skip',
                  args: [
                    Arg(
                    name: 'ski'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Maximum number of policies to list',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'queue',
              description: 'Queue an evaluation of a policy for a pull request',
              options: [

                Option(
                  name: ['--evaluation-id', '-e'],
                  description: 'ID of the policy evaluation to queue',
                  args: [
                    Arg(
                    name: 'evaluation-i'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'ID of the pull request',
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
        ),
        Subcommand(
          name: 'reviewer',
          description: 'Manage pull request reviewers',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add one or more reviewers to a pull request',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the pull request',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--reviewers',
                  description: 'Users or groups to include as reviewers on a pull request. Space separated',
                  args: [
                    Arg(
                    name: 'reviewer'
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
            ),
            Subcommand(
              name: 'list',
              description: 'List reviewers of a pull request',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the pull request',
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
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove one or more reviewers from a pull request',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the pull request',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--reviewers',
                  description: 'Users or groups to remove as reviewers on a pull request. Space separated',
                  args: [
                    Arg(
                    name: 'reviewer'
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
        ),
        Subcommand(
          name: 'work-item',
          description: 'Manage work items associated with pull requests',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Link one or more work items to a pull request',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the pull request',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--work-items',
                  description: 'IDs of the work items to link. Space separated',
                  args: [
                    Arg(
                    name: 'work-item'
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
            ),
            Subcommand(
              name: 'list',
              description: 'List linked work items for a pull request',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the pull request',
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
            ),
            Subcommand(
              name: 'remove',
              description: 'Unlink one or more work items from a pull request',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the pull request',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--work-items',
                  description: 'IDs of the work items to unlink. Space separated',
                  args: [
                    Arg(
                    name: 'work-item'
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
    ),
    Subcommand(
      name: 'ref',
      description: 'Manage Git references',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a reference',
          options: [

            Option(
              name: '--name',
              description: 'Name of the reference to create (example: heads/my_branch or tags/my_tag)',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--object-id',
              description: 'Id of the object to create the reference from',
              args: [
                Arg(
                name: 'object-i'
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
              name: ['--repository', '-r'],
              description: 'Name or ID of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a reference',
          options: [

            Option(
              name: '--name',
              description: 'Name of the reference to delete (example: heads/my_branch)',
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
              name: '--object-id',
              description: 'Id of the reference to delete',
              args: [
                Arg(
                name: 'object-i'
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
              name: ['--repository', '-r'],
              description: 'Name or ID of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the references',
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
              name: '--filter',
              description: 'A filter to apply to the refs (starts with). Example: head or heads/ for the branches',
              args: [
                Arg(
                name: 'filte'
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
              name: ['--repository', '-r'],
              description: 'Name or ID of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'lock',
          description: 'Lock a reference',
          options: [

            Option(
              name: '--name',
              description: 'Name of the reference to update (example: heads/my_branch)',
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
              name: ['--project', '-p'],
              description: 'Name or ID of the project. You can configure the default project using az devops configure -d project=NAME_OR_ID. Required if not configured as default or picked up via git config',
              args: [
                Arg(
                name: 'projec'
              )
              ]
            ),
            Option(
              name: ['--repository', '-r'],
              description: 'Name or ID of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unlock',
          description: 'Unlock a reference',
          options: [

            Option(
              name: '--name',
              description: 'Name of the reference to update (example: heads/my_branch)',
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
              name: ['--project', '-p'],
              description: 'Name or ID of the project. You can configure the default project using az devops configure -d project=NAME_OR_ID. Required if not configured as default or picked up via git config',
              args: [
                Arg(
                name: 'projec'
              )
              ]
            ),
            Option(
              name: ['--repository', '-r'],
              description: 'Name or ID of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
