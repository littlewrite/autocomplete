// Auto-generated from TypeScript source: ampx.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ampx` CLI
final FigSpec ampxSpec = FigSpec(
  name: 'ampx',
  description: 'CLI for Amplify Gen 2',
  subcommands: [

    Subcommand(
      name: 'sandbox',
      description: 'Deploy to your personal cloud sandbox',
      options: [

        Option(
          name: '--dir-to-watch',
          description: 'Directory to watch for file changes',
          args: [
            Arg(
            name: 'directory',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: '--exclude',
          description: 'Paths or glob patterns to ignore',
          isRepeatable: true,
          args: [
            Arg(
            name: 'patter'
          )
          ]
        ),
        Option(
          name: '--identifier',
          description: 'Name to distinguish between sandbox environments',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--outputs-out-dir',
          description: 'Directory where client config file is written',
          args: [
            Arg(
            name: 'directory',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: '--outputs-format',
          description: 'Format of the client config file',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'dart')
            ]
          )
          ]
        ),
        Option(
          name: '--outputs-version',
          description: 'Version of the configuration',
          args: [
            Arg(
            name: 'version',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1')
            ]
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'AWS profile name',
          args: [
            Arg(
            name: 'profil'
          )
          ]
        ),
        Option(
          name: '--stream-function-logs',
          description: 'Stream function execution logs',
          args: [
            Arg(
            name: 'boolean',
            suggestions: [

              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: '--logs-filter',
          description: 'Regex pattern to filter logs',
          isRepeatable: true,
          args: [
            Arg(
            name: 'patter'
          )
          ]
        ),
        Option(
          name: '--logs-out-file',
          description: 'File to append streaming logs',
          args: [
            Arg(
            name: 'file',
            template: 'filepath'
          )
          ]
        )
      ],
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete your personal cloud sandbox',
          options: [

            Option(
              name: '--name',
              description: 'Name to distinguish between sandbox environments',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile',
              description: 'AWS profile name',
              args: [
                Arg(
                name: 'profil'
              )
              ]
            ),
            Option(
              name: ['-y', '--yes'],
              description: 'Do not ask for confirmation before deleting'
            )
          ]
        ),
        Subcommand(
          name: 'secret',
          description: 'Manage backend secrets for your personal cloud sandbox',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Set a secret',
              args: [
                Arg(
                name: 'secret_nam'
              )
              ],
              options: [

                Option(
                  name: '--profile',
                  description: 'AWS profile name',
                  args: [
                    Arg(
                    name: 'profil'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a secret',
              args: [
                Arg(
                name: 'secret_nam'
              )
              ],
              options: [

                Option(
                  name: '--profile',
                  description: 'AWS profile name',
                  args: [
                    Arg(
                    name: 'profil'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all available secrets',
              options: [

                Option(
                  name: '--profile',
                  description: 'AWS profile name',
                  args: [
                    Arg(
                    name: 'profil'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'View details of a secret',
              args: [
                Arg(
                name: 'secret_nam'
              )
              ],
              options: [

                Option(
                  name: '--profile',
                  description: 'AWS profile name',
                  args: [
                    Arg(
                    name: 'profil'
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
      name: 'generate',
      description: 'Generate supplemental information or code',
      subcommands: [

        Subcommand(
          name: 'outputs',
          description: 'Generate backend outputs file',
          options: [

            Option(
              name: '--profile',
              description: 'AWS profile name',
              args: [
                Arg(
                name: 'profil'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Format of the configuration',
              args: [
                Arg(
                name: 'format',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'dart')
                ]
              )
              ]
            ),
            Option(
              name: '--out-dir',
              description: 'Directory where config is written',
              args: [
                Arg(
                name: 'directory',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--outputs-version',
              description: 'Version of the configuration',
              args: [
                Arg(
                name: 'version',
                suggestions: [

                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1')
                ]
              )
              ]
            ),
            Option(
              name: '--branch',
              description: 'Git branch name',
              args: [
                Arg(
                name: 'branch_nam'
              )
              ]
            ),
            Option(
              name: '--app-id',
              description: 'Amplify App ID',
              args: [
                Arg(
                name: 'app_i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'graphql-client-code',
          description: 'Generate GraphQL statements and types',
          options: [

            Option(
              name: '--out',
              description: 'Directory where config is written',
              args: [
                Arg(
                name: 'directory',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Format of the GraphQL client code',
              args: [
                Arg(
                name: 'format',
                suggestions: [

                  FigSuggestion(name: 'modelgen'),
                  FigSuggestion(name: 'graphql-codegen'),
                  FigSuggestion(name: 'introspection')
                ]
              )
              ]
            ),
            Option(
              name: '--model-target',
              description: 'Modelgen export target',
              args: [
                Arg(
                name: 'target',
                suggestions: [

                  FigSuggestion(name: 'java'),
                  FigSuggestion(name: 'swift'),
                  FigSuggestion(name: 'javascript'),
                  FigSuggestion(name: 'typescript'),
                  FigSuggestion(name: 'dart')
                ]
              )
              ]
            ),
            Option(
              name: '--statement-target',
              description: 'Graphql codegen statement export target',
              args: [
                Arg(
                name: 'target',
                suggestions: [

                  FigSuggestion(name: 'javascript'),
                  FigSuggestion(name: 'graphql'),
                  FigSuggestion(name: 'flow'),
                  FigSuggestion(name: 'typescript'),
                  FigSuggestion(name: 'angular')
                ]
              )
              ]
            ),
            Option(
              name: '--type-target',
              description: 'Graphql-codegen type export target',
              args: [
                Arg(
                name: 'target',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'swift'),
                  FigSuggestion(name: 'typescript'),
                  FigSuggestion(name: 'flow'),
                  FigSuggestion(name: 'scala'),
                  FigSuggestion(name: 'flow-modern'),
                  FigSuggestion(name: 'angular')
                ]
              )
              ]
            ),
            Option(
              name: '--all',
              description: 'Show hidden options'
            ),
            Option(
              name: '--profile',
              description: 'AWS profile name',
              args: [
                Arg(
                name: 'profil'
              )
              ]
            ),
            Option(
              name: '--debug',
              description: 'Print debug logs to the console'
            ),
            Option(
              name: '--statement-max-depth',
              description: 'Maximum depth of the generated GraphQL statements',
              args: [
                Arg(
                name: 'intege'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'forms',
          description: 'Generate React form components',
          options: [

            Option(
              name: '--out-dir',
              description: 'Directory where generated forms are written',
              args: [
                Arg(
                name: 'directory',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--models',
              description: 'Model names to generate',
              isRepeatable: true,
              args: [
                Arg(
                name: 'mode'
              )
              ]
            ),
            Option(
              name: '--profile',
              description: 'AWS profile name',
              args: [
                Arg(
                name: 'profil'
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--stack',
          description: 'CloudFormation stack name',
          args: [
            Arg(
            name: 'stack_nam'
          )
          ]
        ),
        Option(
          name: '--app-id',
          description: 'Amplify App ID',
          args: [
            Arg(
            name: 'app_i'
          )
          ]
        ),
        Option(
          name: '--branch',
          description: 'Git branch name',
          args: [
            Arg(
            name: 'branch_nam'
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'AWS profile name',
          args: [
            Arg(
            name: 'profil'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'info',
      description: 'Generate system information for troubleshooting'
    ),
    Subcommand(
      name: 'pipeline-deploy',
      description: 'Deploy Amplify project in a CI/CD pipeline',
      options: [

        Option(
          name: '--branch',
          description: 'Name of the git branch being deployed',
          args: [
            Arg(
            name: 'branch_nam'
          )
          ]
        ),
        Option(
          name: '--app-id',
          description: 'The app id of the target Amplify app',
          args: [
            Arg(
            name: 'app_i'
          )
          ]
        ),
        Option(
          name: '--outputs-out-dir',
          description: 'Directory where client config file is written',
          args: [
            Arg(
            name: 'directory',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: '--outputs-version',
          description: 'Version of the configuration',
          args: [
            Arg(
            name: 'version',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1')
            ]
          )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--help',
      description: 'Display help information'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Display version information'
    ),
    Option(
      name: '--profile',
      description: 'AWS profile name',
      args: [
        Arg(
        name: 'profil'
      )
      ]
    )
  ]
);
