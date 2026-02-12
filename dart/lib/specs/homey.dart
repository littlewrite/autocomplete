// Auto-generated from TypeScript source: homey.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `homey` CLI
final FigSpec homeySpec = FigSpec(
  name: 'homey',
  subcommands: [
    Subcommand(
      name: 'app',
      description: 'App related commands',
      subcommands: [
        Subcommand(
          name: 'add-types',
          description: 'Install the Apps SDK TypeScript declarations'
        ),
        Subcommand(
          name: 'build',
          description: 'Build a Homey App for publishing'
        ),
        Subcommand(
          name: 'compose',
          description: 'Migrate app to Homey compose'
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new Homey App'
        ),
        Subcommand(
          name: 'discovery',
          description: 'Discovery related commands',
          subcommands: [
            Subcommand(
              name: 'create',
              description: 'Create a new Discovery strategy'
            )
          ]
        ),
        Subcommand(
          name: 'driver',
          description: 'Driver related commands',
          subcommands: [
            Subcommand(
              name: 'capabilities',
              description: 'Change the capabilities of a Driver'
            ),
            Subcommand(
              name: 'create',
              description: 'Create a new Driver'
            ),
            Subcommand(
              name: 'flow',
              description: 'Create a new Flow for a Driver'
            )
          ]
        ),
        Subcommand(
          name: 'flow',
          description: 'Flow related commands',
          subcommands: [
            Subcommand(
              name: 'create',
              description: 'Create a new Flow'
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Install a Homey App',
          options: [
            Option(
              name: ['-c', '--clean'],
              args: [
                Arg(
                name: 'clean',
                defaultValue: 'false',
                suggestions: [
                  FigSuggestion(
                    name: 'false'
                  ),
                  FigSuggestion(
                    name: 'true'
                  )
                ]
              )
              ]
            ),
            Option(
              name: ['-s', '--skip-build'],
              args: [
                Arg(
                name: 'skip-build',
                defaultValue: 'false',
                suggestions: [
                  FigSuggestion(
                    name: 'false'
                  ),
                  FigSuggestion(
                    name: 'true'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'manage',
          description: 'View your app in the Homey Developer Tools'
        ),
        Subcommand(
          name: 'publish',
          description: 'Publish a Homey App to the Homey Apps Store'
        ),
        Subcommand(
          name: 'run',
          description: 'Run a Homey App in development mode',
          options: [
            Option(
              name: ['-c', '--clean'],
              args: [
                Arg(
                name: 'clean',
                defaultValue: 'false',
                suggestions: [
                  FigSuggestion(
                    name: 'false'
                  ),
                  FigSuggestion(
                    name: 'true'
                  )
                ]
              )
              ]
            ),
            Option(
              name: ['-s', '--skip-build'],
              args: [
                Arg(
                name: 'skip-build',
                defaultValue: 'false',
                suggestions: [
                  FigSuggestion(
                    name: 'false'
                  ),
                  FigSuggestion(
                    name: 'true'
                  )
                ]
              )
              ]
            ),
            Option(
              name: ['-l', '--link-modules'],
              description: 'Provide a comma-separated path to local Node.js modules to link. Only works on Homey Cloud',
              args: [
                Arg(
                name: 'modules'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate a Homey App',
          options: [
            Option(
              name: ['-l', '--level'],
              description: 'Validation level',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'debug'
                  ),
                  FigSuggestion(
                    name: 'publish'
                  ),
                  FigSuggestion(
                    name: 'verified'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Update a Homey App\'s version',
          args: [
            Arg(
            name: 'next',
            suggestions: [
              FigSuggestion(
                name: 'patch'
              ),
              FigSuggestion(
                name: 'minor'
              ),
              FigSuggestion(
                name: 'major'
              ),
              FigSuggestion(
                name: 'semver',
                insertValue: '1.0.0'
              )
            ]
          )
          ]
        ),
        Subcommand(
          name: 'view',
          description: 'View your app in the Homey Apps Store'
        )
      ],
      options: [
        Option(
          name: ['-p', '--path'],
          description: 'Path to a Homey App directory',
          isPersistent: true,
          args: [
            Arg(
            template: 'folders'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'docs',
      description: 'Open Homey Developer Documentation',
      icon: '📖'
    ),
    Subcommand(
      name: 'list',
      description: 'List all Homeys'
    ),
    Subcommand(
      name: 'login',
      description: 'Log in with an Athom Account'
    ),
    Subcommand(
      name: 'logout',
      description: 'Log out the current user'
    ),
    Subcommand(
      name: 'select',
      description: 'Select a Homey as active',
      options: [
        Option(
          name: ['-i', '--id'],
          description: 'ID of the Homey',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name of the Homey',
          args: [
            Arg(
            name: 'name'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tools',
      description: 'Open Homey Developer Tools',
      icon: '🔧'
    ),
    Subcommand(
      name: 'unselect',
      description: 'Unselect the active Homey'
    ),
    Subcommand(
      name: 'whoami',
      description: 'Show the current logged in user'
    )
  ],
  options: [
    Option(
      name: '--help',
      isPersistent: true
    ),
    Option(
      name: '--version',
      isPersistent: true
    )
  ]
);
