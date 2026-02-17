// Auto-generated from TypeScript source: 0.9.0.ts
// Generated at: 2026-02-17
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `infracost` CLI
final FigSpec infracostSpec = FigSpec(
    name: "infracost",
    description: "Cloud cost estimates for Terraform",
    subcommands: [
      Subcommand(
          name: 'infracost',
          description: 'Cloud cost estimates for Terraform',
          subcommands: [
            Subcommand(
                name: 'breakdown',
                description: 'Show full breakdown of costs',
                options: [
                  Option(
                      name: '--config-file',
                      description:
                          'Path to Infracost config file. Cannot be used with path, terraform* or usage-file flags',
                      args: [
                        Arg(name: 'config-file', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--fields',
                      description:
                          'Comma separated list of output fields: all,price,monthlyQuantity,unit,hourlyCost,monthlyCost. Supported by table and html output formats',
                      args: [
                        Arg(
                            name: 'fields',
                            defaultValue: '[monthlyQuantity,unit,monthlyCost]')
                      ]),
                  Option(
                      name: '--format',
                      description: 'Output format: json, table, html',
                      args: [Arg(name: 'format', defaultValue: 'table')]),
                  Option(
                      name: '--no-cache',
                      description: 'Don\'t attempt to cache Terraform plans'),
                  Option(
                      name: '--out-file',
                      description:
                          'Save output to a file, helpful with format flag',
                      args: [Arg(name: 'out-file')]),
                  Option(
                      name: ['--path', '-p'],
                      description:
                          'Path to the Terraform directory or JSON/plan file',
                      args: [
                        Arg(name: 'path', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--show-skipped',
                      description: 'Show unsupported resources'),
                  Option(
                      name: '--sync-usage-file',
                      description:
                          'Sync usage-file with missing resources, needs usage-file too (experimental)'),
                  Option(
                      name: '--terraform-parse-hcl',
                      description:
                          'Parse the HCL directly instead of generating a Terraform plan. This option does not need credentials and is faster (experimental)'),
                  Option(
                      name: '--terraform-plan-flags',
                      description:
                          'Flags to pass to \'terraform plan\'. Applicable when path is a Terraform directory',
                      args: [Arg(name: 'terraform-plan-flags')]),
                  Option(
                      name: '--terraform-use-state',
                      description:
                          'Use Terraform state instead of generating a plan. Applicable when path is a Terraform directory'),
                  Option(
                      name: '--terraform-var',
                      description:
                          'Set a value for one of the input variables, similar to Terraform\'s -var flag. Only supported with --terraform-parse-hcl (experimental)',
                      args: [Arg(name: 'terraform-var')]),
                  Option(
                      name: '--terraform-var-file',
                      description:
                          'Load variable files from the given file, similar to Terraform\'s -var-file flag. Only supported with --terraform-parse-hcl (experimental)',
                      args: [Arg(name: 'terraform-var-file')]),
                  Option(
                      name: '--terraform-workspace',
                      description:
                          'Terraform workspace to use. Applicable when path is a Terraform directory',
                      args: [Arg(name: 'terraform-workspace')]),
                  Option(
                      name: '--usage-file',
                      description:
                          'Path to Infracost usage file that specifies values for usage-based resources',
                      args: [
                        Arg(name: 'usage-file', template: ['filepaths'])
                      ])
                ]),
            Subcommand(
                name: 'comment',
                description:
                    'Post an Infracost comment to GitHub, GitLab, Azure Repos or Bitbucket',
                subcommands: [
                  Subcommand(
                      name: 'azure-repos',
                      description: 'Post an Infracost comment to Azure Repos',
                      options: [
                        Option(
                            name: '--azure-access-token',
                            description: 'Azure DevOps access token',
                            args: [Arg(name: 'azure-access-token')]),
                        Option(
                            name: '--behavior',
                            description:
                                'Behavior when posting comment, one of:   update (default)  Update latest comment   new               Create a new comment   delete-and-new    Delete previous matching comments and create a new comment',
                            args: [
                              Arg(name: 'behavior', defaultValue: 'update')
                            ]),
                        Option(
                            name: '--dry-run',
                            description:
                                'Generate comment without actually posting to Azure Repos'),
                        Option(
                            name: ['--path', '-p'],
                            description:
                                'Path to Infracost JSON files, glob patterns need quotes',
                            isRepeatable: true,
                            args: [
                              Arg(name: 'path', template: ['filepaths'])
                            ]),
                        Option(
                            name: '--policy-path',
                            description:
                                'Path to Infracost policy files, glob patterns need quotes (experimental)',
                            isRepeatable: true,
                            args: [Arg(name: 'policy-path')]),
                        Option(
                            name: '--pull-request',
                            description:
                                'Pull request number to post comment on',
                            args: [
                              Arg(name: 'pull-request', defaultValue: '0')
                            ]),
                        Option(
                            name: '--repo-url',
                            description:
                                'Repository URL, e.g. https://dev.azure.com/my-org/my-project/_git/my-repo',
                            args: [Arg(name: 'repo-url')]),
                        Option(
                            name: '--tag',
                            description:
                                'Customize hidden markdown tag used to detect comments posted by Infracost',
                            args: [Arg(name: 'tag')])
                      ]),
                  Subcommand(
                      name: 'bitbucket',
                      description: 'Post an Infracost comment to Bitbucket',
                      options: [
                        Option(
                            name: '--behavior',
                            description:
                                'Behavior when posting comment, one of:   update (default)  Update latest comment   new               Create a new comment   delete-and-new    Delete previous matching comments and create a new comment',
                            args: [
                              Arg(name: 'behavior', defaultValue: 'update')
                            ]),
                        Option(
                            name: '--bitbucket-server-url',
                            description: 'Bitbucket Server URL',
                            args: [
                              Arg(
                                  name: 'bitbucket-server-url',
                                  defaultValue: 'https://bitbucket.org')
                            ]),
                        Option(
                            name: '--bitbucket-token',
                            description:
                                'Bitbucket access token. Use \'username:app-password\' for Bitbucket Cloud and HTTP access token for Bitbucket Server',
                            args: [Arg(name: 'bitbucket-token')]),
                        Option(
                            name: '--commit',
                            description:
                                'Commit SHA to post comment on, mutually exclusive with pull-request. Not available when bitbucket-server-url is set',
                            args: [Arg(name: 'commit')]),
                        Option(
                            name: '--dry-run',
                            description:
                                'Generate comment without actually posting to Bitbucket'),
                        Option(
                            name: ['--path', '-p'],
                            description:
                                'Path to Infracost JSON files, glob patterns need quotes',
                            isRepeatable: true,
                            args: [
                              Arg(name: 'path', template: ['filepaths'])
                            ]),
                        Option(
                            name: '--policy-path',
                            description:
                                'Path to Infracost policy files, glob patterns need quotes (experimental)',
                            isRepeatable: true,
                            args: [Arg(name: 'policy-path')]),
                        Option(
                            name: '--pull-request',
                            description:
                                'Pull request number to post comment on',
                            args: [
                              Arg(name: 'pull-request', defaultValue: '0')
                            ]),
                        Option(
                            name: '--repo',
                            description: 'Repository in format workspace/repo',
                            args: [Arg(name: 'repo')]),
                        Option(
                            name: '--tag',
                            description:
                                'Customize special text used to detect comments posted by Infracost (placed at the bottom of a comment)',
                            args: [Arg(name: 'tag')])
                      ]),
                  Subcommand(
                      name: 'github',
                      description: 'Post an Infracost comment to GitHub',
                      options: [
                        Option(
                            name: '--behavior',
                            description:
                                'Behavior when posting comment, one of:   update (default)  Update latest comment   new               Create a new comment   hide-and-new      Hide previous matching comments and create a new comment   delete-and-new    Delete previous matching comments and create a new comment',
                            args: [
                              Arg(name: 'behavior', defaultValue: 'update')
                            ]),
                        Option(
                            name: '--commit',
                            description:
                                'Commit SHA to post comment on, mutually exclusive with pull-request',
                            args: [Arg(name: 'commit')]),
                        Option(
                            name: '--dry-run',
                            description:
                                'Generate comment without actually posting to GitHub'),
                        Option(
                            name: '--github-api-url',
                            description: 'GitHub API URL',
                            args: [
                              Arg(
                                  name: 'github-api-url',
                                  defaultValue: 'https://api.github.com')
                            ]),
                        Option(
                            name: '--github-token',
                            description: 'GitHub token',
                            args: [Arg(name: 'github-token')]),
                        Option(
                            name: ['--path', '-p'],
                            description:
                                'Path to Infracost JSON files, glob patterns need quotes',
                            isRepeatable: true,
                            args: [
                              Arg(name: 'path', template: ['filepaths'])
                            ]),
                        Option(
                            name: '--policy-path',
                            description:
                                'Path to Infracost policy files, glob patterns need quotes (experimental)',
                            isRepeatable: true,
                            args: [Arg(name: 'policy-path')]),
                        Option(
                            name: '--pull-request',
                            description:
                                'Pull request number to post comment on, mutually exclusive with commit',
                            args: [
                              Arg(name: 'pull-request', defaultValue: '0')
                            ]),
                        Option(
                            name: '--repo',
                            description: 'Repository in format owner/repo',
                            args: [Arg(name: 'repo')]),
                        Option(
                            name: '--tag',
                            description:
                                'Customize hidden markdown tag used to detect comments posted by Infracost',
                            args: [Arg(name: 'tag')])
                      ]),
                  Subcommand(
                      name: 'gitlab',
                      description: 'Post an Infracost comment to GitLab',
                      options: [
                        Option(
                            name: '--behavior',
                            description:
                                'Behavior when posting comment, one of:   update (default)  Update latest comment   new               Create a new comment   delete-and-new    Delete previous matching comments and create a new comment',
                            args: [
                              Arg(name: 'behavior', defaultValue: 'update')
                            ]),
                        Option(
                            name: '--commit',
                            description:
                                'Commit SHA to post comment on, mutually exclusive with merge-request',
                            args: [Arg(name: 'commit')]),
                        Option(
                            name: '--dry-run',
                            description:
                                'Generate comment without actually posting to GitLab'),
                        Option(
                            name: '--gitlab-server-url',
                            description: 'GitLab Server URL',
                            args: [
                              Arg(
                                  name: 'gitlab-server-url',
                                  defaultValue: 'https://gitlab.com')
                            ]),
                        Option(
                            name: '--gitlab-token',
                            description: 'GitLab token',
                            args: [Arg(name: 'gitlab-token')]),
                        Option(
                            name: '--merge-request',
                            description:
                                'Merge request number to post comment on, mutually exclusive with commit',
                            args: [
                              Arg(name: 'merge-request', defaultValue: '0')
                            ]),
                        Option(
                            name: ['--path', '-p'],
                            description:
                                'Path to Infracost JSON files, glob patterns need quotes',
                            isRepeatable: true,
                            args: [
                              Arg(name: 'path', template: ['filepaths'])
                            ]),
                        Option(
                            name: '--policy-path',
                            description:
                                'Path to Infracost policy files, glob patterns need quotes (experimental)',
                            isRepeatable: true,
                            args: [Arg(name: 'policy-path')]),
                        Option(
                            name: '--repo',
                            description: 'Repository in format owner/repo',
                            args: [Arg(name: 'repo')]),
                        Option(
                            name: '--tag',
                            description:
                                'Customize hidden markdown tag used to detect comments posted by Infracost',
                            args: [Arg(name: 'tag')])
                      ])
                ]),
            Subcommand(
                name: 'completion',
                description: 'Generate shell completion script',
                options: [
                  Option(
                      name: '--shell',
                      description:
                          'Supported shell formats: bash, zsh, fish, powershell',
                      args: [Arg(name: 'shell')])
                ]),
            Subcommand(
                name: 'configure',
                description: 'Display or change global configuration',
                subcommands: [
                  Subcommand(
                      name: 'get', description: 'Get global configuration'),
                  Subcommand(
                      name: 'set', description: 'Set global configuration')
                ]),
            Subcommand(
                name: 'diff',
                description:
                    'Show diff of monthly costs between current and planned state',
                options: [
                  Option(
                      name: '--config-file',
                      description:
                          'Path to Infracost config file. Cannot be used with path, terraform* or usage-file flags',
                      args: [
                        Arg(name: 'config-file', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--no-cache',
                      description: 'Don\'t attempt to cache Terraform plans'),
                  Option(
                      name: '--out-file',
                      description: 'Save output to a file',
                      args: [Arg(name: 'out-file')]),
                  Option(
                      name: ['--path', '-p'],
                      description:
                          'Path to the Terraform directory or JSON/plan file',
                      args: [
                        Arg(name: 'path', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--show-skipped',
                      description: 'Show unsupported resources'),
                  Option(
                      name: '--sync-usage-file',
                      description:
                          'Sync usage-file with missing resources, needs usage-file too (experimental)'),
                  Option(
                      name: '--terraform-plan-flags',
                      description:
                          'Flags to pass to \'terraform plan\'. Applicable when path is a Terraform directory',
                      args: [Arg(name: 'terraform-plan-flags')]),
                  Option(
                      name: '--terraform-workspace',
                      description:
                          'Terraform workspace to use. Applicable when path is a Terraform directory',
                      args: [Arg(name: 'terraform-workspace')]),
                  Option(
                      name: '--usage-file',
                      description:
                          'Path to Infracost usage file that specifies values for usage-based resources',
                      args: [
                        Arg(name: 'usage-file', template: ['filepaths'])
                      ])
                ]),
            Subcommand(
                name: 'output',
                description:
                    'Combine and output Infracost JSON files in different formats',
                options: [
                  Option(
                      name: '--fields',
                      description:
                          'Comma separated list of output fields: all,price,monthlyQuantity,unit,hourlyCost,monthlyCost. Supported by table and html output formats',
                      args: [
                        Arg(
                            name: 'fields',
                            defaultValue: '[monthlyQuantity,unit,monthlyCost]')
                      ]),
                  Option(name: '--format', description: 'Output format', args: [
                    Arg(name: 'format', defaultValue: 'table', suggestions: [
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'diff'),
                      FigSuggestion(name: 'table'),
                      FigSuggestion(name: 'html'),
                      FigSuggestion(name: 'github-comment'),
                      FigSuggestion(name: 'gitlab-comment'),
                      FigSuggestion(name: 'azure-repos-comment'),
                      FigSuggestion(name: 'bitbucket-comment'),
                      FigSuggestion(name: 'slack-message')
                    ])
                  ]),
                  Option(
                      name: ['--out-file', '-o'],
                      description:
                          'Save output to a file, helpful with format flag',
                      args: [Arg(name: 'out-file')]),
                  Option(
                      name: ['--path', '-p'],
                      description:
                          'Path to Infracost JSON files, glob patterns need quotes',
                      isRepeatable: true,
                      args: [
                        Arg(name: 'path', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--show-skipped',
                      description: 'Show unsupported resources')
                ]),
            Subcommand(
                name: 'register',
                description: 'Register for a free Infracost API key'),
            Subcommand(
                name: 'help',
                description: 'Help about any command',
                subcommands: [
                  Subcommand(
                      name: 'breakdown',
                      description: 'Show full breakdown of costs'),
                  Subcommand(
                      name: 'comment',
                      description:
                          'Post an Infracost comment to GitHub, GitLab, Azure Repos or Bitbucket',
                      subcommands: [
                        Subcommand(
                            name: 'azure-repos',
                            description:
                                'Post an Infracost comment to Azure Repos'),
                        Subcommand(
                            name: 'bitbucket',
                            description:
                                'Post an Infracost comment to Bitbucket'),
                        Subcommand(
                            name: 'github',
                            description: 'Post an Infracost comment to GitHub'),
                        Subcommand(
                            name: 'gitlab',
                            description: 'Post an Infracost comment to GitLab')
                      ]),
                  Subcommand(
                      name: 'completion',
                      description: 'Generate shell completion script'),
                  Subcommand(
                      name: 'configure',
                      description: 'Display or change global configuration',
                      subcommands: [
                        Subcommand(
                            name: 'get',
                            description: 'Get global configuration'),
                        Subcommand(
                            name: 'set',
                            description: 'Set global configuration')
                      ]),
                  Subcommand(
                      name: 'diff',
                      description:
                          'Show diff of monthly costs between current and planned state'),
                  Subcommand(
                      name: 'output',
                      description:
                          'Combine and output Infracost JSON files in different formats'),
                  Subcommand(
                      name: 'register',
                      description: 'Register for a free Infracost API key')
                ])
          ],
          options: [
            Option(
                name: '--log-level',
                description: 'Log level',
                isPersistent: true,
                args: [
                  Arg(name: 'log-level', suggestions: [
                    FigSuggestion(name: 'trace'),
                    FigSuggestion(name: 'debug'),
                    FigSuggestion(name: 'info'),
                    FigSuggestion(name: 'warn'),
                    FigSuggestion(name: 'error'),
                    FigSuggestion(name: 'fatal')
                  ])
                ]),
            Option(
                name: '--no-color',
                description: 'Turn off colored output',
                isPersistent: true),
            Option(
                name: ['--help', '-h'],
                description: 'Display help',
                isPersistent: true)
          ])
    ]);
