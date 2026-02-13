// Auto-generated from TypeScript source: okta.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `okta` CLI
final FigSpec oktaSpec = FigSpec(
  name: 'okta',
  description: 'The Okta CLI is the easiest way to get started with Okta!',
  subcommands: [

    Subcommand(
      name: 'register',
      description: 'Sign up for a new Okta account',
      options: [

        Option(
          name: '--company',
          description: 'Company/organization used when registering a new Okta account'
        ),
        Option(
          name: '--email',
          description: 'Email used when registering a new Okta account'
        ),
        Option(
          name: '--first-name',
          description: 'First name used when registering a new Okta account'
        ),
        Option(
          name: '--last-name',
          description: 'Last name used when registering a new Okta account'
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Authorizes the Okta CLI tool'
    ),
    Subcommand(
      name: 'apps',
      description: 'Manage Okta apps',
      subcommands: [

        Subcommand(
          name: 'config',
          description: 'Show an Okta app\'s configuration',
          options: [

            Option(
              name: '--app',
              description: 'The App ID'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new Okta app',
          options: [

            Option(
              name: '--app-name',
              description: 'Application name to be created, defaults to current directory name'
            ),
            Option(
              name: '--authorization-server-id',
              description: 'Okta Authorization Server Id'
            ),
            Option(
              name: '--config-file',
              description: 'Application config file'
            ),
            Option(
              name: '--redirect-uri',
              description: 'OIDC Redirect URI'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an Okta app',
          args: [
            Arg(
            name: 'appIds',
            description: 'List of application IDs to be deleted'
          )
          ],
          options: [

            Option(
              name: ['-f', '--force'],
              description: 'Deactivate and delete applications without confirmation'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Creates an Okta Sample Application',
      args: [
        Arg(
        name: 'name',
        description: 'The name of the sample app to create',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Displays help information about the specified command',
      options: [

        Option(
          name: 'register',
          description: 'Sign up for a new Okta account'
        ),
        Option(
          name: 'login',
          description: 'Authorizes the Okta CLI tool'
        ),
        Option(
          name: 'apps',
          description: 'Manage Okta apps'
        ),
        Option(
          name: 'start',
          description: 'Creates an Okta Sample Application'
        ),
        Option(
          name: 'help',
          description: 'Displays help information about the specified command'
        ),
        Option(
          name: 'generate-completion',
          description: 'Generate bash/zsh completion script for Okta'
        )
      ]
    ),
    Subcommand(
      name: 'generate-completion',
      description: 'Generate bash/zsh completion script for Okta'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for Okta CLI'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Print version information'
    ),
    Option(
      name: '--verbose',
      description: 'Verbose logging'
    ),
    Option(
      name: '--batch',
      description: 'Batch mode, will not prompt for user input'
    )
  ]
);
