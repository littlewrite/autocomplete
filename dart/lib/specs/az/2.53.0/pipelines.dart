// Auto-generated from TypeScript source: pipelines.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pipelines` CLI
final FigSpec pipelinesSpec = FigSpec(
  name: 'pipelines',
  description: 'Manage Azure Pipelines.\n\n\t\tThis command group is a part of the azure-devops extension',
  subcommands: [

    Subcommand(
      name: 'agent',
      description: 'Manage agents',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get a list of agents in a pool',
          options: [

            Option(
              name: '--pool-id',
              description: 'The agent pool containing the agents',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--agent-name',
              description: 'Filter on agent name',
              args: [
                Arg(
                name: 'agent-nam'
              )
              ]
            ),
            Option(
              name: '--demands',
              description: 'Filter by demands the agents can satisfy. Comma separated list',
              args: [
                Arg(
                name: 'demand'
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
              name: '--include-assigned-request',
              description: 'Whether to include details about the agents\' current work',
              args: [
                Arg(
                name: 'include-assigned-request',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--include-capabilities',
              description: 'Whether to include the agents\' capabilities in the response',
              args: [
                Arg(
                name: 'include-capabilities',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--include-last-completed-request',
              description: 'Whether to include details about the agents\' most recent completed work',
              args: [
                Arg(
                name: 'include-last-completed-request',
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
          description: 'Show agent details',
          options: [

            Option(
              name: ['--agent-id', '--id'],
              description: 'The agent ID to get information about',
              args: [
                Arg(
                name: 'agent-i'
              )
              ]
            ),
            Option(
              name: '--pool-id',
              description: 'The agent pool containing the agent',
              args: [
                Arg(
                name: 'pool-i'
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
              name: '--include-assigned-request',
              description: 'Whether to include details about the agents\' current work',
              args: [
                Arg(
                name: 'include-assigned-request',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--include-capabilities',
              description: 'Whether to include the agents\' capabilities in the response',
              args: [
                Arg(
                name: 'include-capabilities',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--include-last-completed-request',
              description: 'Whether to include details about the agents\' most recent completed work',
              args: [
                Arg(
                name: 'include-last-completed-request',
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
      name: 'build',
      description: 'Manage builds',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancels if build is running',
          options: [

            Option(
              name: '--build-id',
              description: 'ID of the build',
              args: [
                Arg(
                name: 'build-i'
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
              description: 'Open the build results page in your web browser'
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
          description: 'List build results',
          options: [

            Option(
              name: '--branch',
              description: 'Filter by builds for this branch',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--definition-ids',
              description: 'IDs (space separated) of definitions to list builds for',
              args: [
                Arg(
                name: 'definition-id'
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
              name: '--reason',
              description: 'Limit to builds with this reason',
              args: [
                Arg(
                name: 'reason',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'batchedCI'),
                  FigSuggestion(name: 'buildCompletion'),
                  FigSuggestion(name: 'checkInShelveset'),
                  FigSuggestion(name: 'individualCI'),
                  FigSuggestion(name: 'manual'),
                  FigSuggestion(name: 'pullRequest'),
                  FigSuggestion(name: 'schedule'),
                  FigSuggestion(name: 'triggered'),
                  FigSuggestion(name: 'userCreated'),
                  FigSuggestion(name: 'validateShelveset')
                ]
              )
              ]
            ),
            Option(
              name: '--requested-for',
              description: 'Limit to builds requested for this user or group',
              args: [
                Arg(
                name: 'requested-fo'
              )
              ]
            ),
            Option(
              name: '--result',
              description: 'Limit to builds with this result',
              args: [
                Arg(
                name: 'result',
                suggestions: [

                  FigSuggestion(name: 'canceled'),
                  FigSuggestion(name: 'failed'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'partiallySucceeded'),
                  FigSuggestion(name: 'succeeded')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Limit to builds with this status',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'cancelling'),
                  FigSuggestion(name: 'completed'),
                  FigSuggestion(name: 'inProgress'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'notStarted'),
                  FigSuggestion(name: 'postponed')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Limit to builds with each of the specified tags. Space separated',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of builds to list',
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
          description: 'Request (queue) a build',
          options: [

            Option(
              name: '--branch',
              description: 'Branch to build. Required if there is not a default branch set up on the definition. Example: refs/heads/master or master or refs/pull/1/merge or refs/tags/tag',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--commit-id',
              description: 'Commit ID of the branch to build',
              args: [
                Arg(
                name: 'commit-i'
              )
              ]
            ),
            Option(
              name: '--definition-id',
              description: 'ID of the definition to queue. Required if --name is not supplied',
              args: [
                Arg(
                name: 'definition-i'
              )
              ]
            ),
            Option(
              name: '--definition-name',
              description: 'Name of the definition to queue. Ignored if --id is supplied',
              args: [
                Arg(
                name: 'definition-nam'
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
              description: 'Open the build results page in your web browser'
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
              name: '--queue-id',
              description: 'Queue Id of the pool that will be used to queue the build',
              args: [
                Arg(
                name: 'queue-i'
              )
              ]
            ),
            Option(
              name: '--variables',
              description: 'Space separated "name=value" pairs for the variables you would like to set',
              args: [
                Arg(
                name: 'variable'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a build',
          options: [

            Option(
              name: '--id',
              description: 'ID of the build',
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
              description: 'Open the build results page in your web browser'
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
          name: 'definition',
          description: 'Manage build definitions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List build definitions',
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
                  name: '--name',
                  description: 'Limit results to definitions with this name or starting with this name. Examples: "FabCI" or "Fab*"',
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
                  name: '--repository',
                  description: 'Limit results to definitions associated with this repository',
                  args: [
                    Arg(
                    name: 'repositor'
                  )
                  ]
                ),
                Option(
                  name: '--repository-type',
                  description: 'Limit results to definitions associated with this repository type. It is mandatory to pass \'repository\' argument along with this argument',
                  args: [
                    Arg(
                    name: 'repository-type',
                    suggestions: [

                      FigSuggestion(name: 'bitbucket'),
                      FigSuggestion(name: 'git'),
                      FigSuggestion(name: 'github'),
                      FigSuggestion(name: 'githubenterprise'),
                      FigSuggestion(name: 'svn'),
                      FigSuggestion(name: 'tfsgit'),
                      FigSuggestion(name: 'tfsversioncontrol')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Maximum number of definitions to list',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a build definition',
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
                  description: 'ID of the definition',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Name of the definition. Ignored if --id is supplied',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--open',
                  description: 'Open the definition summary page in your web browser'
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
          name: 'tag',
          description: 'Manage build tags',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add tag(s) for a build',
              options: [

                Option(
                  name: '--build-id',
                  description: 'ID of the build',
                  args: [
                    Arg(
                    name: 'build-i'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Tag(s) to be added to the build. [Comma seperated values]',
                  args: [
                    Arg(
                    name: 'tag'
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
              description: 'Delete a build tag',
              options: [

                Option(
                  name: '--build-id',
                  description: 'ID of the build',
                  args: [
                    Arg(
                    name: 'build-i'
                  )
                  ]
                ),
                Option(
                  name: '--tag',
                  description: 'Tag to be deleted from the build',
                  args: [
                    Arg(
                    name: 'ta'
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
              description: 'Get tags for a build',
              options: [

                Option(
                  name: '--build-id',
                  description: 'ID of the build',
                  args: [
                    Arg(
                    name: 'build-i'
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
      name: 'create',
      description: 'Create a new Azure Pipeline (YAML based)',
      options: [

        Option(
          name: '--name',
          description: 'Name of the new pipeline',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--branch',
          description: 'Branch name for which the pipeline will be configured. If omitted, it will be auto-detected from local repository',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Description for the new pipeline',
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
          name: '--folder-path',
          description: 'Path of the folder where the pipeline needs to be created. Default is root folder. e.g. "user1/test_pipelines"',
          args: [
            Arg(
            name: 'folder-pat'
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
          name: '--queue-id',
          description: 'Id of the queue in the available agent pools. Will be auto detected if not specified',
          args: [
            Arg(
            name: 'queue-i'
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'Repository for which the pipeline needs to be configured. Can be clone url of the git repository or name of the repository for a Azure Repos or Owner/RepoName in case of GitHub repository. If omitted it will be auto-detected from the remote url of local git repository. If name is mentioned instead of url, --repository-type argument is also required',
          args: [
            Arg(
            name: 'repositor'
          )
          ]
        ),
        Option(
          name: '--repository-type',
          description: 'Type of repository. If omitted, it will be auto-detected from remote url of local repository. \'tfsgit\' for Azure Repos, \'github\' for GitHub repository',
          args: [
            Arg(
            name: 'repository-type',
            suggestions: [

              FigSuggestion(name: 'github'),
              FigSuggestion(name: 'tfsgit')
            ]
          )
          ]
        ),
        Option(
          name: '--service-connection',
          description: 'Id of the Service connection created for the repository for GitHub repository. Use command az devops service-endpoint -h for creating/listing service_connections. Not required for Azure Repos',
          args: [
            Arg(
            name: 'service-connectio'
          )
          ]
        ),
        Option(
          name: ['--skip-first-run', '--skip-run'],
          description: 'Specify this flag to prevent the first run being triggered by the command. Command will return a pipeline if run is skipped else it will output a pipeline run',
          args: [
            Arg(
            name: 'skip-first-run',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--yaml-path', '--yml-path'],
          description: 'Path of the pipelines yaml file in the repo (if yaml is already present in the repo)',
          args: [
            Arg(
            name: 'yaml-pat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a pipeline',
      options: [

        Option(
          name: '--id',
          description: 'ID of the pipeline',
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
      description: 'List pipelines',
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
          name: '--folder-path',
          description: 'If specified, filters to definitions under this folder',
          args: [
            Arg(
            name: 'folder-pat'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'Limit results to pipelines with this name or starting with this name. Examples: "FabCI" or "Fab*"',
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
          name: '--query-order',
          description: 'Order of the results',
          args: [
            Arg(
            name: 'query-order',
            suggestions: [

              FigSuggestion(name: 'ModifiedAsc'),
              FigSuggestion(name: 'ModifiedDesc'),
              FigSuggestion(name: 'NameAsc'),
              FigSuggestion(name: 'NameDesc'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'Limit results to pipelines associated with this repository',
          args: [
            Arg(
            name: 'repositor'
          )
          ]
        ),
        Option(
          name: '--repository-type',
          description: 'Limit results to pipelines associated with this repository type. It is mandatory to pass \'repository\' argument along with this argument',
          args: [
            Arg(
            name: 'repository-type',
            suggestions: [

              FigSuggestion(name: 'bitbucket'),
              FigSuggestion(name: 'git'),
              FigSuggestion(name: 'github'),
              FigSuggestion(name: 'githubenterprise'),
              FigSuggestion(name: 'svn'),
              FigSuggestion(name: 'tfsgit'),
              FigSuggestion(name: 'tfsversioncontrol')
            ]
          )
          ]
        ),
        Option(
          name: '--top',
          description: 'Maximum number of pipelines to list',
          args: [
            Arg(
            name: 'to'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Queue (run) a pipeline',
      options: [

        Option(
          name: '--branch',
          description: 'Name of the branch on which the pipeline run is to be queued. Example: refs/heads/master or master or refs/pull/1/merge or refs/tags/tag',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: '--commit-id',
          description: 'Commit-id on which the pipeline run is to be queued',
          args: [
            Arg(
            name: 'commit-i'
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
          name: '--folder-path',
          description: 'Folder path of pipeline. Default is root level folder',
          args: [
            Arg(
            name: 'folder-pat'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'ID of the pipeline to queue. Required if --name is not supplied',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'Name of the pipeline to queue. Ignored if --id is supplied',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--open',
          description: 'Open the pipeline results page in your web browser'
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
          name: '--parameters',
          description: 'Space separated "name=value" pairs for the parameters you would like to set',
          args: [
            Arg(
            name: 'parameter'
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
          name: '--variables',
          description: 'Space separated "name=value" pairs for the variables you would like to set',
          args: [
            Arg(
            name: 'variable'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of a pipeline',
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
          name: '--folder-path',
          description: 'Folder path of pipeline. Default is root level folder',
          args: [
            Arg(
            name: 'folder-pat'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'ID of the pipeline',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'Name of the pipeline. Ignored if --id is supplied',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--open',
          description: 'Open the pipeline summary page in your web browser'
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
      description: 'Update a pipeline',
      options: [

        Option(
          name: '--id',
          description: 'Id of the pipeline to update',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: '--branch',
          description: 'Branch name for which the pipeline will be configured',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'New description for the pipeline',
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
          name: '--new-folder-path',
          description: 'New full path of the folder to move the pipeline to. e.g. "user1/production_pipelines"',
          args: [
            Arg(
            name: 'new-folder-pat'
          )
          ]
        ),
        Option(
          name: '--new-name',
          description: 'New updated name of the pipeline',
          args: [
            Arg(
            name: 'new-nam'
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
          name: '--queue-id',
          description: 'Queue id of the agent pool where the pipeline needs to run',
          args: [
            Arg(
            name: 'queue-i'
          )
          ]
        ),
        Option(
          name: ['--yaml-path', '--yml-path'],
          description: 'Path of the pipelines yaml file in the repo',
          args: [
            Arg(
            name: 'yaml-pat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'folder',
      description: 'Manage folders for organizing pipelines',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a folder',
          options: [

            Option(
              name: '--path',
              description: 'Full path of the folder',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the folder',
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a folder',
          options: [

            Option(
              name: '--path',
              description: 'Full path of the folder',
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
          description: 'List all folders',
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
              name: '--path',
              description: 'Full path of the folder',
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
              name: '--query-order',
              description: 'Order in which folders are returned',
              args: [
                Arg(
                name: 'query-order',
                suggestions: [

                  FigSuggestion(name: 'Asc'),
                  FigSuggestion(name: 'Desc'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a folder name or description',
          options: [

            Option(
              name: '--path',
              description: 'Full path of the folder',
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
              name: '--new-description',
              description: 'New description of the folder',
              args: [
                Arg(
                name: 'new-descriptio'
              )
              ]
            ),
            Option(
              name: '--new-path',
              description: 'New full path of the folder',
              args: [
                Arg(
                name: 'new-pat'
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
      name: 'pool',
      description: 'Manage agent pools',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List agent pools',
          options: [

            Option(
              name: '--action',
              description: 'Filter the list with user action permitted',
              args: [
                Arg(
                name: 'action',
                suggestions: [

                  FigSuggestion(name: 'manage'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'use')
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
              name: '--pool-name',
              description: 'Filter the list with matching pool name',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
            Option(
              name: '--pool-type',
              description: 'Filter the list with type of pool',
              args: [
                Arg(
                name: 'pool-type',
                suggestions: [

                  FigSuggestion(name: 'automation'),
                  FigSuggestion(name: 'deployment')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show agent pool details',
          options: [

            Option(
              name: ['--pool-id', '--id'],
              description: 'Id of the pool to list the details',
              args: [
                Arg(
                name: 'pool-i'
              )
              ]
            ),
            Option(
              name: '--action',
              description: 'Filter the list with user action permitted',
              args: [
                Arg(
                name: 'action',
                suggestions: [

                  FigSuggestion(name: 'manage'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'use')
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
        )
      ]
    ),
    Subcommand(
      name: 'queue',
      description: 'Manage agent queues',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List agent queues',
          options: [

            Option(
              name: '--action',
              description: 'Filter by whether the calling user has use or manage permissions',
              args: [
                Arg(
                name: 'action',
                suggestions: [

                  FigSuggestion(name: 'manage'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'use')
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
            ),
            Option(
              name: '--queue-name',
              description: 'Filter the list with matching queue name regex. e.g. ubuntu for queue with name \'Hosted Ubuntu 1604\'',
              args: [
                Arg(
                name: 'queue-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of agent queue',
          options: [

            Option(
              name: ['--queue-id', '--id'],
              description: 'Id of the agent queue to get information about',
              args: [
                Arg(
                name: 'queue-i'
              )
              ]
            ),
            Option(
              name: '--action',
              description: 'Filter by whether the calling user has use or manage permissions',
              args: [
                Arg(
                name: 'action',
                suggestions: [

                  FigSuggestion(name: 'manage'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'use')
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
        )
      ]
    ),
    Subcommand(
      name: 'release',
      description: 'Manage releases',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Request (create) a release',
          options: [

            Option(
              name: '--artifact-metadata-list',
              description: 'Space separated "alias=version_id" pairs',
              args: [
                Arg(
                name: 'artifact-metadata-lis'
              )
              ]
            ),
            Option(
              name: '--definition-id',
              description: 'ID of the definition to create. Required if --definition-name is not supplied',
              args: [
                Arg(
                name: 'definition-i'
              )
              ]
            ),
            Option(
              name: '--definition-name',
              description: 'Name of the definition to create. Ignored if --definition-id is supplied',
              args: [
                Arg(
                name: 'definition-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the release',
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
              name: '--open',
              description: 'Open the release results page in your web browser'
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
          description: 'List release results',
          options: [

            Option(
              name: '--definition-id',
              description: 'ID of definition to list releases for',
              args: [
                Arg(
                name: 'definition-i'
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
              name: '--source-branch',
              description: 'Filter releases for this branch',
              args: [
                Arg(
                name: 'source-branc'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Limit to releases with this status',
              args: [
                Arg(
                name: 'statu'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of releases to list. Default is 50',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a release',
          options: [

            Option(
              name: '--id',
              description: 'ID of the release',
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
              description: 'Open the release results page in your web browser'
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
          name: 'definition',
          description: 'Manage release definitions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List release definitions',
              options: [

                Option(
                  name: '--artifact-source-id',
                  description: 'Limit results to definitions associated with this artifact_source_id. e.g. For build it would be {projectGuid}:{BuildDefinitionId}, for Jenkins it would be {JenkinsConnectionId}:{JenkinsDefinitionId}, for TfsOnPrem it would be {TfsOnPremConnectionId}:{ProjectName}:{TfsOnPremDefinitionId}. For third-party artifacts e.g. TeamCity, BitBucket you may refer \'uniqueSourceIdentifier\' inside vss-extension.json at https://github.com/Microsoft/vsts-rm-extensions/blob/master/Extensions',
                  args: [
                    Arg(
                    name: 'artifact-source-i'
                  )
                  ]
                ),
                Option(
                  name: '--artifact-type',
                  description: 'Release definitions with given artifactType will be returned',
                  args: [
                    Arg(
                    name: 'artifact-type',
                    suggestions: [

                      FigSuggestion(name: 'build'),
                      FigSuggestion(name: 'externaltfsbuild'),
                      FigSuggestion(name: 'git'),
                      FigSuggestion(name: 'github'),
                      FigSuggestion(name: 'jenkins'),
                      FigSuggestion(name: 'tfvc')
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
                  name: '--name',
                  description: 'Limit results to definitions with this name or contains this name. Example: "FabCI"',
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
                  name: '--top',
                  description: 'Maximum number of definitions to list',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a release definition',
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
                  description: 'ID of the definition',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Name of the definition. Ignored if --id is supplied',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--open',
                  description: 'Open the definition summary page in your web browser'
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
      name: 'runs',
      description: 'Manage pipeline runs',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the pipeline runs in a project',
          options: [

            Option(
              name: '--branch',
              description: 'Filter by builds for this branch',
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
              name: '--pipeline-ids',
              description: 'IDs (space separated) of definitions to list builds for. For multiple pipeline ids: --pipeline-ids 1 2',
              args: [
                Arg(
                name: 'pipeline-id'
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
              name: '--query-order',
              description: 'Order of pipeline runs',
              args: [
                Arg(
                name: 'query-order',
                suggestions: [

                  FigSuggestion(name: 'FinishTimeAsc'),
                  FigSuggestion(name: 'FinishTimeDesc'),
                  FigSuggestion(name: 'QueueTimeAsc'),
                  FigSuggestion(name: 'QueueTimeDesc'),
                  FigSuggestion(name: 'StartTimeAsc'),
                  FigSuggestion(name: 'StartTimeDesc')
                ]
              )
              ]
            ),
            Option(
              name: '--reason',
              description: 'Limit to builds with this reason',
              args: [
                Arg(
                name: 'reason',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'batchedCI'),
                  FigSuggestion(name: 'buildCompletion'),
                  FigSuggestion(name: 'checkInShelveset'),
                  FigSuggestion(name: 'individualCI'),
                  FigSuggestion(name: 'manual'),
                  FigSuggestion(name: 'pullRequest'),
                  FigSuggestion(name: 'schedule'),
                  FigSuggestion(name: 'triggered'),
                  FigSuggestion(name: 'userCreated'),
                  FigSuggestion(name: 'validateShelveset')
                ]
              )
              ]
            ),
            Option(
              name: '--requested-for',
              description: 'Limit to builds requested for this user or group',
              args: [
                Arg(
                name: 'requested-fo'
              )
              ]
            ),
            Option(
              name: '--result',
              description: 'Limit to builds with this result',
              args: [
                Arg(
                name: 'result',
                suggestions: [

                  FigSuggestion(name: 'canceled'),
                  FigSuggestion(name: 'failed'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'partiallySucceeded'),
                  FigSuggestion(name: 'succeeded')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Limit to builds with this status',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'cancelling'),
                  FigSuggestion(name: 'completed'),
                  FigSuggestion(name: 'inProgress'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'notStarted'),
                  FigSuggestion(name: 'postponed')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Limit to builds with each of the specified tags. Space separated',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of builds to list',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a pipeline run',
          options: [

            Option(
              name: '--id',
              description: 'ID of the pipeline run',
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
              description: 'Open the build results page in your web browser'
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
          name: 'artifact',
          description: 'Manage pipeline run artifacts',
          subcommands: [

            Subcommand(
              name: 'download',
              description: 'Download a pipeline artifact',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the artifact to download',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to download the artifact into',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--run-id',
                  description: 'ID of the run that the artifact is associated to',
                  args: [
                    Arg(
                    name: 'run-i'
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
              description: 'List artifacts associated with a run',
              options: [

                Option(
                  name: '--run-id',
                  description: 'ID of the run that the artifact is associated to',
                  args: [
                    Arg(
                    name: 'run-i'
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
              name: 'upload',
              description: 'Upload a pipeline artifact',
              options: [

                Option(
                  name: '--artifact-name',
                  description: 'Name of the artifact to upload',
                  args: [
                    Arg(
                    name: 'artifact-nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to upload the artifact from',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--run-id',
                  description: 'ID of the run that the artifact is associated to',
                  args: [
                    Arg(
                    name: 'run-i'
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
        ),
        Subcommand(
          name: 'tag',
          description: 'Manage pipeline run tags',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add tag(s) for a pipeline run',
              options: [

                Option(
                  name: '--run-id',
                  description: 'ID of the pipeline run',
                  args: [
                    Arg(
                    name: 'run-i'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Tag(s) to be added to the pipeline run. [Comma seperated values]',
                  args: [
                    Arg(
                    name: 'tag'
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
              description: 'Delete a pipeline run tag',
              options: [

                Option(
                  name: '--run-id',
                  description: 'ID of the pipeline run',
                  args: [
                    Arg(
                    name: 'run-i'
                  )
                  ]
                ),
                Option(
                  name: '--tag',
                  description: 'Tag to be deleted from the pipeline run',
                  args: [
                    Arg(
                    name: 'ta'
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
              description: 'Get tags for a pipeline run',
              options: [

                Option(
                  name: '--run-id',
                  description: 'ID of the pipeline run',
                  args: [
                    Arg(
                    name: 'run-i'
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
      name: 'variable',
      description: 'Manage pipeline variables',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Add a variable to a pipeline',
          options: [

            Option(
              name: '--name',
              description: 'Name of the variable',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--allow-override',
              description: 'Indicates whether the value can be set at queue time',
              args: [
                Arg(
                name: 'allow-override',
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
              name: '--pipeline-id',
              description: 'Id of the pipeline',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: '--pipeline-name',
              description: 'Name of the pipeline. Ignored if --pipeline-id parameter is supplied',
              args: [
                Arg(
                name: 'pipeline-nam'
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
              name: '--secret',
              description: 'Indicates whether the variable\'s value is a secret',
              args: [
                Arg(
                name: 'secret',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'Value of the variable. For secret variables, if --value parameter is not given, it will be picked from environment variable prefixed with AZURE_DEVOPS_EXT_PIPELINE_VAR_ or user will be prompted to enter it via standard input. e.g. A variable named MySecret can be input using environment variable AZURE_DEVOPS_EXT_PIPELINE_VAR_MySecret',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a variable from pipeline',
          options: [

            Option(
              name: '--name',
              description: 'Name of the variable to delete',
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
              name: '--pipeline-id',
              description: 'Id of the pipeline',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: '--pipeline-name',
              description: 'Name of the pipeline',
              args: [
                Arg(
                name: 'pipeline-nam'
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
          description: 'List the variables in a pipeline',
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
              name: '--pipeline-id',
              description: 'Id of the pipeline',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: '--pipeline-name',
              description: 'Name of the pipeline. Ignored if --pipeline-id parameter is supplied',
              args: [
                Arg(
                name: 'pipeline-nam'
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
          description: 'Update a variable in a pipeline',
          options: [

            Option(
              name: '--name',
              description: 'Name of the variable',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--allow-override',
              description: 'Indicates whether the value can be set at queue time',
              args: [
                Arg(
                name: 'allow-override',
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
              name: '--new-name',
              description: 'New name of the variable',
              args: [
                Arg(
                name: 'new-nam'
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
              name: '--pipeline-id',
              description: 'Id of the pipeline',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: '--pipeline-name',
              description: 'Name of the pipeline. Ignored if --pipeline-id parameter is supplied',
              args: [
                Arg(
                name: 'pipeline-nam'
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
              name: '--prompt-value',
              description: 'Set it to True to update the value of a secret variable using environment variable or prompt via standard input',
              args: [
                Arg(
                name: 'prompt-value',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'If the value of the variable is a secret',
              args: [
                Arg(
                name: 'secret',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'New value of the variable. For secret variables, use --prompt-value parameter, to be prompted to enter it via standard input. For non-interactive consoles it can be picked from environment variable prefixed with AZURE_DEVOPS_EXT_PIPELINE_VAR_ e.g. A variable nameed MySecret can be input using environment variable AZURE_DEVOPS_EXT_PIPELINE_VAR_MySecret',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'variable-group',
      description: 'Manage variable groups',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a variable group',
          options: [

            Option(
              name: '--name',
              description: 'Name of the variable group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--variables',
              description: 'Variables in format key=value space separated pairs. Secret variables should be managed using az pipelines variable-group variable commands',
              args: [
                Arg(
                name: 'variable'
              )
              ]
            ),
            Option(
              name: '--authorize',
              description: 'Whether the variable group should be accessible by all pipelines',
              args: [
                Arg(
                name: 'authorize',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the variable group',
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a variable group',
          options: [

            Option(
              name: ['--group-id', '--id'],
              description: 'Id of the variable group',
              args: [
                Arg(
                name: 'group-i'
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
          description: 'List variable groups',
          options: [

            Option(
              name: ['--action-filter', '--action'],
              description: 'Action filter for the variable group. It specifies the action which can be performed on the variable groups',
              args: [
                Arg(
                name: 'action-filter',
                suggestions: [

                  FigSuggestion(name: 'manage'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'use')
                ]
              )
              ]
            ),
            Option(
              name: '--continuation-token',
              description: 'Gets the variable groups after the continuation token provided',
              args: [
                Arg(
                name: 'continuation-toke'
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
              name: '--group-name',
              description: 'Name of the variable group. Wildcards are accepted. e.g. var_group*',
              args: [
                Arg(
                name: 'group-nam'
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
              name: '--query-order',
              description: 'Gets the results in the defined order',
              args: [
                Arg(
                name: 'query-order',
                suggestions: [

                  FigSuggestion(name: 'Asc'),
                  FigSuggestion(name: 'Desc')
                ]
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Number of variable groups to get',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show variable group details',
          options: [

            Option(
              name: ['--group-id', '--id'],
              description: 'ID of the variable group',
              args: [
                Arg(
                name: 'group-i'
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
          description: 'Update a variable group',
          options: [

            Option(
              name: ['--group-id', '--id'],
              description: 'Id of the variable group',
              args: [
                Arg(
                name: 'group-i'
              )
              ]
            ),
            Option(
              name: '--authorize',
              description: 'Whether the variable group should be accessible by all pipelines',
              args: [
                Arg(
                name: 'authorize',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'New description of the variable group',
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
              name: '--name',
              description: 'New name of the variable group',
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
          name: 'variable',
          description: 'Manage variables in a variable group',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Add a variable to a variable group',
              options: [

                Option(
                  name: ['--group-id', '--id'],
                  description: 'Id of the variable group',
                  args: [
                    Arg(
                    name: 'group-i'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Name of the variable',
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
                  name: '--secret',
                  description: 'If the value of the variable is a secret',
                  args: [
                    Arg(
                    name: 'secret',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--value',
                  description: 'Value of the variable. For secret variables, if --value parameter is not given, it will be picked from environment variable prefixed with AZURE_DEVOPS_EXT_PIPELINE_VAR_ or user will be prompted to enter it via standard input. e.g. PersonalAccessToken can be input using environment variable AZURE_DEVOPS_EXT_PIPELINE_VAR_PersonalAccessToken',
                  args: [
                    Arg(
                    name: 'valu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a variable from variable group',
              options: [

                Option(
                  name: ['--group-id', '--id'],
                  description: 'Id of the variable group',
                  args: [
                    Arg(
                    name: 'group-i'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Name of the variable',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the variables in a variable group',
              options: [

                Option(
                  name: ['--group-id', '--id'],
                  description: 'Id of the variable group',
                  args: [
                    Arg(
                    name: 'group-i'
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
              description: 'Update a variable in a variable group',
              options: [

                Option(
                  name: ['--group-id', '--id'],
                  description: 'Id of the variable group',
                  args: [
                    Arg(
                    name: 'group-i'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Name of the variable',
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
                  name: '--new-name',
                  description: 'New name of the variable',
                  args: [
                    Arg(
                    name: 'new-nam'
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
                  name: '--prompt-value',
                  description: 'Set it to True to update the value of a secret variable using environment variable or prompt via standard input'
                ),
                Option(
                  name: '--secret',
                  description: 'If the value of the variable is a secret',
                  args: [
                    Arg(
                    name: 'secret',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--value',
                  description: 'New value of the variable. For secret variables, if --value parameter is not given, it will be picked from environment variable prefixed with AZURE_DEVOPS_EXT_PIPELINE_VAR_ or user will be prompted to enter it via standard input. e.g. PersonalAccessToken can be input using environment variable AZURE_DEVOPS_EXT_PIPELINE_VAR_PersonalAccessToken',
                  args: [
                    Arg(
                    name: 'valu'
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
