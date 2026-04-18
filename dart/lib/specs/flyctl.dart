// Auto-generated from TypeScript source: flyctl.ts
// Generated at: 2026-04-18
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `flyctl` CLI
final FigSpec flyctlSpec = FigSpec(
    name: 'flyctl',
    description: 'The flyctl is a command-line interface for fly.io',
    subcommands: [
      Subcommand(
          name: 'agent',
          description:
              'Commands that manage the Fly agent, a background process that manages flyctl wireguard connections',
          subcommands: [
            Subcommand(name: 'ping', description: 'Ping the Fly agent'),
            Subcommand(name: 'restart', description: 'Restart the Fly agent'),
            Subcommand(
                name: ['daemon-start', 'run'],
                description: 'Run the Fly agent in the foreground'),
            Subcommand(name: 'start', description: 'Start the Fly agent'),
            Subcommand(name: 'stop', description: 'Stop the Fly agent')
          ]),
      Subcommand(name: 'apps', description: 'Manage apps', subcommands: [
        Subcommand(
            name: 'create',
            description: 'Create a new application',
            options: [
              Option(
                  name: '--generate-name',
                  description: 'Generate a name for the app'),
              Option(
                  name: '--name',
                  description: 'The app name to use',
                  args: [Arg(name: 'nam')]),
              Option(
                  name: '--network',
                  description: 'Specify custom network id',
                  args: [Arg(name: 'networ')]),
              Option(
                  name: ['--org', '-o'],
                  description: 'The organization to operate on',
                  args: [
                    Arg(
                        name: 'org',
                        // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ])
            ]),
        Subcommand(
            name: 'destroy',
            description: 'Permanently destroys an app',
            options: [
              Option(
                  name: ['--yes', '-y'],
                  description: 'Accept all confirmations')
            ]),
        Subcommand(name: 'list', description: 'List applications'),
        Subcommand(
            name: 'move',
            description: 'Move an app to another organization',
            options: [
              Option(
                  name: ['--org', '-o'],
                  description: 'The organization to operate on',
                  args: [
                    Arg(
                        name: 'org',
                        // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--yes', '-y'],
                  description: 'Accept all confirmations')
            ]),
        Subcommand(
            name: 'open',
            description: 'Open browser to current deployed application',
            options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'Application name',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description: 'Path to application configuration file',
                  args: [Arg(name: 'config', template: 'filepath')])
            ]),
        Subcommand(
            name: 'releases',
            description: 'List app releases',
            options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'Application name',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description: 'Path to application configuration file',
                  args: [Arg(name: 'config', template: 'filepath')]),
              Option(
                  name: '--image',
                  description:
                      'Display the Docker image reference of the release')
            ]),
        Subcommand(
            name: 'restart',
            description: 'Restart an application',
            options: [
              Option(
                  name: ['-f', '--force'],
                  description:
                      'Will issue a restart against each Machine even if there are errors. ( Machines only )'),
              Option(
                  name: '--skip-health-checks',
                  description:
                      'Restarts app without waiting for health checks. ( Machines only )')
            ],
            args: [
              Arg(
                  name: 'app',
                  // TS_UNCONVERTED_START (generators)
// flyAppsGenerator
// TS_UNCONVERTED_END
                  generators: null)
            ])
      ]),
      Subcommand(
          name: 'auth',
          description: 'Manage authentication',
          subcommands: [
            Subcommand(name: 'docker', description: 'Authenticate docker'),
            Subcommand(name: 'login', description: 'Log in a user', options: [
              Option(
                  name: '--email',
                  description: 'Login email',
                  args: [Arg(name: 'emai')]),
              Option(
                  name: ['--interactive', '-i'],
                  description:
                      'Log in with an email and password interactively'),
              Option(
                  name: '--otp',
                  description: 'One time password',
                  args: [Arg(name: 'ot')]),
              Option(
                  name: '--password',
                  description: 'Login password',
                  args: [Arg(name: 'passwor')])
            ]),
            Subcommand(
                name: 'logout',
                description: 'Logs out the currently logged in user'),
            Subcommand(name: 'signup', description: 'Create a new fly account'),
            Subcommand(
                name: 'token', description: 'Show the current auth token'),
            Subcommand(
                name: 'whoami',
                description:
                    'Displays the users email address/service identity currently authenticated and in use')
          ]),
      Subcommand(
          name: 'autoscale',
          description: 'Autoscaling app resources',
          subcommands: [
            Subcommand(
                name: 'balanced',
                description:
                    'Configure a traffic balanced app with params (min=int max=int)',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'disable',
                description: 'Disable autoscaling',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'set',
                description: 'Set current models autoscaling parameters',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'show',
                description: 'Show current autoscaling configuration',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'standard',
                description:
                    'Configure a standard balanced app with params (min=int max=int)',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ])
          ],
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'App name to operate on',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description:
                    'Path to an app config file or directory containing one',
                args: [
                  Arg(
                      name: 'config',
                      defaultValue: './fly.toml',
                      template: 'filepaths')
                ])
          ]),
      Subcommand(
          name: 'builds',
          description: 'Manage application builds',
          subcommands: [
            Subcommand(name: 'list', description: 'List builds', options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'Application name',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description: 'Path to application configuration file',
                  args: [Arg(name: 'config', template: 'filepath')])
            ])
          ]),
      Subcommand(
          name: 'certs',
          description: 'Manage certificates',
          subcommands: [
            Subcommand(
                name: ['create', 'add'],
                description: 'Add a certificate for an app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'check',
                description: 'Checks DNS configuration',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'list',
                description: 'List certificates for an app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: ['delete', 'remove'],
                description: 'Removes a certificate from an app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: ['--yes', '-y'],
                      description: 'Accept all confirmations')
                ]),
            Subcommand(
                name: 'show',
                description: 'Shows certificate information',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ])
          ],
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'App name to operate on',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description:
                    'Path to an app config file or directory containing one',
                args: [
                  Arg(
                      name: 'config',
                      defaultValue: './fly.toml',
                      template: 'filepaths')
                ])
          ]),
      Subcommand(
          name: 'checks',
          description: 'Manage health checks',
          subcommands: [
            Subcommand(
                name: 'handlers',
                description: 'Manage health check handlers',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description: 'Create a health check handler',
                      options: [
                        Option(
                            name: ['--organization', '-o'],
                            description:
                                'The organization to add the handler to',
                            args: [Arg(name: 'organizatio')]),
                        Option(
                            name: '--type',
                            description:
                                'The type of handler to create, can be slack or pagerduty',
                            args: [Arg(name: 'typ')])
                      ]),
                  Subcommand(
                      name: 'delete',
                      description: 'Delete a health check handler'),
                  Subcommand(
                      name: 'list', description: 'List health check handlers')
                ]),
            Subcommand(
                name: 'list',
                description: 'List app health checks',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: '--check-name',
                      description: 'Filter checks by name',
                      args: [Arg(name: 'check-nam')]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ])
          ]),
      Subcommand(
          name: 'completion',
          description:
              'Generate the autocompletion script for the specified shell',
          subcommands: [
            Subcommand(
                name: 'bash',
                description: 'Generate the autocompletion script for bash',
                options: [
                  Option(
                      name: '--no-descriptions',
                      description: 'Disable completion descriptions')
                ]),
            Subcommand(
                name: 'fish',
                description: 'Generate the autocompletion script for fish',
                options: [
                  Option(
                      name: '--no-descriptions',
                      description: 'Disable completion descriptions')
                ]),
            Subcommand(
                name: 'powershell',
                description:
                    'Generate the autocompletion script for powershell',
                options: [
                  Option(
                      name: '--no-descriptions',
                      description: 'Disable completion descriptions')
                ]),
            Subcommand(
                name: 'zsh',
                description: 'Generate the autocompletion script for zsh',
                options: [
                  Option(
                      name: '--no-descriptions',
                      description: 'Disable completion descriptions')
                ])
          ]),
      Subcommand(
          name: 'config',
          description: 'Manage an app\'s configuration',
          subcommands: [
            Subcommand(
                name: 'display',
                description: 'Display an app\'s configuration',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'env',
                description: 'Display an app\'s runtime environment variables',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'save',
                description: 'Save an app\'s config file',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'validate',
                description: 'Validate an app\'s config file',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ])
          ],
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'App name to operate on',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description:
                    'Path to an app config file or directory containing one',
                args: [
                  Arg(
                      name: 'config',
                      defaultValue: './fly.toml',
                      template: 'filepaths')
                ])
          ]),
      Subcommand(
          name: 'create',
          description: 'Create a new application',
          options: [
            Option(
                name: '--generate-name',
                description: 'Generate a name for the app'),
            Option(
                name: '--name',
                description: 'The app name to use',
                args: [Arg(name: 'nam')]),
            Option(
                name: '--network',
                description: 'Specify custom network id',
                args: [Arg(name: 'networ')]),
            Option(
                name: ['--org', '-o'],
                description: 'The organization to operate on',
                args: [
                  Arg(
                      name: 'org',
                      // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ])
          ]),
      Subcommand(
          name: 'curl', description: 'Run a performance test against a URL'),
      Subcommand(
          name: ['dash', 'dashboard'],
          description: 'Open web browser on Fly Web UI for this app',
          subcommands: [
            Subcommand(
                name: 'metrics',
                description:
                    'Open web browser on Fly Web UI for this app\'s metrics',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ])
          ],
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'App name to operate on',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description:
                    'Path to an app config file or directory containing one',
                args: [
                  Arg(
                      name: 'config',
                      defaultValue: './fly.toml',
                      template: 'filepaths')
                ])
          ]),
      Subcommand(
          name: 'deploy',
          description: 'Deploy Fly applications',
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'Application name',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: '--build-arg',
                description:
                    'Set of build time variables in the form of NAME=VALUE pairs. Can be specified multiple times',
                args: [Arg(name: 'build-ar')]),
            Option(
                name: '--build-only', description: 'Build but do not deploy'),
            Option(
                name: '--build-target',
                description:
                    'Set the target build stage to build if the Dockerfile has more than one stage',
                args: [Arg(name: 'build-targe')]),
            Option(
                name: ['--config', '-c'],
                description: 'Path to application configuration file',
                args: [Arg(name: 'config', template: 'filepath')]),
            Option(
                name: '--detach',
                description:
                    'Return immediately instead of monitoring deployment progress'),
            Option(
                name: '--dockerfile',
                description:
                    'Path to a Dockerfile. Defaults to the Dockerfile in the working directory',
                args: [Arg(name: 'dockerfil')]),
            Option(
                name: ['--env', '-e'],
                description:
                    'Set of environment variables in the form of NAME=VALUE pairs. Can be specified multiple times',
                args: [Arg(name: 'en')]),
            Option(
                name: ['--image', '-i'],
                description: 'The image tag or ID to deploy',
                args: [Arg(name: 'imag')]),
            Option(
                name: '--image-label',
                description:
                    'Image label to use when tagging and pushing to the fly registry. Defaults to "deployment-{timestamp}"',
                args: [Arg(name: 'image-labe')]),
            Option(
                name: '--local-only',
                description:
                    'Only perform builds locally using the local docker daemon'),
            Option(name: '--nix', description: 'Build with Nix'),
            Option(
                name: '--no-cache',
                description:
                    'Do not use the build cache when building the image'),
            Option(
                name: '--now', description: 'Deploy now without confirmation'),
            Option(
                name: '--push',
                description: 'Push image to registry after build is complete'),
            Option(
                name: ['--region', '-r'],
                description: 'The region to operate on',
                args: [Arg(name: 'regio')]),
            Option(
                name: '--remote-only',
                description:
                    'Perform builds on a remote builder instance instead of using the local docker daemon'),
            Option(
                name: '--strategy',
                description:
                    'The strategy for replacing running instances. Options are canary, rolling, bluegreen, or immediate. Default is canary, or rolling when max-per-region is set',
                args: [Arg(name: 'strateg')])
          ]),
      Subcommand(
          name: 'destroy',
          description: 'Permanently destroys an app',
          options: [
            Option(
                name: ['--yes', '-y'], description: 'Accept all confirmations')
          ]),
      Subcommand(
          name: 'dig',
          description:
              'Make DNS requests against Fly.io\'s internal DNS server',
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'Application name',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description: 'Path to application configuration file',
                args: [Arg(name: 'config', template: 'filepath')]),
            Option(
                name: ['--org', '-o'],
                description: 'The organization to operate on',
                args: [
                  Arg(
                      name: 'org',
                      // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--short', '-s'],
                description: 'Just print the answers, not DNS record details')
          ]),
      Subcommand(
          name: 'dns-records',
          description: 'Manage DNS records',
          subcommands: [
            Subcommand(
                name: 'export',
                description: 'Export DNS records',
                options: [Option(name: '--overwrite', description: '')]),
            Subcommand(name: 'import', description: 'Import DNS records'),
            Subcommand(name: 'list', description: 'List DNS records')
          ]),
      Subcommand(name: 'docs', description: 'View Fly documentation'),
      Subcommand(
          name: 'doctor',
          description:
              'The DOCTOR command allows you to debug your Fly environment',
          subcommands: [
            Subcommand(
                name: 'diag',
                description:
                    'Send diagnostic information about your applications back to Fly.io',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')]),
                  Option(
                      name: '--force',
                      description:
                          'Send diagnostics even if we can\'t find your local Fly.io app')
                ])
          ],
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'Application name',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description: 'Path to application configuration file',
                args: [Arg(name: 'config', template: 'filepath')])
          ]),
      Subcommand(name: 'domains', description: 'Manage domains', subcommands: [
        Subcommand(name: 'add', description: 'Add a domain'),
        Subcommand(name: 'list', description: 'List domains'),
        Subcommand(name: 'register', description: 'Register a domain'),
        Subcommand(name: 'show', description: 'Show domain')
      ]),
      Subcommand(
          name: 'history',
          description: 'List an app\'s change history',
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'Application name',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description: 'Path to application configuration file',
                args: [Arg(name: 'config', template: 'filepath')])
          ]),
      Subcommand(
          name: ['img', 'image'],
          description: 'Manage app image',
          subcommands: [
            Subcommand(
                name: 'show',
                description: 'Show image details',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')])
                ]),
            Subcommand(
                name: 'update',
                description:
                    'Updates the app\'s image to the latest available version. (Fly Postgres only)',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')]),
                  Option(
                      name: '--detach',
                      description:
                          'Return immediately instead of monitoring update progress'),
                  Option(
                      name: ['--yes', '-y'],
                      description: 'Accept all confirmations')
                ])
          ]),
      Subcommand(
          name: 'info',
          description: 'Show detailed app information',
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'App name to operate on',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description:
                    'Path to an app config file or directory containing one',
                args: [
                  Arg(
                      name: 'config',
                      defaultValue: './fly.toml',
                      template: 'filepaths')
                ]),
            Option(name: '--host', description: 'Returns just the hostname'),
            Option(
                name: ['--name', '-n'], description: 'Returns just the appname')
          ]),
      Subcommand(
          name: 'ips',
          description: 'Manage IP addresses for apps',
          subcommands: [
            Subcommand(
                name: 'allocate-v4',
                description: 'Allocate an IPv4 address',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--region',
                      description:
                          'The region where the address should be allocated',
                      args: [Arg(name: 'regio')])
                ]),
            Subcommand(
                name: 'allocate-v6',
                description: 'Allocate an IPv6 address',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--region',
                      description:
                          'The region where the address should be allocated',
                      args: [Arg(name: 'regio')])
                ]),
            Subcommand(
                name: 'list',
                description: 'List allocated IP addresses',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'private',
                description: 'List instances private IP addresses',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'release',
                description: 'Release an IP address',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ])
          ],
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'App name to operate on',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description:
                    'Path to an app config file or directory containing one',
                args: [
                  Arg(
                      name: 'config',
                      defaultValue: './fly.toml',
                      template: 'filepaths')
                ])
          ]),
      Subcommand(name: 'launch', description: 'Launch a new app', options: [
        Option(
            name: '--copy-config',
            description:
                'Use the configuration file if present without prompting'),
        Option(
            name: '--dockerfile',
            description:
                'Path to a Dockerfile. Defaults to the Dockerfile in the working directory',
            args: [Arg(name: 'dockerfil')]),
        Option(
            name: '--generate-name',
            description: 'Always generate a name for the app'),
        Option(
            name: '--image',
            description: 'The image to launch',
            args: [Arg(name: 'imag')]),
        Option(
            name: '--name',
            description: 'The name of the new app',
            args: [Arg(name: 'nam')]),
        Option(
            name: '--no-deploy', description: 'Do not prompt for deployment'),
        Option(name: '--now', description: 'Deploy now without confirmation'),
        Option(
            name: '--org',
            description: 'The organization that will own the app',
            args: [
              Arg(
                  name: 'org',
                  // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                  generators: null)
            ]),
        Option(
            name: '--path',
            description:
                'Path to app code and where a fly.toml file will be saved',
            args: [Arg(name: 'path', defaultValue: '')]),
        Option(
            name: '--region',
            description: 'The region to launch the new app in',
            args: [Arg(name: 'regio')]),
        Option(
            name: '--remote-only',
            description:
                'Perform builds remotely without using the local docker daemon')
      ]),
      Subcommand(name: 'logs', description: 'View app logs', options: [
        Option(
            name: ['--app', '-a'],
            description: 'Application name',
            args: [
              Arg(
                  name: 'app',
                  // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                  generators: null)
            ]),
        Option(
            name: ['--config', '-c'],
            description: 'Path to application configuration file',
            args: [Arg(name: 'config', template: 'filepath')]),
        Option(
            name: ['--instance', '-i'],
            description: 'Filter by instance ID',
            args: [Arg(name: 'instanc')]),
        Option(
            name: ['--region', '-r'],
            description: 'The region to operate on',
            args: [Arg(name: 'regio')])
      ]),
      Subcommand(
          name: ['machines', 'm', 'machine'],
          description: 'Commands that manage machines',
          subcommands: [
            Subcommand(
                name: 'clone',
                description: 'Clones a Fly Machine',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')]),
                  Option(
                      name: ['--detach', '-d'],
                      description: 'Detach from the machine\'s logs'),
                  Option(
                      name: ['--name', '-n'],
                      description: 'The name of the new machine',
                      args: [Arg(name: 'nam')]),
                  Option(
                      name: ['--org', '-o'],
                      description: 'The organization to operate on',
                      args: [
                        Arg(
                            name: 'org',
                            // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--region', '-r'],
                      description: 'The region to operate on',
                      args: [Arg(name: 'regio')])
                ]),
            Subcommand(
                name: 'kill',
                description: 'Kill (SIGKILL) a Fly machine',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')])
                ]),
            Subcommand(
                name: 'list',
                description: 'List Fly machines',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')]),
                  Option(
                      name: ['--quiet', '-q'],
                      description: 'Only list machine ids')
                ]),
            Subcommand(
                name: ['rm', 'remove'],
                description: 'Remove a Fly machine',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')]),
                  Option(
                      name: ['--force', '-f'],
                      description: 'Force kill machine if it\'s running')
                ]),
            Subcommand(name: 'run', description: 'Run a machine', options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'Application name',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: '--build-arg',
                  description:
                      'Set of build time variables in the form of NAME=VALUE pairs. Can be specified multiple times',
                  args: [Arg(name: 'build-ar')]),
              Option(
                  name: '--build-local-only',
                  description:
                      'Only perform builds locally using the local docker daemon'),
              Option(name: '--build-only', description: ''),
              Option(
                  name: '--build-remote-only',
                  description:
                      'Perform builds remotely without using the local docker daemon'),
              Option(
                  name: '--build-target',
                  description:
                      'Set the target build stage to build if the Dockerfile has more than one stage',
                  args: [Arg(name: 'build-targe')]),
              Option(
                  name: ['--config', '-c'],
                  description: 'Path to application configuration file',
                  args: [Arg(name: 'config', template: 'filepath')]),
              Option(
                  name: '--cpu-kind',
                  description: 'Kind of CPU to use (shared, dedicated)',
                  args: [Arg(name: 'cpu-kin')]),
              Option(
                  name: '--cpus',
                  description: 'Number of CPUs',
                  args: [Arg(name: 'cpus', defaultValue: '')]),
              Option(
                  name: ['--detach', '-d'],
                  description: 'Detach from the machine\'s logs'),
              Option(
                  name: '--dockerfile',
                  description:
                      'Path to a Dockerfile. Defaults to the Dockerfile in the working directory',
                  args: [Arg(name: 'dockerfil')]),
              Option(
                  name: '--entrypoint',
                  description: 'ENTRYPOINT replacement',
                  args: [Arg(name: 'entrypoin')]),
              Option(
                  name: ['--env', '-e'],
                  description:
                      'Set of environment variables in the form of NAME=VALUE pairs. Can be specified multiple times',
                  args: [Arg(name: 'en')]),
              Option(
                  name: '--id',
                  description: 'Machine ID, if previously known',
                  args: [Arg(name: 'i')]),
              Option(
                  name: '--image-label',
                  description:
                      'Image label to use when tagging and pushing to the fly registry. Defaults to "deployment-{timestamp}"',
                  args: [Arg(name: 'image-labe')]),
              Option(
                  name: '--memory',
                  description:
                      'Memory (in megabytes) to attribute to the machine',
                  args: [Arg(name: 'memory', defaultValue: '')]),
              Option(
                  name: ['--name', '-n'],
                  description: 'Machine name, will be generated if missing',
                  args: [Arg(name: 'nam')]),
              Option(
                  name: '--no-build-cache',
                  description: 'Do not use the cache when building the image'),
              Option(
                  name: '--org',
                  description: 'The organization that will own the app',
                  args: [
                    Arg(
                        name: 'org',
                        // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--port', '-p'],
                  description:
                      'Exposed port mappings (format: edgePort[:machinePort]/[protocol[:handler]])',
                  args: [Arg(name: 'por')]),
              Option(
                  name: ['--region', '-r'],
                  description: 'The region to operate on',
                  args: [Arg(name: 'regio')]),
              Option(
                  name: ['--size', '-s'],
                  description: 'Preset guest cpu and memory for a machine',
                  args: [Arg(name: 'siz')]),
              Option(
                  name: ['--volume', '-v'],
                  description:
                      'Volumes to mount in the form of <volume_id_or_name>:/path/inside/machine[:<options>]',
                  args: [Arg(name: 'volum')])
            ]),
            Subcommand(
                name: 'start',
                description: 'Start a Fly machine',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')])
                ]),
            Subcommand(
                name: 'status',
                description: 'Show current status of a running machine',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')])
                ]),
            Subcommand(
                name: 'stop',
                description: 'Stop a Fly machine',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')]),
                  Option(
                      name: ['--signal', '-s'],
                      description:
                          'Signal to stop the machine with (default: SIGINT)',
                      args: [Arg(name: 'signa')]),
                  Option(
                      name: '--time',
                      description: 'Seconds to wait before killing the machine',
                      args: [Arg(name: 'time', defaultValue: '')])
                ])
          ]),
      Subcommand(
          name: 'monitor',
          description: 'Monitor currently running application deployments',
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'Application name',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description: 'Path to application configuration file',
                args: [Arg(name: 'config', template: 'filepath')])
          ]),
      Subcommand(
          name: 'move',
          description: 'Move an app to another organization',
          options: [
            Option(
                name: ['--org', '-o'],
                description: 'The organization to operate on',
                args: [
                  Arg(
                      name: 'org',
                      // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--yes', '-y'], description: 'Accept all confirmations')
          ]),
      Subcommand(
          name: 'open',
          description: 'Open browser to current deployed application',
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'Application name',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description: 'Path to application configuration file',
                args: [Arg(name: 'config', template: 'filepath')])
          ]),
      Subcommand(
          name: 'orgs',
          description: 'Commands for managing Fly organizations',
          subcommands: [
            Subcommand(
                name: 'builder',
                description: 'Manage remote builder',
                subcommands: [
                  Subcommand(
                      name: 'show',
                      description:
                          'Show details about an organization\'s remote builder image'),
                  Subcommand(
                      name: 'update',
                      description:
                          'Update an organization\'s remote builder image')
                ]),
            Subcommand(name: 'create', description: 'Create an organization'),
            Subcommand(
                name: 'delete',
                description: 'Delete an organization',
                options: [
                  Option(
                      name: ['--yes', '-y'],
                      description: 'Accept all confirmations')
                ]),
            Subcommand(
                name: 'invite',
                description: 'Invite user (by email) to organization'),
            Subcommand(
                name: 'list',
                description: 'Lists organizations for current user'),
            Subcommand(
                name: 'remove',
                description: 'Remove a user from an organization'),
            Subcommand(
                name: 'show',
                description: 'Show information about an organization')
          ]),
      Subcommand(
          name: 'ping',
          description: 'Test connectivity with ICMP ping messages',
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'Application name',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description: 'Path to application configuration file',
                args: [Arg(name: 'config', template: 'filepath')]),
            Option(
                name: ['--count', '-n'],
                description: 'Number of probes to send (0=indefinite)',
                args: [Arg(name: 'count', defaultValue: '')]),
            Option(
                name: ['--interval', '-i'],
                description: 'Interval between ping probes',
                args: [Arg(name: 'interval', defaultValue: '1')]),
            Option(
                name: ['--org', '-o'],
                description: 'The organization to operate on',
                args: [
                  Arg(
                      name: 'org',
                      // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--size', '-s'],
                description: 'Size of probe to send (not including headers)',
                args: [Arg(name: 'size', defaultValue: '1')])
          ]),
      Subcommand(
          name: 'platform',
          description: 'Fly platform information',
          subcommands: [
            Subcommand(name: 'regions', description: 'List regions'),
            Subcommand(
                name: 'status', description: 'Show current platform status'),
            Subcommand(name: 'vm-sizes', description: 'List VM Sizes')
          ]),
      Subcommand(
          name: ['pg', 'postgres'],
          description: 'Manage postgres clusters',
          subcommands: [
            Subcommand(
                name: 'attach',
                description: 'Attach a postgres cluster to an app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--database-name',
                      description:
                          'Database to use, defaults to a new database with the same name as the app',
                      args: [Arg(name: 'database-nam')]),
                  Option(
                      name: '--database-user',
                      description:
                          'The database user to create, defaults to creating a user with the same name as the consuming app',
                      args: [Arg(name: 'database-use')]),
                  Option(
                      name: '--postgres-app',
                      description: 'The postgres cluster to attach to the app',
                      args: [Arg(name: 'postgres-ap')]),
                  Option(
                      name: '--variable-name',
                      description:
                          'The env variable name that will be added to the app. Defaults to DATABASE_URL',
                      args: [Arg(name: 'variable-nam')])
                ]),
            Subcommand(
                name: 'connect',
                description: 'Connect to the Postgres console',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--database',
                      description: 'The postgres database to connect to',
                      args: [Arg(name: 'databas')]),
                  Option(
                      name: '--password',
                      description: 'The postgres user password',
                      args: [Arg(name: 'passwor')]),
                  Option(
                      name: '--user',
                      description: 'The postgres user to connect with',
                      args: [Arg(name: 'use')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a postgres cluster',
                options: [
                  Option(name: '--image-ref', description: '', args: [
                    Arg(name: 'image-ref', defaultValue: 'flyio/postgre')
                  ]),
                  Option(
                      name: '--initial-cluster-size',
                      description: 'The size of the initial postgres cluster',
                      args: [Arg(name: 'initial-cluster-siz')]),
                  Option(
                      name: '--name',
                      description: 'The name of the new app',
                      args: [Arg(name: 'nam')]),
                  Option(
                      name: '--organization',
                      description: 'The organization that will own the app',
                      args: [Arg(name: 'organizatio')]),
                  Option(
                      name: '--password',
                      description:
                          'The superuser password. one will be generated for you if you leave this blank',
                      args: [Arg(name: 'passwor')]),
                  Option(
                      name: '--region',
                      description: 'The region to launch the new app in',
                      args: [Arg(name: 'regio')]),
                  Option(
                      name: '--snapshot-id',
                      description:
                          'Creates the volume with the contents of the snapshot',
                      args: [Arg(name: 'snapshot-i')]),
                  Option(
                      name: '--vm-size',
                      description: 'The size of the VM',
                      args: [Arg(name: 'vm-siz')]),
                  Option(
                      name: '--volume-size',
                      description: 'The size in GB for volumes',
                      args: [Arg(name: 'volume-siz')])
                ]),
            Subcommand(
                name: 'db',
                description: 'Manage databases in a cluster',
                subcommands: [
                  Subcommand(
                      name: 'list',
                      description: 'List databases in a cluster',
                      options: [
                        Option(
                            name: ['--app', '-a'],
                            description: 'App name to operate on',
                            args: [
                              Arg(
                                  name: 'app',
                                  // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                                  generators: null)
                            ]),
                        Option(
                            name: ['--config', '-c'],
                            description:
                                'Path to an app config file or directory containing one',
                            args: [
                              Arg(
                                  name: 'config',
                                  defaultValue: './fly.toml',
                                  template: 'filepaths')
                            ])
                      ])
                ]),
            Subcommand(
                name: 'detach',
                description: 'Detach a postgres cluster from an app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--postgres-app',
                      description:
                          'The postgres cluster to detach from the app',
                      args: [Arg(name: 'postgres-ap')])
                ]),
            Subcommand(name: 'list', description: 'List postgres clusters'),
            Subcommand(
                name: 'users',
                description: 'Manage users in a cluster',
                subcommands: [
                  Subcommand(
                      name: 'list',
                      description: 'List users in a cluster',
                      options: [
                        Option(
                            name: ['--app', '-a'],
                            description: 'App name to operate on',
                            args: [
                              Arg(
                                  name: 'app',
                                  // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                                  generators: null)
                            ]),
                        Option(
                            name: ['--config', '-c'],
                            description:
                                'Path to an app config file or directory containing one',
                            args: [
                              Arg(
                                  name: 'config',
                                  defaultValue: './fly.toml',
                                  template: 'filepaths')
                            ])
                      ])
                ])
          ]),
      Subcommand(
          name: 'proxy',
          description: 'Proxies connections to a fly VM',
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'Application name',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description: 'Path to application configuration file',
                args: [Arg(name: 'config', template: 'filepath')]),
            Option(
                name: ['--org', '-o'],
                description: 'The organization to operate on',
                args: [
                  Arg(
                      name: 'org',
                      // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--select', '-s'],
                description:
                    'Prompt to select from available instances from the current application')
          ]),
      Subcommand(name: 'regions', description: 'Manage regions', subcommands: [
        Subcommand(
            name: 'add',
            description: 'Allow the app to run in the provided regions',
            options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'App name to operate on',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description:
                      'Path to an app config file or directory containing one',
                  args: [
                    Arg(
                        name: 'config',
                        defaultValue: './fly.toml',
                        template: 'filepaths')
                  ]),
              Option(
                  name: '--group',
                  description: 'The process group to add the region to',
                  args: [Arg(name: 'grou')])
            ]),
        Subcommand(
            name: 'backup',
            description: 'Sets the backup region pool with provided regions',
            options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'App name to operate on',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description:
                      'Path to an app config file or directory containing one',
                  args: [
                    Arg(
                        name: 'config',
                        defaultValue: './fly.toml',
                        template: 'filepaths')
                  ])
            ]),
        Subcommand(
            name: 'list',
            description:
                'Shows the list of regions the app is allowed to run in',
            options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'App name to operate on',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description:
                      'Path to an app config file or directory containing one',
                  args: [
                    Arg(
                        name: 'config',
                        defaultValue: './fly.toml',
                        template: 'filepaths')
                  ])
            ]),
        Subcommand(
            name: 'remove',
            description: 'Prevent the app from running in the provided regions',
            options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'App name to operate on',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description:
                      'Path to an app config file or directory containing one',
                  args: [
                    Arg(
                        name: 'config',
                        defaultValue: './fly.toml',
                        template: 'filepaths')
                  ]),
              Option(
                  name: '--group',
                  description: 'The process group to remove the region from',
                  args: [Arg(name: 'grou')])
            ]),
        Subcommand(
            name: 'set',
            description: 'Sets the region pool with provided regions',
            options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'App name to operate on',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description:
                      'Path to an app config file or directory containing one',
                  args: [
                    Arg(
                        name: 'config',
                        defaultValue: './fly.toml',
                        template: 'filepaths')
                  ]),
              Option(
                  name: '--group',
                  description: 'The process group to set regions for',
                  args: [Arg(name: 'grou')])
            ])
      ], options: [
        Option(
            name: ['--app', '-a'],
            description: 'App name to operate on',
            args: [
              Arg(
                  name: 'app',
                  // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                  generators: null)
            ]),
        Option(
            name: ['--config', '-c'],
            description:
                'Path to an app config file or directory containing one',
            args: [
              Arg(
                  name: 'config',
                  defaultValue: './fly.toml',
                  template: 'filepaths')
            ])
      ]),
      Subcommand(name: 'releases', description: 'List app releases', options: [
        Option(
            name: ['--app', '-a'],
            description: 'Application name',
            args: [
              Arg(
                  name: 'app',
                  // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                  generators: null)
            ]),
        Option(
            name: ['--config', '-c'],
            description: 'Path to application configuration file',
            args: [Arg(name: 'config', template: 'filepath')]),
        Option(
            name: '--image',
            description: 'Display the Docker image reference of the release')
      ]),
      Subcommand(name: 'restart', description: 'Restart an application'),
      Subcommand(name: 'resume', description: 'Resume an application'),
      Subcommand(
          name: 'scale',
          description: 'Scale app resources',
          subcommands: [
            Subcommand(
                name: 'count',
                description: 'Change an app\'s VM count to the given value',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--max-per-region',
                      description: 'Max number of VMs per region',
                      args: [Arg(name: 'max-per-region', defaultValue: '-')])
                ]),
            Subcommand(name: 'memory', description: 'Set VM memory', options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'App name to operate on',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description:
                      'Path to an app config file or directory containing one',
                  args: [
                    Arg(
                        name: 'config',
                        defaultValue: './fly.toml',
                        template: 'filepaths')
                  ]),
              Option(
                  name: '--group',
                  description: 'The process group to apply the memory size to',
                  args: [Arg(name: 'grou')])
            ]),
            Subcommand(
                name: 'show',
                description: 'Show current resources',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'vm',
                description:
                    'Change an app\'s VM to a named size (eg. shared-cpu-1x, dedicated-cpu-1x, dedicated-cpu-2x...)',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--group',
                      description: 'The process group to apply the VM size to',
                      args: [Arg(name: 'grou')]),
                  Option(
                      name: '--memory',
                      description: 'Memory in MB for the VM',
                      args: [Arg(name: 'memory', defaultValue: '')])
                ])
          ],
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'App name to operate on',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description:
                    'Path to an app config file or directory containing one',
                args: [
                  Arg(
                      name: 'config',
                      defaultValue: './fly.toml',
                      template: 'filepaths')
                ])
          ]),
      Subcommand(
          name: 'secrets',
          description: 'Manage app secrets',
          subcommands: [
            Subcommand(
                name: 'import',
                description: 'Read secrets in name=value from stdin',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--detach',
                      description:
                          'Return immediately instead of monitoring deployment progress')
                ]),
            Subcommand(
                name: 'list',
                description: 'Lists the secrets available to the app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(
                name: 'set',
                description: 'Set one or more encrypted secrets for an app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--detach',
                      description:
                          'Return immediately instead of monitoring deployment progress')
                ]),
            Subcommand(
                name: 'unset',
                description: 'Remove encrypted secrets from an app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: '--detach',
                      description:
                          'Return immediately instead of monitoring deployment progress')
                ])
          ],
          options: [
            Option(
                name: ['--app', '-a'],
                description: 'App name to operate on',
                args: [
                  Arg(
                      name: 'app',
                      // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: ['--config', '-c'],
                description:
                    'Path to an app config file or directory containing one',
                args: [
                  Arg(
                      name: 'config',
                      defaultValue: './fly.toml',
                      template: 'filepaths')
                ])
          ]),
      Subcommand(
          name: 'ssh',
          description: 'Commands that manage SSH credentials',
          subcommands: [
            Subcommand(
                name: 'console',
                description: 'Connect to a running instance of the current app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--command', '-C'],
                      description: 'Command to run on SSH session',
                      args: [Arg(name: 'comman')]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ]),
                  Option(
                      name: ['--probe', '-p'],
                      description:
                          'Test WireGuard connection after establishing'),
                  Option(
                      name: ['--region', '-r'],
                      description: 'Region to create WireGuard connection in',
                      args: [Arg(name: 'regio')]),
                  Option(
                      name: ['--select', '-s'],
                      description: 'Select available instances')
                ]),
            Subcommand(
                name: 'establish',
                description:
                    'Create a root SSH certificate for your organization'),
            Subcommand(
                name: 'issue',
                description: 'Issue a new SSH credential',
                options: [
                  Option(name: '--agent', description: 'Add key to SSH agent'),
                  Option(
                      name: ['--dotssh', '-d'],
                      description: 'Store keys in ~/.ssh, like normal keys'),
                  Option(
                      name: '--hours',
                      description: 'Expiration, in hours (<72)',
                      args: [Arg(name: 'hours', defaultValue: '2')]),
                  Option(
                      name: ['--overwrite', '-o'],
                      description:
                          'Overwrite existing SSH keys in same location, if we generated them'),
                  Option(
                      name: ['--username', '-u'],
                      description: 'Unix username for SSH cert',
                      args: [Arg(name: 'usernam')])
                ]),
            Subcommand(name: 'log', description: 'Log of all issued certs')
          ]),
      Subcommand(name: 'status', description: 'Show app status', subcommands: [
        Subcommand(
            name: 'instance',
            description: 'Show instance status',
            options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'Application name',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description: 'Path to application configuration file',
                  args: [Arg(name: 'config', template: 'filepath')])
            ])
      ], options: [
        Option(name: '--all', description: 'Show completed instances'),
        Option(
            name: ['--app', '-a'],
            description: 'Application name',
            args: [
              Arg(
                  name: 'app',
                  // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                  generators: null)
            ]),
        Option(
            name: ['--config', '-c'],
            description: 'Path to application configuration file',
            args: [Arg(name: 'config', template: 'filepath')]),
        Option(
            name: '--deployment', description: 'Always show deployment status'),
        Option(
            name: '--rate',
            description: 'Refresh Rate for --watch',
            args: [Arg(name: 'rate', defaultValue: '')]),
        Option(name: '--watch', description: 'Refresh details')
      ]),
      Subcommand(name: 'suspend', description: 'Suspend an application'),
      Subcommand(
          name: 'turboku',
          description: 'Launches heroku apps',
          options: [
            Option(
                name: '--heroku-token',
                description: 'Heroku API token',
                args: [Arg(name: 'heroku-toke')]),
            Option(
                name: '--keep',
                description: 'Keep the app directory after deployment'),
            Option(
                name: '--name',
                description: 'The name of the new app',
                args: [Arg(name: 'nam')]),
            Option(
                name: '--now', description: 'Deploy now without confirmation'),
            Option(
                name: '--org',
                description: 'The organization that will own the app',
                args: [
                  Arg(
                      name: 'org',
                      // TS_UNCONVERTED_START (generators)
// flyOrgsGenerato
// TS_UNCONVERTED_END
                      generators: null)
                ]),
            Option(
                name: '--region',
                description: 'The region to launch the new app in',
                args: [Arg(name: 'regio')])
          ]),
      Subcommand(
          name: 'version',
          description: 'Show version information for the flyctl command',
          subcommands: [
            Subcommand(
                name: 'update',
                description:
                    'Checks for available updates and automatically updates')
          ],
          options: [
            Option(
                name: ['--saveinstall', '-s'],
                description: 'Save parameter in config',
                args: [Arg(name: 'saveinstal')])
          ]),
      Subcommand(
          name: 'vm',
          description: 'Commands that manage VM instances',
          subcommands: [
            Subcommand(name: 'restart', description: 'Restart a VM', options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'App name to operate on',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description:
                      'Path to an app config file or directory containing one',
                  args: [
                    Arg(
                        name: 'config',
                        defaultValue: './fly.toml',
                        template: 'filepaths')
                  ])
            ]),
            Subcommand(
                name: 'status',
                description: 'Show a VM\'s status',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'App name to operate on',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description:
                          'Path to an app config file or directory containing one',
                      args: [
                        Arg(
                            name: 'config',
                            defaultValue: './fly.toml',
                            template: 'filepaths')
                      ])
                ]),
            Subcommand(name: 'stop', description: 'Stop a VM', options: [
              Option(
                  name: ['--app', '-a'],
                  description: 'App name to operate on',
                  args: [
                    Arg(
                        name: 'app',
                        // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                        generators: null)
                  ]),
              Option(
                  name: ['--config', '-c'],
                  description:
                      'Path to an app config file or directory containing one',
                  args: [
                    Arg(
                        name: 'config',
                        defaultValue: './fly.toml',
                        template: 'filepaths')
                  ])
            ])
          ]),
      Subcommand(
          name: ['vol', 'volumes'],
          description: 'Volume management commands',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Create new volume for app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')]),
                  Option(
                      name: '--no-encryption',
                      description: 'Do not encrypt the volume contents'),
                  Option(
                      name: ['--region', '-r'],
                      description: 'The region to operate on',
                      args: [Arg(name: 'regio')]),
                  Option(
                      name: '--require-unique-zone',
                      description:
                          'Require volume to be placed in separate hardware zone from existing volumes'),
                  Option(
                      name: ['--size', '-s'],
                      description: 'Size of volume in gigabytes',
                      args: [Arg(name: 'size', defaultValue: '')])
                ]),
            Subcommand(
                name: 'delete',
                description: 'Delete a volume from the app',
                options: [
                  Option(
                      name: ['--yes', '-y'],
                      description: 'Accept all confirmations')
                ]),
            Subcommand(
                name: 'list',
                description: 'List the volumes for app',
                options: [
                  Option(
                      name: ['--app', '-a'],
                      description: 'Application name',
                      args: [
                        Arg(
                            name: 'app',
                            // TS_UNCONVERTED_START (generators)
// flyAppsGenerato
// TS_UNCONVERTED_END
                            generators: null)
                      ]),
                  Option(
                      name: ['--config', '-c'],
                      description: 'Path to application configuration file',
                      args: [Arg(name: 'config', template: 'filepath')])
                ]),
            Subcommand(
                name: 'show', description: 'Show details of an app\'s volume'),
            Subcommand(
                name: ['snaps', 'snapshots'],
                description: 'Manage volume snapshots',
                subcommands: [
                  Subcommand(name: 'list', description: 'List snapshots')
                ])
          ]),
      Subcommand(
          name: ['wg', 'wireguard'],
          description: 'Commands that manage WireGuard peer connections',
          subcommands: [
            Subcommand(
                name: 'create', description: 'Add a WireGuard peer connection'),
            Subcommand(
                name: 'list',
                description: 'List all WireGuard peer connections'),
            Subcommand(
                name: 'remove',
                description: 'Remove a WireGuard peer connection'),
            Subcommand(
                name: 'reset',
                description:
                    'Reset WireGuard peer connection for an organization'),
            Subcommand(
                name: 'status',
                description: 'Get status a WireGuard peer connection'),
            Subcommand(
                name: 'token',
                description:
                    'Commands that managed WireGuard delegated access tokens',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description: 'Create a new WireGuard token'),
                  Subcommand(
                      name: 'delete',
                      description:
                          'Delete a WireGuard token; token is name:<name> or token:<token>'),
                  Subcommand(
                      name: 'list', description: 'List all WireGuard tokens'),
                  Subcommand(
                      name: 'start',
                      description:
                          'Start a new WireGuard peer connection associated with a token (set FLY_WIREGUARD_TOKEN)'),
                  Subcommand(
                      name: 'update',
                      description:
                          'Rekey a WireGuard peer connection associated with a token (set FLY_WIREGUARD_TOKEN)')
                ]),
            Subcommand(
                name: 'websockets',
                description:
                    'Enable or disable WireGuard tunneling over WebSockets')
          ]),
      Subcommand(
          name: 'help',
          description: 'Help about any command',
          subcommands: [
            Subcommand(name: 'Use', description: 'Short'),
            Subcommand(
                name: 'agent',
                description:
                    'Commands that manage the Fly agent, a background process that manages flyctl wireguard connections',
                subcommands: [
                  Subcommand(name: 'ping', description: 'Ping the Fly agent'),
                  Subcommand(
                      name: 'restart', description: 'Restart the Fly agent'),
                  Subcommand(
                      name: ['daemon-start', 'run'],
                      description: 'Run the Fly agent in the foreground'),
                  Subcommand(name: 'start', description: 'Start the Fly agent'),
                  Subcommand(name: 'stop', description: 'Stop the Fly agent')
                ]),
            Subcommand(name: 'apps', description: 'Manage apps', subcommands: [
              Subcommand(
                  name: 'create', description: 'Create a new application'),
              Subcommand(
                  name: 'destroy', description: 'Permanently destroys an app'),
              Subcommand(name: 'list', description: 'List applications'),
              Subcommand(
                  name: 'move',
                  description: 'Move an app to another organization'),
              Subcommand(
                  name: 'open',
                  description: 'Open browser to current deployed application'),
              Subcommand(name: 'releases', description: 'List app releases'),
              Subcommand(name: 'restart', description: 'Restart an application')
            ]),
            Subcommand(
                name: 'auth',
                description: 'Manage authentication',
                subcommands: [
                  Subcommand(
                      name: 'docker', description: 'Authenticate docker'),
                  Subcommand(name: 'login', description: 'Log in a user'),
                  Subcommand(
                      name: 'logout',
                      description: 'Logs out the currently logged in user'),
                  Subcommand(
                      name: 'signup', description: 'Create a new fly account'),
                  Subcommand(
                      name: 'token',
                      description: 'Show the current auth token'),
                  Subcommand(
                      name: 'whoami',
                      description:
                          'Displays the users email address/service identity currently authenticated and in use')
                ]),
            Subcommand(
                name: 'autoscale',
                description: 'Autoscaling app resources',
                subcommands: [
                  Subcommand(
                      name: 'balanced',
                      description:
                          'Configure a traffic balanced app with params (min=int max=int)'),
                  Subcommand(
                      name: 'disable', description: 'Disable autoscaling'),
                  Subcommand(
                      name: 'set',
                      description: 'Set current models autoscaling parameters'),
                  Subcommand(
                      name: 'show',
                      description: 'Show current autoscaling configuration'),
                  Subcommand(
                      name: 'standard',
                      description:
                          'Configure a standard balanced app with params (min=int max=int)')
                ]),
            Subcommand(
                name: 'builds',
                description: 'Manage application builds',
                subcommands: [
                  Subcommand(name: 'list', description: 'List builds')
                ]),
            Subcommand(
                name: 'certs',
                description: 'Manage certificates',
                subcommands: [
                  Subcommand(
                      name: ['create', 'add'],
                      description: 'Add a certificate for an app'),
                  Subcommand(
                      name: 'check', description: 'Checks DNS configuration'),
                  Subcommand(
                      name: 'list',
                      description: 'List certificates for an app'),
                  Subcommand(
                      name: ['delete', 'remove'],
                      description: 'Removes a certificate from an app'),
                  Subcommand(
                      name: 'show',
                      description: 'Shows certificate information')
                ]),
            Subcommand(
                name: 'checks',
                description: 'Manage health checks',
                subcommands: [
                  Subcommand(
                      name: 'handlers',
                      description: 'Manage health check handlers',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description: 'Create a health check handler'),
                        Subcommand(
                            name: 'delete',
                            description: 'Delete a health check handler'),
                        Subcommand(
                            name: 'list',
                            description: 'List health check handlers')
                      ]),
                  Subcommand(
                      name: 'list', description: 'List app health checks')
                ]),
            Subcommand(
                name: 'completion',
                description:
                    'Generate the autocompletion script for the specified shell',
                subcommands: [
                  Subcommand(
                      name: 'bash',
                      description:
                          'Generate the autocompletion script for bash'),
                  Subcommand(
                      name: 'fish',
                      description:
                          'Generate the autocompletion script for fish'),
                  Subcommand(
                      name: 'powershell',
                      description:
                          'Generate the autocompletion script for powershell'),
                  Subcommand(
                      name: 'zsh',
                      description: 'Generate the autocompletion script for zsh')
                ]),
            Subcommand(
                name: 'config',
                description: 'Manage an app\'s configuration',
                subcommands: [
                  Subcommand(
                      name: 'display',
                      description: 'Display an app\'s configuration'),
                  Subcommand(
                      name: 'env',
                      description:
                          'Display an app\'s runtime environment variables'),
                  Subcommand(
                      name: 'save', description: 'Save an app\'s config file'),
                  Subcommand(
                      name: 'validate',
                      description: 'Validate an app\'s config file')
                ]),
            Subcommand(name: 'create', description: 'Create a new application'),
            Subcommand(
                name: 'curl',
                description: 'Run a performance test against a URL'),
            Subcommand(
                name: ['dash', 'dashboard'],
                description: 'Open web browser on Fly Web UI for this app',
                subcommands: [
                  Subcommand(
                      name: 'metrics',
                      description:
                          'Open web browser on Fly Web UI for this app\'s metrics')
                ]),
            Subcommand(name: 'deploy', description: 'Deploy Fly applications'),
            Subcommand(
                name: 'destroy', description: 'Permanently destroys an app'),
            Subcommand(
                name: 'dig',
                description:
                    'Make DNS requests against Fly.io\'s internal DNS server'),
            Subcommand(
                name: 'dns-records',
                description: 'Manage DNS records',
                subcommands: [
                  Subcommand(name: 'export', description: 'Export DNS records'),
                  Subcommand(name: 'import', description: 'Import DNS records'),
                  Subcommand(name: 'list', description: 'List DNS records')
                ]),
            Subcommand(name: 'docs', description: 'View Fly documentation'),
            Subcommand(
                name: 'doctor',
                description:
                    'The DOCTOR command allows you to debug your Fly environment',
                subcommands: [
                  Subcommand(
                      name: 'diag',
                      description:
                          'Send diagnostic information about your applications back to Fly.io')
                ]),
            Subcommand(
                name: 'domains',
                description: 'Manage domains',
                subcommands: [
                  Subcommand(name: 'add', description: 'Add a domain'),
                  Subcommand(name: 'list', description: 'List domains'),
                  Subcommand(
                      name: 'register', description: 'Register a domain'),
                  Subcommand(name: 'show', description: 'Show domain')
                ]),
            Subcommand(
                name: 'history', description: 'List an app\'s change history'),
            Subcommand(
                name: ['img', 'image'],
                description: 'Manage app image',
                subcommands: [
                  Subcommand(name: 'show', description: 'Show image details'),
                  Subcommand(
                      name: 'update',
                      description:
                          'Updates the app\'s image to the latest available version. (Fly Postgres only)')
                ]),
            Subcommand(
                name: 'info', description: 'Show detailed app information'),
            Subcommand(
                name: 'ips',
                description: 'Manage IP addresses for apps',
                subcommands: [
                  Subcommand(
                      name: 'allocate-v4',
                      description: 'Allocate an IPv4 address'),
                  Subcommand(
                      name: 'allocate-v6',
                      description: 'Allocate an IPv6 address'),
                  Subcommand(
                      name: 'list', description: 'List allocated IP addresses'),
                  Subcommand(
                      name: 'private',
                      description: 'List instances private IP addresses'),
                  Subcommand(
                      name: 'release', description: 'Release an IP address')
                ]),
            Subcommand(name: 'launch', description: 'Launch a new app'),
            Subcommand(
                name: ['ls', 'list'],
                description: 'Lists your Fly resources',
                subcommands: [
                  Subcommand(name: 'apps', description: 'Lists all your apps'),
                  Subcommand(
                      name: 'orgs', description: 'List all your organizations')
                ]),
            Subcommand(name: 'logs', description: 'View app logs'),
            Subcommand(
                name: ['machines', 'm', 'machine'],
                description: 'Commands that manage machines',
                subcommands: [
                  Subcommand(
                      name: 'clone', description: 'Clones a Fly Machine'),
                  Subcommand(
                      name: 'kill',
                      description: 'Kill (SIGKILL) a Fly machine'),
                  Subcommand(name: 'list', description: 'List Fly machines'),
                  Subcommand(
                      name: ['rm', 'remove'],
                      description: 'Remove a Fly machine'),
                  Subcommand(name: 'run', description: 'Run a machine'),
                  Subcommand(name: 'start', description: 'Start a Fly machine'),
                  Subcommand(
                      name: 'status',
                      description: 'Show current status of a running machine'),
                  Subcommand(name: 'stop', description: 'Stop a Fly machine')
                ]),
            Subcommand(
                name: 'monitor',
                description:
                    'Monitor currently running application deployments'),
            Subcommand(
                name: 'move',
                description: 'Move an app to another organization'),
            Subcommand(
                name: 'open',
                description: 'Open browser to current deployed application'),
            Subcommand(
                name: 'orgs',
                description: 'Commands for managing Fly organizations',
                subcommands: [
                  Subcommand(
                      name: 'builder',
                      description: 'Manage remote builder',
                      subcommands: [
                        Subcommand(
                            name: 'show',
                            description:
                                'Show details about an organization\'s remote builder image'),
                        Subcommand(
                            name: 'update',
                            description:
                                'Update an organization\'s remote builder image')
                      ]),
                  Subcommand(
                      name: 'create', description: 'Create an organization'),
                  Subcommand(
                      name: 'delete', description: 'Delete an organization'),
                  Subcommand(
                      name: 'invite',
                      description: 'Invite user (by email) to organization'),
                  Subcommand(
                      name: 'list',
                      description: 'Lists organizations for current user'),
                  Subcommand(
                      name: 'remove',
                      description: 'Remove a user from an organization'),
                  Subcommand(
                      name: 'show',
                      description: 'Show information about an organization')
                ]),
            Subcommand(
                name: 'ping',
                description: 'Test connectivity with ICMP ping messages'),
            Subcommand(
                name: 'platform',
                description: 'Fly platform information',
                subcommands: [
                  Subcommand(name: 'regions', description: 'List regions'),
                  Subcommand(
                      name: 'status',
                      description: 'Show current platform status'),
                  Subcommand(name: 'vm-sizes', description: 'List VM Sizes')
                ]),
            Subcommand(
                name: ['pg', 'postgres'],
                description: 'Manage postgres clusters',
                subcommands: [
                  Subcommand(
                      name: 'attach',
                      description: 'Attach a postgres cluster to an app'),
                  Subcommand(
                      name: 'connect',
                      description: 'Connect to the Postgres console'),
                  Subcommand(
                      name: 'create', description: 'Create a postgres cluster'),
                  Subcommand(
                      name: 'db',
                      description: 'Manage databases in a cluster',
                      subcommands: [
                        Subcommand(
                            name: 'list',
                            description: 'List databases in a cluster')
                      ]),
                  Subcommand(
                      name: 'detach',
                      description: 'Detach a postgres cluster from an app'),
                  Subcommand(
                      name: 'list', description: 'List postgres clusters'),
                  Subcommand(
                      name: 'users',
                      description: 'Manage users in a cluster',
                      subcommands: [
                        Subcommand(
                            name: 'list',
                            description: 'List users in a cluster')
                      ])
                ]),
            Subcommand(
                name: 'proxy', description: 'Proxies connections to a fly VM'),
            Subcommand(
                name: 'regions',
                description: 'Manage regions',
                subcommands: [
                  Subcommand(
                      name: 'add',
                      description:
                          'Allow the app to run in the provided regions'),
                  Subcommand(
                      name: 'backup',
                      description:
                          'Sets the backup region pool with provided regions'),
                  Subcommand(
                      name: 'list',
                      description:
                          'Shows the list of regions the app is allowed to run in'),
                  Subcommand(
                      name: 'remove',
                      description:
                          'Prevent the app from running in the provided regions'),
                  Subcommand(
                      name: 'set',
                      description: 'Sets the region pool with provided regions')
                ]),
            Subcommand(name: 'releases', description: 'List app releases'),
            Subcommand(name: 'restart', description: 'Restart an application'),
            Subcommand(name: 'resume', description: 'Resume an application'),
            Subcommand(
                name: 'scale',
                description: 'Scale app resources',
                subcommands: [
                  Subcommand(
                      name: 'count',
                      description:
                          'Change an app\'s VM count to the given value'),
                  Subcommand(name: 'memory', description: 'Set VM memory'),
                  Subcommand(
                      name: 'show', description: 'Show current resources'),
                  Subcommand(
                      name: 'vm',
                      description:
                          'Change an app\'s VM to a named size (eg. shared-cpu-1x, dedicated-cpu-1x, dedicated-cpu-2x...)')
                ]),
            Subcommand(
                name: 'secrets',
                description: 'Manage app secrets',
                subcommands: [
                  Subcommand(
                      name: 'import',
                      description: 'Read secrets in name=value from stdin'),
                  Subcommand(
                      name: 'list',
                      description: 'Lists the secrets available to the app'),
                  Subcommand(
                      name: 'set',
                      description:
                          'Set one or more encrypted secrets for an app'),
                  Subcommand(
                      name: 'unset',
                      description: 'Remove encrypted secrets from an app')
                ]),
            Subcommand(
                name: 'ssh',
                description: 'Commands that manage SSH credentials',
                subcommands: [
                  Subcommand(
                      name: 'console',
                      description:
                          'Connect to a running instance of the current app'),
                  Subcommand(
                      name: 'establish',
                      description:
                          'Create a root SSH certificate for your organization'),
                  Subcommand(
                      name: 'issue', description: 'Issue a new SSH credential'),
                  Subcommand(
                      name: 'log', description: 'Log of all issued certs')
                ]),
            Subcommand(
                name: 'status',
                description: 'Show app status',
                subcommands: [
                  Subcommand(
                      name: 'instance', description: 'Show instance status')
                ]),
            Subcommand(name: 'suspend', description: 'Suspend an application'),
            Subcommand(name: 'turboku', description: 'Launches heroku apps'),
            Subcommand(
                name: 'version',
                description: 'Show version information for the flyctl command',
                subcommands: [
                  Subcommand(
                      name: 'update',
                      description:
                          'Checks for available updates and automatically updates')
                ]),
            Subcommand(
                name: 'vm',
                description: 'Commands that manage VM instances',
                subcommands: [
                  Subcommand(name: 'restart', description: 'Restart a VM'),
                  Subcommand(
                      name: 'status', description: 'Show a VM\'s status'),
                  Subcommand(name: 'stop', description: 'Stop a VM')
                ]),
            Subcommand(
                name: ['vol', 'volumes'],
                description: 'Volume management commands',
                subcommands: [
                  Subcommand(
                      name: 'create', description: 'Create new volume for app'),
                  Subcommand(
                      name: 'delete',
                      description: 'Delete a volume from the app'),
                  Subcommand(
                      name: 'list', description: 'List the volumes for app'),
                  Subcommand(
                      name: 'show',
                      description: 'Show details of an app\'s volume'),
                  Subcommand(
                      name: ['snaps', 'snapshots'],
                      description: 'Manage volume snapshots',
                      subcommands: [
                        Subcommand(name: 'list', description: 'List snapshots')
                      ])
                ]),
            Subcommand(
                name: ['wg', 'wireguard'],
                description: 'Commands that manage WireGuard peer connections',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description: 'Add a WireGuard peer connection'),
                  Subcommand(
                      name: 'list',
                      description: 'List all WireGuard peer connections'),
                  Subcommand(
                      name: 'remove',
                      description: 'Remove a WireGuard peer connection'),
                  Subcommand(
                      name: 'reset',
                      description:
                          'Reset WireGuard peer connection for an organization'),
                  Subcommand(
                      name: 'status',
                      description: 'Get status a WireGuard peer connection'),
                  Subcommand(
                      name: 'token',
                      description:
                          'Commands that managed WireGuard delegated access tokens',
                      subcommands: [
                        Subcommand(
                            name: 'create',
                            description: 'Create a new WireGuard token'),
                        Subcommand(
                            name: 'delete',
                            description:
                                'Delete a WireGuard token; token is name:<name> or token:<token>'),
                        Subcommand(
                            name: 'list',
                            description: 'List all WireGuard tokens'),
                        Subcommand(
                            name: 'start',
                            description:
                                'Start a new WireGuard peer connection associated with a token (set FLY_WIREGUARD_TOKEN)'),
                        Subcommand(
                            name: 'update',
                            description:
                                'Rekey a WireGuard peer connection associated with a token (set FLY_WIREGUARD_TOKEN)')
                      ]),
                  Subcommand(
                      name: 'websockets',
                      description:
                          'Enable or disable WireGuard tunneling over WebSockets')
                ])
          ])
    ],
    options: [
      Option(
          name: ['--access-token', '-t'],
          description: 'Fly API Access Token',
          isPersistent: true,
          args: [Arg(name: 'access-toke')]),
      Option(
          name: '--builtinsfile',
          description: 'Load builtins from named file',
          isPersistent: true,
          args: [Arg(name: 'builtinsfil')]),
      Option(
          name: ['--json', '-j'],
          description: 'Json output',
          isPersistent: true),
      Option(
          name: '--verbose', description: 'Verbose output', isPersistent: true),
      Option(
          name: ['--help', '-h'],
          description: 'Display help',
          isPersistent: true)
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (flyAppsGenerator)
// const flyAppsGenerator: Fig.Generator = {
//   script: ["flyctl", "apps", "list", "--json"],
//   postProcess: (output) => {
//     const json: FlyApp[] = JSON.parse(output);
//
//     return json.map((app) => {
//       const status = app.Status;
//       return {
//         name: app.ID,
//         description: `Organization: ${app.Organization.Slug}`,
//         icon:
//           status == "running" || status == "deployed"
//             ? "🟢"
//             : status == "pending"
//               ? "🟡"
//               : "🔴",
//       };
//     });
//   }
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (flyOrgsGenerator)
// const flyOrgsGenerator: Fig.Generator = {
//   script: ["fly", "orgs", "list", "--json"],
//   postProcess: (output) => {
//     const json: Record<string, string> = JSON.parse(output);
//
//     // sort such that "personal" is always first, then alphabetically
//     return Object.entries(json)
//       .sort(([id1, name1], [id2, name2]) => {
//         if (id1 == "personal") {
//           return -1;
//         } else if (id2 == "personal") {
//           return 1;
//         } else {
//           return name1.localeCompare(name2);
//         }
//       })
//       .map(([id, name]) => ({
//         name: id,
//         description: name,
//         icon: id == "personal" ? "👤" : "🏢",
//       }));
//   },
// };
// TS_GENERATOR_BLOCK_END
