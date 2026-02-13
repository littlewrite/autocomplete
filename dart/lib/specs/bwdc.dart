// Auto-generated from TypeScript source: bwdc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bwdc` CLI
final FigSpec bwdcSpec = FigSpec(
  name: 'bwdc',
  description: 'Bitwarden Directory Connector',
  subcommands: [

    Subcommand(
      name: 'login',
      description: 'Log in to Directory Connector',
      args: [

        Arg(
          name: 'client_id',
          description: 'Organisation API client_id',
          isOptional: true
        ),
        Arg(
          name: 'client_secret',
          description: 'Organisation API client_secret',
          isOptional: true
        )
      ],
      options: [

        Option(
          name: '--help'
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Log out of Directory Connector',
      options: [

        Option(
          name: '--help'
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Prints a JSON formatted array of groups and users that would be synced to your Bitwarden organization',
      options: [

        Option(
          name: '--last',
          description: 'Test only the changes since the last successful sync'
        ),
        Option(
          name: '--help'
        )
      ]
    ),
    Subcommand(
      name: 'sync',
      description: 'Run a live sync operation and push data to your Bitwarden organization',
      options: [

        Option(
          name: '--help'
        )
      ]
    ),
    Subcommand(
      name: 'last-sync',
      description: 'The last-sync command returns an ISO 8601 timestamp for the last sync operation that was performed for users or groups. You must specify either users or groups as an <object> to run the command against- Returns an empty response if no sync has been performed for the given object',
      args: [
        Arg(
        name: 'Object',
        description: 'You must specify either users or groups as an <object> to run the command against'
      )
      ],
      options: [

        Option(
          name: '--help'
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'The config command allows you to specify your directory settings',
      args: [

        Arg(
          name: 'setting',
          description: 'Specify the setting to configure'
        ),
        Arg(
          name: 'value',
          description: 'Specify the value assigned to the setting'
        )
      ],
      subcommands: [

        Subcommand(
          name: 'server',
          description: 'URL of your self-hosted installation (e.g. https://my.url.com) or https://vault.bitwarden.eu',
          args: [
            Arg(
            name: 'server-url',
            description: 'Specify the server URL'
          )
          ]
        ),
        Subcommand(
          name: 'directory',
          description: 'Type of directory to use',
          args: [
            Arg(
            name: 'directory-type',
            suggestions: [

              FigSuggestion(
                name: '0',
                description: 'Active Directory/LDAP'
              ),
              FigSuggestion(
                name: '1',
                description: 'Azure Active Directory'
              ),
              FigSuggestion(
                name: '2',
                description: 'Google Workspace/GSuite'
              ),
              FigSuggestion(
                name: '3',
                description: 'Okta'
              ),
              FigSuggestion(
                name: '4',
                description: 'OneLogin'
              )
            ]
          )
          ]
        ),
        Subcommand(
          name: 'ldap.password',
          description: 'Password for connection to the LDAP server',
          args: [
            Arg(
            name: 'password',
            description: 'Specify the password'
          )
          ]
        ),
        Subcommand(
          name: 'azure.key',
          description: 'Azure AD secret key',
          args: [
            Arg(
            name: 'key',
            description: 'Specify the AD secret key'
          )
          ]
        ),
        Subcommand(
          name: 'gsuite.key',
          description: 'Google Workspace/GSuite private key',
          args: [
            Arg(
            name: 'key',
            description: 'Specify the Google Workspace/GSuite private key'
          )
          ]
        ),
        Subcommand(
          name: 'okta.token',
          description: 'Okta token',
          args: [
            Arg(
            name: 'token',
            description: 'Specify the Okta token'
          )
          ]
        ),
        Subcommand(
          name: 'onelogin.secret',
          description: 'OneLogin client secret',
          args: [
            Arg(
            name: 'secret',
            description: 'Specify the OneLogin client secret'
          )
          ]
        )
      ],
      options: [

        Option(
          name: '--help'
        )
      ]
    ),
    Subcommand(
      name: 'data-file',
      description: 'Path to data.json database file',
      options: [

        Option(
          name: '--help'
        )
      ]
    ),
    Subcommand(
      name: 'clear-cache',
      description: 'The clear-cache command allows you to clear cached data that the application stores while performing sync operations',
      options: [

        Option(
          name: '--help'
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'The update command allows you to check if your Directory Connector CLI is up-to-date'
    )
  ],
  options: [

    Option(
      name: '--help',
      description: 'Show help for bwdc'
    )
  ]
);
