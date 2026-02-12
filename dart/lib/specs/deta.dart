// Auto-generated from TypeScript source: deta.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `deta` CLI
final FigSpec detaSpec = FigSpec(
  name: 'deta',
  description: 'Deta CLI for managing Deta Micros',
  subcommands: [
    Subcommand(
      name: 'login',
      description: 'Trigger the login process for the Deta CLI',
      options: [
        Option(
          name: '-h',
          description: 'Show help for login'
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print the Deta version',
      subcommands: [
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade Deta CLI version',
          options: [
            Option(
              name: '-h',
              description: 'Show help for upgrade'
            ),
            Option(
              name: '-v',
              description: 'Upgrade CLI to specific version',
              args: [
                Arg(
                name: 'Version number'
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for version'
        )
      ]
    ),
    Subcommand(
      name: 'projects',
      description: 'List Deta projects',
      options: [
        Option(
          name: '-h',
          description: 'Show help for projects'
        )
      ]
    ),
    Subcommand(
      name: 'new',
      description: 'Create a new Deta Micro',
      args: [
        Arg(
        name: 'path',
        description: 'Path to new directory for the micro',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for new'
        ),
        Option(
          name: '-n',
          description: 'Create a micro with Node (node14.x) runtime'
        ),
        Option(
          name: '-p',
          description: 'Create a micro with Python (python 3.9) runtime'
        ),
        Option(
          name: '--name',
          description: 'Set the name of the new micro',
          args: [
            Arg(
            name: 'name',
            description: 'Name of the new micro'
          )
          ]
        ),
        Option(
          name: '--project',
          description: 'Set the project under which the micro is created',
          args: [
            Arg(
            name: 'project',
            description: 'Name of the existing project'
          )
          ]
        ),
        Option(
          name: '--runtime',
          description: 'Create a micro with a specified runtime',
          args: [
            Arg(
            name: 'runtime',
            description: 'The selected runtime'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploy new code to a Deta Micro',
      args: [
        Arg(
        name: 'path',
        description: 'Path to project directory',
        template: 'folders',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for deploy'
        )
      ]
    ),
    Subcommand(
      name: 'details',
      description: 'Get detailed information about a specific Deta micro',
      args: [
        Arg(
        name: 'path',
        description: 'Path to project directory',
        template: 'folders',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for details'
        )
      ]
    ),
    Subcommand(
      name: 'watch',
      description: 'Auto-deploy locally saved changes in real time to your Deta micro',
      args: [
        Arg(
        name: 'path',
        description: 'Path to project directory',
        template: 'folders',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for watch'
        )
      ]
    ),
    Subcommand(
      name: 'auth',
      description: 'Change auth settings for a Deta Micro',
      subcommands: [
        Subcommand(
          name: 'disable',
          description: 'Disable HTTP Auth for a Deta Micro',
          options: [
            Option(
              name: '-h',
              description: 'Show help for auth disable'
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable HTTP Auth for a Deta Micro',
          options: [
            Option(
              name: '-h',
              description: 'Show help for auth enable'
            )
          ]
        ),
        Subcommand(
          name: 'create-api-key',
          description: 'Create an API key for a Deta Micro',
          options: [
            Option(
              name: '-h',
              description: 'Show help for auth create-api-key'
            ),
            Option(
              name: '-d',
              description: 'Set the api-key description',
              args: [
                Arg(
                name: 'description',
                description: 'The api-key description'
              )
              ]
            ),
            Option(
              name: '-n',
              description: 'Set the api-key name',
              args: [
                Arg(
                name: 'name',
                description: 'The api-key name'
              )
              ]
            ),
            Option(
              name: '-o',
              description: 'Set the api-key output file',
              args: [
                Arg(
                name: 'outfile',
                description: 'The api-key output file',
                template: 'filepaths'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete-api-key',
          description: 'Delete an API key for a Deta Micro',
          options: [
            Option(
              name: '-h',
              description: 'Show help for auth delete-api-key'
            ),
            Option(
              name: '-n',
              description: 'Set the api-key name',
              args: [
                Arg(
                name: 'name',
                description: 'The api-key name'
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for auth'
        )
      ]
    ),
    Subcommand(
      name: 'pull',
      description: 'Pull the latest deployed code of a Deta Micro to your local machine',
      options: [
        Option(
          name: '-h',
          description: 'Show help for pull'
        ),
        Option(
          name: '-f',
          description: 'Force the overwrite of existing files'
        )
      ]
    ),
    Subcommand(
      name: 'clone',
      description: 'Clone a Deta Micro',
      args: [
        Arg(
        name: 'path',
        description: 'Path to new directory for the clone',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for clone'
        ),
        Option(
          name: '-n',
          description: 'The name of the micro to be cloned',
          args: [
            Arg(
            name: 'name',
            description: 'Name of the micro'
          )
          ]
        ),
        Option(
          name: '-p',
          description: 'The name of the project with the micro to be cloned',
          args: [
            Arg(
            name: 'project',
            description: 'Name of the project'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a Deta Micro\'s name or environment variables',
      options: [
        Option(
          name: '-h',
          description: 'Show help for pull'
        ),
        Option(
          name: '-n',
          description: 'The new name of the micro',
          args: [
            Arg(
            name: 'name',
            description: 'New name for the micro'
          )
          ]
        ),
        Option(
          name: '-r',
          description: 'The new runtime of the micro',
          args: [
            Arg(
            name: 'runtime',
            description: 'New runtime for the micro'
          )
          ]
        ),
        Option(
          name: '-e',
          description: 'The new env file of the micro',
          args: [
            Arg(
            name: 'env',
            description: 'Path to env file',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'visor',
      description: 'Change the Visor settings for a Deta Micro',
      subcommands: [
        Subcommand(
          name: 'open',
          description: 'Open Micro\'s visor page in the browser',
          options: [
            Option(
              name: '-h',
              description: 'Show help for visor open'
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable Visor for a Deta Micro',
          options: [
            Option(
              name: '-h',
              description: 'Show help for visor enable'
            )
          ]
        ),
        Subcommand(
          name: 'disable',
          description: 'Disable Visor for a Deta Micro',
          options: [
            Option(
              name: '-h',
              description: 'Show help for visor disable'
            )
          ]
        )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for visor'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run a Deta Micro from the CLI',
      args: [
        Arg(
        name: 'action',
        description: 'The action to be performed on the micro. See docs for full examples and details'
      )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for run'
        ),
        Option(
          name: '-l',
          description: 'Show the micro logs'
        )
      ]
    ),
    Subcommand(
      name: 'cron',
      description: 'Change cron settings for a Deta Micro',
      subcommands: [
        Subcommand(
          name: 'set',
          description: 'Set Deta Micro to run on a schedule',
          args: [
            Arg(
            name: 'expression',
            description: 'The cron expression to be set'
          )
          ],
          options: [
            Option(
              name: '-h',
              description: 'Show help for cron set'
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a schedule from a Deta Micro',
          args: [
            Arg(
            name: 'expression',
            description: 'The cron expression to be removed'
          )
          ],
          options: [
            Option(
              name: '-h',
              description: 'Show help for cron remove'
            )
          ]
        )
      ],
      options: [
        Option(
          name: '-h',
          description: 'Show help for cron'
        )
      ]
    )
  ],
  options: [
    Option(
      name: '-h',
      description: 'Show help for deta'
    )
  ]
);
