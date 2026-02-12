// Auto-generated from TypeScript source: encore.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `encore` CLI
final FigSpec encoreSpec = FigSpec(
  name: 'encore',
  description: 'Encore is the fastest way of developing backend applications',
  subcommands: [
    Subcommand(
      name: 'app',
      description: 'Commands to create and link Encore apps',
      subcommands: [
        Subcommand(
          name: 'clone',
          description: 'Clone an Encore app to your computer'
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new Encore app',
          options: [
            Option(
              name: '--example',
              description: 'URL to example code to use',
              args: [
                Arg(
                name: 'exampl'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'link',
          description: 'Link an Encore app with the server',
          options: [
            Option(
              name: ['--force', '-f'],
              description: 'Force link even if the app is already linked'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'auth',
      description: 'Commands to authenticate with Encore',
      subcommands: [
        Subcommand(
          name: 'login',
          description: 'Log in to Encore',
          options: [
            Option(
              name: ['--auth-key', '-k'],
              description: 'Auth Key to use for login',
              args: [
                Arg(
                name: 'auth-ke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logout',
          description: 'Logs out the currently logged in user'
        ),
        Subcommand(
          name: 'signup',
          description: 'Create a new Encore account'
        ),
        Subcommand(
          name: 'whoami',
          description: 'Show the current logged in user'
        )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Checks your application for compile-time errors using Encore\'s compiler',
      options: [
        Option(
          name: '--codegen-debug',
          description: 'Dump generated code (for debugging Encore\'s code generation)'
        )
      ]
    ),
    Subcommand(
      name: 'daemon',
      description: 'Starts the encore daemon',
      subcommands: [
        Subcommand(
          name: 'env',
          description: 'Prints Encore environment information'
        )
      ],
      options: [
        Option(
          name: ['--foreground', '-f'],
          description: 'Start the daemon in the foreground'
        )
      ]
    ),
    Subcommand(
      name: 'db',
      description: 'Database management commands',
      subcommands: [
        Subcommand(
          name: 'conn-uri',
          description: 'Outputs the database connection string',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'Environment name to connect to (such as "prod")',
              args: [
                Arg(
                name: 'env',
                defaultValue: 'loca'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'proxy',
          description: 'Sets up a proxy tunnel to the database',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'Environment name to connect to (such as "prod")',
              args: [
                Arg(
                name: 'env',
                defaultValue: 'loca'
              )
              ]
            ),
            Option(
              name: ['--port', '-p'],
              description: 'Port to listen on (defaults to a random port)',
              args: [
                Arg(
                name: 'port',
                defaultValue: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Resets the databases for the given services. Use --all to reset all databases',
          options: [
            Option(
              name: '--all',
              description: 'Reset all services in the application'
            )
          ]
        ),
        Subcommand(
          name: 'shell',
          description: 'Connects to the database via psql shell',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'Environment name to connect to (such as "prod")',
              args: [
                Arg(
                name: 'env',
                defaultValue: 'loca'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'eject',
      description: 'Eject provides ways to eject your application to migrate away from using Encore',
      subcommands: [
        Subcommand(
          name: 'docker',
          description: 'Docker builds a portable docker image of your Encore application',
          options: [
            Option(
              name: '--base',
              description: 'Base image to build from',
              args: [
                Arg(
                name: 'base',
                defaultValue: 'scratc'
              )
              ]
            ),
            Option(
              name: ['--push', '-p'],
              description: 'Push image to remote repository'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'gen',
      description: 'Code generation commands',
      subcommands: [
        Subcommand(
          name: 'client',
          description: 'Generates an API client for your app',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'The environment to fetch the API for (defaults to the primary environment)',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: ['--lang', '-l'],
              description: 'The language to generate code for ("typescript" and "go" are supported)',
              args: [
                Arg(
                name: 'lan'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'The filename to write the generated client code to',
              args: [
                Arg(
                name: 'output',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wrappers',
          description: 'Generates user-facing wrapper code'
        )
      ]
    ),
    Subcommand(
      name: 'logs',
      description: 'Streams logs from your application',
      options: [
        Option(
          name: ['--env', '-e'],
          description: 'Environment name to stream logs from (defaults to the production environment)',
          args: [
            Arg(
            name: 'en'
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Whether to print logs in raw JSON format'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Runs your application',
      options: [
        Option(
          name: '--debug',
          description: 'Compile for debugging (disables some optimizations)'
        ),
        Option(
          name: '--listen',
          description: 'Address to listen on (for example "0.0.0.0:4000")',
          args: [
            Arg(
            name: 'listen',
            defaultValue: 'localhos'
          )
          ]
        ),
        Option(
          name: ['--port', '-p'],
          description: 'Port to listen on',
          args: [
            Arg(
            name: 'port',
            defaultValue: '400'
          )
          ]
        ),
        Option(
          name: '--tunnel',
          description: 'Create a tunnel to your machine for others to test against'
        ),
        Option(
          name: ['--watch', '-w'],
          description: 'Watch for changes and live-reload'
        )
      ]
    ),
    Subcommand(
      name: 'secret',
      description: 'Secret management commands',
      subcommands: [
        Subcommand(
          name: 'set',
          description: 'Sets a secret value',
          options: [
            Option(
              name: ['--dev', '-d'],
              description: 'To set the secret for development use'
            ),
            Option(
              name: ['--prod', '-p'],
              description: 'To set the secret for production use'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Tests your application'
    ),
    Subcommand(
      name: 'version',
      description: 'Reports the current version of the encore application',
      subcommands: [
        Subcommand(
          name: 'update',
          description: 'Checks for an update of encore and, if one is available, runs the appropriate command to update it'
        )
      ]
    ),
    Subcommand(
      name: 'vpn',
      description: 'VPN management commands',
      subcommands: [
        Subcommand(
          name: 'start',
          description: 'Sets up a secure connection to private environments'
        ),
        Subcommand(
          name: 'status',
          description: 'Determines the status of the VPN connection'
        ),
        Subcommand(
          name: 'stop',
          description: 'Stops the VPN connection'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [
        Subcommand(
          name: 'app',
          description: 'Commands to create and link Encore apps',
          subcommands: [
            Subcommand(
              name: 'clone',
              description: 'Clone an Encore app to your computer'
            ),
            Subcommand(
              name: 'create',
              description: 'Create a new Encore app'
            ),
            Subcommand(
              name: 'link',
              description: 'Link an Encore app with the server'
            )
          ]
        ),
        Subcommand(
          name: 'auth',
          description: 'Commands to authenticate with Encore',
          subcommands: [
            Subcommand(
              name: 'login',
              description: 'Log in to Encore'
            ),
            Subcommand(
              name: 'logout',
              description: 'Logs out the currently logged in user'
            ),
            Subcommand(
              name: 'signup',
              description: 'Create a new Encore account'
            ),
            Subcommand(
              name: 'whoami',
              description: 'Show the current logged in user'
            )
          ]
        ),
        Subcommand(
          name: 'check',
          description: 'Checks your application for compile-time errors using Encore\'s compiler'
        ),
        Subcommand(
          name: 'daemon',
          description: 'Starts the encore daemon',
          subcommands: [
            Subcommand(
              name: 'env',
              description: 'Prints Encore environment information'
            )
          ]
        ),
        Subcommand(
          name: 'db',
          description: 'Database management commands',
          subcommands: [
            Subcommand(
              name: 'conn-uri',
              description: 'Outputs the database connection string'
            ),
            Subcommand(
              name: 'proxy',
              description: 'Sets up a proxy tunnel to the database'
            ),
            Subcommand(
              name: 'reset',
              description: 'Resets the databases for the given services. Use --all to reset all databases'
            ),
            Subcommand(
              name: 'shell',
              description: 'Connects to the database via psql shell'
            )
          ]
        ),
        Subcommand(
          name: 'eject',
          description: 'Eject provides ways to eject your application to migrate away from using Encore',
          subcommands: [
            Subcommand(
              name: 'docker',
              description: 'Docker builds a portable docker image of your Encore application'
            )
          ]
        ),
        Subcommand(
          name: 'gen',
          description: 'Code generation commands',
          subcommands: [
            Subcommand(
              name: 'client',
              description: 'Generates an API client for your app'
            ),
            Subcommand(
              name: 'wrappers',
              description: 'Generates user-facing wrapper code'
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Streams logs from your application'
        ),
        Subcommand(
          name: 'run',
          description: 'Runs your application'
        ),
        Subcommand(
          name: 'secret',
          description: 'Secret management commands',
          subcommands: [
            Subcommand(
              name: 'set',
              description: 'Sets a secret value'
            )
          ]
        ),
        Subcommand(
          name: 'test',
          description: 'Tests your application'
        ),
        Subcommand(
          name: 'version',
          description: 'Reports the current version of the encore application',
          subcommands: [
            Subcommand(
              name: 'update',
              description: 'Checks for an update of encore and, if one is available, runs the appropriate command to update it'
            )
          ]
        ),
        Subcommand(
          name: 'vpn',
          description: 'VPN management commands',
          subcommands: [
            Subcommand(
              name: 'start',
              description: 'Sets up a secure connection to private environments'
            ),
            Subcommand(
              name: 'status',
              description: 'Determines the status of the VPN connection'
            ),
            Subcommand(
              name: 'stop',
              description: 'Stops the VPN connection'
            )
          ]
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--verbose', '-v'],
      description: 'Verbose output',
      isPersistent: true,
      args: [
        Arg(
        name: 'verbose',
        defaultValue: ''
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
