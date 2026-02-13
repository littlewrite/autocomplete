// Auto-generated from TypeScript source: devops.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `devops` CLI
final FigSpec devopsSpec = FigSpec(
  name: 'devops',
  description: 'Manage Azure DevOps organization level operations.\n\n\t\tRelated Groups\naz pipelines: Manage Azure Pipelines\naz boards: Manage Azure Boards\naz repos: Manage Azure Repos\naz artifacts: Manage Azure Artifacts',
  subcommands: [

    Subcommand(
      name: 'admin',
      description: 'Manage administration operations',
      subcommands: [

        Subcommand(
          name: 'banner',
          description: 'Manage organization banner',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a new banner and immediately show it',
              options: [

                Option(
                  name: ['--message', '-m'],
                  description: 'Message (string) to show in the banner',
                  args: [
                    Arg(
                    name: 'messag'
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
                  name: '--expiration',
                  description: 'Date/time when the banner should no longer be presented to users. If not set, the banner does not automatically expire and must be removed with the remove command. Example : "2019-06-10 17:21:00 UTC", "2019-06-10"',
                  args: [
                    Arg(
                    name: 'expiratio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Identifier for the new banner. This identifier is needed to change or remove the message later. A unique identifier is automatically created if one is not specified',
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
                  name: ['--type', '-t'],
                  description: 'Type of banner to present. Defaults is "info"',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'error'),
                      FigSuggestion(name: 'info'),
                      FigSuggestion(name: 'warning')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List banners',
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
              description: 'Remove a banner',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the banner to remove',
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
              name: 'show',
              description: 'Show details for a banner',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier for the banner',
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
              name: 'update',
              description: 'Update the message, level, or expiration date for a banner',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the banner to update',
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
                  name: '--expiration',
                  description: 'Date/time when the banner should no longer be presented to users. To unset the expiration for the banner, supply an empty value to this argument. Example : "2019-06-10 17:21:00 UTC", "2019-06-10"',
                  args: [
                    Arg(
                    name: 'expiratio'
                  )
                  ]
                ),
                Option(
                  name: ['--message', '-m'],
                  description: 'Message (string) to show in the banner',
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
                  name: ['--type', '-t'],
                  description: 'Type of banner to present. Defaults is "info"',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'error'),
                      FigSuggestion(name: 'info'),
                      FigSuggestion(name: 'warning')
                    ]
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
      name: 'configure',
      description: 'Configure the Azure DevOps CLI or view your configuration',
      options: [

        Option(
          name: ['--defaults', '-d'],
          description: 'Space separated \'name=value\' pairs for common arguments defaults, e.g. \'--defaults project=my-project-name organization=https://dev.azure.com/organizationName arg=value\'. Use \'\' to clear the defaults, e.g. --defaults project=\'\'',
          args: [
            Arg(
            name: 'default'
          )
          ]
        ),
        Option(
          name: ['--list', '-l'],
          description: 'Lists the contents of the config file'
        ),
        Option(
          name: '--use-git-aliases',
          description: 'Set to \'true\' to configure Git aliases global git config file (to enable commands like "git pr list"). Set to \'false\' to remove any aliases set by the tool',
          args: [
            Arg(
            name: 'use-git-aliases',
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
      name: 'feedback',
      description: 'Displays information on how to provide feedback to the Azure DevOps CLI team'
    ),
    Subcommand(
      name: 'invoke',
      description: 'This command will invoke request for any DevOps area and resource. Please use only json output as the response of this command is not fixed. Helpful docs - https://docs.microsoft.com/en-us/rest/api/azure/devops/',
      options: [

        Option(
          name: '--accept-media-type',
          description: 'Specifies the content type of the response',
          args: [
            Arg(
            name: 'accept-media-typ'
          )
          ]
        ),
        Option(
          name: '--api-version',
          description: 'The version of the API to target',
          args: [
            Arg(
            name: 'api-versio'
          )
          ]
        ),
        Option(
          name: '--area',
          description: 'The area to find the resource',
          args: [
            Arg(
            name: 'are'
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
          name: '--encoding',
          description: 'Encoding of the input file. Used in conjunction with --in-file',
          args: [
            Arg(
            name: 'encoding',
            suggestions: [

              FigSuggestion(name: 'ascii'),
              FigSuggestion(name: 'utf-16be'),
              FigSuggestion(name: 'utf-16le'),
              FigSuggestion(name: 'utf-8')
            ]
          )
          ]
        ),
        Option(
          name: '--http-method',
          description: 'Specifies the method used for the request',
          args: [
            Arg(
            name: 'http-method',
            suggestions: [

              FigSuggestion(name: 'DELETE'),
              FigSuggestion(name: 'GET'),
              FigSuggestion(name: 'HEAD'),
              FigSuggestion(name: 'OPTIONS'),
              FigSuggestion(name: 'PATCH'),
              FigSuggestion(name: 'POST'),
              FigSuggestion(name: 'PUT')
            ]
          )
          ]
        ),
        Option(
          name: '--in-file',
          description: 'Path and file name to the file that contains the contents of the request',
          args: [
            Arg(
            name: 'in-fil'
          )
          ]
        ),
        Option(
          name: '--media-type',
          description: 'Specifies the content type of the request',
          args: [
            Arg(
            name: 'media-typ'
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
          name: '--out-file',
          description: 'Path and file name to the file for which this function saves the response body',
          args: [
            Arg(
            name: 'out-fil'
          )
          ]
        ),
        Option(
          name: '--query-parameters',
          description: 'Specifies the list of query parameters',
          args: [
            Arg(
            name: 'query-parameter'
          )
          ]
        ),
        Option(
          name: '--resource',
          description: 'The name of the resource to operate on',
          args: [
            Arg(
            name: 'resourc'
          )
          ]
        ),
        Option(
          name: '--route-parameters',
          description: 'Specifies the list of route parameters',
          args: [
            Arg(
            name: 'route-parameter'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Set the credential (PAT) to use for a particular organization',
      options: [

        Option(
          name: ['--organization', '--org'],
          description: 'Azure DevOps organization URL. Example: https://dev.azure.com/MyOrganizationName',
          args: [
            Arg(
            name: 'organizatio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Clear the credential for all or a particular organization',
      options: [

        Option(
          name: ['--organization', '--org'],
          description: 'Azure DevOps organization URL. Example: https://dev.azure.com/MyOrganizationName/. If no organization is specified, all organizations will be logged out',
          args: [
            Arg(
            name: 'organizatio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'extension',
      description: 'Manage extensions',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable an extension',
          options: [

            Option(
              name: '--extension-id',
              description: 'Extension Id. This will map to extension-name in the az devops extension search output',
              args: [
                Arg(
                name: 'extension-i'
              )
              ]
            ),
            Option(
              name: '--publisher-id',
              description: 'Publisher Id. This will map to publisher-name in the az devops extension search output',
              args: [
                Arg(
                name: 'publisher-i'
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
          name: 'enable',
          description: 'Enable an extension',
          options: [

            Option(
              name: '--extension-id',
              description: 'Extension Id. This will map to extension-name in the az devops extension search output',
              args: [
                Arg(
                name: 'extension-i'
              )
              ]
            ),
            Option(
              name: '--publisher-id',
              description: 'Publisher Id. This will map to publisher-name in the az devops extension search output',
              args: [
                Arg(
                name: 'publisher-i'
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
          name: 'install',
          description: 'Install an extension',
          options: [

            Option(
              name: '--extension-id',
              description: 'Extension Id. This will map to extension-name in the az devops extension search output',
              args: [
                Arg(
                name: 'extension-i'
              )
              ]
            ),
            Option(
              name: '--publisher-id',
              description: 'Publisher Id. This will map to publisher-name in the az devops extension search output',
              args: [
                Arg(
                name: 'publisher-i'
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
          description: 'List extensions installed in an organization',
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
              name: '--include-built-in',
              description: 'Include built in extensions',
              args: [
                Arg(
                name: 'include-built-in',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--include-disabled',
              description: 'Include disabled extensions',
              args: [
                Arg(
                name: 'include-disabled',
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
          name: 'search',
          description: 'Search extensions from marketplace',
          options: [

            Option(
              name: ['--search-query', '-q'],
              description: 'Search term',
              args: [
                Arg(
                name: 'search-quer'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get detail of single extension',
          options: [

            Option(
              name: '--extension-id',
              description: 'Extension Id. This will map to extension-name in the az devops extension search output',
              args: [
                Arg(
                name: 'extension-i'
              )
              ]
            ),
            Option(
              name: '--publisher-id',
              description: 'Publisher Id. This will map to publisher-name in the az devops extension search output',
              args: [
                Arg(
                name: 'publisher-i'
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
          name: 'uninstall',
          description: 'Uninstall an extension',
          options: [

            Option(
              name: '--extension-id',
              description: 'Extension Id. This will map to extension-name in the az devops extension search output',
              args: [
                Arg(
                name: 'extension-i'
              )
              ]
            ),
            Option(
              name: '--publisher-id',
              description: 'Publisher Id. This will map to publisher-name in the az devops extension search output',
              args: [
                Arg(
                name: 'publisher-i'
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
        )
      ]
    ),
    Subcommand(
      name: 'project',
      description: 'Manage team projects',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a team project',
          options: [

            Option(
              name: '--name',
              description: 'Name of the new project',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description for the new project',
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
              description: 'Open the team project in the default web browser'
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
              name: ['--process', '-p'],
              description: 'Process to use. Default if not specified',
              args: [
                Arg(
                name: 'proces'
              )
              ]
            ),
            Option(
              name: ['--source-control', '-s'],
              description: 'Source control type of the initial code repository created',
              args: [
                Arg(
                name: 'source-control',
                suggestions: [

                  FigSuggestion(name: 'git'),
                  FigSuggestion(name: 'tfvc')
                ]
              )
              ]
            ),
            Option(
              name: '--visibility',
              description: 'Project visibility',
              args: [
                Arg(
                name: 'visibility',
                suggestions: [

                  FigSuggestion(name: 'private'),
                  FigSuggestion(name: 'public')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete team project',
          options: [

            Option(
              name: '--id',
              description: 'The id of the project to delete',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List team projects',
          options: [

            Option(
              name: '--continuation-token',
              description: 'Continuation token. This can be retrived from previous run of this command if more results are present',
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
              name: '--get-default-team-image-url',
              description: 'Whether to get default team image url or not',
              args: [
                Arg(
                name: 'get-default-team-image-url',
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
              description: 'Number of results to skip',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--state-filter',
              description: 'State filter',
              args: [
                Arg(
                name: 'state-filter',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'createPending'),
                  FigSuggestion(name: 'deleted'),
                  FigSuggestion(name: 'deleting'),
                  FigSuggestion(name: 'new'),
                  FigSuggestion(name: 'unchanged'),
                  FigSuggestion(name: 'wellFormed')
                ]
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of results to list',
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
          description: 'Show team project',
          options: [

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
              description: 'Open the team project in the default web browser'
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
      name: 'security',
      description: 'Manage security related operations',
      subcommands: [

        Subcommand(
          name: 'group',
          description: 'Manage security groups',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new Azure DevOps group',
              options: [

                Option(
                  name: '--description',
                  description: 'Description of Azure DevOps group',
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
                  name: '--email-id',
                  description: 'Create new group using the mail address as a reference to an existing group from an external AD or AAD backed provider. Required if name or origin-id is missing',
                  args: [
                    Arg(
                    name: 'email-i'
                  )
                  ]
                ),
                Option(
                  name: '--groups',
                  description: 'A comma separated list of descriptors referencing groups you want the newly created group to join',
                  args: [
                    Arg(
                    name: 'group'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Name of Azure DevOps group',
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
                  name: '--origin-id',
                  description: 'Create new group using the OriginID as a reference to an existing group from an external AD or AAD backed provider. Required if name or email-id is missing',
                  args: [
                    Arg(
                    name: 'origin-i'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '-p'],
                  description: 'Name or ID of the project in which Azure DevOps group should be created',
                  args: [
                    Arg(
                    name: 'projec'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Create group at project or organization level',
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
              name: 'delete',
              description: 'Delete an Azure DevOps group',
              options: [

                Option(
                  name: '--id',
                  description: 'Descriptor of the group',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all the groups in a project or organization',
              options: [

                Option(
                  name: '--continuation-token',
                  description: 'If there are more results that can\'t be returned in a single page, the result set will contain a continuation token for retrieval of the next set of results',
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
                  description: 'List groups for a particular project',
                  args: [
                    Arg(
                    name: 'projec'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'List groups at project or organization level',
                  args: [
                    Arg(
                    name: 'scope',
                    suggestions: [

                      FigSuggestion(name: 'organization'),
                      FigSuggestion(name: 'project')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--subject-types',
                  description: 'A comma separated list of user subject subtypes to reduce the retrieved results. You can give initial part of descriptor [before the dot] as a filter e.g. vssgp,aadgp',
                  args: [
                    Arg(
                    name: 'subject-type'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show group details',
              options: [

                Option(
                  name: '--id',
                  description: 'Descriptor of the group',
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
              name: 'update',
              description: 'Update name AND/OR description for an Azure DevOps group',
              options: [

                Option(
                  name: '--id',
                  description: 'Descriptor of the group',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'New description for Azure DevOps group',
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
                  description: 'New name for Azure DevOps group',
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
                )
              ]
            ),
            Subcommand(
              name: 'membership',
              description: 'Manage memberships for security groups',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add membership',
                  options: [

                    Option(
                      name: '--group-id',
                      description: 'Descriptor of the group to which member needs to be added',
                      args: [
                        Arg(
                        name: 'group-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--member-id',
                      description: 'Descriptor of the group or Email Id of the user to be added. User should already be a part of the organization. Use az devops user add command to add an user to organization',
                      args: [
                        Arg(
                        name: 'member-i'
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
                  description: 'List memberships for a group or user',
                  options: [

                    Option(
                      name: '--id',
                      description: 'Group descriptor or User Email whose membership details are required',
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
                      name: '--relationship',
                      description: 'Get member of/members for this group',
                      args: [
                        Arg(
                        name: 'relationship',
                        suggestions: [

                          FigSuggestion(name: 'memberof'),
                          FigSuggestion(name: 'members')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove membership',
                  options: [

                    Option(
                      name: '--group-id',
                      description: 'Descriptor of the group from which member needs to be removed',
                      args: [
                        Arg(
                        name: 'group-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--member-id',
                      description: 'Descriptor of the group or Email Id of the user to be removed',
                      args: [
                        Arg(
                        name: 'member-i'
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'permission',
          description: 'Manage security permissions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List tokens for given user/group and namespace',
              options: [

                Option(
                  name: ['--namespace-id', '--id'],
                  description: 'ID of security namespace',
                  args: [
                    Arg(
                    name: 'namespace-i'
                  )
                  ]
                ),
                Option(
                  name: '--subject',
                  description: 'User Email ID or Group descriptor',
                  args: [
                    Arg(
                    name: 'subjec'
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
                  name: '--recurse',
                  description: 'If true and this is a hierarchical namespace, return child ACLs of the specified token'
                ),
                Option(
                  name: '--token',
                  description: 'Security token',
                  args: [
                    Arg(
                    name: 'toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'reset',
              description: 'Reset permission for given permission bit(s)',
              options: [

                Option(
                  name: ['--namespace-id', '--id'],
                  description: 'ID of security namespace',
                  args: [
                    Arg(
                    name: 'namespace-i'
                  )
                  ]
                ),
                Option(
                  name: '--permission-bit',
                  description: 'Permission bit or addition of permission bits which needs to be reset for given user/group and token',
                  args: [
                    Arg(
                    name: 'permission-bi'
                  )
                  ]
                ),
                Option(
                  name: '--subject',
                  description: 'User Email ID or Group descriptor',
                  args: [
                    Arg(
                    name: 'subjec'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'Security token',
                  args: [
                    Arg(
                    name: 'toke'
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
              name: 'reset-all',
              description: 'Clear all permissions of this token for a user/group',
              options: [

                Option(
                  name: ['--namespace-id', '--id'],
                  description: 'ID of security namespace',
                  args: [
                    Arg(
                    name: 'namespace-i'
                  )
                  ]
                ),
                Option(
                  name: '--subject',
                  description: 'User Email ID or Group descriptor',
                  args: [
                    Arg(
                    name: 'subjec'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'Security token',
                  args: [
                    Arg(
                    name: 'toke'
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
              description: 'Show permissions for given token, namespace and user/group',
              options: [

                Option(
                  name: ['--namespace-id', '--id'],
                  description: 'ID of security namespace',
                  args: [
                    Arg(
                    name: 'namespace-i'
                  )
                  ]
                ),
                Option(
                  name: '--subject',
                  description: 'User Email ID or Group descriptor',
                  args: [
                    Arg(
                    name: 'subjec'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'Security token',
                  args: [
                    Arg(
                    name: 'toke'
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
              name: 'update',
              description: 'Assign allow or deny permission to given user/group',
              options: [

                Option(
                  name: ['--namespace-id', '--id'],
                  description: 'ID of security namespace',
                  args: [
                    Arg(
                    name: 'namespace-i'
                  )
                  ]
                ),
                Option(
                  name: '--subject',
                  description: 'User Email ID or Group descriptor',
                  args: [
                    Arg(
                    name: 'subjec'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'Security token',
                  args: [
                    Arg(
                    name: 'toke'
                  )
                  ]
                ),
                Option(
                  name: '--allow-bit',
                  description: 'Allow bit or addition of bits. Required if --deny-bit is missing',
                  args: [
                    Arg(
                    name: 'allow-bi'
                  )
                  ]
                ),
                Option(
                  name: '--deny-bit',
                  description: 'Deny bit or addition of bits. Required if --allow-bit is missing',
                  args: [
                    Arg(
                    name: 'deny-bi'
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
                  name: '--merge',
                  description: 'If set, the existing ACE has its allow and deny merged with the incoming ACE\'s allow and deny. If unset, the existing ACE is displaced',
                  args: [
                    Arg(
                    name: 'merge',
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
              name: 'namespace',
              description: 'Manage security namespaces',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List all available namespaces for an organization',
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
                      name: '--local-only',
                      description: 'If true, retrieve only local security namespaces'
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
                  description: 'Show details of permissions available in each namespace',
                  options: [

                    Option(
                      name: ['--namespace-id', '--id'],
                      description: 'ID of security namespace',
                      args: [
                        Arg(
                        name: 'namespace-i'
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
    ),
    Subcommand(
      name: 'service-endpoint',
      description: 'Manage service endpoints/connections',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a service endpoint using configuration file',
          options: [

            Option(
              name: '--service-endpoint-configuration',
              description: 'Configuration file with service endpoint request',
              args: [
                Arg(
                name: 'service-endpoint-configuratio'
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
              name: '--encoding',
              description: 'Encoding of the input file',
              args: [
                Arg(
                name: 'encoding',
                suggestions: [

                  FigSuggestion(name: 'ascii'),
                  FigSuggestion(name: 'utf-16be'),
                  FigSuggestion(name: 'utf-16le'),
                  FigSuggestion(name: 'utf-8')
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
          description: 'Deletes service endpoint',
          options: [

            Option(
              name: '--id',
              description: 'Id of the service endpoint to delete',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--deep',
              description: 'Specific to AzureRM endpoint created in Automatic flow. When it is specified, this will also delete corresponding AAD application in Azure'
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
          description: 'List service endpoints in a project',
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
          description: 'Get the details of a service endpoint',
          options: [

            Option(
              name: '--id',
              description: 'ID of the service endpoint',
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
          description: 'Update a service endpoint',
          options: [

            Option(
              name: '--id',
              description: 'ID of the service endpoint',
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
              name: '--enable-for-all',
              description: 'Allow all pipelines to access this service endpoint',
              args: [
                Arg(
                name: 'enable-for-all',
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
          name: 'azurerm',
          description: 'Manage Azure RM service endpoints/connections',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Azure RM type service endpoint',
              options: [

                Option(
                  name: '--azure-rm-service-principal-id',
                  description: 'Service principal id for creating azure rm service endpoint',
                  args: [
                    Arg(
                    name: 'azure-rm-service-principal-i'
                  )
                  ]
                ),
                Option(
                  name: '--azure-rm-subscription-id',
                  description: 'Subscription id for azure rm service endpoint',
                  args: [
                    Arg(
                    name: 'azure-rm-subscription-i'
                  )
                  ]
                ),
                Option(
                  name: '--azure-rm-subscription-name',
                  description: 'Name of azure subscription for azure rm service endpoint',
                  args: [
                    Arg(
                    name: 'azure-rm-subscription-nam'
                  )
                  ]
                ),
                Option(
                  name: '--azure-rm-tenant-id',
                  description: 'Tenant id for creating azure rm service endpoint',
                  args: [
                    Arg(
                    name: 'azure-rm-tenant-i'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Name of service endpoint to create',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--azure-rm-service-principal-certificate-path',
                  description: 'Path to (.pem) which is certificate. Create using command "openssl pkcs12 -in file.pfx -out file.pem -nodes -password pass:<password_here>". More details : https://aka.ms/azure-devops-cli-azurerm-service-endpoint',
                  args: [
                    Arg(
                    name: 'azure-rm-service-principal-certificate-pat'
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
          name: 'github',
          description: 'Manage GitHub service endpoints/connections',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a GitHub service endpoint',
              options: [

                Option(
                  name: '--github-url',
                  description: 'Url for github for creating service endpoint',
                  args: [
                    Arg(
                    name: 'github-ur'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Name of service endpoint to create',
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
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'team',
      description: 'Manage teams',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a team',
          options: [

            Option(
              name: '--name',
              description: 'Name of the new team',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the new team',
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
          description: 'Delete a team',
          options: [

            Option(
              name: '--id',
              description: 'The id of the team to delete',
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
          description: 'List all teams in a project',
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
            ),
            Option(
              name: '--skip',
              description: 'Number of teams to skip',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of teams to return',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-member',
          description: 'List members of a team',
          options: [

            Option(
              name: '--team',
              description: 'The name or id of the team to show members of',
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
              name: '--skip',
              description: 'Number of members to skip',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of members to return',
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
          description: 'Show team details',
          options: [

            Option(
              name: '--team',
              description: 'The name or id of the team to show',
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
          description: 'Update a team\'s name and/or description',
          options: [

            Option(
              name: '--team',
              description: 'The name or id of the team to be updated',
              args: [
                Arg(
                name: 'tea'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'New description of the team',
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
              description: 'New name of the team',
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
      name: 'user',
      description: 'Manage users',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add user',
          options: [

            Option(
              name: '--email-id',
              description: 'Email ID of the user',
              args: [
                Arg(
                name: 'email-i'
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'License type for the user',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'advanced'),
                  FigSuggestion(name: 'earlyAdopter'),
                  FigSuggestion(name: 'express'),
                  FigSuggestion(name: 'professional'),
                  FigSuggestion(name: 'stakeholder')
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
              name: '--send-email-invite',
              description: 'Whether to send email invite for new user or not',
              args: [
                Arg(
                name: 'send-email-invite',
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
          name: 'list',
          description: 'List users in an organization [except for users which are added via AAD groups]',
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
              name: '--skip',
              description: 'Offset: Number of records to skip',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Maximum number of users to return. Max value is 10000',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove user from an organization',
          options: [

            Option(
              name: '--user',
              description: 'Email ID or ID of the user',
              args: [
                Arg(
                name: 'use'
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
          description: 'Show user details',
          options: [

            Option(
              name: '--user',
              description: 'Email ID or ID of the user',
              args: [
                Arg(
                name: 'use'
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
          name: 'update',
          description: 'Update license type for a user',
          options: [

            Option(
              name: '--license-type',
              description: 'License type for the user',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'advanced'),
                  FigSuggestion(name: 'earlyAdopter'),
                  FigSuggestion(name: 'express'),
                  FigSuggestion(name: 'professional'),
                  FigSuggestion(name: 'stakeholder')
                ]
              )
              ]
            ),
            Option(
              name: '--user',
              description: 'Email ID or ID of the user',
              args: [
                Arg(
                name: 'use'
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
      name: 'wiki',
      description: 'Manage wikis',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a wiki',
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
              name: '--mapped-path',
              description: '[Required for codewiki type] Mapped path of the new wiki e.g. \'/\' to publish from root of repository',
              args: [
                Arg(
                name: 'mapped-pat'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the new wiki',
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
              name: ['--repository', '-r'],
              description: '[Required for codewiki type] Name or ID of the repository to publish the wiki from',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: ['--wiki-type', '--type'],
              description: 'Type of wiki to create',
              args: [
                Arg(
                name: 'wiki-type',
                suggestions: [

                  FigSuggestion(name: 'codewiki'),
                  FigSuggestion(name: 'projectwiki')
                ]
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: '[Required for codewiki type] Repository branch name to publish the code wiki from',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a wiki',
          options: [

            Option(
              name: '--wiki',
              description: 'Name or Id of the wiki to delete',
              args: [
                Arg(
                name: 'wik'
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
          description: 'List all the wikis in a project or organization',
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
            ),
            Option(
              name: '--scope',
              description: 'List the wikis at project or organization level',
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
          name: 'show',
          description: 'Show details of a wiki',
          options: [

            Option(
              name: '--wiki',
              description: 'Name or Id of the wiki',
              args: [
                Arg(
                name: 'wik'
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
              description: 'Open the wiki in your web browser'
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
          name: 'page',
          description: 'Manage wiki pages',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Add a new page',
              options: [

                Option(
                  name: '--path',
                  description: 'Path of the wiki page',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--wiki',
                  description: 'Name or Id of the wiki',
                  args: [
                    Arg(
                    name: 'wik'
                  )
                  ]
                ),
                Option(
                  name: '--comment',
                  description: 'Comment in the commit message of file add operation',
                  args: [
                    Arg(
                    name: 'commen'
                  )
                  ]
                ),
                Option(
                  name: '--content',
                  description: 'Content of the wiki page. Ignored if --file-path is specified',
                  args: [
                    Arg(
                    name: 'conten'
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
                  name: '--encoding',
                  description: 'Encoding of the file. Used in conjunction with --file-path parameter',
                  args: [
                    Arg(
                    name: 'encoding',
                    suggestions: [

                      FigSuggestion(name: 'ascii'),
                      FigSuggestion(name: 'utf-16be'),
                      FigSuggestion(name: 'utf-16le'),
                      FigSuggestion(name: 'utf-8')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--file-path',
                  description: 'Path of the file input if content is specified in the file',
                  args: [
                    Arg(
                    name: 'file-pat'
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
              description: 'Delete a page',
              options: [

                Option(
                  name: '--path',
                  description: 'Path of the wiki page',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--wiki',
                  description: 'Name or Id of the wiki',
                  args: [
                    Arg(
                    name: 'wik'
                  )
                  ]
                ),
                Option(
                  name: '--comment',
                  description: 'Comment in the commit message of delete operation',
                  args: [
                    Arg(
                    name: 'commen'
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
              name: 'show',
              description: 'Get the content of a page or open a page',
              options: [

                Option(
                  name: '--path',
                  description: 'Path of the wiki page',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--wiki',
                  description: 'Name or Id of the wiki',
                  args: [
                    Arg(
                    name: 'wik'
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
                  name: '--include-content',
                  description: 'Include content of the page'
                ),
                Option(
                  name: '--open',
                  description: 'Open the wiki page in your web browser'
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
                  name: ['--version', '-v'],
                  description: 'Version (ETag) of the wiki page',
                  args: [
                    Arg(
                    name: 'versio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Edit a page',
              options: [

                Option(
                  name: '--path',
                  description: 'Path of the wiki page',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--version', '-v'],
                  description: 'Version (ETag) of file to edit',
                  args: [
                    Arg(
                    name: 'versio'
                  )
                  ]
                ),
                Option(
                  name: '--wiki',
                  description: 'Name or Id of the wiki',
                  args: [
                    Arg(
                    name: 'wik'
                  )
                  ]
                ),
                Option(
                  name: '--comment',
                  description: 'Comment in the commit message of file edit operation',
                  args: [
                    Arg(
                    name: 'commen'
                  )
                  ]
                ),
                Option(
                  name: '--content',
                  description: 'Content of the wiki page. Ignored if --file-path is specified',
                  args: [
                    Arg(
                    name: 'conten'
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
                  name: '--encoding',
                  description: 'Encoding of the file. Used in conjunction with --file-path parameter',
                  args: [
                    Arg(
                    name: 'encoding',
                    suggestions: [

                      FigSuggestion(name: 'ascii'),
                      FigSuggestion(name: 'utf-16be'),
                      FigSuggestion(name: 'utf-16le'),
                      FigSuggestion(name: 'utf-8')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--file-path',
                  description: 'Path of the file input if content is specified in the file',
                  args: [
                    Arg(
                    name: 'file-pat'
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
    )
  ]
);
