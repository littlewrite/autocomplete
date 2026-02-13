// Auto-generated from TypeScript source: northflank.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `northflank` CLI
final FigSpec northflankSpec = FigSpec(
  name: 'northflank',
  description: 'Manage your Northflank resources from the command line',
  subcommands: [

    Subcommand(
      name: ['forward', 'fwd'],
      description: 'Port-forwarding for Northflank services and addons',
      subcommands: [

        Subcommand(
          name: 'all',
          description: 'Port-forwarding for all services and addons in the given project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'Project for forwarding',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--skipHostnames',
              description: 'Only expose on IP address, not on hostnames. With this option, no root permissions are required'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'service',
          description: 'Port-forwarding for the specified service',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'Project for forwarding',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: ['--service', '--serviceId'],
              description: 'Service to forward',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--skipHostnames',
              description: 'Only expose on IP address, not on hostnames. With this option, no root permissions are required'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'addon',
          description: 'Port-forwarding for the specified addon',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'Project for forwarding',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'Addon to forward',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: '--skipHostnames',
              description: 'Only expose on IP address, not on hostnames. With this option, no root permissions are required'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: ['command-exec', 'exec'],
      description: 'Command execution (exec) for Northflank services and jobs',
      subcommands: [

        Subcommand(
          name: 'service',
          description: 'Command exec for the specified service',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'Project for exec',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: ['--service', '--serviceId'],
              description: 'Service to exec into',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: ['--container', '--containerId'],
              description: 'Container to exec into (random container will be chosen if not specified)',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: '--shell-cmd',
              description: 'Run command with shell (e.g. bash,sh). If not set and no command is provided, several standard shells will be attempted. If not set and a command is provided, the command will run without shell',
              args: [
                Arg(
                name: 'SHELL-CMD'
              )
              ]
            ),
            Option(
              name: '--user',
              description: 'Run command with this user',
              args: [
                Arg(
                name: 'USER'
              )
              ]
            ),
            Option(
              name: '--group',
              description: 'Run command with this group',
              args: [
                Arg(
                name: 'GROUP'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['--cmd', '--command'],
              description: 'Command to execute, if --shell option is present, it will run in the specified shell, otherwise',
              args: [
                Arg(
                name: 'COMMAND'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'job',
          description: 'Command exec for the specified job',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'Project for exec',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: ['--job', '--jobId'],
              description: 'Job to exec into',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: ['--container', '--containerId'],
              description: 'Container to exec into (random container will be chosen if not specified)',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: '--shell-cmd',
              description: 'Run command with shell (e.g. bash,sh). If not set and no command is provided, several standard shells will be attempted. If not set and a command is provided, the command will run without shell',
              args: [
                Arg(
                name: 'SHELL-CMD'
              )
              ]
            ),
            Option(
              name: '--user',
              description: 'Run command with this user',
              args: [
                Arg(
                name: 'USER'
              )
              ]
            ),
            Option(
              name: '--group',
              description: 'Run command with this group',
              args: [
                Arg(
                name: 'GROUP'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['--cmd', '--command'],
              description: 'Command to execute, if --shell option is present, it will run in the specified shell, otherwise',
              args: [
                Arg(
                name: 'COMMAND'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Connect the CLI to your Northflank account',
      options: [

        Option(
          name: '--token-login',
          description: 'Use manual login with API token'
        ),
        Option(
          name: '--do-not-open-browser',
          description: 'Use browser login but only print URL which can be used to login'
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name for login context',
          args: [
            Arg(
            name: 'NAME'
          )
          ]
        ),
        Option(
          name: ['-t', '--token'],
          description: 'Token for this context. When set, browser login is not used',
          args: [
            Arg(
            name: 'TOKEN'
          )
          ]
        ),
        Option(
          name: '--host',
          description: 'Host url for this context',
          args: [
            Arg(
            name: 'HOST',
            isOptional: true,
            defaultValue: 'https://api.northflank.com'
          )
          ]
        ),
        Option(
          name: '--override',
          description: 'Override existing contexts (this will remove project and service context)'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: ['context', 'contexts', 'ctx'],
      description: 'Retrieve and update local context settings',
      subcommands: [

        Subcommand(
          name: 'ls',
          description: 'List all available contexts',
          options: [

            Option(
              name: '--all',
              description: 'Shows full context information (including tokens)'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'use',
          description: 'Switch between your local contexts',
          subcommands: [

            Subcommand(
              name: 'project',
              description: 'Change the default project in the current local context',
              options: [

                Option(
                  name: ['-i', '--id'],
                  description: 'Project name (internal id) to use as default in context',
                  args: [
                    Arg(
                    name: 'ID'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'job',
              description: 'Change the default job in the current local context',
              options: [

                Option(
                  name: ['-i', '--id'],
                  description: 'Job name (internal id) to use as default in context',
                  args: [
                    Arg(
                    name: 'ID'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'service',
              description: 'Change the default service in the current local context',
              options: [

                Option(
                  name: ['-i', '--id'],
                  description: 'Service name (internal id) to use as default in context',
                  args: [
                    Arg(
                    name: 'ID'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-n', '--name'],
              description: 'Change current context to context identified by this name',
              args: [
                Arg(
                name: 'NAME'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['remove', 'delete', 'rm'],
          description: 'Remove a context',
          options: [

            Option(
              name: ['-i', '--id'],
              description: 'Local context name to remove',
              args: [
                Arg(
                name: 'ID'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['update-token', 'set-token'],
          description: 'Update token for current context',
          options: [

            Option(
              name: ['-t', '--token'],
              description: 'Token for this context',
              args: [
                Arg(
                name: 'TOKEN'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List Northflank resources',
      subcommands: [

        Subcommand(
          name: ['projects', 'project', 'prj'],
          description: 'Lists projects for the authenticated user or team',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['addons', 'addon', 'adn'],
          description: 'Gets a list of addons belonging to the project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['invoices', 'invoice', 'inv'],
          description: 'Get a list of past invoices',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'providers',
          description: 'Lists supported cloud providers',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'integrations',
          description: 'Lists integrations for the authenticated user or team',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'clusters',
          description: 'Lists clusters for the authenticated user or team',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['jobs', 'job'],
          description: 'Gets a list of jobs belonging to the project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'log-sinks',
          description: 'Gets a list of log sinks added to this account',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'registries',
          description: 'Lists the container registry credentials saved to this account. Does not display secrets',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['domains', 'domain', 'dmn'],
          description: 'Lists available domains',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['plans', 'plan', 'pln'],
          description: 'Lists available billing plans',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['regions', 'region', 'rgn'],
          description: 'Lists available project regions',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'vcs',
          description: 'Lists linked version control providers',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'pipelines',
          description: 'Lists all pipelines for a project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'release-flow-runs',
          description: 'Lists runs of a release flow',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--stage',
              description: 'Stage of the pipeline, example: development',
              args: [
                Arg(
                name: 'STAG'
              )
              ]
            ),
            Option(
              name: ['--pipeline', '--pipelineId'],
              description: 'ID of the pipeline, example: example-pipeline',
              args: [
                Arg(
                name: 'PIPELINEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['secrets', 'secret', 'scrt'],
          description: 'Gets a list of secrets belonging to the project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['services', 'service', 'svc'],
          description: 'Gets a list of services belonging to the project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['templates', 'template', 'tpl'],
          description: 'Get a list of templates',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'template-runs',
          description: 'Get a list of template runs',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--template', '--templateId'],
              description: 'ID of the template, example: example-template',
              args: [
                Arg(
                name: 'TEMPLATEI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['repos', 'repository', 'repositories', 'repo'],
          description: 'Gets a list of repositories accessible to this account',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--vcs_service',
              description: 'OPTIONAL: If provided, only returns repositories belonging to this version control provider., example: github',
              args: [
                Arg(
                name: 'VCS_SERVIC'
              )
              ]
            ),
            Option(
              name: '--self_hosted_vcs_id',
              description: 'OPTIONAL: If provided, only returns repositories belonging to this self-hosted version control provider',
              args: [
                Arg(
                name: 'SELF_HOSTED_VCS_I'
              )
              ]
            ),
            Option(
              name: '--account_login',
              description: 'OPTIONAL: If provided, only returns repositories that can be accessed by the linked version control account with this name., example: example-user',
              args: [
                Arg(
                name: 'ACCOUNT_LOGI'
              )
              ]
            ),
            Option(
              name: '--vcs_link_id',
              description: 'OPTIONAL: If provided, only returns repositories belong to that VCS link',
              args: [
                Arg(
                name: 'VCS_LINK_I'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['branches', 'branch', 'brn'],
          description: 'Gets a list of branches for the repo',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--repositoryName',
              description: 'Name of the repository, example: next-js-example',
              args: [
                Arg(
                name: 'REPOSITORYNAM'
              )
              ]
            ),
            Option(
              name: '--repositoryOwner',
              description: 'Name of the owner of the repository, example: northflank-examples',
              args: [
                Arg(
                name: 'REPOSITORYOWNE'
              )
              ]
            ),
            Option(
              name: '--vcsService',
              description: 'Version control provider of the repository, example: github',
              args: [
                Arg(
                name: 'VCSSERVIC'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['volumes', 'volume', 'vol'],
          description: 'Gets a list of volumes belonging to the project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml|custom-columns=<column1>,<column2>,...\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create Northflank resources',
      subcommands: [

        Subcommand(
          name: ['project', 'projects', 'prj'],
          description: 'Creates a new project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Creates a new addon',
          subcommands: [

            Subcommand(
              name: 'backup-schedule',
              description: 'Create a new backup schedule for an addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'integration',
          description: 'Creates a new integration',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'cluster',
          description: 'Creates a new cluster',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Job Northflank resources',
          subcommands: [

            Subcommand(
              name: 'manual',
              description: 'Creates a new manual job that only runs when initiated via the UI, CLI, API or JS client',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'cron',
              description: 'Creates a new cron job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'log-sink',
          description: 'Creates a new log sink',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['domain', 'domains', 'dmn'],
          description: 'Registers a new domain',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['secret', 'secrets', 'scrt'],
          description: 'Creates a secret with the specified payload',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Service Northflank resources',
          subcommands: [

            Subcommand(
              name: 'combined',
              description: 'Creates a new combined service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'deployment',
              description: 'Creates a new deployment service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build',
              description: 'Creates a new build service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'custom-vcs',
          description: 'CustomVcs Northflank resources',
          subcommands: [

            Subcommand(
              name: 'token',
              description: 'Generate a token for a specific VCS link',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--vcsLink', '--vcsLinkId'],
                  description: 'ID of the version control link, example: 63ebb6ce2ccc6c7affdbf253',
                  args: [
                    Arg(
                    name: 'VCSLINKI'
                  )
                  ]
                ),
                Option(
                  name: ['--customVCS', '--customVCSId'],
                  description: 'ID of the custom VCS, example: cdb3d41f-0dd8-49ad-92d5-7544c98c490b',
                  args: [
                    Arg(
                    name: 'CUSTOMVCSI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['volume', 'volumes', 'vol'],
          description: 'Creates a volume with the specified payload',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Get information about Northflank resources',
      subcommands: [

        Subcommand(
          name: ['project', 'projects', 'prj'],
          description: 'Get information about the given project',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Gets information about the given addon',
          subcommands: [

            Subcommand(
              name: ['credentials', 'credential', 'cred'],
              description: 'Returns the credentials for connecting to the given addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['logs', 'log'],
              description: 'Get log for the specified addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'projectId'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'Addon to get logs from',
                  args: [
                    Arg(
                    name: 'addonId'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'containerId'
                  )
                  ]
                ),
                Option(
                  name: ['-f', '--tail'],
                  description: 'Tail will stream logs in real-time. Session will be kept open'
                ),
                Option(
                  name: ['-l', '--lineLimit'],
                  description: 'Number of lines to return',
                  args: [
                    Arg(
                    name: 'limit'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get logs generated after this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get logs generated before this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-d', '--direction'],
                  description: 'Direction of logs. Ignored when tailing',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [

                      FigSuggestion(name: 'backward'),
                      FigSuggestion(name: 'forward')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--textIncludes',
                  description: 'Filter log lines to include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--textNotIncludes',
                  description: 'Filter log lines to not include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--regexIncludes',
                  description: 'Filter log lines to match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--regexNotIncludes',
                  description: 'Filter log lines to not match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['metrics', 'metric'],
              description: 'Get metrics for the specified addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'Addon to get logs from',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get metrics after this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get metrics before this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-t', '--metricTypes'],
                  description: 'Which metric type to fetch',
                  args: [
                    Arg(
                    name: 'metricTypes',
                    isVariadic: true,
                    suggestions: [

                      FigSuggestion(name: 'cpu'),
                      FigSuggestion(name: 'memory'),
                      FigSuggestion(name: 'networkIngress'),
                      FigSuggestion(name: 'networkEgress'),
                      FigSuggestion(name: 'tcpConnectionsOpen'),
                      FigSuggestion(name: 'diskUsage'),
                      FigSuggestion(name: 'requests'),
                      FigSuggestion(name: 'http4xxResponses'),
                      FigSuggestion(name: 'http5xxResponses')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--timestamp',
                  description: 'Get metrics at this exact timestamp, if no timestamp set most recent time is used. example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestamp'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'types',
              description: 'Gets information about the available addon types',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'version',
              description: 'Gets details about the current addon version including available upgrades and upgrade history',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'backups',
              description: 'Returns a list of backups for the given addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'backup',
              description: 'Gets details about a given backup',
              subcommands: [

                Subcommand(
                  name: 'download',
                  description: 'Generates a temporary download link for downloading the given backup',
                  options: [

                    Option(
                      name: '--verbose',
                      description: 'Verbose output'
                    ),
                    Option(
                      name: '--quiet',
                      description: 'No console output'
                    ),
                    Option(
                      name: ['--backup', '--backupId'],
                      description: 'ID of the backup, example: example-backup',
                      args: [
                        Arg(
                        name: 'BACKUPI'
                      )
                      ]
                    ),
                    Option(
                      name: ['--addon', '--addonId'],
                      description: 'ID of the addon, example: example-addon',
                      args: [
                        Arg(
                        name: 'ADDONI'
                      )
                      ]
                    ),
                    Option(
                      name: ['--project', '--projectId'],
                      description: 'ID of the project, example: default-project',
                      args: [
                        Arg(
                        name: 'PROJECTI'
                      )
                      ]
                    ),
                    Option(
                      name: '--noDefaults',
                      description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                    ),
                    Option(
                      name: ['-o', '--output'],
                      description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                      args: [
                        Arg(
                        name: 'OUTPU'
                      )
                      ]
                    ),
                    Option(
                      name: ['-h', '--help'],
                      description: 'Display help for command',
                      priority: 49
                    )
                  ]
                ),
                Subcommand(
                  name: 'help',
                  description: 'Display help for command',
                  priority: 49,
                  args: [
                    Arg(
                    name: 'command',
                    isOptional: true,
                    template: 'hel'
                  )
                  ]
                )
              ],
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--backup', '--backupId'],
                  description: 'ID of the backup, example: example-backup',
                  args: [
                    Arg(
                    name: 'BACKUPI'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'restores',
              description: 'Gets a list of restores for the given backup',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--backup', '--backupId'],
                  description: 'ID of the backup, example: example-backup',
                  args: [
                    Arg(
                    name: 'BACKUPI'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'containers',
              description: 'Gets a list of containers for the given addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'backup-schedules',
              description: 'Gets details about an addon\'s backup schedules',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'pitr-window',
              description: 'Gets the valid window for performing a point-in-time restore (PITR) on this addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['invoice', 'invoices', 'inv'],
          description: 'Get information about Northflank invoices',
          subcommands: [

            Subcommand(
              name: 'details',
              description: 'Get details about an invoice. If `timestamp` is passed in as a query parameter, this endpoint returns details about the invoice containing that timestamp. Otherwise, returns a preview invoice displaying billing data from after the most recent invoice',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: '--timestamp',
                  description: 'OPTIONAL: Timestamp of an invoice. If passed in, this endpoint will return details about the invoice that time belongs to., example: 1657206215',
                  args: [
                    Arg(
                    name: 'TIMESTAM'
                  )
                  ]
                ),
                Option(
                  name: '--projectId',
                  description: 'OPTIONAL: ID of a project. If passed in, only details about that project will be returned., example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--addonId',
                  description: 'OPTIONAL: ID of a addon. If passed in, only details about that addon will be returned',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: '--serviceId',
                  description: 'OPTIONAL: ID of a service. If passed in, only details about that service will be returned., example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: '--jobId',
                  description: 'OPTIONAL: ID of a job. If passed in, only details about that job will be returned',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'integration',
          description: 'Get information about the given integration',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--integration', '--integrationId'],
              description: 'ID of the provider integration, example: gcp-integration-1',
              args: [
                Arg(
                name: 'INTEGRATIONI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'cluster',
          description: 'Get information about the given cluster',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--cluster', '--clusterId'],
              description: 'ID of the cluster, example: gcp-cluster-1',
              args: [
                Arg(
                name: 'CLUSTERI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Gets information about the given job',
          subcommands: [

            Subcommand(
              name: 'runs',
              description: 'Fetches run history for the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['logs', 'log'],
              description: 'Get log for the specified job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'projectId'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'Job to get logs from',
                  args: [
                    Arg(
                    name: 'jobId'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'containerId'
                  )
                  ]
                ),
                Option(
                  name: ['-f', '--tail'],
                  description: 'Tail will stream logs in real-time. Session will be kept open'
                ),
                Option(
                  name: ['-l', '--lineLimit'],
                  description: 'Number of lines to return',
                  args: [
                    Arg(
                    name: 'limit'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get logs generated after this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get logs generated before this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-d', '--direction'],
                  description: 'Direction of logs. Ignored when tailing',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [

                      FigSuggestion(name: 'backward'),
                      FigSuggestion(name: 'forward')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--textIncludes',
                  description: 'Filter log lines to include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--textNotIncludes',
                  description: 'Filter log lines to not include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--regexIncludes',
                  description: 'Filter log lines to match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--regexNotIncludes',
                  description: 'Filter log lines to not match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--run', '--runId'],
                  description: 'Job run id, example: 162b1977-6636-4000-929b-cc265b862ff0',
                  args: [
                    Arg(
                    name: 'runId'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['metrics', 'metric'],
              description: 'Get metrics for the specified job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'Job to get logs from',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get metrics after this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get metrics before this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-t', '--metricTypes'],
                  description: 'Which metric type to fetch',
                  args: [
                    Arg(
                    name: 'metricTypes',
                    isVariadic: true,
                    suggestions: [

                      FigSuggestion(name: 'cpu'),
                      FigSuggestion(name: 'memory'),
                      FigSuggestion(name: 'networkIngress'),
                      FigSuggestion(name: 'networkEgress'),
                      FigSuggestion(name: 'tcpConnectionsOpen'),
                      FigSuggestion(name: 'diskUsage'),
                      FigSuggestion(name: 'requests'),
                      FigSuggestion(name: 'http4xxResponses'),
                      FigSuggestion(name: 'http5xxResponses')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--timestamp',
                  description: 'Get metrics at this exact timestamp, if no timestamp set most recent time is used. example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestamp'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--run', '--runId'],
                  description: 'Job run id, example: 162b1977-6636-4000-929b-cc265b862ff0',
                  args: [
                    Arg(
                    name: 'runId'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['build-logs', 'build-log'],
              description: 'Get log for the specified job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'projectId'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'Job to get logs from',
                  args: [
                    Arg(
                    name: 'jobId'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'containerId'
                  )
                  ]
                ),
                Option(
                  name: ['-f', '--tail'],
                  description: 'Tail will stream logs in real-time. Session will be kept open'
                ),
                Option(
                  name: ['-l', '--lineLimit'],
                  description: 'Number of lines to return',
                  args: [
                    Arg(
                    name: 'limit'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get logs generated after this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get logs generated before this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-d', '--direction'],
                  description: 'Direction of logs. Ignored when tailing',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [

                      FigSuggestion(name: 'backward'),
                      FigSuggestion(name: 'forward')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--textIncludes',
                  description: 'Filter log lines to include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--textNotIncludes',
                  description: 'Filter log lines to not include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--regexIncludes',
                  description: 'Filter log lines to match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--regexNotIncludes',
                  description: 'Filter log lines to not match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--build', '--buildId'],
                  description: 'Build to get logs from',
                  args: [
                    Arg(
                    name: 'buildId'
                  )
                  ]
                ),
                Option(
                  name: ['--run', '--runId'],
                  description: 'Job run id, example: 162b1977-6636-4000-929b-cc265b862ff0',
                  args: [
                    Arg(
                    name: 'runId'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['build-metrics', 'build-metric'],
              description: 'Get metrics for the specified job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'Job to get logs from',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get metrics after this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get metrics before this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-t', '--metricTypes'],
                  description: 'Which metric type to fetch',
                  args: [
                    Arg(
                    name: 'metricTypes',
                    isVariadic: true,
                    suggestions: [

                      FigSuggestion(name: 'cpu'),
                      FigSuggestion(name: 'memory'),
                      FigSuggestion(name: 'networkIngress'),
                      FigSuggestion(name: 'networkEgress'),
                      FigSuggestion(name: 'tcpConnectionsOpen'),
                      FigSuggestion(name: 'diskUsage'),
                      FigSuggestion(name: 'requests'),
                      FigSuggestion(name: 'http4xxResponses'),
                      FigSuggestion(name: 'http5xxResponses')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--timestamp',
                  description: 'Get metrics at this exact timestamp, if no timestamp set most recent time is used. example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestamp'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--build', '--buildId'],
                  description: 'Build to get logs from',
                  args: [
                    Arg(
                    name: 'buildId'
                  )
                  ]
                ),
                Option(
                  name: ['--run', '--runId'],
                  description: 'Job run id, example: 162b1977-6636-4000-929b-cc265b862ff0',
                  args: [
                    Arg(
                    name: 'runId'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'run',
              description: 'Returns data about the given job run',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--run', '--runId'],
                  description: 'ID of the job run, example: d34582a4-35bd-4c71-8e7c-e36999b88723',
                  args: [
                    Arg(
                    name: 'RUNI'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'health-checks',
              description: 'Lists the health checks for the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'builds',
              description: 'Lists builds for the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build',
              description: 'Gets information about a build for the job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--build', '--buildId'],
                  description: 'ID of the job build, example: joyous-view-6290',
                  args: [
                    Arg(
                    name: 'BUILDI'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-arguments',
              description: 'Gets the build arguments of the given job. If the API key does not have the permission \'Project > Secrets > General > Read\', secrets inherited from secret groups will not be displayed',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--show',
                  description: 'OPTIONAL: Which secrets to display - if set to `this` only the group\'s secrets are displayed, if set to `inherited` only secrets from linked addons are displayed, if set to `all` or not provided, both are displayed., example: all',
                  args: [
                    Arg(
                    name: 'SHO'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-argument-details',
              description: 'Get details about the build arguments accessible by the given job. Also requires the permission \'Project > Secrets > General > Read\'',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'runtime-environment',
              description: 'Returns the runtime environment for the given job. If the API key does not have the permission \'Project > Secrets > General > Read\', secrets inherited from secret groups will not be displayed',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--show',
                  description: 'OPTIONAL: Which secrets to display - if set to `this` only the group\'s secrets are displayed, if set to `inherited` only secrets from linked addons are displayed, if set to `all` or not provided, both are displayed., example: all',
                  args: [
                    Arg(
                    name: 'SHO'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'runtime-environment-details',
              description: 'Get details about the runtime environment accessible by the given job. Also requires the permission \'Project > Secrets > General > Read\'',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'deployment',
              description: 'Gets information about the deployment of the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'containers',
              description: 'Gets a list of containers for the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['branches', 'branch', 'brn'],
              description: 'Gets information about the branches of the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'pull-requests',
              description: 'Gets information about the pull-requests of the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--job', '--jobId'],
              description: 'ID of the job, example: example-job',
              args: [
                Arg(
                name: 'JOBI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'log-sink',
          description: 'Gets details about a given log sink',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--logSink', '--logSinkId'],
              description: 'ID of the log sink, example: example-log-sink',
              args: [
                Arg(
                name: 'LOGSINKI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'registry',
          description: 'Views a set of registry credential data',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--credential', '--credentialId'],
              description: 'ID of the registry credential, example: example-credentials',
              args: [
                Arg(
                name: 'CREDENTIALI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['domain', 'domains', 'dmn'],
          description: 'Gets details about domain',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--domain',
              description: 'Name of the domain, example: example.com',
              args: [
                Arg(
                name: 'DOMAI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'subdomain',
          description: 'Gets details about the given subdomain',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--subdomain',
              description: 'Name of the subdomain, example: app',
              args: [
                Arg(
                name: 'SUBDOMAI'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'Name of the domain, example: example.com',
              args: [
                Arg(
                name: 'DOMAI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'dns-id',
          description: 'Returns the partially random string used when generating host names for the authenticated account',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'pipeline',
          description: 'Get details about a pipeline',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--pipeline', '--pipelineId'],
              description: 'ID of the pipeline, example: example-pipeline',
              args: [
                Arg(
                name: 'PIPELINEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'release-flow',
          description: 'Gets details about a release flow',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--stage',
              description: 'Stage of the pipeline, example: development',
              args: [
                Arg(
                name: 'STAG'
              )
              ]
            ),
            Option(
              name: ['--pipeline', '--pipelineId'],
              description: 'ID of the pipeline, example: example-pipeline',
              args: [
                Arg(
                name: 'PIPELINEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'release-flow-run',
          description: 'Get information about the given release flow run',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--run', '--runId'],
              description: 'ID of the release flow run, example: development',
              args: [
                Arg(
                name: 'RUNI'
              )
              ]
            ),
            Option(
              name: '--stage',
              description: 'Stage of the pipeline, example: development',
              args: [
                Arg(
                name: 'STAG'
              )
              ]
            ),
            Option(
              name: ['--pipeline', '--pipelineId'],
              description: 'ID of the pipeline, example: example-pipeline',
              args: [
                Arg(
                name: 'PIPELINEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['secret', 'secrets', 'scrt'],
          description: 'View a secret including its contents',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--secret', '--secretId'],
              description: 'ID of the secret, example: example-secret',
              args: [
                Arg(
                name: 'SECRETI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--show',
              description: 'OPTIONAL: Which secrets to display - if set to `this` only the group\'s secrets are displayed, if set to `inherited` only secrets from linked addons are displayed, if set to `all` or not provided, both are displayed., example: all',
              args: [
                Arg(
                name: 'SHO'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'secret-details',
          description: 'View a secret with details about its linked addons',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--secret', '--secretId'],
              description: 'ID of the secret, example: example-secret',
              args: [
                Arg(
                name: 'SECRETI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'secret-link',
          description: 'Get details about a given addon link',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--secret', '--secretId'],
              description: 'ID of the secret, example: example-secret',
              args: [
                Arg(
                name: 'SECRETI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Gets information about the given service',
          subcommands: [

            Subcommand(
              name: 'deployment',
              description: 'Gets information about the deployment of the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['logs', 'log'],
              description: 'Get log for the specified service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'projectId'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'Service to get logs from',
                  args: [
                    Arg(
                    name: 'serviceId'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'containerId'
                  )
                  ]
                ),
                Option(
                  name: ['-f', '--tail'],
                  description: 'Tail will stream logs in real-time. Session will be kept open'
                ),
                Option(
                  name: ['-l', '--lineLimit'],
                  description: 'Number of lines to return',
                  args: [
                    Arg(
                    name: 'limit'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get logs generated after this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get logs generated before this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-d', '--direction'],
                  description: 'Direction of logs. Ignored when tailing',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [

                      FigSuggestion(name: 'backward'),
                      FigSuggestion(name: 'forward')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--textIncludes',
                  description: 'Filter log lines to include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--textNotIncludes',
                  description: 'Filter log lines to not include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--regexIncludes',
                  description: 'Filter log lines to match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--regexNotIncludes',
                  description: 'Filter log lines to not match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['metrics', 'metric'],
              description: 'Get metrics for the specified service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'Service to get logs from',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get metrics after this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get metrics before this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-t', '--metricTypes'],
                  description: 'Which metric type to fetch',
                  args: [
                    Arg(
                    name: 'metricTypes',
                    isVariadic: true,
                    suggestions: [

                      FigSuggestion(name: 'cpu'),
                      FigSuggestion(name: 'memory'),
                      FigSuggestion(name: 'networkIngress'),
                      FigSuggestion(name: 'networkEgress'),
                      FigSuggestion(name: 'tcpConnectionsOpen'),
                      FigSuggestion(name: 'diskUsage'),
                      FigSuggestion(name: 'requests'),
                      FigSuggestion(name: 'http4xxResponses'),
                      FigSuggestion(name: 'http5xxResponses')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--timestamp',
                  description: 'Get metrics at this exact timestamp, if no timestamp set most recent time is used. example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestamp'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['build-logs', 'build-log'],
              description: 'Get log for the specified service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'projectId'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'Service to get logs from',
                  args: [
                    Arg(
                    name: 'serviceId'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'containerId'
                  )
                  ]
                ),
                Option(
                  name: ['-f', '--tail'],
                  description: 'Tail will stream logs in real-time. Session will be kept open'
                ),
                Option(
                  name: ['-l', '--lineLimit'],
                  description: 'Number of lines to return',
                  args: [
                    Arg(
                    name: 'limit'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get logs generated after this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get logs generated before this time, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-d', '--direction'],
                  description: 'Direction of logs. Ignored when tailing',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [

                      FigSuggestion(name: 'backward'),
                      FigSuggestion(name: 'forward')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--textIncludes',
                  description: 'Filter log lines to include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--textNotIncludes',
                  description: 'Filter log lines to not include this text',
                  args: [
                    Arg(
                    name: 'tex'
                  )
                  ]
                ),
                Option(
                  name: '--regexIncludes',
                  description: 'Filter log lines to match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--regexNotIncludes',
                  description: 'Filter log lines to not match this regular expression',
                  args: [
                    Arg(
                    name: 'rege'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--build', '--buildId'],
                  description: 'Build to get logs from',
                  args: [
                    Arg(
                    name: 'buildId'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['build-metrics', 'build-metric'],
              description: 'Get metrics for the specified service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'Project for logs',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'Service to get logs from',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '--containerId'],
                  description: 'Container to exec into (logs from all containers will be shown if not specified)',
                  args: [
                    Arg(
                    name: 'NAME'
                  )
                  ]
                ),
                Option(
                  name: '--startTime',
                  description: 'Get metrics after this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--endTime',
                  description: 'Get metrics before this timestamp, example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestam'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Length of timespan in seconds. Only valid if not both, startTime and endTime are set',
                  args: [
                    Arg(
                    name: 'duration'
                  )
                  ]
                ),
                Option(
                  name: ['-t', '--metricTypes'],
                  description: 'Which metric type to fetch',
                  args: [
                    Arg(
                    name: 'metricTypes',
                    isVariadic: true,
                    suggestions: [

                      FigSuggestion(name: 'cpu'),
                      FigSuggestion(name: 'memory'),
                      FigSuggestion(name: 'networkIngress'),
                      FigSuggestion(name: 'networkEgress'),
                      FigSuggestion(name: 'tcpConnectionsOpen'),
                      FigSuggestion(name: 'diskUsage'),
                      FigSuggestion(name: 'requests'),
                      FigSuggestion(name: 'http4xxResponses'),
                      FigSuggestion(name: 'http5xxResponses')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--timestamp',
                  description: 'Get metrics at this exact timestamp, if no timestamp set most recent time is used. example: 2020-02-02T02:02:02Z (date string) or 1580608922 (unix ts)',
                  args: [
                    Arg(
                    name: 'timestamp'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'Output formatting. Will use advanced formatting by default',
                  args: [
                    Arg(
                    name: 'output',
                    isOptional: true,
                    suggestions: [

                      FigSuggestion(name: 'format'),
                      FigSuggestion(name: 'json'),
                      FigSuggestion(name: 'yaml')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--build', '--buildId'],
                  description: 'Build to get logs from',
                  args: [
                    Arg(
                    name: 'buildId'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'ports',
              description: 'Lists the ports for the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'health-checks',
              description: 'Lists the health checks for the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'builds',
              description: 'Lists the builds for the service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build',
              description: 'Gets information about a build for the service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--build', '--buildId'],
                  description: 'ID of the service build, example: joyous-view-6290',
                  args: [
                    Arg(
                    name: 'BUILDI'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'containers',
              description: 'Gets a list of containers for the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: ['branches', 'branch', 'brn'],
              description: 'Gets information about the branches of the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'pull-requests',
              description: 'Gets information about the pull-requests of the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-arguments',
              description: 'Gets the build arguments of the given service. If the API key does not have the permission \'Project > Secrets > General > Read\', secrets inherited from secret groups will not be displayed',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--show',
                  description: 'OPTIONAL: Which secrets to display - if set to `this` only the group\'s secrets are displayed, if set to `inherited` only secrets from linked addons are displayed, if set to `all` or not provided, both are displayed., example: all',
                  args: [
                    Arg(
                    name: 'SHO'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-argument-details',
              description: 'Get details about the build arguments accessible by the given service. Also requires the permission \'Project > Secrets > General > Read\'',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'runtime-environment',
              description: 'Gets the runtime environment of the given service. If the API key does not have the permission \'Project > Secrets > General > Read\', secrets inherited from secret groups will not be displayed',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--show',
                  description: 'OPTIONAL: Which secrets to display - if set to `this` only the group\'s secrets are displayed, if set to `inherited` only secrets from linked addons are displayed, if set to `all` or not provided, both are displayed., example: all',
                  args: [
                    Arg(
                    name: 'SHO'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'runtime-environment-details',
              description: 'Get details about the runtime environment accessible by the given service. Also requires the permission \'Project > Secrets > General > Read\'',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--service', '--serviceId'],
              description: 'ID of the service, example: example-service',
              args: [
                Arg(
                name: 'SERVICEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['template', 'templates', 'tpl'],
          description: 'Get information about the given template',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--template', '--templateId'],
              description: 'ID of the template, example: example-template',
              args: [
                Arg(
                name: 'TEMPLATEI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'template-run',
          description: 'Get information about the given template run',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--templateRun', '--templateRunId'],
              description: 'ID of the template run, example: 16cf800b-ab28-421a-8ff9-a935b5ee89ad',
              args: [
                Arg(
                name: 'TEMPLATERUNI'
              )
              ]
            ),
            Option(
              name: ['--template', '--templateId'],
              description: 'ID of the template, example: example-template',
              args: [
                Arg(
                name: 'TEMPLATEI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['volume', 'volumes', 'vol'],
          description: 'Retrieve a volume',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--volume', '--volumeId'],
              description: 'ID of the volume, example: example-volume',
              args: [
                Arg(
                name: 'VOLUMEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete Northflank resources',
      subcommands: [

        Subcommand(
          name: ['project', 'projects', 'prj'],
          description: 'Delete the given project. Fails if the project isn\'t empty',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Deletes the given addon',
          subcommands: [

            Subcommand(
              name: 'backup-schedule',
              description: 'Deletes a backup schedule for an addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--schedule', '--scheduleId'],
                  description: 'ID of the backup schedule, example: 62d5729ab8593e3e33b65105',
                  args: [
                    Arg(
                    name: 'SCHEDULEI'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: '--force',
                  description: 'OPTIONAL: Don\'t ask for confirmation'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'backup',
          description: 'Deletes a given backup',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--backup', '--backupId'],
              description: 'ID of the backup, example: example-backup',
              args: [
                Arg(
                name: 'BACKUPI'
              )
              ]
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'integration',
          description: 'Delete the given integration. Fails if the integration is associated with existing clusters',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--integration', '--integrationId'],
              description: 'ID of the provider integration, example: gcp-integration-1',
              args: [
                Arg(
                name: 'INTEGRATIONI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'cluster',
          description: 'Delete the given cluster. Fails if the cluster has associated projects',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--cluster', '--clusterId'],
              description: 'ID of the cluster, example: gcp-cluster-1',
              args: [
                Arg(
                name: 'CLUSTERI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Deletes the given job',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--job', '--jobId'],
              description: 'ID of the job, example: example-job',
              args: [
                Arg(
                name: 'JOBI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'log-sink',
          description: 'Deletes a log sink',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--logSink', '--logSinkId'],
              description: 'ID of the log sink, example: example-log-sink',
              args: [
                Arg(
                name: 'LOGSINKI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'registry',
          description: 'Deletes a set of registry credential data',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--credential', '--credentialId'],
              description: 'ID of the registry credential, example: example-credentials',
              args: [
                Arg(
                name: 'CREDENTIALI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['domain', 'domains', 'dmn'],
          description: 'Deletes a domain and each of its registered subdomains',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--domain',
              description: 'Name of the domain, example: example.com',
              args: [
                Arg(
                name: 'DOMAI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'subdomain',
          description: 'Removes a subdomain from a domain',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--subdomain',
              description: 'Name of the subdomain, example: app',
              args: [
                Arg(
                name: 'SUBDOMAI'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'Name of the domain, example: example.com',
              args: [
                Arg(
                name: 'DOMAI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['secret', 'secrets', 'scrt'],
          description: 'Delete a secret',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--secret', '--secretId'],
              description: 'ID of the secret, example: example-secret',
              args: [
                Arg(
                name: 'SECRETI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'secret-link',
          description: 'Unlinks an addon from the secret group',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--secret', '--secretId'],
              description: 'ID of the secret, example: example-secret',
              args: [
                Arg(
                name: 'SECRETI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Deletes the given service',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--service', '--serviceId'],
              description: 'ID of the service, example: example-service',
              args: [
                Arg(
                name: 'SERVICEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['template', 'templates', 'tpl'],
          description: 'Delete a template',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--template', '--templateId'],
              description: 'ID of the template, example: example-template',
              args: [
                Arg(
                name: 'TEMPLATEI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['volume', 'volumes', 'vol'],
          description: 'Deletes this volume and its associated data',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--volume', '--volumeId'],
              description: 'ID of the volume, example: example-volume',
              args: [
                Arg(
                name: 'VOLUMEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: '--force',
              description: 'OPTIONAL: Don\'t ask for confirmation'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'scale',
      description: 'Scale Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Modifies the allocated resources for the given addon',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Modifies the scaling settings for the given job',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--job', '--jobId'],
              description: 'ID of the job, example: example-job',
              args: [
                Arg(
                name: 'JOBI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Modifies the scaling settings for the given service',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--service', '--serviceId'],
              description: 'ID of the service, example: example-service',
              args: [
                Arg(
                name: 'SERVICEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update Northflank resource properties',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Update Northflank addon properties',
          subcommands: [

            Subcommand(
              name: 'version',
              description: 'Upgrades the addon to a new version',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'network-settings',
              description: 'Updates the network settings for the addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'security',
              description: 'Updates the security rules for the addon',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'integration',
          description: 'Update information about the given integration',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--integration', '--integrationId'],
              description: 'ID of the provider integration, example: gcp-integration-1',
              args: [
                Arg(
                name: 'INTEGRATIONI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'cluster',
          description: 'Update an existing cluster',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--cluster', '--clusterId'],
              description: 'ID of the cluster, example: gcp-cluster-1',
              args: [
                Arg(
                name: 'CLUSTERI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Update Northflank job properties',
          subcommands: [

            Subcommand(
              name: 'settings',
              description: 'Updates settings for the job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'health-checks',
              description: 'Updates health checks for the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-options',
              description: 'Updates the build options for a given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-source',
              description: 'Updates the version control source for a given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-arguments',
              description: 'Sets build arguments for the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'runtime-environment',
              description: 'Sets the runtime environment for the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'deployment',
              description: 'Updates the deployment settings of the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'log-sink',
          description: 'Updates the settings for a log sink',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--logSink', '--logSinkId'],
              description: 'ID of the log sink, example: example-log-sink',
              args: [
                Arg(
                name: 'LOGSINKI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'registry',
          description: 'Updates a set of registry credential data',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--credential', '--credentialId'],
              description: 'ID of the registry credential, example: example-credentials',
              args: [
                Arg(
                name: 'CREDENTIALI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'release-flow',
          description: 'Updates a release flow',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: '--stage',
              description: 'Stage of the pipeline, example: development',
              args: [
                Arg(
                name: 'STAG'
              )
              ]
            ),
            Option(
              name: ['--pipeline', '--pipelineId'],
              description: 'ID of the pipeline, example: example-pipeline',
              args: [
                Arg(
                name: 'PIPELINEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['secret', 'secrets', 'scrt'],
          description: 'Update a secret',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--secret', '--secretId'],
              description: 'ID of the secret, example: example-secret',
              args: [
                Arg(
                name: 'SECRETI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'secret-link',
          description: 'Link an addon to the secret group or edit the settings of the linked addon',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--secret', '--secretId'],
              description: 'ID of the secret, example: example-secret',
              args: [
                Arg(
                name: 'SECRETI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Update Northflank service properties',
          subcommands: [

            Subcommand(
              name: 'deployment',
              description: 'Updates the deployment settings of the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'ports',
              description: 'Updates the list of ports for the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-options',
              description: 'Updates the build options for a given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-source',
              description: 'Updates the version control source for a given build or combined service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'health-checks',
              description: 'Updates health checks for the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build-arguments',
              description: 'Sets the build arguments for the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'runtime-environment',
              description: 'Sets the runtime environment for the given service',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['volume', 'volumes', 'vol'],
          description: 'Update volume mounts and storage size',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--volume', '--volumeId'],
              description: 'ID of the volume, example: example-volume',
              args: [
                Arg(
                name: 'VOLUMEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'backup',
      description: 'Backup Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Initiates a backup for the given addon',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'restore',
      description: 'Restore Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Addon Northflank resources',
          subcommands: [

            Subcommand(
              name: 'backup',
              description: 'Restores the given addon to the given backup state',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--backup', '--backupId'],
                  description: 'ID of the backup, example: example-backup',
                  args: [
                    Arg(
                    name: 'BACKUPI'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Import Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Addon Northflank resources',
          subcommands: [

            Subcommand(
              name: 'backup',
              description: 'Imports a database from an external archive or existing live database',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'pause',
      description: 'Pause Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Pause the given addon',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Pause the given job',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--job', '--jobId'],
              description: 'ID of the job, example: example-job',
              args: [
                Arg(
                name: 'JOBI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'log-sink',
          description: 'Pauses a given log sink',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--logSink', '--logSinkId'],
              description: 'ID of the log sink, example: example-log-sink',
              args: [
                Arg(
                name: 'LOGSINKI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Pause the given service',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--service', '--serviceId'],
              description: 'ID of the service, example: example-service',
              args: [
                Arg(
                name: 'SERVICEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'resume',
      description: 'Resume Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Resume the given addon if it is paused',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Resumes the given job. Optionally takes several arguments to override resumed settings',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--job', '--jobId'],
              description: 'ID of the job, example: example-job',
              args: [
                Arg(
                name: 'JOBI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'log-sink',
          description: 'Resumes a paused log sink',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--logSink', '--logSinkId'],
              description: 'ID of the log sink, example: example-log-sink',
              args: [
                Arg(
                name: 'LOGSINKI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Resumes the given service. Optionally takes several arguments to override resumed settings',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--service', '--serviceId'],
              description: 'ID of the service, example: example-service',
              args: [
                Arg(
                name: 'SERVICEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Restart the given addon',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--addon', '--addonId'],
              description: 'ID of the addon, example: example-addon',
              args: [
                Arg(
                name: 'ADDONI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Restarts the given service',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--service', '--serviceId'],
              description: 'ID of the service, example: example-service',
              args: [
                Arg(
                name: 'SERVICEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'abort',
      description: 'Abort Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Addon Northflank resources',
          subcommands: [

            Subcommand(
              name: 'backup',
              description: 'Aborts the in progress backup',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--backup', '--backupId'],
                  description: 'ID of the backup, example: example-backup',
                  args: [
                    Arg(
                    name: 'BACKUPI'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'restore',
              description: 'Aborts an in-progress backup restore',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--backup', '--backupId'],
                  description: 'ID of the backup, example: example-backup',
                  args: [
                    Arg(
                    name: 'BACKUPI'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Job Northflank resources',
          subcommands: [

            Subcommand(
              name: 'run',
              description: 'Aborts the given job run',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--run', '--runId'],
                  description: 'ID of the job run, example: d34582a4-35bd-4c71-8e7c-e36999b88723',
                  args: [
                    Arg(
                    name: 'RUNI'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build',
              description: 'Aborts the given job build',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--build', '--buildId'],
                  description: 'ID of the job build, example: joyous-view-6290',
                  args: [
                    Arg(
                    name: 'BUILDI'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'release-flow-run',
          description: 'Abort the given release flow run',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--run', '--runId'],
              description: 'ID of the release flow run, example: development',
              args: [
                Arg(
                name: 'RUNI'
              )
              ]
            ),
            Option(
              name: '--stage',
              description: 'Stage of the pipeline, example: development',
              args: [
                Arg(
                name: 'STAG'
              )
              ]
            ),
            Option(
              name: ['--pipeline', '--pipelineId'],
              description: 'ID of the pipeline, example: example-pipeline',
              args: [
                Arg(
                name: 'PIPELINEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Service Northflank resources',
          subcommands: [

            Subcommand(
              name: 'build',
              description: 'Aborts the given service build',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--build', '--buildId'],
                  description: 'ID of the service build, example: joyous-view-6290',
                  args: [
                    Arg(
                    name: 'BUILDI'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'template-run',
          description: 'Abort the given template run',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['--templateRun', '--templateRunId'],
              description: 'ID of the template run, example: 16cf800b-ab28-421a-8ff9-a935b5ee89ad',
              args: [
                Arg(
                name: 'TEMPLATERUNI'
              )
              ]
            ),
            Option(
              name: ['--template', '--templateId'],
              description: 'ID of the template, example: example-template',
              args: [
                Arg(
                name: 'TEMPLATEI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'retain',
      description: 'Retain Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Addon Northflank resources',
          subcommands: [

            Subcommand(
              name: 'backup',
              description: 'Flags a temporary backup generated by a backup schedule to be retained indefinitely rather than being deleted after the expiry date',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['--backup', '--backupId'],
                  description: 'ID of the backup, example: example-backup',
                  args: [
                    Arg(
                    name: 'BACKUPI'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Start Northflank resources',
      subcommands: [

        Subcommand(
          name: ['addon', 'addons', 'adn'],
          description: 'Addon Northflank resources',
          subcommands: [

            Subcommand(
              name: 'pitr',
              description: 'Restores an addon to a specific point in time',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--addon', '--addonId'],
                  description: 'ID of the addon, example: example-addon',
                  args: [
                    Arg(
                    name: 'ADDONI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['job', 'jobs'],
          description: 'Job Northflank resources',
          subcommands: [

            Subcommand(
              name: 'run',
              description: 'Starts a new job run for the given job',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'build',
              description: 'Start a new build for the given job. Given a commit sha, it will build that commit',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '--jobId'],
                  description: 'ID of the job, example: example-job',
                  args: [
                    Arg(
                    name: 'JOBI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['service', 'services', 'svc'],
          description: 'Service Northflank resources',
          subcommands: [

            Subcommand(
              name: 'build',
              description: 'Start a new build for the given combined or build service. If given a commit sha, it will build that commit. Otherwise, the most recent relevant commit will be built. If the service provided is a build service, a branch name or pull request to build from is required',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: ['--service', '--serviceId'],
                  description: 'ID of the service, example: example-service',
                  args: [
                    Arg(
                    name: 'SERVICEI'
                  )
                  ]
                ),
                Option(
                  name: ['--project', '--projectId'],
                  description: 'ID of the project, example: default-project',
                  args: [
                    Arg(
                    name: 'PROJECTI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'suspend',
      description: 'Suspend Northflank resources',
      subcommands: [

        Subcommand(
          name: ['job', 'jobs'],
          description: 'Modify cron job to toggle suspending of its schedule',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--job', '--jobId'],
              description: 'ID of the job, example: example-job',
              args: [
                Arg(
                name: 'JOBI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'add',
      description: 'Add Northflank resources',
      subcommands: [

        Subcommand(
          name: 'registry',
          description: 'Adds a new set of container registry credentials to this account',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['domain', 'domains', 'dmn'],
          description: 'Domain Northflank resources',
          subcommands: [

            Subcommand(
              name: 'subdomain',
              description: 'Adds a new subdomain to the domain',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'Name of the domain, example: example.com',
                  args: [
                    Arg(
                    name: 'DOMAI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'verify',
      description: 'Verify Northflank resources',
      subcommands: [

        Subcommand(
          name: ['domain', 'domains', 'dmn'],
          description: 'Attempts to verify the domain',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--domain',
              description: 'Name of the domain, example: example.com',
              args: [
                Arg(
                name: 'DOMAI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'subdomain',
          description: 'Gets details about the given subdomain',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--subdomain',
              description: 'Name of the subdomain, example: app',
              args: [
                Arg(
                name: 'SUBDOMAI'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'Name of the domain, example: example.com',
              args: [
                Arg(
                name: 'DOMAI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'assign',
      description: 'Assign Northflank resources',
      subcommands: [

        Subcommand(
          name: 'subdomain',
          description: 'Subdomain Northflank resources',
          subcommands: [

            Subcommand(
              name: ['service', 'services', 'svc'],
              description: 'Assigns a service port to the given subdomain',
              options: [

                Option(
                  name: '--verbose',
                  description: 'Verbose output'
                ),
                Option(
                  name: '--quiet',
                  description: 'No console output'
                ),
                Option(
                  name: ['-f', '--file'],
                  description: 'File to load resource json from',
                  args: [
                    Arg(
                    name: 'file-pat'
                  )
                  ]
                ),
                Option(
                  name: ['-i', '--input'],
                  description: 'JSON-formatted resource definition, takes precedence over "--file"',
                  args: [
                    Arg(
                    name: 'resource-de'
                  )
                  ]
                ),
                Option(
                  name: '--subdomain',
                  description: 'Name of the subdomain, example: app',
                  args: [
                    Arg(
                    name: 'SUBDOMAI'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'Name of the domain, example: example.com',
                  args: [
                    Arg(
                    name: 'DOMAI'
                  )
                  ]
                ),
                Option(
                  name: '--noDefaults',
                  description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
                ),
                Option(
                  name: ['-o', '--output'],
                  description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
                  args: [
                    Arg(
                    name: 'OUTPU'
                  )
                  ]
                ),
                Option(
                  name: ['-h', '--help'],
                  description: 'Display help for command',
                  priority: 49
                )
              ]
            ),
            Subcommand(
              name: 'help',
              description: 'Display help for command',
              priority: 49,
              args: [
                Arg(
                name: 'command',
                isOptional: true,
                template: 'hel'
              )
              ]
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'unassign',
      description: 'Unassign Northflank resources',
      subcommands: [

        Subcommand(
          name: 'subdomain',
          description: 'Removes a subdomain from its assigned service',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: '--subdomain',
              description: 'Name of the subdomain, example: app',
              args: [
                Arg(
                name: 'SUBDOMAI'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'Name of the domain, example: example.com',
              args: [
                Arg(
                name: 'DOMAI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run Northflank resources',
      subcommands: [

        Subcommand(
          name: 'release-flow',
          description: 'Runs a given release flow with given arguments. This endpoint can be used as part of a CI pipeline to automatically trigger a release process',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: '--stage',
              description: 'Stage of the pipeline, example: development',
              args: [
                Arg(
                name: 'STAG'
              )
              ]
            ),
            Option(
              name: ['--pipeline', '--pipelineId'],
              description: 'ID of the pipeline, example: example-pipeline',
              args: [
                Arg(
                name: 'PIPELINEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: ['template', 'templates', 'tpl'],
          description: 'Run a template',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--template', '--templateId'],
              description: 'ID of the template, example: example-template',
              args: [
                Arg(
                name: 'TEMPLATEI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'attach',
      description: 'Attach Northflank resources',
      subcommands: [

        Subcommand(
          name: ['volume', 'volumes', 'vol'],
          description: 'Attach a volume',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--volume', '--volumeId'],
              description: 'ID of the volume, example: example-volume',
              args: [
                Arg(
                name: 'VOLUMEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'detach',
      description: 'Detach Northflank resources',
      subcommands: [

        Subcommand(
          name: ['volume', 'volumes', 'vol'],
          description: 'Detach a volume',
          options: [

            Option(
              name: '--verbose',
              description: 'Verbose output'
            ),
            Option(
              name: '--quiet',
              description: 'No console output'
            ),
            Option(
              name: ['-f', '--file'],
              description: 'File to load resource json from',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['-i', '--input'],
              description: 'JSON-formatted resource definition, takes precedence over "--file"',
              args: [
                Arg(
                name: 'resource-de'
              )
              ]
            ),
            Option(
              name: ['--volume', '--volumeId'],
              description: 'ID of the volume, example: example-volume',
              args: [
                Arg(
                name: 'VOLUMEI'
              )
              ]
            ),
            Option(
              name: ['--project', '--projectId'],
              description: 'ID of the project, example: default-project',
              args: [
                Arg(
                name: 'PROJECTI'
              )
              ]
            ),
            Option(
              name: '--noDefaults',
              description: 'OPTIONAL: Don\'t use context default values, explicitly use options or ask'
            ),
            Option(
              name: ['-o', '--output'],
              description: 'OPTIONAL: Output formatting, options: \'--output json|yaml\'',
              args: [
                Arg(
                name: 'OUTPU'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'command-overview',
      description: 'Prints a tree view of all available commands',
      options: [

        Option(
          name: '--verbose',
          description: 'Print command descriptions'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      priority: 49,
      args: [
        Arg(
        name: 'command',
        isOptional: true,
        template: 'hel'
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['-v', '--version'],
      description: 'Print the current version of the Northflank cli'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ]
);
