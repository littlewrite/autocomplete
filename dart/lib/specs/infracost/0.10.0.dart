// Auto-generated from TypeScript source: 0.10.0.ts
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
                name: 'auth',
                description:
                    'Get a free API key, or log in to your existing account',
                subcommands: [
                  Subcommand(
                      name: 'login',
                      description:
                          'Authenticate the CLI with your Infracost account')
                ]),
            Subcommand(
                name: 'breakdown',
                description: 'Show breakdown of costs',
                options: [
                  Option(
                      name: '--config-file',
                      description:
                          'Path to Infracost config file. Cannot be used with path, terraform* or usage-file flags',
                      args: [
                        Arg(name: 'config-file', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--exclude-path',
                      description:
                          'Paths of directories to exclude, glob patterns need quotes',
                      args: [Arg(name: 'exclude-pat')]),
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
                      args: [
                        Arg(
                            name: 'format',
                            defaultValue: 'table',
                            suggestions: [
                              FigSuggestion(name: 'json'),
                              FigSuggestion(name: 'table'),
                              FigSuggestion(name: 'html')
                            ])
                      ]),
                  Option(
                      name: '--git-diff-target',
                      description:
                          'Show only costs that have git changes compared to the provided branch. Use the name of the current branch to fetch changes from the last two commits',
                      args: [
                        Arg(name: 'git-diff-target', defaultValue: 'maste')
                      ]),
                  Option(
                      name: '--include-all-paths',
                      description:
                          'Set project auto-detection to use all subdirectories in given path'),
                  Option(
                      name: '--no-cache',
                      description: 'Don\'t attempt to cache Terraform plans'),
                  Option(
                      name: '--out-file',
                      description:
                          'Save output to a file, helpful with format flag',
                      args: [Arg(name: 'out-fil')]),
                  Option(
                      name: ['--path', '-p'],
                      description:
                          'Path to the Terraform directory or JSON/plan file',
                      args: [
                        Arg(name: 'path', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--project-name',
                      description:
                          'Name of project in the output. Defaults to path or git repo name',
                      args: [Arg(name: 'project-nam')]),
                  Option(
                      name: '--show-skipped',
                      description: 'List unsupported and free resources'),
                  Option(
                      name: '--sync-usage-file',
                      description:
                          'Sync usage-file with missing resources, needs usage-file too (experimental)'),
                  Option(
                      name: '--terraform-force-cli',
                      description:
                          'Generate the Terraform plan JSON using the Terraform CLI. This may require cloud credentials'),
                  Option(
                      name: '--terraform-init-flags',
                      description:
                          'Flags to pass to \'terraform init\'. Applicable with --terraform-force-cli',
                      args: [Arg(name: 'terraform-init-flag')]),
                  Option(
                      name: '--terraform-plan-flags',
                      description:
                          'Flags to pass to \'terraform plan\'. Applicable with --terraform-force-cli',
                      args: [Arg(name: 'terraform-plan-flag')]),
                  Option(
                      name: '--terraform-use-state',
                      description:
                          'Use Terraform state instead of generating a plan. Applicable with --terraform-force-cli'),
                  Option(
                      name: '--terraform-var',
                      description:
                          'Set value for an input variable, similar to Terraform\'s -var flag',
                      args: [Arg(name: 'terraform-va')]),
                  Option(
                      name: '--terraform-var-file',
                      description:
                          'Load variable files, similar to Terraform\'s -var-file flag. Provided files must be relative to the --path flag',
                      args: [Arg(name: 'terraform-var-fil')]),
                  Option(
                      name: '--terraform-workspace',
                      description:
                          'Terraform workspace to use. Applicable when path is a Terraform directory',
                      args: [Arg(name: 'terraform-workspac')]),
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
                            name: '--additional-comment-data-path',
                            description:
                                'Path to additional comment text (experimental)',
                            args: [Arg(name: 'additional-comment-data-pat')]),
                        Option(
                            name: '--azure-access-token',
                            description: 'Azure DevOps access token',
                            args: [Arg(name: 'azure-access-toke')]),
                        Option(
                            name: '--behavior',
                            description: 'Behavior when posting comment',
                            args: [
                              Arg(
                                  name: 'behavior',
                                  defaultValue: 'update',
                                  suggestions: [
                                    FigSuggestion(
                                        name: 'update',
                                        description: 'Update latest comment'),
                                    FigSuggestion(
                                        name: 'new',
                                        description: 'Create a new comment'),
                                    FigSuggestion(
                                        name: 'hide-and-new',
                                        description:
                                            'Hide previous matching comments and create a new comment'),
                                    FigSuggestion(
                                        name: 'delete-and-new',
                                        description:
                                            'Delete previous matching comments and create a new comment')
                                  ])
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
                            args: [Arg(name: 'policy-pat')]),
                        Option(
                            name: '--pull-request',
                            description:
                                'Pull request number to post comment on',
                            args: [
                              Arg(name: 'pull-request', defaultValue: '')
                            ]),
                        Option(
                            name: '--repo-url',
                            description:
                                'Repository URL, e.g. https://dev.azure.com/my-org/my-project/_git/my-repo',
                            args: [Arg(name: 'repo-ur')]),
                        Option(
                            name: '--show-all-projects',
                            description:
                                'Show all projects in the table of the comment output'),
                        Option(
                            name: '--show-changed',
                            description:
                                'Show only projects in the table that have code changes'),
                        Option(
                            name: '--show-skipped',
                            description: 'List unsupported and free resources'),
                        Option(
                            name: '--skip-no-diff',
                            description:
                                'Skip posting comment if there are no resource changes. Only applies to update, hide-and-new, and delete-and-new behaviors'),
                        Option(
                            name: '--tag',
                            description:
                                'Customize hidden markdown tag used to detect comments posted by Infracost',
                            args: [Arg(name: 'ta')])
                      ]),
                  Subcommand(
                      name: 'bitbucket',
                      description: 'Post an Infracost comment to Bitbucket',
                      options: [
                        Option(
                            name: '--additional-comment-data-path',
                            description:
                                'Path to additional comment text (experimental)',
                            args: [Arg(name: 'additional-comment-data-pat')]),
                        Option(
                            name: '--behavior',
                            description: 'Behavior when posting comment',
                            args: [
                              Arg(
                                  name: 'behavior',
                                  defaultValue: 'update',
                                  suggestions: [
                                    FigSuggestion(
                                        name: 'update',
                                        description: 'Update latest comment'),
                                    FigSuggestion(
                                        name: 'new',
                                        description: 'Create a new comment'),
                                    FigSuggestion(
                                        name: 'delete-and-new',
                                        description:
                                            'Delete previous matching comments and create a new comment')
                                  ])
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
                            args: [Arg(name: 'bitbucket-toke')]),
                        Option(
                            name: '--commit',
                            description:
                                'Commit SHA to post comment on, mutually exclusive with pull-request. Not available when bitbucket-server-url is set',
                            exclusiveOn: ['--pull-request'],
                            args: [Arg(name: 'commi')]),
                        Option(
                            name: '--dry-run',
                            description:
                                'Generate comment without actually posting to Bitbucket'),
                        Option(
                            name: '--exclude-cli-output',
                            description:
                                'Exclude CLI output so comment has just the summary table'),
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
                            args: [Arg(name: 'policy-pat')]),
                        Option(
                            name: '--pull-request',
                            description:
                                'Pull request number to post comment on',
                            exclusiveOn: [
                              '--commit'
                            ],
                            args: [
                              Arg(name: 'pull-request', defaultValue: '')
                            ]),
                        Option(
                            name: '--repo',
                            description: 'Repository in format workspace/repo',
                            args: [Arg(name: 'workspace/rep')]),
                        Option(
                            name: '--show-all-projects',
                            description:
                                'Show all projects in the table of the comment output'),
                        Option(
                            name: '--show-changed',
                            description:
                                'Show only projects in the table that have code changes'),
                        Option(
                            name: '--show-skipped',
                            description: 'List unsupported and free resources'),
                        Option(
                            name: '--skip-no-diff',
                            description:
                                'Skip posting comment if there are no resource changes. Only applies to update, hide-and-new, and delete-and-new behaviors'),
                        Option(
                            name: '--tag',
                            description:
                                'Customize special text used to detect comments posted by Infracost (placed at the bottom of a comment)',
                            args: [Arg(name: 'ta')])
                      ]),
                  Subcommand(
                      name: 'github',
                      description: 'Post an Infracost comment to GitHub',
                      options: [
                        Option(
                            name: '--additional-comment-data-path',
                            description:
                                'Path to additional comment text (experimental)',
                            args: [Arg(name: 'additional-comment-data-pat')]),
                        Option(
                            name: '--behavior',
                            description: 'Behavior when posting comment',
                            args: [
                              Arg(
                                  name: 'behavior',
                                  defaultValue: 'update',
                                  suggestions: [
                                    FigSuggestion(
                                        name: 'update',
                                        description: 'Update latest comment'),
                                    FigSuggestion(
                                        name: 'new',
                                        description: 'Create a new comment'),
                                    FigSuggestion(
                                        name: 'hide-and-new',
                                        description:
                                            'Hide previous matching comments and create a new comment'),
                                    FigSuggestion(
                                        name: 'delete-and-new',
                                        description:
                                            'Delete previous matching comments and create a new comment')
                                  ])
                            ]),
                        Option(
                            name: '--commit',
                            description:
                                'Commit SHA to post comment on, mutually exclusive with pull-request',
                            exclusiveOn: ['--pull-request'],
                            args: [Arg(name: 'commi')]),
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
                            name: '--github-tls-cert-file',
                            description:
                                'Path to optional client certificate file when communicating with GitHub Enterprise API',
                            args: [Arg(name: 'github-tls-cert-fil')]),
                        Option(
                            name: '--github-tls-insecure-skip-verify',
                            description:
                                'Skip TLS certificate checks for GitHub Enterprise API'),
                        Option(
                            name: '--github-tls-key-file',
                            description:
                                'Path to optional client key file when communicating with GitHub Enterprise API',
                            args: [Arg(name: 'github-tls-key-fil')]),
                        Option(
                            name: '--github-token',
                            description: 'GitHub token',
                            args: [Arg(name: 'github-toke')]),
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
                            args: [Arg(name: 'policy-pat')]),
                        Option(
                            name: '--pull-request',
                            description:
                                'Pull request number to post comment on, mutually exclusive with commit',
                            exclusiveOn: [
                              '--commit'
                            ],
                            args: [
                              Arg(name: 'pull-request', defaultValue: '')
                            ]),
                        Option(
                            name: '--repo',
                            description: 'Repository in format owner/repo',
                            args: [Arg(name: 'owner/rep')]),
                        Option(
                            name: '--show-all-projects',
                            description:
                                'Show all projects in the table of the comment output'),
                        Option(
                            name: '--show-changed',
                            description:
                                'Show only projects in the table that have code changes'),
                        Option(
                            name: '--show-skipped',
                            description: 'List unsupported and free resources'),
                        Option(
                            name: '--skip-no-diff',
                            description:
                                'Skip posting comment if there are no resource changes. Only applies to update, hide-and-new, and delete-and-new behaviors'),
                        Option(
                            name: '--tag',
                            description:
                                'Customize hidden markdown tag used to detect comments posted by Infracost',
                            args: [Arg(name: 'ta')])
                      ]),
                  Subcommand(
                      name: 'gitlab',
                      description: 'Post an Infracost comment to GitLab',
                      options: [
                        Option(
                            name: '--additional-comment-data-path',
                            description:
                                'Path to additional comment text (experimental)',
                            args: [Arg(name: 'additional-comment-data-pat')]),
                        Option(
                            name: '--behavior',
                            description: 'Behavior when posting comment',
                            args: [
                              Arg(
                                  name: 'behavior',
                                  defaultValue: 'update',
                                  suggestions: [
                                    FigSuggestion(
                                        name: 'update',
                                        description: 'Update latest comment'),
                                    FigSuggestion(
                                        name: 'new',
                                        description: 'Create a new comment'),
                                    FigSuggestion(
                                        name: 'delete-and-new',
                                        description:
                                            'Delete previous matching comments and create a new comment')
                                  ])
                            ]),
                        Option(
                            name: '--commit',
                            description:
                                'Commit SHA to post comment on, mutually exclusive with merge-request',
                            exclusiveOn: ['--merge-request'],
                            args: [Arg(name: 'commi')]),
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
                            args: [Arg(name: 'gitlab-toke')]),
                        Option(
                            name: '--merge-request',
                            description:
                                'Merge request number to post comment on, mutually exclusive with commit',
                            exclusiveOn: [
                              '--commit'
                            ],
                            args: [
                              Arg(name: 'merge-request', defaultValue: '')
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
                            args: [Arg(name: 'policy-pat')]),
                        Option(
                            name: '--repo',
                            description: 'Repository in format owner/repo',
                            args: [Arg(name: 'owner/rep')]),
                        Option(
                            name: '--show-all-projects',
                            description:
                                'Show all projects in the table of the comment output'),
                        Option(
                            name: '--show-changed',
                            description:
                                'Show only projects in the table that have code changes'),
                        Option(
                            name: '--show-skipped',
                            description: 'List unsupported and free resources'),
                        Option(
                            name: '--skip-no-diff',
                            description:
                                'Skip posting comment if there are no resource changes. Only applies to update, hide-and-new, and delete-and-new behaviors'),
                        Option(
                            name: '--tag',
                            description:
                                'Customize hidden markdown tag used to detect comments posted by Infracost',
                            args: [Arg(name: 'ta')])
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
                      args: [Arg(name: 'shel')])
                ]),
            Subcommand(
                name: 'configure',
                description: 'Display or change global configuration',
                subcommands: [
                  Subcommand(
                      name: 'get',
                      description: 'Get global configuration',
                      subcommands: [
                        Subcommand(name: 'api_key'),
                        Subcommand(name: 'currency'),
                        Subcommand(name: 'pricing_api_endpoint'),
                        Subcommand(name: 'enable_dashboard'),
                        Subcommand(name: 'enable_cloud'),
                        Subcommand(name: 'disable_hcl'),
                        Subcommand(name: 'tls_insecure_skip_verify'),
                        Subcommand(name: 'tls_ca_cert_file')
                      ]),
                  Subcommand(
                      name: 'set',
                      description: 'Set global configuration',
                      subcommands: [
                        Subcommand(
                            name: 'api_key', args: [Arg(name: 'api_ke')]),
                        Subcommand(
                            name: 'currency',
                            description: 'Currency code (ISO 4217)',
                            args: [Arg(name: 'currency')]),
                        Subcommand(
                            name: 'pricing_api_endpoint',
                            args: [Arg(name: 'Pricing API endpoin')]),
                        Subcommand(name: 'enable_dashboard'),
                        Subcommand(name: 'enable_cloud'),
                        Subcommand(name: 'disable_hcl'),
                        Subcommand(name: 'tls_insecure_skip_verify', args: [
                          Arg(name: 'tls_insecure_skip_verify', suggestions: [
                            FigSuggestion(name: 'true'),
                            FigSuggestion(name: 'false')
                          ])
                        ]),
                        Subcommand(name: 'tls_ca_cert_file')
                      ])
                ]),
            Subcommand(
                name: 'diff',
                description:
                    'Show diff of monthly costs between current and planned state',
                options: [
                  Option(
                      name: '--compare-to',
                      description:
                          'Path to Infracost JSON file to compare against',
                      args: [Arg(name: 'compare-t')]),
                  Option(
                      name: '--config-file',
                      description:
                          'Path to Infracost config file. Cannot be used with path, terraform* or usage-file flags',
                      args: [
                        Arg(name: 'config-file', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--exclude-path',
                      description:
                          'Paths of directories to exclude, glob patterns need quotes',
                      args: [Arg(name: 'exclude-pat')]),
                  Option(
                      name: '--format',
                      description: 'Output format: json, diff',
                      args: [Arg(name: 'format', defaultValue: 'dif')]),
                  Option(
                      name: '--git-diff-target',
                      description:
                          'Show only costs that have git changes compared to the provided branch. Use the name of the current branch to fetch changes from the last two commits',
                      args: [
                        Arg(name: 'git-diff-target', defaultValue: 'maste')
                      ]),
                  Option(
                      name: '--include-all-paths',
                      description:
                          'Set project auto-detection to use all subdirectories in given path'),
                  Option(
                      name: '--no-cache',
                      description: 'Don\'t attempt to cache Terraform plans'),
                  Option(
                      name: '--out-file',
                      description: 'Save output to a file',
                      args: [Arg(name: 'out-fil')]),
                  Option(
                      name: ['--path', '-p'],
                      description:
                          'Path to the Terraform directory or JSON/plan file',
                      args: [
                        Arg(name: 'path', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--project-name',
                      description:
                          'Name of project in the output. Defaults to path or git repo name',
                      args: [Arg(name: 'project-nam')]),
                  Option(
                      name: '--show-skipped',
                      description: 'List unsupported and free resources'),
                  Option(
                      name: '--sync-usage-file',
                      description:
                          'Sync usage-file with missing resources, needs usage-file too (experimental)'),
                  Option(
                      name: '--terraform-force-cli',
                      description:
                          'Generate the Terraform plan JSON using the Terraform CLI. This may require cloud credentials'),
                  Option(
                      name: '--terraform-init-flags',
                      description:
                          'Flags to pass to \'terraform init\'. Applicable with --terraform-force-cli',
                      args: [Arg(name: 'terraform-init-flag')]),
                  Option(
                      name: '--terraform-plan-flags',
                      description:
                          'Flags to pass to \'terraform plan\'. Applicable with --terraform-force-cli',
                      args: [Arg(name: 'terraform-plan-flag')]),
                  Option(
                      name: '--terraform-var',
                      description:
                          'Set value for an input variable, similar to Terraform\'s -var flag',
                      args: [Arg(name: 'terraform-va')]),
                  Option(
                      name: '--terraform-var-file',
                      description:
                          'Load variable files, similar to Terraform\'s -var-file flag. Provided files must be relative to the --path flag',
                      args: [Arg(name: 'terraform-var-fil')]),
                  Option(
                      name: '--terraform-workspace',
                      description:
                          'Terraform workspace to use. Applicable when path is a Terraform directory',
                      args: [Arg(name: 'terraform-workspac')]),
                  Option(
                      name: '--usage-file',
                      description:
                          'Path to Infracost usage file that specifies values for usage-based resources',
                      args: [
                        Arg(name: 'usage-file', template: ['filepaths'])
                      ])
                ]),
            Subcommand(
                name: 'generate',
                description: 'Generate configuration to help run Infracost',
                subcommands: [
                  Subcommand(
                      name: 'config',
                      description:
                          'Generate Infracost config file from a template file',
                      options: [
                        Option(
                            name: '--out-file',
                            description: 'Save output to a file',
                            args: [Arg(name: 'out-fil')]),
                        Option(
                            name: '--repo-path',
                            description:
                                'Path to the Terraform repo or directory you want to run the template file on',
                            args: [Arg(name: 'repo-path', defaultValue: '')]),
                        Option(
                            name: '--template',
                            description:
                                'Infracost template string that will generate the config-file yaml output',
                            args: [Arg(name: 'templat')]),
                        Option(
                            name: '--template-path',
                            description:
                                'Path to the Infracost template file that will generate the config-file yaml output',
                            args: [Arg(name: 'template-pat')])
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
                  Option(
                      name: '--format',
                      description:
                          'Output format: json, diff, table, html, github-comment, gitlab-comment, azure-repos-comment, bitbucket-comment, bitbucket-comment-summary, slack-message',
                      args: [Arg(name: 'format', defaultValue: 'tabl')]),
                  Option(
                      name: ['--out-file', '-o'],
                      description:
                          'Save output to a file, helpful with format flag',
                      args: [Arg(name: 'out-fil')]),
                  Option(
                      name: ['--path', '-p'],
                      description:
                          'Path to Infracost JSON files, glob patterns need quotes',
                      isRepeatable: true,
                      args: [
                        Arg(name: 'path', template: ['filepaths'])
                      ]),
                  Option(
                      name: '--show-all-projects',
                      description:
                          'Show all projects in the table of the comment output'),
                  Option(
                      name: '--show-skipped',
                      description: 'List unsupported and free resources')
                ]),
            Subcommand(
                name: 'upload',
                description: 'Upload an Infracost JSON file to Infracost Cloud',
                options: [
                  Option(
                      name: '--path',
                      description: 'Path to Infracost JSON file',
                      args: [
                        Arg(
                            name: 'path',
                            defaultValue: 'p',
                            template: ['filepaths'])
                      ])
                ]),
            Subcommand(
                name: 'help',
                description: 'Help about any command',
                subcommands: [
                  Subcommand(
                      name: 'auth',
                      description:
                          'Get a free API key, or log in to your existing account',
                      subcommands: [
                        Subcommand(
                            name: 'login',
                            description:
                                'Authenticate the CLI with your Infracost account')
                      ]),
                  Subcommand(
                      name: 'breakdown',
                      description: 'Show breakdown of costs'),
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
                      name: 'generate',
                      description:
                          'Generate configuration to help run Infracost',
                      subcommands: [
                        Subcommand(
                            name: 'config',
                            description:
                                'Generate Infracost config file from a template file')
                      ]),
                  Subcommand(
                      name: 'output',
                      description:
                          'Combine and output Infracost JSON files in different formats'),
                  Subcommand(
                      name: 'upload',
                      description:
                          'Upload an Infracost JSON file to Infracost Cloud')
                ])
          ],
          options: [
            Option(
                name: '--debug-report',
                description:
                    'Generate a debug report file which can be sent to Infracost team',
                isPersistent: true),
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
