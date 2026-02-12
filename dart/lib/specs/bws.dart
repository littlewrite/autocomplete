// Auto-generated from TypeScript source: bws.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bws` CLI
final FigSpec bwsSpec = FigSpec(
  name: 'bws',
  subcommands: [
    Subcommand(
      name: 'config',
      description: 'Specify server settings for the Secrets Manager CLI',
      args: [
        Arg(
        name: 'Setting',
        description: 'Server setting to specify',
        suggestions: [
          FigSuggestion(
            name: 'server-base',
            description: 'Base server URL'
          ),
          FigSuggestion(
            name: 'server-api',
            description: 'Server API endpoint URL'
          ),
          FigSuggestion(
            name: 'server-identity',
            description: 'Server Identity endpoint URL'
          ),
          FigSuggestion(
            name: 'state-file-dir',
            description: 'Server file storage location'
          )
        ]
      )
      ],
      options: [
        Option(
          name: '--profile',
          description: 'Save specified value(s) to an alternate profile',
          args: [
            Arg(
            name: 'profile',
            description: 'Profile name to save to'
          )
          ]
        ),
        Option(
          name: '--config-file',
          description: 'Save specified value(s) to an alternative config file',
          args: [
            Arg(
            name: 'Config file path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for login command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'completions',
      description: 'Generate shell completions',
      args: [
        Arg(
        name: 'SHELL',
        description: 'Shell to generate completions for',
        suggestions: [
          FigSuggestion(
            name: 'bash',
            description: 'Generate shell completions for bash'
          ),
          FigSuggestion(
            name: 'elvish',
            description: 'Generate shell completions for elvish'
          ),
          FigSuggestion(
            name: 'fish',
            description: 'Generate shell completions for fish'
          ),
          FigSuggestion(
            name: 'powershell',
            description: 'Generate shell completions for powershell'
          ),
          FigSuggestion(
            name: 'zsh',
            description: 'Generate shell completions for zsh'
          )
        ]
      )
      ],
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for logout command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'project',
      description: 'Access, manipulate and create projects',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a new project',
          args: [
            Arg(
            name: 'NAME',
            description: 'Name of project to be created'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete one or more existing projects',
          args: [
            Arg(
            name: 'PROJECT_ID(s)',
            description: 'ID(s) of project(s) to delete'
          )
          ]
        ),
        Subcommand(
          name: 'edit',
          description: 'Change the name of an existing project',
          args: [
            Arg(
              name: '--name',
              description: 'New project name'
            ),
            Arg(
              name: 'PROJECT_ID',
              description: 'ID of project to edit'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Retrieve a specific project accessible to this service account',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'ID of project to retrieve'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List projects accessible to this service account'
        )
      ],
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Access, manipulate and create projects',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'secret',
      description: 'Access, manipulate and create secrets',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a new secret',
          args: [
            Arg(
              name: 'KEY',
              description: 'Secret Key'
            ),
            Arg(
              name: 'VALUE',
              description: 'Secret Value'
            ),
            Arg(
              name: 'PROJECT_ID',
              description: 'The ID of the project this secret will be added to'
            )
          ],
          options: [
            Option(
              name: '--note',
              description: 'Optional notes about this secret',
              insertValue: '--note \'{cursor}\''
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing secret',
          args: [
            Arg(
            name: 'SECRET_IDS',
            description: 'Delete one or more secrets designated by SECRET_IDS'
          )
          ]
        ),
        Subcommand(
          name: 'edit',
          description: 'Edit an existing secret',
          args: [
            Arg(
            name: 'SECRET_ID',
            description: 'ID of secret to be edited'
          )
          ],
          options: [
            Option(
              name: 'key',
              description: 'Edit the Secret Key',
              insertValue: '--key \'{cursor}\''
            ),
            Option(
              name: 'value',
              description: 'Edit the Secret Value',
              insertValue: '--value \'{cursor}\''
            ),
            Option(
              name: 'project-id',
              description: 'Edit the ID of project this secret belongs to',
              insertValue: '--project-id \'{cursor}\''
            ),
            Option(
              name: 'note',
              description: 'Edit the optional notes about this secret',
              insertValue: '--note \'{cursor}\''
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Retrieve an existing secret',
          args: [
            Arg(
            name: 'SECRET_ID',
            description: 'Secret to retrieve'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the secrets this service account can access',
          args: [
            Arg(
            name: 'Project',
            description: 'Project Identifier',
            isOptional: true
          )
          ]
        )
      ],
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Display help for unlock command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: ['--help', '-h'],
      description: 'Get help about using the Bitwarden Secrets Manager CLI tool'
    )
  ],
  options: [
    Option(
      name: ['-o', '--output'],
      description: 'Output format [default: json]',
      args: [
        Arg(
        name: 'Format',
        description: 'Select output format',
        suggestions: [
          FigSuggestion(
            name: 'json',
            description: 'Produce json output'
          ),
          FigSuggestion(
            name: 'yaml',
            description: 'Produce yaml output'
          ),
          FigSuggestion(
            name: 'env',
            description: 'Produce env output'
          ),
          FigSuggestion(
            name: 'table',
            description: 'Produce table output'
          ),
          FigSuggestion(
            name: 'tsv',
            description: 'Produce tsv output'
          ),
          FigSuggestion(
            name: 'none',
            description: 'Produce no output'
          )
        ]
      )
      ],
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: ['-c', '--color'],
      description: 'Use colors in the output [default: auto]',
      args: [
        Arg(
        name: 'Color',
        description: 'Select output coloration scheme',
        suggestions: [
          FigSuggestion(
            name: 'no',
            description: 'Do not color output'
          ),
          FigSuggestion(
            name: 'yes',
            description: 'Colorize output'
          ),
          FigSuggestion(
            name: 'auto',
            description: 'Use default terminal colors'
          )
        ]
      )
      ],
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: ['-t', '--access-token'],
      description: 'Specify access token for the service account [env: BWS_ACCESS_TOKEN]',
      args: [
        Arg(
        name: 'Access Token',
        description: 'Bitwarden Secrets Manager Access Token'
      )
      ],
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: ['-f', '--config-file'],
      description: 'Config file to use [default: ~/.bws.config]',
      args: [
        Arg(
        name: 'Config File',
        template: 'filepaths'
      )
      ],
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: ['-p', '--profile'],
      description: 'Profile to use from the config file [env: BWS_PROFILE=]',
      args: [
        Arg(
        name: 'Profile',
        description: 'User Profile to enable'
      )
      ],
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: ['-u', '--server-url'],
      description: 'Override the server URL from the config file [env: BWS_SERVER_URL=]',
      args: [
        Arg(
        name: 'Server URL',
        description: 'URL of Bitwarden Secrets Manager server'
      )
      ],
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help',
      isPersistent: true,
      priority: 49
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version',
      isPersistent: true,
      priority: 49
    )
  ]
);
