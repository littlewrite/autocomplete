// Auto-generated from TypeScript source: circleci.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `circleci` CLI
final FigSpec circleciSpec = FigSpec(
  name: 'circleci',
  description: 'CircleCI CLI',
  subcommands: [

    Subcommand(
      name: 'completion',
      description: 'Generate shell completion scripts',
      subcommands: [

        Subcommand(
          name: 'bash',
          description: 'Generate bash completion scripts'
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate zsh completion scripts'
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Operate on build config files',
      subcommands: [

        Subcommand(
          name: 'pack',
          description: 'Pack CircleCI config files into a single file'
        ),
        Subcommand(
          name: 'process',
          description: 'Validate and display extended config'
        ),
        Subcommand(
          name: 'validate',
          description: 'Checks that config is valid'
        )
      ]
    ),
    Subcommand(
      name: 'context',
      description: 'Secure and share environment variables across projects',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new context',
          args: [

            Arg(
              name: 'vcs-type',
              description: 'Your VCS provider, can be either \'github\' or \'bitbucket\'',
              suggestions: [

                FigSuggestion(name: 'github'),
                FigSuggestion(name: 'bitbucket')
              ],
              isOptional: true
            ),
            Arg(
              name: 'org-name',
              description: 'The name of your organization',
              isOptional: true
            ),
            Arg(
              name: 'context-name',
              description: 'The name for your context'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the named context',
          args: [

            Arg(
              name: 'vcs-type',
              description: 'Your VCS provider, can be either \'github\' or \'bitbucket\'',
              suggestions: [

                FigSuggestion(name: 'github'),
                FigSuggestion(name: 'bitbucket')
              ]
            ),
            Arg(
              name: 'org-name',
              description: 'The name of your organization'
            ),
            Arg(
              name: 'context-name',
              description: 'The name for your context'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all contexts',
          args: [

            Arg(
              name: 'vcs-type',
              description: 'Your VCS provider, can be either \'github\' or \'bitbucket\'',
              suggestions: [

                FigSuggestion(name: 'github'),
                FigSuggestion(name: 'bitbucket')
              ]
            ),
            Arg(
              name: 'org-name',
              description: 'The name of your organization'
            )
          ]
        ),
        Subcommand(
          name: 'remove-secret',
          description: 'Remove environment variable from a context',
          args: [

            Arg(
              name: 'vcs-type',
              description: 'Your VCS provider, can be either \'github\' or \'bitbucket\'',
              suggestions: [

                FigSuggestion(name: 'github'),
                FigSuggestion(name: 'bitbucket')
              ]
            ),
            Arg(
              name: 'org-name',
              description: 'The name of your organization'
            ),
            Arg(
              name: 'context-name',
              description: 'The name for your context'
            ),
            Arg(
              name: 'secret name',
              description: 'The name of the env variable to remove'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a context',
          args: [

            Arg(
              name: 'vcs-type',
              description: 'Your VCS provider, can be either \'github\' or \'bitbucket\'',
              suggestions: [

                FigSuggestion(name: 'github'),
                FigSuggestion(name: 'bitbucket')
              ]
            ),
            Arg(
              name: 'org-name',
              description: 'The name of your organization'
            ),
            Arg(
              name: 'context-name',
              description: 'The name for your context'
            )
          ]
        ),
        Subcommand(
          name: 'store-secret',
          description: 'Store environment variables',
          args: [

            Arg(
              name: 'vcs-type',
              description: 'Your VCS provider, can be either \'github\' or \'bitbucket\'',
              suggestions: [

                FigSuggestion(name: 'github'),
                FigSuggestion(name: 'bitbucket')
              ]
            ),
            Arg(
              name: 'org-name',
              description: 'The name of your organization'
            ),
            Arg(
              name: 'context-name',
              description: 'The name for your context'
            ),
            Arg(
              name: 'secret name',
              description: 'The name of the env variable to store'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'diagnostic',
      description: 'Check the status of your CircleCI CLI'
    ),
    Subcommand(
      name: 'follow',
      description: 'Attempt to follow the project for the current git repo'
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command'
    ),
    Subcommand(
      name: 'local',
      description: 'Debug jobs on the local machine',
      subcommands: [

        Subcommand(
          name: 'execute',
          description: 'Run a job in a container on the local machine'
        )
      ]
    ),
    Subcommand(
      name: 'namespace',
      description: 'Operate on namespaces',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a namespace'
        )
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'Open the current project in the browser'
    ),
    Subcommand(
      name: 'orb',
      description: 'Operate on orbs',
      subcommands: [

        Subcommand(
          name: 'add-to-category',
          description: 'Add an orb to a category',
          args: [

            Arg(
              name: 'namespace/orb',
              description: 'The namespace and orb to add to a category'
            ),
            Arg(
              name: 'category name',
              description: 'The name of the category to add the orb to, in quotes'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create an orb in a namespace',
          args: [
            Arg(
            name: 'namespace/orb',
            description: 'Create an orb in the specified namespace'
          )
          ],
          options: [

            Option(
              name: '--private',
              description: 'Specify that this orb is for private use within your org, unlisted from the public registry'
            )
          ]
        ),
        Subcommand(
          name: 'info',
          description: 'Show metadata of an orb',
          args: [
            Arg(
            name: 'orb',
            description: 'The namespace and orb to show metadata for'
          )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize a new orb',
          args: [
            Arg(
            name: 'path',
            description: 'The /path/to/myProject-orb'
          )
          ],
          options: [

            Option(
              name: '--private',
              description: 'Specify that this orb is for private use within your org, unlisted from the public registry'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List orbs',
          args: [
            Arg(
            name: 'namespace',
            description: 'The namespace used for the orb (i.e. circleci)'
          )
          ],
          options: [

            Option(
              name: '--private',
              description: 'Specify that this orb is for private use within your org, unlisted from the public registry'
            ),
            Option(
              name: '--sort',
              description: 'Specify the sorting',
              args: [
                Arg(
                suggestions: [

                  FigSuggestion(name: 'builds'),
                  FigSuggestion(name: 'projects'),
                  FigSuggestion(name: 'orgs')
                ]
              )
              ]
            ),
            Option(
              name: ['-u', '--uncertified'],
              description: 'Include uncertified orbs'
            )
          ]
        ),
        Subcommand(
          name: 'list-categories',
          description: 'List orb categories'
        ),
        Subcommand(
          name: 'pack',
          description: 'Pack an orb with local scripts',
          args: [
            Arg(
            name: 'path',
            description: 'The /path/to/myProject-orb'
          )
          ]
        ),
        Subcommand(
          name: 'process',
          description: 'Validate an orb and print its form after all pre-registration processing is complete',
          args: [
            Arg(
            name: 'path',
            description: 'The path to your orb (use \'-\' for STDIN)'
          )
          ]
        ),
        Subcommand(
          name: 'publish',
          description: 'Publish an orb to the registry',
          args: [

            Arg(
              name: 'path',
              description: 'The /path/to/myProject-orb'
            ),
            Arg(
              name: 'orb',
              description: 'A fully-qualified reference to an orb, i.e. namespace/orb@version'
            )
          ]
        ),
        Subcommand(
          name: 'remove-from-category',
          description: 'Remove an orb from a category',
          args: [

            Arg(
              name: 'namespace/orb',
              description: 'The namespace and orb to add to a category'
            ),
            Arg(
              name: 'category name',
              description: 'The name of the category to add the orb to, in quotes'
            )
          ]
        ),
        Subcommand(
          name: 'source',
          description: 'Show source code of an orb',
          args: [
            Arg(
            name: 'orb',
            description: 'A fully-qualified reference to an orb, i.e. namespace/orb@version'
          )
          ]
        ),
        Subcommand(
          name: 'unlist',
          description: 'Disable/enable an orb\'s listing in the registry',
          args: [

            Arg(
              name: 'namespace/orb',
              description: 'The namespace and orb to unlist/list from the registry'
            ),
            Arg(
              name: 'condition',
              description: 'Use either true|false',
              suggestions: [

                FigSuggestion(name: 'true'),
                FigSuggestion(name: 'false')
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate an orb.yml',
          args: [
            Arg(
            name: 'path',
            description: 'The /path/to/myProject-orb'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'policy',
      description: 'Manage security policies',
      subcommands: [

        Subcommand(
          name: 'decide',
          description: 'Make a decision',
          args: [
            Arg(
            name: 'path',
            description: 'Policy file or directory path'
          )
          ],
          options: [

            Option(
              name: '--input',
              description: 'Path to input file, i.e. ./.circleci/config.yml',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--metafile',
              description: 'Path to decision metadata file',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--owner-id',
              description: 'The id of the policy\'s owner',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--strict',
              description: 'Return non-zero status code for decision resulting in HARD_FAIL'
            ),
            Option(
              name: '--context',
              description: 'Policy context for decision, default is \'config\'',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'diff',
          description: 'Get diff between local and remote policy bundles',
          args: [
            Arg(
            name: 'policy_dir_path',
            description: 'Policy file or directory path'
          )
          ],
          options: [

            Option(
              name: '--context',
              description: 'Policy context for decision, default is \'config\'',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--owner-id',
              description: 'The id of the policy\'s owner',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'eval',
          description: 'Perform raw opa evaluation locally',
          args: [
            Arg(
            name: 'policy_dir_path',
            description: 'Policy file or directory path'
          )
          ],
          options: [

            Option(
              name: '--input',
              description: 'Path to input file, i.e. ./.circleci/config.yml',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--metafile',
              description: 'Path to decision metadata file',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--query',
              description: 'Policy decision query, default is \'data\'',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'fetch',
          description: 'Fetch policy bundle (or a single policy)',
          args: [
            Arg(
            name: 'policy name',
            description: 'Name of policy to fetch'
          )
          ],
          options: [

            Option(
              name: '--context',
              description: 'Policy context for decision, default is \'config\'',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--owner-id',
              description: 'The id of the policy\'s owner'
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Get policy decision logs / decision log (or policy bundle) by decision ID',
          args: [
            Arg(
            name: 'decision ID',
            description: 'Decision ID to get logs for'
          )
          ],
          options: [

            Option(
              name: '--after',
              description: 'Filter decision logs triggered AFTER this datetime',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--before',
              description: 'Filter decision logs triggered BEFORE this datetime',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--branch',
              description: 'Filter decision logs based on branch name',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--context',
              description: 'Policy context for decision, default is \'config\'',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--owner-id',
              description: 'The id of the policy\'s owner',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--out',
              description: 'Specify output file name',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--policy-bundle',
              description: 'Get only the policy bundle for given decisionID'
            ),
            Option(
              name: '--project-id',
              description: 'Filter decision logs based on project-id',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Filter decision logs based on their status',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'push',
          description: 'Push policy bundle (or a single policy)',
          args: [
            Arg(
            name: 'policy_dir_path',
            description: 'Policy file or directory path'
          )
          ],
          options: [

            Option(
              name: '--context',
              description: 'Policy context for decision, default is \'config\'',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--owner-id',
              description: 'The id of the policy\'s owner',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--no-prompt',
              description: 'Removes the prompt'
            )
          ]
        ),
        Subcommand(
          name: 'settings',
          description: 'Get/set policy decision settings (To read settings: run command without any settings flags)',
          options: [

            Option(
              name: '--context',
              description: 'Policy context for decision, default is \'config\''
            ),
            Option(
              name: '--enabled',
              description: 'Enable/disable policy decision evaluation in build pipeline',
              args: [
                Arg(
                name: 'boolean',
                isOptional: true,
                suggestions: [

                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'false')
                ]
              )
              ]
            ),
            Option(
              name: '--owner-id',
              description: 'The id of the policy\'s owner',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'runner',
      description: 'Operate on runners',
      subcommands: [

        Subcommand(
          name: 'instance',
          description: 'Operate on runner instances'
        ),
        Subcommand(
          name: 'resource-class',
          description: 'Operate on runner resource-classes'
        ),
        Subcommand(
          name: 'token',
          description: 'Operate on runner tokens'
        )
      ]
    ),
    Subcommand(
      name: 'setup',
      description: 'Setup CLI with your credentials'
    ),
    Subcommand(
      name: 'update',
      description: 'Update and switch to new CLI version',
      subcommands: [

        Subcommand(
          name: 'check',
          description: 'Check for new CLI version'
        ),
        Subcommand(
          name: 'install',
          description: 'Install new CLI version'
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Display CircleCI CLI version'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for CircleCI',
      isPersistent: true
    ),
    Option(
      name: '--skip-update-check',
      description: 'Skip update check before every command',
      isPersistent: true
    )
  ]
);
