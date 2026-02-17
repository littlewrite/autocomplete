// Auto-generated from TypeScript source: 8.6.0.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `heroku` CLI
final FigSpec herokuSpec = FigSpec(
  name: 'heroku',
  subcommands: [

    Subcommand(
      name: ['auth:2fa', '2fa', 'twofactor'],
      description: 'Check 2fa status'
    ),
    Subcommand(
      name: ['auth:2fa:disable', 'twofactor:disable', '2fa:disable'],
      description: 'Disables 2fa on account'
    ),
    Subcommand(
      name: ['auth:login', 'login'],
      description: 'Login with your Heroku credentials',
      options: [

        Option(
          name: '--browser',
          description: 'Browser to open SSO with (example: "firefox", "safari")',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--interactive'],
          description: 'Login with username/password'
        ),
        Option(
          name: ['-e', '--expires-in'],
          description: 'Duration of token in seconds (default 30 days)',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['auth:logout', 'logout'],
      description: 'Clears local login credentials and invalidates API session'
    ),
    Subcommand(
      name: 'auth:token',
      description: 'Outputs current CLI authentication token.\nBy default, the CLI auth token is only valid for 1 year. To generate a long-lived token, use heroku authorizations:create',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        )
      ]
    ),
    Subcommand(
      name: ['auth:whoami', 'whoami'],
      description: 'Display the current logged in user'
    ),
    Subcommand(
      name: 'authorizations',
      description: 'List OAuth authorizations',
      options: [

        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'authorizations:create',
      description: 'Create a new OAuth authorization',
      options: [

        Option(
          name: ['-d', '--description'],
          description: 'Set a custom authorization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-S', '--short'],
          description: 'Only output token'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        ),
        Option(
          name: ['-s', '--scope'],
          description: 'Set custom OAuth scopes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--expires-in'],
          description: 'Set expiration in seconds (default no expiration)',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'authorizations:info',
      description: 'Show an existing OAuth authorization',
      options: [

        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: ['authorizations:revoke', 'authorizations:destroy'],
      description: 'Revoke OAuth authorization',
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'authorizations:rotate',
      description: 'Updates an OAuth authorization token',
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'authorizations:update',
      description: 'Updates an OAuth authorization',
      options: [

        Option(
          name: ['-d', '--description'],
          description: 'Set a custom authorization description',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--client-id',
          description: 'Identifier of OAuth client to set',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--client-secret',
          description: 'Secret of OAuth client to set',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'autocomplete',
      description: 'Display autocomplete installation instructions',
      options: [

        Option(
          name: ['-r', '--refresh-cache'],
          description: 'Refresh cache only (ignores displaying instructions)'
        )
      ],
      args: [
        Arg(
        name: 'shell',
        description: 'Shell type'
      )
      ]
    ),
    Subcommand(
      name: 'buildpacks',
      description: 'Display the buildpacks for an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'buildpacks:add',
      description: 'Add new app buildpack, inserting into list of buildpacks if necessary',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--index'],
          description: 'The 1-based index of the URL in the list of URLs',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'buildpack',
        description: 'Namespace/name of the buildpack'
      )
      ]
    ),
    Subcommand(
      name: 'buildpacks:clear',
      description: 'Clear all buildpacks set on the app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'buildpacks:info',
      description: 'Fetch info about a buildpack',
      args: [
        Arg(
        name: 'buildpack',
        description: 'Namespace/name of the buildpack'
      )
      ]
    ),
    Subcommand(
      name: 'buildpacks:remove',
      description: 'Remove a buildpack set on the app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--index'],
          description: 'The 1-based index of the URL to remove from the list of URLs',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'buildpack',
        description: 'Namespace/name of the buildpack'
      )
      ]
    ),
    Subcommand(
      name: 'buildpacks:search',
      description: 'Search for buildpacks',
      options: [

        Option(
          name: '--namespace',
          description: 'Buildpack namespaces to filter on using a comma separated list',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'Buildpack names to filter on using a comma separated list',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Buildpack description to filter on',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'term',
        description: 'Search term that searches across name, namespace, and description'
      )
      ]
    ),
    Subcommand(
      name: 'buildpacks:set',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--index'],
          description: 'The 1-based index of the URL in the list of URLs',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'buildpack',
        description: 'Namespace/name of the buildpack'
      )
      ]
    ),
    Subcommand(
      name: 'buildpacks:versions',
      description: 'List versions of a buildpack',
      args: [
        Arg(
        name: 'buildpack',
        description: 'Namespace/name of the buildpack'
      )
      ]
    ),
    Subcommand(
      name: 'ci',
      description: 'Display the most recent CI runs for the given pipeline',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App name',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: '--watch',
          description: 'Keep running and watch for new and update tests'
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'ci:info',
      description: 'Show the status of a specific test run',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App name',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: '--node',
          description: 'The node number to show its setup and output',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'test-ru'
      )
      ]
    ),
    Subcommand(
      name: 'ci:last',
      description: 'Looks for the most recent run and returns the output of that run',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App name',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: '--node',
          description: 'The node number to show its setup and output',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:rerun',
      description: 'Rerun tests against current directory',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App name',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Subcommand(
      name: 'ci:run',
      description: 'Run tests against current directory',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App name',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'clients',
      description: 'List your OAuth clients',
      options: [

        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'clients:create',
      description: 'Create a new OAuth client',
      options: [

        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        ),
        Option(
          name: ['-s', '--shell'],
          description: 'Output in shell format'
        )
      ],
      args: [

        Arg(
          name: 'name'
        ),
        Arg(
          name: 'redirect_uri'
        )
      ]
    ),
    Subcommand(
      name: 'clients:destroy',
      description: 'Delete client by ID',
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'clients:info',
      description: 'Show details of an oauth client',
      options: [

        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        ),
        Option(
          name: ['-s', '--shell'],
          description: 'Output in shell format'
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'clients:rotate',
      description: 'Rotate OAuth client secret',
      options: [

        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        ),
        Option(
          name: ['-s', '--shell'],
          description: 'Output in shell format'
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'clients:update',
      description: 'Update OAuth client',
      options: [

        Option(
          name: ['-n', '--name'],
          description: 'Change the client name',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--url',
          description: 'Change the client redirect URL',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Display the config vars for an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--shell'],
          description: 'Output config vars in shell format'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Output config vars in json format'
        )
      ]
    ),
    Subcommand(
      name: 'config:edit',
      description: 'Interactively edit config vars\nThis command opens the app config in a text editor set by \$VISUAL or \$EDITOR.\nAny variables added/removed/changed will be updated on the app after saving and closing the file',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'key',
        description: 'Edit a single ke'
      )
      ]
    ),
    Subcommand(
      name: 'config:get',
      description: 'Display a single config value for an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--shell'],
          description: 'Output config vars in shell format'
        )
      ],
      args: [
        Arg(
        name: 'KE'
      )
      ]
    ),
    Subcommand(
      name: ['config:unset', 'config:remove'],
      description: 'Unset one or more config vars',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'domains',
      description: 'List domains for an app',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        ),
        Option(
          name: '--columns',
          description: 'Only show provided columns (comma-separated)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'Property to sort by (prepend \'-\' for descending)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Filter property by partial string matching, ex: name=foo',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--csv',
          description: 'Output is csv format [alias: --output=csv]'
        ),
        Option(
          name: '--output',
          description: 'Output in a more machine friendly format',
          args: [
            Arg(
            suggestions: [

              FigSuggestion(name: 'csv'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml')
            ]
          )
          ]
        ),
        Option(
          name: ['-x', '--extended'],
          description: 'Show extra columns'
        ),
        Option(
          name: '--no-header',
          description: 'Hide table header from output'
        )
      ]
    ),
    Subcommand(
      name: 'domains:add',
      description: 'Add a domain to an app',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-c', '--cert'],
          description: 'The name of the SSL cert you want to use for this domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        ),
        Option(
          name: '--wait'
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostnam'
      )
      ]
    ),
    Subcommand(
      name: 'domains:clear',
      description: 'Remove all domains from an app',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'domains:info',
      description: 'Show detailed information for a domain on an app',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostnam'
      )
      ]
    ),
    Subcommand(
      name: 'domains:remove',
      description: 'Remove a domain from an app',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostnam'
      )
      ]
    ),
    Subcommand(
      name: 'domains:update',
      description: 'Update a domain to use a different SSL certificate on an app',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'The name or id of the certificate you want to use for this domain',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostnam'
      )
      ]
    ),
    Subcommand(
      name: 'domains:wait',
      description: 'Wait for domain to be active for an app',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostnam'
      )
      ]
    ),
    Subcommand(
      name: 'git:clone',
      description: 'Clones a heroku app to your local machine at DIRECTORY (defaults to app name)',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'The Heroku app to use',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'The git remote to create, default "heroku"',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'DIRECTORY',
        description: 'Where to clone the ap'
      )
      ]
    ),
    Subcommand(
      name: 'git:remote',
      description: 'Adds a git remote to an app repo\nextra arguments will be passed to git remote add\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'The Heroku app to use',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'The git remote to create',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'labs:disable',
      description: 'Disables an experimental feature',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--confirm',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'featur'
      )
      ]
    ),
    Subcommand(
      name: ['local', 'local:start'],
      description: 'Run heroku app locally\nStart the application specified by a Procfile (defaults to ./Procfile)',
      options: [

        Option(
          name: ['-f', '--procfile'],
          description: 'Use a different Procfile',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--env'],
          description: 'Location of env file (defaults to .env)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--port'],
          description: 'Port to listen on',
          args: [
            Arg(
            defaultValue: '500'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'processname'
      )
      ]
    ),
    Subcommand(
      name: 'local:run',
      description: 'Run a one-off command',
      options: [

        Option(
          name: ['-e', '--env'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--port'],
          args: [
            Arg(
            defaultValue: '500'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'local:version',
      description: 'Display node-foreman version'
    ),
    Subcommand(
      name: 'logs',
      description: 'Display recent log output\ndisable colors with --no-color, HEROKU_LOGS_COLOR=0, or HEROKU_COLOR=0',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--num'],
          description: 'Number of lines to display',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--dyno'],
          description: 'Only show output from this dyno type (such as "web" or "worker")',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--source'],
          description: 'Only show output from this source (such as "app" or "heroku")',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--tail'],
          description: 'Continually stream logs'
        ),
        Option(
          name: '--force-colors',
          description: 'Force use of colors (even on non-tty output)'
        )
      ]
    ),
    Subcommand(
      name: 'pipelines',
      description: 'List pipelines you have access to',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'pipelines:add',
      description: 'Add this app to a pipeline\nThe app and pipeline names must be specified.\nThe stage of the app will be guessed based on its name if not specified',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--stage'],
          description: 'Stage of first app in pipeline',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'pipeline',
        description: 'Name of pipelin'
      )
      ]
    ),
    Subcommand(
      name: 'pipelines:connect',
      description: 'Connect a github repo to an existing pipeline',
      options: [

        Option(
          name: ['-r', '--repo'],
          description: 'The GitHub repository to connect to',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'name',
        description: 'Name of pipelin'
      )
      ]
    ),
    Subcommand(
      name: 'pipelines:create',
      description: 'Create a new pipeline\n  An existing app must be specified as the first app in the pipeline.\n  The pipeline name will be inferred from the app name if not specified.\n  The stage of the app will be guessed based on its name if not specified.\n  The pipeline owner will be the user creating the pipeline if not specified with -t for teams or -o for orgs',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--stage'],
          description: 'Stage of first app in pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--team'],
          description: 'The team which will own the apps',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'name',
        description: 'Name of pipeline (defaults to basename of the app)',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pipelines:destroy',
      description: 'Destroy a pipeline',
      args: [
        Arg(
        name: 'pipeline',
        description: 'Name of pipelin'
      )
      ]
    ),
    Subcommand(
      name: 'pipelines:diff',
      description: 'Compares the latest release of this app to its downstream app(s)',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipelines:info',
      description: 'Show list of apps in a pipeline',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ],
      args: [
        Arg(
        name: 'pipeline',
        description: 'Pipeline to show list of apps for'
      )
      ]
    ),
    Subcommand(
      name: 'pipelines:open',
      description: 'Open a pipeline in dashboard',
      args: [
        Arg(
        name: 'pipeline',
        description: 'Name of pipelin'
      )
      ]
    ),
    Subcommand(
      name: 'pipelines:promote',
      description: 'Promote the latest release of this app to its downstream app(s)',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--to'],
          description: 'Comma separated list of apps to promote to',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipelines:remove',
      description: 'Remove this app from its pipeline',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipelines:rename',
      description: 'Rename a pipeline',
      args: [

        Arg(
          name: 'pipeline',
          description: 'Current name of pipeline'
        ),
        Arg(
          name: 'name',
          description: 'New name of pipeline'
        )
      ]
    ),
    Subcommand(
      name: 'pipelines:setup',
      description: 'Bootstrap a new pipeline with common settings and create a production and staging app (requires a fully formed app.json in the repo)',
      options: [

        Option(
          name: ['-t', '--team'],
          description: 'The team to assign pipeline ownership to (defaults to current user)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-y', '--yes'],
          description: 'Accept all default settings without prompting'
        )
      ],
      args: [

        Arg(
          name: 'name',
          description: 'Name of pipeline',
          isOptional: true
        ),
        Arg(
          name: 'repo',
          description: 'A GitHub repository to connect the pipeline to',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pipelines:transfer',
      description: 'Transfer ownership of a pipeline',
      options: [

        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'owner',
        description: 'The owner to transfer the pipeline to'
      )
      ]
    ),
    Subcommand(
      name: 'pipelines:update',
      description: 'Update the app\'s stage in a pipeline',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--stage'],
          description: 'New stage of app',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:autoscale:disable',
      description: 'Disable web dyno autoscaling',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:autoscale:enable',
      description: 'Enable web dyno autoscaling',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--min',
          description: 'Minimum number of dynos',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--max',
          description: 'Maximum number of dynos',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--p95',
          description: 'Desired p95 response time',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--notifications',
          description: 'Receive email notifications when the max dyno limit is reached'
        )
      ]
    ),
    Subcommand(
      name: 'ps:wait',
      description: 'Wait for all dynos to be running latest version after a release',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'Wait for one specific dyno type',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-w', '--wait-interval'],
          description: 'How frequently to poll in seconds (to avoid hitting Heroku API rate limits)',
          args: [
            Arg(
            defaultValue: '1'
          )
          ]
        ),
        Option(
          name: ['-R', '--with-run'],
          description: 'Whether to wait for one-off run dynos'
        )
      ]
    ),
    Subcommand(
      name: 'regions',
      description: 'List available regions for deployment',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: '--private',
          description: 'Show regions for private spaces'
        ),
        Option(
          name: '--common',
          description: 'Show regions for common runtime'
        )
      ]
    ),
    Subcommand(
      name: 'reviewapps:disable',
      description: 'Disable review apps and/or settings on an existing pipeline',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'Parent app used by review apps',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--no-autodeploy',
          description: 'Disable autodeployments'
        ),
        Option(
          name: '--no-autodestroy',
          description: 'Disable automatically destroying review apps'
        ),
        Option(
          name: '--no-wait-for-ci',
          description: 'Disable wait for CI'
        )
      ]
    ),
    Subcommand(
      name: 'reviewapps:enable',
      description: 'Enable review apps and/or settings on an existing pipeline',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'Parent app used by review apps',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--autodeploy',
          description: 'Autodeploy the review app'
        ),
        Option(
          name: '--autodestroy',
          description: 'Autodestroy the review app'
        ),
        Option(
          name: '--wait-for-ci',
          description: 'Wait for CI to pass before deploying'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run a one-off process inside a heroku dyno\nShows a notification if the dyno takes more than 20 seconds to start',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'Parent app used by review apps',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--size'],
          description: 'Dyno size',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Process type',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-x', '--exit-code'],
          description: 'Passthrough the exit code of the remote command'
        ),
        Option(
          name: ['-e', '--env'],
          description: 'Environment variables to set (use \';\' to split multiple vars)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--no-tty',
          description: 'Force the command to not run in a tty'
        ),
        Option(
          name: '--no-notify',
          description: 'Disables notification when dyno is up (alternatively use HEROKU_NOTIFICATIONS=0)'
        )
      ]
    ),
    Subcommand(
      name: 'run:detached',
      description: 'Run a detached dyno, where output is sent to your logs',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--env'],
          description: 'Environment variables to set (use \';\' to split multiple vars)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--size'],
          description: 'Dyno size',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--tail'],
          description: 'Continually stream logs'
        ),
        Option(
          name: '--type',
          description: 'Process type',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sessions',
      description: 'List your OAuth sessions',
      options: [

        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'sessions:destroy',
      description: 'Delete (logout) OAuth session by ID',
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Display current status of the Heroku platform',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'webhooks',
      description: 'List webhooks on an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'webhooks:add',
      description: 'Add a webhook to an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma delimited event types your server will receive',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-l', '--level'],
          description: 'Notify does not retry, sync will retry until successful or timeout',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--secret'],
          description: 'Value to sign delivery with in Heroku-Webhook-Hmac-SHA256 header',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--authorization'],
          description: 'Authorization header to send with webhooks',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'URL for receiver',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'webhooks:deliveries',
      description: 'List webhook deliveries on an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'Filter deliveries by status',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'webhooks:deliveries:info',
      description: 'Info for a webhook event on an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'webhooks:events',
      description: 'List webhook events on an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'webhooks:events:info',
      description: 'Info for a webhook event on an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'webhooks:info',
      description: 'Info for a webhook on an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'webhooks:remove',
      description: 'Removes a webhook from an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Id of webhook to remov'
      )
      ]
    ),
    Subcommand(
      name: 'webhooks:update',
      description: 'Updates a webhook in an app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma delimited event types your server will receive',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-l', '--level'],
          description: 'Notify does not retry, sync will retry until successful or timeout',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--secret'],
          description: 'Value to sign delivery with in Heroku-Webhook-Hmac-SHA256 header',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--authorization'],
          description: 'Authorization header to send with webhooks',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'URL for receiver',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'i'
      )
      ]
    ),
    Subcommand(
      name: 'ci:config',
      description: 'Display CI config vars\nExample:\n\n    \$ heroku ci:config --app murmuring-headland-14719 --json',
      options: [

        Option(
          name: ['-s', '--shell'],
          description: 'Output config vars in shell format'
        ),
        Option(
          name: '--json',
          description: 'Output config vars in json format'
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:config:get',
      description: 'Get a CI config var\nExamples:\n\n    \$ heroku ci:config:get RAILS_ENV\n    test\n',
      options: [

        Option(
          name: ['-s', '--shell'],
          description: 'Output config var in shell format'
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'ke'
      )
      ]
    ),
    Subcommand(
      name: 'ci:config:set',
      description: 'Set CI config vars\nExamples:\n\n    \$ heroku ci:config:set RAILS_ENV=test\n    Setting test config vars... done\n\n    RAILS_ENV: test\n',
      options: [

        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:config:unset',
      description: 'Unset CI config vars\nExamples:\n\n    \$ heroku ci:config:uset RAILS_ENV\n    Unsetting RAILS_ENV... done\n',
      options: [

        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:debug',
      description: 'Opens an interactive test debugging session with the contents of the current directory\nExample:\n\n    \$ heroku ci:debug\n    Preparing source... done\n    Creating test run... done\n    Running setup and attaching to test dyno...\n\n~ \$\n',
      options: [

        Option(
          name: '--no-setup',
          description: 'Start test dyno without running test-setup'
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--no-cache',
          description: 'Start test run with an empty cache'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:migrate-manifest',
      description: 'App-ci.json is deprecated. Run this command to migrate to app.json with an environments key.\nExample:\n\n    \$ heroku ci:migrate-manifest\n    Writing app.json file... done\n    Deleting app-ci.json file... done\n    Please check the contents of your app.json before committing to your repo\n    You\'re all set! 🎉'
    ),
    Subcommand(
      name: 'ci:open',
      description: 'Open the Dashboard version of Heroku CI\nopens a browser to view the Dashboard version of Heroku CI\n\n    Example:\n\n    \$ heroku ci:open --app murmuring-headland-14719',
      options: [

        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'addons',
      description: 'Lists your add-ons and attachments\nThe default filter applied depends on whether you are in a Heroku app\ndirectory. If so, the --app flag is implied. If not, the default of --all\nis implied. Explicitly providing either flag overrides the default\nbehavior',
      options: [

        Option(
          name: ['-A', '--all'],
          description: 'Show add-ons and attachments for all accessible apps'
        ),
        Option(
          name: '--json',
          description: 'Return add-ons in json format'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'addons:attach',
      description: 'Attach an existing add-on resource to an app\n',
      options: [

        Option(
          name: '--as',
          description: 'Name for add-on attachment',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--credential',
          description: 'Credential name for scoped access to Heroku Postgres',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Overwrite existing add-on attachment with same name',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'addon_nam'
      )
      ]
    ),
    Subcommand(
      name: 'addons:create',
      description: 'Create a new add-on resource\n',
      options: [

        Option(
          name: '--name',
          description: 'Name for the add-on resource',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--as',
          description: 'Name for the initial add-on attachment',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Overwrite existing config vars or existing add-on attachments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'Watch add-on creation status and exit when complete'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'service:pla'
      )
      ]
    ),
    Subcommand(
      name: 'addons:destroy',
      description: 'Permanently destroy an add-on resource\n',
      options: [

        Option(
          name: ['-f', '--force'],
          description: 'Allow destruction even if connected to other apps'
        ),
        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'Watch add-on destruction status and exit when complete'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'addons:detach',
      description: 'Detach an existing add-on resource from an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'attachment_nam'
      )
      ]
    ),
    Subcommand(
      name: 'addons:docs',
      description: 'Open an add-on\'s Dev Center documentation in your browser\n',
      options: [

        Option(
          name: '--show-url',
          description: 'Show URL, do not open browser'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'addo'
      )
      ]
    ),
    Subcommand(
      name: 'addons:downgrade',
      description: 'Change add-on plan\nSee available plans with `heroku addons:plans SERVICE`.\n\nNote that `heroku addons:upgrade` and `heroku addons:downgrade` are the same.\nEither one can be used to change an add-on plan up or down.\n\nhttps://devcenter.heroku.com/articles/managing-add-ons',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'addon'
        ),
        Arg(
          name: 'plan',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'addons:info',
      description: 'Show detailed add-on resource and attachment information\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'addo'
      )
      ]
    ),
    Subcommand(
      name: 'addons:open',
      description: 'Open an add-on\'s dashboard in your browser\n',
      options: [

        Option(
          name: '--show-url',
          description: 'Show URL, do not open browser'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'addo'
      )
      ]
    ),
    Subcommand(
      name: 'addons:plans',
      description: 'List all available plans for an add-on services\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ],
      args: [
        Arg(
        name: 'servic'
      )
      ]
    ),
    Subcommand(
      name: 'addons:rename',
      description: 'Rename an add-on\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'addon'
        ),
        Arg(
          name: 'name'
        )
      ]
    ),
    Subcommand(
      name: 'addons:services',
      description: 'List all available add-on services\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'addons:upgrade',
      description: 'Change add-on plan\nSee available plans with `heroku addons:plans SERVICE`.\n\nNote that `heroku addons:upgrade` and `heroku addons:downgrade` are the same.\nEither one can be used to change an add-on plan up or down.\n\nhttps://devcenter.heroku.com/articles/managing-add-ons',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'addon'
        ),
        Arg(
          name: 'plan',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'addons:wait',
      description: 'Show provisioning status of the add-ons on the app\n',
      options: [

        Option(
          name: '--wait-interval',
          description: 'How frequently to poll in seconds',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'addon'
      )
      ]
    ),
    Subcommand(
      name: 'certs',
      description: 'List SSL certificates for an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:add',
      description: 'Add an SSL certificate to an app\nNote: certificates with PEM encoding are also valid',
      options: [

        Option(
          name: '--bypass',
          description: 'Bypass the trust chain completion step'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'CRT'
        ),
        Arg(
          name: 'KEY'
        )
      ]
    ),
    Subcommand(
      name: 'certs:auto',
      description: 'Show ACM status for an app\n',
      options: [

        Option(
          name: '--wait',
          description: 'Watch ACM status and display the status when complete'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:auto:disable',
      description: 'Disable ACM for an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:auto:enable',
      description: 'Enable ACM status for an app\n',
      options: [

        Option(
          name: '--wait',
          description: 'Watch ACM status and exit when complete'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:auto:refresh',
      description: 'Refresh ACM for an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:chain',
      description: 'Print an ordered & complete chain for a certificate\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:generate',
      description: 'Generate a key and a CSR or self-signed certificate\nGenerate a key and certificate signing request (or self-signed certificate)\nfor an app. Prompts for information to put in the certificate unless --now\nis used, or at least one of the --subject, --owner, --country, --area, or\n--city options is specified',
      options: [

        Option(
          name: '--selfsigned',
          description: 'Generate a self-signed certificate instead of a CSR'
        ),
        Option(
          name: '--keysize',
          description: 'RSA key size in bits (default: 2048)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--owner',
          description: 'Name of organization certificate belongs to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--country',
          description: 'Country of owner, as a two-letter ISO country code',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--area',
          description: 'Sub-country area (state, province, etc.) of owner',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--city',
          description: 'City of owner',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--subject',
          description: 'Specify entire certificate subject',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--now',
          description: 'Do not prompt for any owner information'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'domai'
      )
      ]
    ),
    Subcommand(
      name: 'certs:info',
      description: 'Show certificate information for an SSL certificate\n',
      options: [

        Option(
          name: '--name',
          description: 'Name to check info on',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--endpoint',
          description: 'Endpoint to check info on',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--show-domains',
          description: 'Show associated domains'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:key',
      description: 'Print the correct key for the given certificate\nYou must pass one single certificate, and one or more keys.\nThe first key that signs the certificate will be printed back',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:remove',
      description: 'Remove an SSL certificate from an app\n',
      options: [

        Option(
          name: '--name',
          description: 'Name to remove',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--endpoint',
          description: 'Endpoint to remove',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:update',
      description: 'Update an SSL certificate on an app\nNote: certificates with PEM encoding are also valid',
      options: [

        Option(
          name: '--bypass',
          description: 'Bypass the trust chain completion step'
        ),
        Option(
          name: '--name',
          description: 'Name to update',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--endpoint',
          description: 'Endpoint to update',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'CRT'
        ),
        Arg(
          name: 'KEY'
        )
      ]
    ),
    Subcommand(
      name: 'container',
      description: 'Use containers to build and deploy Heroku apps\n'
    ),
    Subcommand(
      name: 'container:login',
      description: 'Log in to Heroku Container Registry\nUsage:\n        heroku container:login',
      options: [

        Option(
          name: ['-v', '--verbose']
        )
      ]
    ),
    Subcommand(
      name: 'container:logout',
      description: 'Log out from Heroku Container Registry\n',
      options: [

        Option(
          name: ['-v', '--verbose']
        )
      ]
    ),
    Subcommand(
      name: 'container:pull',
      description: 'Pulls an image from an app\'s process type\n\n    Usage:\n    heroku container:pull web        # Pulls the web image from the app\n    heroku container:pull web worker # Pulls both the web and worker images from the app\n    heroku container:pull web:latest # Pulls the latest tag from the web image',
      options: [

        Option(
          name: ['-v', '--verbose']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'container:push',
      description: 'Builds, then pushes Docker images to deploy your Heroku app\n',
      options: [

        Option(
          name: ['-v', '--verbose']
        ),
        Option(
          name: ['-R', '--recursive'],
          description: 'Pushes Dockerfile.<process> found in current and subdirectories'
        ),
        Option(
          name: '--arg',
          description: 'Set build-time variables',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--context-path',
          description: 'Path to use as build context (defaults to Dockerfile dir)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'container:release',
      description: 'Releases previously pushed Docker images to your Heroku app\n\n    Usage:\n    heroku container:release web                       # Releases the previously pushed web process type\n    heroku container:release web worker                # Releases the previously pushed web and worker process types',
      options: [

        Option(
          name: ['-v', '--verbose']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'container:rm',
      description: 'Remove the process type from your app\n\n    Usage:\n    heroku container:rm web        # Destroys the web container\n    heroku container:rm web worker # Destroys the web and worker containers',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'container:run',
      description: 'Builds, then runs the docker image locally\n\n    Usage:\n    heroku container:run web bash # Runs bash on the local web docker container\n    heroku container:run worker   # Runs the container CMD on the local worker container',
      options: [

        Option(
          name: ['-p', '--port'],
          description: 'Port the app will run on',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pg',
      description: 'Show database information\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups',
      description: 'List database backups\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pg:backups:cancel',
      description: 'Cancel an in-progress backup or restore (default newest)\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_id'
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:capture',
      description: 'Capture a new backup\n',
      options: [

        Option(
          name: '--wait-interval',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:delete',
      description: 'Delete a backup\n',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_i'
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:download',
      description: 'Downloads database backup\n',
      options: [

        Option(
          name: ['-o', '--output'],
          description: 'Location to download to. Defaults to latest.dump',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_id'
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:info',
      description: 'Get information about a specific backup\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_id'
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:restore',
      description: 'Restore a backup (default latest) to a database\ndefaults to saving the latest database to DATABASE_URL',
      options: [

        Option(
          name: '--wait-interval',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--extensions'],
          description: 'Comma-separated list of extensions to pre-install in the public schema',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose']
        ),
        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'backup',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:backups:schedule',
      description: 'Schedule daily backups for given database\n',
      options: [

        Option(
          name: '--at',
          description: 'At a specific (24h) hour in the given timezone. Defaults to UTC. --at \'[HOUR]:00 [TIMEZONE]\'',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:schedules',
      description: 'List backup schedule\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pg:backups:unschedule',
      description: 'Stop daily backups\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:url',
      description: 'Get secret but publicly accessible URL of a backup\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_id'
      )
      ]
    ),
    Subcommand(
      name: 'pg:bloat',
      description: 'Show table and index bloat in your database ordered by most wasteful\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:blocking',
      description: 'Display queries holding locks other queries are waiting to be released\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:connection-pooling:attach',
      description: 'Add an attachment to a database using connection pooling\nExample:\n\n  heroku pg:connection-pooling:attach postgresql-something-12345\n',
      options: [

        Option(
          name: '--as',
          description: 'Name for add-on attachment',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:copy',
      description: 'Copy all data from source db to target\nat least one of the databases must be a Heroku PostgreSQL DB',
      options: [

        Option(
          name: '--wait-interval',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--verbose'
        ),
        Option(
          name: '--confirm',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'source'
        ),
        Arg(
          name: 'target'
        )
      ]
    ),
    Subcommand(
      name: 'pg:credentials',
      description: 'Show information on credentials in the database\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:create',
      description: 'Create credential within database\nExample:\n\n    heroku pg:credentials:create postgresql-something-12345 --name new-cred-name\n',
      options: [

        Option(
          name: ['-n', '--name'],
          description: 'Name of the new credential within the database',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:destroy',
      description: 'Destroy credential within database\nExample:\n\n    heroku pg:credentials:destroy postgresql-transparent-56874 --name cred-name -a woodstock-production\n',
      options: [

        Option(
          name: ['-n', '--name'],
          description: 'Unique identifier for the credential',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:repair-default',
      description: 'Repair the permissions of the default credential within database\nExample:\n\n    heroku pg:credentials:repair-default postgresql-something-12345\n',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:rotate',
      description: 'Rotate the database credentials\n',
      options: [

        Option(
          name: ['-n', '--name'],
          description: 'Which credential to rotate (default credentials if not specified)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--all',
          description: 'Rotate all credentials'
        ),
        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Forces rotating the targeted credentials'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:url',
      description: 'Show information on a database credential\n',
      options: [

        Option(
          name: ['-n', '--name'],
          description: 'Which credential to show (default credentials if not specified)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:diagnose',
      description: 'Run or view diagnostics report\n\ndefaults to DATABASE_URL database if no DATABASE is specified\nif REPORT_ID is specified instead, a previous report is displayed\n',
      options: [

        Option(
          name: '--json',
          description: 'Format output as JSON'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'DATABASE|REPORT_ID'
      )
      ]
    ),
    Subcommand(
      name: 'pg:info',
      description: 'Show database information\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:kill',
      description: 'Kill a query\n',
      options: [

        Option(
          name: ['-f', '--force']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'pid'
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:killall',
      description: 'Terminates all connections for all credentials\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:links',
      description: 'Lists all databases and information on link\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:links:create',
      description: 'Create a link between data stores\nExample:\n\n    heroku pg:links:create HEROKU_REDIS_RED HEROKU_POSTGRESQL_CERULEAN',
      options: [

        Option(
          name: '--as',
          description: 'Name of link to create',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'remote'
        ),
        Arg(
          name: 'database'
        )
      ]
    ),
    Subcommand(
      name: 'pg:links:destroy',
      description: 'Destroys a link between data stores\nExample:\n\n    heroku pg:links:destroy HEROKU_POSTGRESQL_CERULEAN redis-symmetrical-100',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'database'
        ),
        Arg(
          name: 'link'
        )
      ]
    ),
    Subcommand(
      name: 'pg:locks',
      description: 'Display queries with active locks\n',
      options: [

        Option(
          name: ['-t', '--truncate'],
          description: 'Truncates queries to 40 charaters'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:maintenance',
      description: 'Show current maintenance information\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:maintenance:run',
      description: 'Start maintenance\n',
      options: [

        Option(
          name: ['-f', '--force']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:maintenance:window',
      description: 'Set weekly maintenance window\nAll times are in UTC.\n\nExample:\n\n    heroku pg:maintenance:window postgres-slippery-100 "Sunday 06:00"',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'database'
        ),
        Arg(
          name: 'window'
        )
      ]
    ),
    Subcommand(
      name: 'pg:outliers',
      description: 'Show 10 queries that have longest execution time in aggregate\n',
      options: [

        Option(
          name: '--reset',
          description: 'Resets statistics gathered by pg_stat_statements'
        ),
        Option(
          name: ['-t', '--truncate'],
          description: 'Truncate queries to 40 characters'
        ),
        Option(
          name: ['-n', '--num'],
          description: 'The number of queries to display (default: 10)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:promote',
      description: 'Sets DATABASE as your DATABASE_URL\n',
      options: [

        Option(
          name: ['-f', '--force']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'databas'
      )
      ]
    ),
    Subcommand(
      name: 'pg:ps',
      description: 'View active queries with execution time\n',
      options: [

        Option(
          name: ['-v', '--verbose']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:psql',
      description: 'Open a psql shell to the database\n',
      options: [

        Option(
          name: ['-c', '--command'],
          description: 'SQL command to run',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--file'],
          description: 'SQL file to run',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--credential',
          description: 'Credential to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:pull',
      description: 'Pull Heroku database into local or remote database\nPull from SOURCE into TARGET.\n\nTARGET must be one of:\n  * a database name (i.e. on a local PostgreSQL server)  => TARGET must not exist and will be created\n  * a fully qualified URL to a local PostgreSQL server   => TARGET must not exist and will be created\n  * a fully qualified URL to a remote PostgreSQL server  => TARGET must exist and be empty\n\nTo delete a local database run `dropdb TARGET`\nTo create an empty remote database, run `createdb` with connection command-line options (run `createdb --help` for details).\n\nExamples:\n\n    # pull Heroku DB named postgresql-swimmingly-100 into local DB mylocaldb that must not exist\n    \$ heroku pg:pull postgresql-swimmingly-100 mylocaldb --app sushi\n\n    # pull Heroku DB named postgresql-swimmingly-100 into empty remote DB at postgres://myhost/mydb\n    \$ heroku pg:pull postgresql-swimmingly-100 postgres://myhost/mydb --app sushi\n',
      options: [

        Option(
          name: '--exclude-table-data',
          description: 'Tables for which data should be excluded (use \';\' to split multiple names)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'source'
        ),
        Arg(
          name: 'target'
        )
      ]
    ),
    Subcommand(
      name: 'pg:push',
      description: 'Push local or remote into Heroku database\nPush from SOURCE into TARGET. TARGET must be empty.\n\nTo empty a Heroku database for push run `heroku pg:reset`\n\nSOURCE must be either the name of a database existing on your localhost or the\nfully qualified URL of a remote database.\n\nExamples:\n\n    # push mylocaldb into a Heroku DB named postgresql-swimmingly-100\n    \$ heroku pg:push mylocaldb postgresql-swimmingly-100\n\n    # push remote DB at postgres://myhost/mydb into a Heroku DB named postgresql-swimmingly-100\n    \$ heroku pg:push postgres://myhost/mydb postgresql-swimmingly-100\n',
      options: [

        Option(
          name: '--exclude-table-data',
          description: 'Tables for which data should be excluded (use \';\' to split multiple names)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'source'
        ),
        Arg(
          name: 'target'
        )
      ]
    ),
    Subcommand(
      name: 'pg:reset',
      description: 'Delete all data in DATABASE\n',
      options: [

        Option(
          name: ['-e', '--extensions'],
          description: 'Comma-separated list of extensions to pre-install in the public schema',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:settings',
      description: 'Show your current database settings\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:settings:auto-explain',
      description: 'Automatically log execution plans of queries without running EXPLAIN by hand.\nThe auto_explain module is loaded at session-time so existing connections will not be logged.\nRestart your Heroku app and/or restart existing connections for logging to start taking place',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:auto-explain:log-analyze',
      description: 'Shows actual run times on the execution plan.\nThis is equivalent to calling EXPLAIN ANALYZE.\n\nWARNING: EXPLAIN ANALYZE will be run on ALL queries, not just logged queries. This can cause significant performance impacts to your database and should be used with caution.\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:auto-explain:log-buffers',
      description: 'Includes buffer usage statistics when execution plans are logged.\nThis is equivalent to calling EXPLAIN BUFFERS and can only be used in conjunction with pg:settings:auto-explain:log-analyze turned on',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:auto-explain:log-min-duration',
      description: 'Sets the minimum execution time in milliseconds for a statement\'s plan to be logged.\nSetting this value to 0 will log all queries. Setting this value to -1 will disable logging entirely.\n\nWARNING: Setting a low value may have performance impacts on your database as well as generate a large volume of logs',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:auto-explain:log-nested-statements',
      description: 'Nested statements are included in the execution plan\'s log.\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:auto-explain:log-triggers',
      description: 'Includes trigger execution statistics in execution plan logs.\nThis parameter can only be used in conjunction with pg:settings:auto-explain:log-analyze turned on',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:auto-explain:log-verbose',
      description: 'Include verbose details in execution plans.\nThis is equivalent to calling EXPLAIN VERBOSE',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:log-lock-waits',
      description: 'Controls whether a log message is produced when a session waits longer than the deadlock_timeout to acquire a lock. deadlock_timeout is set to 1 second\nDelays due to lock contention occur when multiple transactions are trying to access the same resource at the same time.\nApplications and their query patterns should try to avoid changes to many different tables within the same transaction',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:log-min-duration-statement',
      description: 'The duration of each completed statement will be logged if the statement completes after the time specified by VALUE.\nVALUE needs to specified as a whole number, in milliseconds.\nSetting log_min_duration_statement to zero prints all statement durations and -1 will disable logging statement durations',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:log-statement',
      description: 'Log_statement controls which SQL statements are logged.\nValid values for VALUE:\nnone - No statements are logged\nddl  - All data definition statements, such as CREATE, ALTER and DROP will be logged\nmod  - Includes all statements from ddl as well as data-modifying statements such as INSERT, UPDATE, DELETE, TRUNCATE, COPY\nall  - All statements are logged',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:settings:track-functions',
      description: 'Track_functions controls tracking of function call counts and time used. Default is none.\nValid values for VALUE:\nnone - No functions are tracked\npl   - Only procedural language functions are tracked\nall  - All functions, including SQL and C language functions, are tracked. Simple SQL-language that are inlined are not tracked',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'value',
          isOptional: true
        ),
        Arg(
          name: 'database',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'pg:unfollow',
      description: 'Stop a replica from following and make it a writeable database\n',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'databas'
      )
      ]
    ),
    Subcommand(
      name: 'pg:upgrade',
      description: 'Unfollow a database and upgrade it to the latest stable PostgreSQL version\nto upgrade to another PostgreSQL version, use pg:copy instead',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-v', '--version'],
          description: 'PostgreSQL version to upgrade to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:vacuum-stats',
      description: 'Show dead rows and whether an automatic vacuum is expected to be triggered\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'pg:wait',
      description: 'Blocks until database is available\n',
      options: [

        Option(
          name: '--wait-interval',
          description: 'How frequently to poll in seconds (to avoid rate limiting)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--no-notify',
          description: 'Do not show OS notification'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'psql',
      description: 'Open a psql shell to the database\n',
      options: [

        Option(
          name: ['-c', '--command'],
          description: 'SQL command to run',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--file'],
          description: 'SQL file to run',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--credential',
          description: 'Credential to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis',
      description: 'Gets information about redis\n',
      options: [

        Option(
          name: '--json',
          description: 'Format output as JSON'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:cli',
      description: 'Opens a redis prompt\n',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:credentials',
      description: 'Display credentials information\n',
      options: [

        Option(
          name: '--reset',
          description: 'Reset credentials'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:info',
      description: 'Gets information about redis\n',
      options: [

        Option(
          name: '--json',
          description: 'Format output as JSON'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:keyspace-notifications',
      description: 'Set the keyspace notifications configuration\nSet the configuration to enable keyspace notification events:\n    K     Keyspace events, published with __keyspace@<db>__ prefix.\n    E     Keyevent events, published with __keyevent@<db>__ prefix.\n    g     Generic commands (non-type specific) like DEL, EXPIRE, RENAME, ...\n    \$     String commands\n    l     List commands\n    s     Set commands\n    h     Hash commands\n    z     Sorted set commands\n    t     Stream commands\n    x     Expired events (events generated every time a key expires)\n    e     Evicted events (events generated when a key is evicted for maxmemory)\n    m     Key miss events (events generated when a key that doesn\'t exist is accessed)\n    A     Alias for "g\$lshztxe", so that the "AKE" string means all the events except "m".\n\n    pass an empty string (\'\') to disable keyspace notifications\n',
      options: [

        Option(
          name: ['-c', '--config'],
          description: 'Set keyspace notifications configuration',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:maintenance',
      description: 'Manage maintenance windows\nSet or change the maintenance window for your Redis instance',
      options: [

        Option(
          name: ['-w', '--window'],
          description: 'Set weekly UTC maintenance window',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--run',
          description: 'Start maintenance'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Start maintenance without entering application maintenance mode'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:maxmemory',
      description: 'Set the key eviction policy\nSet the key eviction policy when instance reaches its storage limit. Available policies for key eviction include:\n\n    noeviction      # returns errors when memory limit is reached\n    allkeys-lfu     # removes less frequently used keys first\n    volatile-lfu    # removes less frequently used keys first that have an expiry set\n    allkeys-lru     # removes less recently used keys first\n    volatile-lru    # removes less recently used keys first that have an expiry set\n    allkeys-random  # evicts random keys\n    volatile-random # evicts random keys but only those that have an expiry set\n    volatile-ttl    # only evicts keys with an expiry set and a short TTL\n',
      options: [

        Option(
          name: ['-p', '--policy'],
          description: 'Set policy name',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:promote',
      description: 'Sets DATABASE as your REDIS_URL\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'databas'
      )
      ]
    ),
    Subcommand(
      name: 'redis:stats-reset',
      description: 'Reset all stats covered by RESETSTAT (https://redis.io/commands/config-resetstat)\n',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:timeout',
      description: 'Set the number of seconds to wait before killing idle connections\nSets the number of seconds to wait before killing idle connections. A value of zero means that connections will not be closed',
      options: [

        Option(
          name: ['-s', '--seconds'],
          description: 'Set timeout value',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:upgrade',
      description: 'Perform in-place version upgrade\n',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-v', '--version'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'redis:wait',
      description: 'Wait for Redis instance to be available\n',
      options: [

        Option(
          name: '--wait-interval',
          description: 'How frequently to poll in seconds',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database'
      )
      ]
    ),
    Subcommand(
      name: 'spaces',
      description: 'List available spaces\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:create',
      description: 'Create a new space\nExample:\n\n    \$ heroku spaces:create --space my-space --team my-team --region oregon\n    Creating space my-space in team my-team... done\n    === my-space\n    ID:         e7b99e37-69b3-4475-ad47-a5cc5d75fd9f\n    Team:       my-team\n    Region:     oregon\n    CIDR:       10.0.0.0/16\n    Data CIDR:  172.23.0.0/20\n    State:      allocating\n    Created at: 2016-01-06T03:23:13Z\n\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Name of space to create',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--region',
          description: 'Region name',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--cidr',
          description: 'RFC-1918 CIDR the space will use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--data-cidr',
          description: 'RFC-1918 CIDR used by Heroku Data resources for the space',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:destroy',
      description: 'Destroy a space\nExample:\n\n    \$ heroku spaces:destroy --space my-space\n    Destroying my-space... done\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to destroy',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to space name to bypass confirm prompt',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:info',
      description: 'Show info about a space\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get info of',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'spaces:peering:info',
      description: 'Display the information necessary to initiate a peering connection\nExample:\n\n    \$ heroku spaces:peering:info example-space\n    === example-space Peering Info\n    AWS Account ID:    012345678910\n    AWS Region:        us-west-2\n    AWS VPC ID:        vpc-baadf00d\n    AWS VPC CIDR:      10.0.0.0/16\n    Space CIDRs:       10.0.128.0/20, 10.0.144.0/20\n    Unavailable CIDRs: 10.1.0.0/16\n\nYou will use the information provied by this command to establish a peering connection request from your AWS VPC to your private space.\n\nTo start the peering process, go into your AWS console for the VPC you would like peered with your Private Space,\nnavigate to the VPC service, choose the "Peering Connections" option and click the "Create peering connection" button.\n\n- The AWS Account ID and VPC ID are necessary for the AWS VPC Peering connection wizard.\n- You will also need to configure your VPC route table to route the Dyno CIDRs through the peering connection.\n\nOnce you\'ve established the peering connection request, you can use the spaces:peerings:accept command to accept and\nconfigure the peering connection for the space.\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get peering info from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'spaces:peerings',
      description: 'List peering connections for a space\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get peer list from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'spaces:peerings:accept',
      description: 'Accepts a pending peering request for a private space\nExample:\n\n    \$ heroku spaces:peerings:accept pcx-4bd27022 --space example-space\n    Accepting and configuring peering connection pcx-4bd27022\n',
      options: [

        Option(
          name: ['-p', '--pcxid'],
          description: 'PCX ID of a pending peering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Space to get peering info from',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:peerings:destroy',
      description: 'Destroys an active peering connection in a private space\nExample:\n\n    \$ heroku spaces:peerings:destroy pcx-4bd27022 --confirm pcx-4bd27022 --space example-space\n    Tearing down peering connection pcx-4bd27022\n',
      options: [

        Option(
          name: ['-p', '--pcxid'],
          description: 'PCX ID of a pending peering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Space to get peering info from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to PCX ID to bypass confirm prompt',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:ps',
      description: 'List dynos for a space\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get dynos of',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'spaces:rename',
      description: 'Renames a space\nExample:\n\n    \$ heroku spaces:rename --from old-space-name --to new-space-name\n    Renaming space old-space-name to new-space-name... done\n',
      options: [

        Option(
          name: '--from',
          description: 'Current name of space',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--to',
          description: 'Desired name of space',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:topology',
      description: 'Show space topology\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get topology of',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'spaces:transfer',
      description: 'Transfer a space to another team\nExample:\n\n    \$ heroku spaces:transfer --space=space-name --team=team-name\n    Transferring space-name to team-name... done\n',
      options: [

        Option(
          name: '--space',
          description: 'Name of space',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--team',
          description: 'Desired owner of space',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:config',
      description: 'Display the configuration information for VPN\nExample:\n\n    \$ heroku spaces:vpn:config --space my-space vpn-connection-name\n    === vpn-connection-name VPN Tunnels\n    VPN Tunnel  Customer Gateway  VPN Gateway     Pre-shared Key  Routable Subnets  IKE Version\n    ──────────  ────────────────  ──────────────  ──────────────  ────────────────  ───────────\n    Tunnel 1    104.196.121.200   35.171.237.136  abcdef12345     10.0.0.0/16       1\n    Tunnel 2    104.196.121.200   52.44.7.216     fedcba54321     10.0.0.0/16       1\n\nYou will use the information provided by this command to establish a Private Space VPN Connection.\n\n- You must configure your VPN Gateway to use both Tunnels provided by Heroku\n- The VPN Gateway values are the IP addresses of the Private Space Tunnels\n- The Customer Gateway value is the Public IP of your VPN Gateway\n- The VPN Gateway must use the IKE Version shown and the Pre-shared Keys as the authentication method\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space the VPN connection belongs to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name or id of the VPN connection to retrieve config from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:connect',
      description: 'Create VPN\nPrivate Spaces can be connected to another private network via an IPSec VPN connection allowing dynos to connect to hosts on your private networks and vice versa.\nThe connection is established over the public Internet but all traffic is encrypted using IPSec',
      options: [

        Option(
          name: ['-n', '--name'],
          description: 'VPN name',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--ip'],
          description: 'Public IP of customer gateway',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-c', '--cidrs'],
          description: 'A list of routable CIDRs separated by commas',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Space name',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:connections',
      description: 'List the VPN Connections for a space\nExample:\n\n  \$ heroku spaces:vpn:connections --space my-space\n  === my-space VPN Connections\n  Name    Status  Tunnels\n  ──────  ──────  ───────\n  office  active  UP/UP\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get VPN connections from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:destroy',
      description: 'Destroys VPN in a private space\nExample:\n\n    \$ heroku spaces:vpn:destroy --space example-space vpn-connection-name --confirm vpn-connection-name\n    Tearing down VPN Connection vpn-connection-name in space example-space\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get peering info from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name or id of the VPN connection to retrieve config from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to VPN connection name to bypass confirm prompt',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:info',
      description: 'Display the information for VPN\nExample:\n\n    \$ heroku spaces:vpn:info --space my-space vpn-connection-name\n    === vpn-connection-name VPN Tunnel Info\n    Name:           vpn-connection-name\n    ID:             123456789012\n    Public IP:      35.161.69.30\n    Routable CIDRs: 172.16.0.0/16\n    Status:         failed\n    Status Message: supplied CIDR block already in use\n    === my-space Tunnel Info\n    VPN Tunnel  IP Address     Status  Status Last Changed   Details\n    ──────────  ─────────────  ──────  ────────────────────  ──────────────\n    Tunnel 1    52.44.146.197  UP      2016-10-25T22:09:05Z  status message\n    Tunnel 2    52.44.146.197  UP      2016-10-25T22:09:05Z  status message',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space the vpn connection belongs to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name or id of the VPN connection to get info from',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:update',
      description: 'Update VPN\nPrivate Spaces can be connected to another private network via an IPSec VPN connection allowing dynos to connect to hosts on your private networks and vice versa.\nThe connection is established over the public Internet but all traffic is encrypted using IPSec',
      options: [

        Option(
          name: ['-n', '--name'],
          description: 'VPN name',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-c', '--cidrs'],
          description: 'A list of routable CIDRs separated by commas',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Space name',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:wait',
      description: 'Wait for VPN Connection to be created\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space the vpn connection belongs to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name or id of the vpn connection to wait for',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-i', '--interval'],
          description: 'Seconds to wait between poll intervals',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--timeout'],
          description: 'Maximum number of seconds to wait',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:wait',
      description: 'Wait for a space to be created\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get info of',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-i', '--interval'],
          description: 'Seconds to wait between poll intervals',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--timeout'],
          description: 'Maximum number of seconds to wait',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'trusted-ips',
      description: 'List trusted IP ranges for a space\n\nTrusted IP ranges are only available on Private Spaces.\n\nThe space name is a required parameter. Newly created spaces will have 0.0.0.0/0 set by default\nallowing all traffic to applications in the space. More than one CIDR block can be provided at\na time to the commands listed below. For example 1.2.3.4/20 and 5.6.7.8/20 can be added with:\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to get inbound rules from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'trusted-ips:add',
      description: 'Add one range to the list of trusted IP ranges\n\nUses CIDR notation.\n\nExample:\n\n    \$ heroku trusted-ips:add --space my-space 192.168.2.0/24\n    Added 192.168.0.1/24 to trusted IP ranges on my-space\n',
      options: [

        Option(
          name: ['-s', '--space'],
          description: 'Space to add rule to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to space name to bypass confirm prompt',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'sourc'
      )
      ]
    ),
    Subcommand(
      name: 'trusted-ips:remove',
      description: 'Remove a range from the list of trusted IP ranges\n\nUses CIDR notation.\n\nExample:\n\n    \$ heroku trusted-ips:remove --space my-space 192.168.2.0/24\n    Removed 192.168.2.0/24 from trusted IP ranges on my-space\n',
      options: [

        Option(
          name: '--space',
          description: 'Space to remove rule from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to space name to bypass confirm prompt',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'sourc'
      )
      ]
    ),
    Subcommand(
      name: 'access',
      description: 'List who has access to an app\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'access:add',
      description: 'Add new users to your app\n',
      options: [

        Option(
          name: ['-p', '--permissions'],
          description: 'List of permissions comma separated',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'emai'
      )
      ]
    ),
    Subcommand(
      name: 'access:remove',
      description: 'Remove users from a team app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'emai'
      )
      ]
    ),
    Subcommand(
      name: 'access:update',
      description: 'Update existing collaborators on an team app\n',
      options: [

        Option(
          name: ['-p', '--permissions'],
          description: 'Comma-delimited list of permissions to update (deploy,manage,operate)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'emai'
      )
      ]
    ),
    Subcommand(
      name: 'apps:join',
      description: 'Add yourself to a team app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:leave',
      description: 'Remove yourself from a team app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:lock',
      description: 'Prevent team members from joining an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:transfer',
      description: 'Transfer applications to another user or team\n',
      options: [

        Option(
          name: ['-l', '--locked'],
          description: 'Lock the app upon transfer'
        ),
        Option(
          name: '--bulk',
          description: 'Transfer applications in bulk'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'recipient',
        description: 'User or team to transfer applications to'
      )
      ]
    ),
    Subcommand(
      name: 'apps:unlock',
      description: 'Unlock an app so any team member can join\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'join',
      description: 'Add yourself to a team app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'leave',
      description: 'Remove yourself from a team app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'lock',
      description: 'Prevent team members from joining an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'members',
      description: 'List members of a team\n',
      options: [

        Option(
          name: ['-r', '--role'],
          description: 'Filter by role',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--pending',
          description: 'Filter by pending team invitations'
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'members:add',
      description: 'Adds a user to a team\n',
      options: [

        Option(
          name: ['-r', '--role'],
          description: 'Member role (admin, collaborator, member, owner)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'emai'
      )
      ]
    ),
    Subcommand(
      name: 'members:remove',
      description: 'Removes a user from a team\n',
      options: [

        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'emai'
      )
      ]
    ),
    Subcommand(
      name: 'members:set',
      description: 'Sets a members role in a team\n',
      options: [

        Option(
          name: ['-r', '--role'],
          description: 'Member role (admin, collaborator, member, owner)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'emai'
      )
      ]
    ),
    Subcommand(
      name: 'orgs',
      description: 'List the teams that you are a member of\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: '--enterprise',
          description: 'Filter by enterprise teams'
        )
      ]
    ),
    Subcommand(
      name: 'orgs:open',
      description: 'Open the team interface in a browser window\n',
      options: [

        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'teams',
      description: 'List the teams that you are a member of\n\nUse heroku members:* to manage team members.\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'unlock',
      description: 'Unlock an app so any team member can join\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps',
      description: 'List your apps\n',
      options: [

        Option(
          name: ['-A', '--all'],
          description: 'Include apps in all teams'
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Filter by space',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--personal'],
          description: 'List apps in personal account when a default team is set'
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:create',
      description: 'Creates a new app\n',
      options: [

        Option(
          name: '--addons',
          description: 'Comma-delimited list of addons to install',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-b', '--buildpack'],
          description: 'Buildpack url to use for this app',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--no-remote'],
          description: 'Do not create a git remote'
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'The git remote to create, default "heroku"',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--stack'],
          description: 'The stack to create the app on',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--space',
          description: 'The private space to create the app in',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--region',
          description: 'Specify region for the app to run in',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'app',
        description: 'Name of app to create',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'apps:destroy',
      description: 'Permanently destroy an app\nThis will also destroy all add-ons on the app',
      options: [

        Option(
          name: ['-c', '--confirm'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:errors',
      description: 'View app errors\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: '--hours',
          description: 'Number of hours to look back (default 24)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--router',
          description: 'Show only router errors'
        ),
        Option(
          name: '--dyno',
          description: 'Show only dyno errors'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:favorites',
      description: 'List favorited apps\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'apps:favorites:add',
      description: 'Favorites an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:favorites:remove',
      description: 'Unfavorites an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:info',
      description: 'Show detailed app information\n\$ heroku apps:info\n=== example\nGit URL:   https://git.heroku.com/example.git\nRepo Size: 5M\n...\n\n\$ heroku apps:info --shell\ngit_url=https://git.heroku.com/example.git\nrepo_size=5000000\n',
      options: [

        Option(
          name: ['-s', '--shell'],
          description: 'Output more shell friendly key/value pairs'
        ),
        Option(
          name: ['-j', '--json']
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:open',
      description: 'Open the app in a web browser\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'path'
      )
      ]
    ),
    Subcommand(
      name: 'apps:rename',
      description: 'Rename an app\nThis will locally update the git remote if it is set to the old app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'newnam'
      )
      ]
    ),
    Subcommand(
      name: 'apps:stacks',
      description: 'Show the list of available stacks\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:stacks:set',
      description: 'Set the stack of an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'stac'
      )
      ]
    ),
    Subcommand(
      name: 'config:set',
      description: 'Set one or more config vars\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'drains',
      description: 'Display the log drains of an app\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'drains:add',
      description: 'Adds a log drain to an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'ur'
      )
      ]
    ),
    Subcommand(
      name: 'drains:remove',
      description: 'Removes a log drain from an app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'ur'
      )
      ]
    ),
    Subcommand(
      name: 'dyno:kill',
      description: 'Stop app dyno\n\nstop app dyno or dyno type',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'dyn'
      )
      ]
    ),
    Subcommand(
      name: 'dyno:resize',
      description: 'Manage dyno sizes\n\nCalled with no arguments shows the current dyno size.\n\nCalled with one argument sets the size.\nWhere SIZE is one of eco|basic|standard-1x|standard-2x|performance\n\nCalled with 1..n TYPE=SIZE arguments sets the quantity per type.\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dyno:restart',
      description: 'Restart app dynos\nif DYNO is not specified, restarts all dynos on app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'dyno'
      )
      ]
    ),
    Subcommand(
      name: 'dyno:scale',
      description: 'Scale dyno quantity up or down\nAppending a size (eg. web=2:Standard-2X) allows simultaneous scaling and resizing.\n\nOmitting any arguments will display the app\'s current dyno formation, in a\nformat suitable for passing back into ps:scale',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dyno:stop',
      description: 'Stop app dyno\n\nstop app dyno or dyno type',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'dyn'
      )
      ]
    ),
    Subcommand(
      name: 'features',
      description: 'List available app features\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'features:disable',
      description: 'Disables an app feature\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'featur'
      )
      ]
    ),
    Subcommand(
      name: 'features:enable',
      description: 'Enables an app feature\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'featur'
      )
      ]
    ),
    Subcommand(
      name: 'features:info',
      description: 'Display information about a feature\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'featur'
      )
      ]
    ),
    Subcommand(
      name: 'keys',
      description: 'Display your SSH keys\n',
      options: [

        Option(
          name: ['-l', '--long'],
          description: 'Display full SSH keys'
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'keys:add',
      description: 'Add an SSH key for a user\nif no KEY is specified, will try to find ~/.ssh/id_rsa.pub',
      options: [

        Option(
          name: ['-y', '--yes'],
          description: 'Automatically answer yes for all prompts'
        )
      ],
      args: [
        Arg(
        name: 'key'
      )
      ]
    ),
    Subcommand(
      name: 'keys:clear',
      description: 'Remove all SSH keys for current user\n'
    ),
    Subcommand(
      name: 'keys:remove',
      description: 'Remove an SSH key from the user\n',
      args: [
        Arg(
        name: 'ke'
      )
      ]
    ),
    Subcommand(
      name: 'labs',
      description: 'List experimental features\n',
      options: [

        Option(
          name: '--json',
          description: 'Display as json'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'labs:enable',
      description: 'Enables an experimental feature\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'featur'
      )
      ]
    ),
    Subcommand(
      name: 'labs:info',
      description: 'Show feature info\n',
      options: [

        Option(
          name: '--json',
          description: 'Display as json'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'featur'
      )
      ]
    ),
    Subcommand(
      name: 'maintenance',
      description: 'Display the current maintenance status of app\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'maintenance:off',
      description: 'Take the app out of maintenance mode\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'maintenance:on',
      description: 'Put the app into maintenance mode\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'notifications',
      description: 'Display notifications\n',
      options: [

        Option(
          name: '--all',
          description: 'View all notifications (not just the ones for the current app)'
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: '--read',
          description: 'Show notifications already read'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps',
      description: 'List dynos for an app\n',
      options: [

        Option(
          name: '--json',
          description: 'Display as json'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:kill',
      description: 'Stop app dyno\n\nstop app dyno or dyno type',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'dyn'
      )
      ]
    ),
    Subcommand(
      name: 'ps:resize',
      description: 'Manage dyno sizes\n\nCalled with no arguments shows the current dyno size.\n\nCalled with one argument sets the size.\nWhere SIZE is one of eco|basic|standard-1x|standard-2x|performance\n\nCalled with 1..n TYPE=SIZE arguments sets the quantity per type.\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:restart',
      description: 'Restart app dynos\nif DYNO is not specified, restarts all dynos on app',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'dyno'
      )
      ]
    ),
    Subcommand(
      name: 'ps:scale',
      description: 'Scale dyno quantity up or down\nAppending a size (eg. web=2:Standard-2X) allows simultaneous scaling and resizing.\n\nOmitting any arguments will display the app\'s current dyno formation, in a\nformat suitable for passing back into ps:scale',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:stop',
      description: 'Stop app dyno\n\nstop app dyno or dyno type',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'dyn'
      )
      ]
    ),
    Subcommand(
      name: 'ps:type',
      description: 'Manage dyno sizes\n\nCalled with no arguments shows the current dyno size.\n\nCalled with one argument sets the size.\nWhere SIZE is one of eco|basic|standard-1x|standard-2x|performance\n\nCalled with 1..n TYPE=SIZE arguments sets the quantity per type.\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'releases',
      description: 'Display the releases for an app\n',
      options: [

        Option(
          name: ['-n', '--num'],
          description: 'Number of releases to show',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output releases in json format'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'releases:info',
      description: 'View detailed information for a release\n',
      options: [

        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: ['-s', '--shell'],
          description: 'Output in shell format'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'release'
      )
      ]
    ),
    Subcommand(
      name: 'releases:output',
      description: 'View the release command output\n',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'release'
      )
      ]
    ),
    Subcommand(
      name: 'releases:rollback',
      description: 'Rollback to a previous release\nIf RELEASE is not specified, it will rollback one release',
      options: [

        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'release'
      )
      ]
    ),
    Subcommand(
      name: 'ps:copy',
      description: 'Copy a file from a dyno to the local filesystem\nExample:\n\n    \$ heroku ps:copy FILENAME --app murmuring-headland-14719',
      options: [

        Option(
          name: ['-d', '--dyno'],
          description: 'Specify the dyno to connect to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-o', '--output'],
          description: 'The name of the output file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'fil'
      )
      ]
    ),
    Subcommand(
      name: 'ps:exec',
      description: 'Create an SSH session to a dyno\nExample:\n\n    \$ heroku ps:exec \'node -i\' --app murmuring-headland-14719',
      options: [

        Option(
          name: ['-d', '--dyno'],
          description: 'Specify the dyno to connect to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--ssh',
          description: 'Use native ssh'
        ),
        Option(
          name: '--status',
          description: 'Lists the status of the SSH server in the dyno'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:forward',
      description: 'Forward traffic on a local port to a dyno\nProvide a port or comma-separated list of ports to forward.\n\n    For example, "4000,9000:9001" will forward port 4000 to port 4000 and\n    port 9000 to port 9001.\n\n    Example:\n\n    \$ heroku ps:forward 8080 --app murmuring-headland-14719',
      options: [

        Option(
          name: ['-d', '--dyno'],
          description: 'Specify the dyno to connect to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'por'
      )
      ]
    ),
    Subcommand(
      name: 'ps:socks',
      description: 'Launch a SOCKS proxy into a dyno\nExample:\n\n    \$ heroku ps:socks --app murmuring-headland-14719\n    Establishing credentials... done\n    SOCKSv5 proxy server started on port 1080\n    Use CTRL+C to stop the proxy',
      options: [

        Option(
          name: ['-d', '--dyno'],
          description: 'Specify the dyno to connect to',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'commands',
      description: 'List all the commands',
      options: [

        Option(
          name: '--json',
          description: 'Format output as json'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: '--hidden',
          description: 'Show hidden commands'
        ),
        Option(
          name: '--tree',
          description: 'Show tree of commands'
        ),
        Option(
          name: '--columns',
          description: 'Only show provided columns (comma-separated)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'Property to sort by (prepend \'-\' for descending)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Filter property by partial string matching, ex: name=foo',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--csv',
          description: 'Output is csv format [alias: --output=csv]'
        ),
        Option(
          name: '--output',
          description: 'Output in a more machine friendly format',
          args: [
            Arg(
            suggestions: [

              FigSuggestion(name: 'csv'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml')
            ]
          )
          ]
        ),
        Option(
          name: ['-x', '--extended'],
          description: 'Show extra columns'
        ),
        Option(
          name: '--no-truncate',
          description: 'Do not truncate output to fit screen'
        ),
        Option(
          name: '--no-header',
          description: 'Hide table header from output'
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update the <%= config.bin %> CLI',
      options: [

        Option(
          name: ['-a', '--available'],
          description: 'Install a specific version'
        ),
        Option(
          name: ['-v', '--version'],
          description: 'Install a specific version',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--interactive'],
          description: 'Interactively select version to install. This is ignored if a channel is provided'
        ),
        Option(
          name: '--force',
          description: 'Force a re-download of the requested version'
        )
      ],
      args: [
        Arg(
        name: 'channe'
      )
      ]
    ),
    Subcommand(
      name: 'plugins',
      description: 'List installed plugins',
      options: [

        Option(
          name: '--core',
          description: 'Show core plugins'
        )
      ]
    ),
    Subcommand(
      name: 'plugins:inspect',
      description: 'Displays installation properties of a plugin',
      options: [

        Option(
          name: '--json',
          description: 'Format output as json'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-v', '--verbose']
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'Plugin to inspect',
        defaultValue: ''
      )
      ]
    ),
    Subcommand(
      name: ['plugins:install', 'plugins:add'],
      description: 'Installs a plugin into the CLI.\nCan be installed from npm or a git url.\n\nInstallation of a user-installed plugin will override a core plugin.\n\ne.g. If you have a core plugin that has a \'hello\' command, installing a user-installed plugin with a \'hello\' command will override the core plugin implementation. This is useful if a user needs to update core plugin functionality in the CLI without the need to patch and update the whole CLI.\n',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-v', '--verbose']
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Run yarn install with force flag'
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'Plugin to instal'
      )
      ]
    ),
    Subcommand(
      name: 'plugins:link',
      description: 'Links a plugin into the CLI for development.\nInstallation of a linked plugin will override a user-installed or core plugin.\n\ne.g. If you have a user-installed or core plugin that has a \'hello\' command, installing a linked plugin with a \'hello\' command will override the user-installed or core plugin implementation. This is useful for development work.\n',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-v', '--verbose']
        )
      ],
      args: [
        Arg(
        name: 'path',
        description: 'Path to plugin',
        defaultValue: ''
      )
      ]
    ),
    Subcommand(
      name: ['plugins:uninstall', 'plugins:unlink', 'plugins:remove'],
      description: 'Removes a plugin from the CLI',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-v', '--verbose']
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'Plugin to uninstal'
      )
      ]
    ),
    Subcommand(
      name: 'plugins:update',
      description: 'Update installed plugins',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-v', '--verbose']
        )
      ]
    ),
    Subcommand(
      name: 'version',
      options: [

        Option(
          name: '--json',
          description: 'Format output as json'
        ),
        Option(
          name: '--verbose',
          description: 'Additionally shows the architecture, node version, operating system, and versions of plugins that the CLI is using'
        )
      ]
    ),
    Subcommand(
      name: 'which',
      description: 'Show which plugin a command is in'
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for <%= config.bin %>',
      options: [

        Option(
          name: ['-n', '--nested-commands'],
          description: 'Include all nested commands in the output'
        )
      ],
      args: [
        Arg(
        name: 'commands',
        description: 'Command to show help for',
        isOptional: true
      )
      ]
    )
  ]
);
