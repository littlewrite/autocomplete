// Auto-generated from TypeScript source: 8.0.0.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `heroku` CLI
final FigSpec herokuSpec = FigSpec(
  name: 'heroku',
  description: 'Makes it easy to create and manage your Heroku apps directly from the terminal',
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
            name: 'browser',
            suggestions: [
              FigSuggestion(name: 'firefox'),
              FigSuggestion(name: 'safari'),
              FigSuggestion(name: 'chrome'),
              FigSuggestion(name: 'brave'),
              FigSuggestion(name: 'explorer')
            ]
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
            name: 'expires-in'
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
      description: 'Outputs current CLI authentication token',
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: '',
          args: [
            Arg(
            name: 'confirm'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'feature',
        isOptional: true
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
            name: 'remote'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-i', '--index'],
          description: 'The 1-based index of the URL in the list of URLs',
          args: [
            Arg(
            name: 'index'
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
            name: 'remote'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-i', '--index'],
          description: 'The 1-based index of the URL to remove from the list of URLs',
          args: [
            Arg(
            name: 'index'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'buildpack',
        description: 'Namespace/name of the buildpack',
        isOptional: true
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
            name: 'namespace'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'Buildpack names to filter on using a comma separated list',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Buildpack description to filter on',
          args: [
            Arg(
            name: 'description'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'term',
        description: 'Search term that searches across name, namespace, and description',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'buildpacks:set',
      description: '',
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-i', '--index'],
          description: 'The 1-based index of the URL in the list of URLs',
          args: [
            Arg(
            name: 'index'
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
      name: 'ci:config',
      description: 'Display CI config vars',
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
            name: 'pipeline'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:config:get',
      description: 'Get a CI config var',
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
            name: 'pipeline'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'key'
      )
      ]
    ),
    Subcommand(
      name: 'ci:config:set',
      description: 'Set CI config vars',
      options: [
        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
            name: 'pipeline'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:config:unset',
      description: 'Unset CI config vars',
      options: [
        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
            name: 'pipeline'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:debug',
      description: 'Opens an interactive test debugging session with the contents of the current directory',
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
            name: 'pipeline'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ci:migrate-manifest',
      description: 'App-ci.json is deprecated. Run this command to migrate to app.json with an environments key'
    ),
    Subcommand(
      name: 'ci:open',
      description: 'Open the Dashboard version of Heroku CI',
      options: [
        Option(
          name: ['-p', '--pipeline'],
          description: 'Pipeline',
          args: [
            Arg(
            name: 'pipeline'
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
            name: 'remote'
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
            name: 'remote'
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
            name: 'columns'
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'Property to sort by (prepend \'-\' for descending)',
          args: [
            Arg(
            name: 'sort'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Filter property by partial string matching, ex: name=foo',
          args: [
            Arg(
            name: 'filter'
          )
          ]
        ),
        Option(
          name: '--csv',
          description: 'Output is csv format'
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
            name: 'cert'
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
        ),
        Option(
          name: '--wait',
          description: ''
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostname'
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
            name: 'remote'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostname'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostname'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'The name or id of the certificate you want to use for this domain',
          args: [
            Arg(
            name: 'cert'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostname',
        isOptional: true
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'hostname',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'apps',
      description: 'List your apps',
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
            name: 'space'
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
            name: 'team'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:create',
      description: 'Creates a new app',
      options: [
        Option(
          name: '--addons',
          description: 'Comma-delimited list of addons to install',
          args: [
            Arg(
            name: 'addons'
          )
          ]
        ),
        Option(
          name: ['-b', '--buildpack'],
          description: 'Buildpack url to use for this app',
          args: [
            Arg(
            name: 'buildpack'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-s', '--stack'],
          description: 'The stack to create the app on',
          args: [
            Arg(
            name: 'stack'
          )
          ]
        ),
        Option(
          name: '--space',
          description: 'The private space to create the app in',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: '--region',
          description: 'Specify region for the app to run in',
          args: [
            Arg(
            name: 'region'
          )
          ]
        ),
        Option(
          name: '--ssh-git',
          description: 'Use SSH git protocol for local git remote'
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
            name: 'team'
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
      description: 'Permanently destroy an app',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:errors',
      description: 'View app errors',
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
            name: 'hours'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:favorites',
      description: 'List favorited apps',
      options: [
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'apps:favorites:add',
      description: 'Favorites an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:favorites:remove',
      description: 'Unfavorites an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:info',
      description: 'Show detailed app information',
      options: [
        Option(
          name: ['-s', '--shell'],
          description: 'Output more shell friendly key/value pairs'
        ),
        Option(
          name: ['-j', '--json'],
          description: ''
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:open',
      description: 'Open the app in a web browser',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'path',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'apps:rename',
      description: 'Rename an app',
      options: [
        Option(
          name: '--ssh-git',
          description: 'Use ssh git protocol instead of https'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'newname'
      )
      ]
    ),
    Subcommand(
      name: 'apps:stacks',
      description: 'Show the list of available stacks',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:stacks:set',
      description: 'Set the stack of an app',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'stack'
      )
      ]
    ),
    Subcommand(
      name: 'config:set',
      description: 'Set one or more config vars',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'drains',
      description: 'Display the log drains of an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'drains:get',
      description: 'Display the log drain for a space',
      options: [
        Option(
          name: '--space',
          description: 'Space for which to get log drain',
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
      name: 'drains:set',
      description: 'Replaces the log drain for a space',
      options: [
        Option(
          name: '--space',
          description: 'Space for which to set log drain',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'url'
      )
      ]
    ),
    Subcommand(
      name: 'drains:add',
      description: 'Adds a log drain to an app',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'url'
      )
      ]
    ),
    Subcommand(
      name: 'drains:remove',
      description: 'Removes a log drain from an app',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'url'
      )
      ]
    ),
    Subcommand(
      name: 'dyno:kill',
      description: 'Stop app dyno',
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
            name: 'remote'
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
      name: 'dyno:resize',
      description: 'Manage dyno sizes',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dyno:restart',
      description: 'Restart app dynos',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'dyno',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'dyno:scale',
      description: 'Scale dyno quantity up or down',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dyno:stop',
      description: 'Stop app dyno',
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
            name: 'remote'
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
      name: 'features',
      description: 'List available app features',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'features:disable',
      description: 'Disables an app feature',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'feature'
      )
      ]
    ),
    Subcommand(
      name: 'features:enable',
      description: 'Enables an app feature',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'feature'
      )
      ]
    ),
    Subcommand(
      name: 'features:info',
      description: 'Display information about a feature',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'feature'
      )
      ]
    ),
    Subcommand(
      name: 'keys',
      description: 'Display your SSH keys',
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
      description: 'Add an SSH key for a user',
      options: [
        Option(
          name: ['-y', '--yes'],
          description: 'Automatically answer yes for all prompts'
        )
      ],
      args: [
        Arg(
        name: 'key',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'keys:clear',
      description: 'Remove all SSH keys for current user'
    ),
    Subcommand(
      name: 'keys:remove',
      description: 'Remove an SSH key from the user',
      args: [
        Arg(
        name: 'key'
      )
      ]
    ),
    Subcommand(
      name: 'labs',
      description: 'List experimental features',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'labs:enable',
      description: 'Enables an experimental feature',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'feature'
      )
      ]
    ),
    Subcommand(
      name: 'labs:info',
      description: 'Show feature info',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'feature'
      )
      ]
    ),
    Subcommand(
      name: 'maintenance',
      description: 'Display the current maintenance status of app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'maintenance:off',
      description: 'Take the app out of maintenance mode',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'maintenance:on',
      description: 'Put the app into maintenance mode',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'notifications',
      description: 'Display notifications',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps',
      description: 'List dynos for an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:kill',
      description: 'Stop app dyno',
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
            name: 'remote'
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
      name: 'ps:resize',
      description: 'Manage dyno sizes',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:restart',
      description: 'Restart app dynos',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'dyno',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'ps:scale',
      description: 'Scale dyno quantity up or down',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:stop',
      description: 'Stop app dyno',
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
            name: 'remote'
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
      name: 'ps:type',
      description: 'Manage dyno sizes',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'releases',
      description: 'Display the releases for an app',
      options: [
        Option(
          name: ['-n', '--num'],
          description: 'Number of releases to show',
          args: [
            Arg(
            name: 'num'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'releases:info',
      description: 'View detailed information for a release',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'release',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'releases:output',
      description: 'View the release command output',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'release',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'releases:rollback',
      description: 'Rollback to a previous release',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'release',
        isOptional: true
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
        description: 'Shell type',
        isOptional: true
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
            name: 'remote'
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
      description: 'Interactively edit config vars',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'key',
        description: 'Edit a single key',
        isOptional: true
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
            name: 'remote'
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
        name: 'KEY'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['local', 'local:start'],
      description: 'Run heroku app locally',
      options: [
        Option(
          name: ['-f', '--procfile'],
          description: 'Use a different Procfile',
          args: [
            Arg(
            name: 'procfile'
          )
          ]
        ),
        Option(
          name: ['-e', '--env'],
          description: 'Location of env file (defaults to .env)',
          args: [
            Arg(
            name: 'env'
          )
          ]
        ),
        Option(
          name: ['-p', '--port'],
          description: 'Port to listen on',
          args: [
            Arg(
            name: 'port'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'processname',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'local:run',
      description: 'Run a one-off command',
      options: [
        Option(
          name: ['-e', '--env'],
          description: '',
          args: [
            Arg(
            name: 'env'
          )
          ]
        ),
        Option(
          name: ['-p', '--port'],
          description: '',
          args: [
            Arg(
            name: 'port'
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
            name: 'pipeline'
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
            name: 'node'
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
            name: 'pipeline'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'test-run'
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
            name: 'node'
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
            name: 'pipeline'
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
            name: 'pipeline'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'number',
        isOptional: true
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
            name: 'pipeline'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs',
      description: 'List SSL certificates for an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:add',
      description: 'Add an SSL certificate to an app',
      options: [
        Option(
          name: '--bypass',
          description: 'Bypass the trust chain completion step'
        ),
        Option(
          name: '--type',
          description: 'Type to create, either \'sni\' or \'endpoint\'',
          args: [
            Arg(
            name: 'type'
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
            name: 'remote'
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
      description: 'Show ACM status for an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:auto:disable',
      description: 'Disable ACM for an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:auto:enable',
      description: 'Enable ACM status for an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:auto:refresh',
      description: 'Refresh ACM for an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:chain',
      description: 'Print an ordered & complete chain for a certificate',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:generate',
      description: 'Generate a key and a CSR or self-signed certificate',
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
            name: 'keysize'
          )
          ]
        ),
        Option(
          name: '--owner',
          description: 'Name of organization certificate belongs to',
          args: [
            Arg(
            name: 'owner'
          )
          ]
        ),
        Option(
          name: '--country',
          description: 'Country of owner, as a two-letter ISO country code',
          args: [
            Arg(
            name: 'country'
          )
          ]
        ),
        Option(
          name: '--area',
          description: 'Sub-country area (state, province, etc.) of owner',
          args: [
            Arg(
            name: 'area'
          )
          ]
        ),
        Option(
          name: '--city',
          description: 'City of owner',
          args: [
            Arg(
            name: 'city'
          )
          ]
        ),
        Option(
          name: '--subject',
          description: 'Specify entire certificate subject',
          args: [
            Arg(
            name: 'subject'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'domain'
      )
      ]
    ),
    Subcommand(
      name: 'certs:info',
      description: 'Show certificate information for an SSL certificate',
      options: [
        Option(
          name: '--name',
          description: 'Name to check info on',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--endpoint',
          description: 'Endpoint to check info on',
          args: [
            Arg(
            name: 'endpoint'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:key',
      description: 'Print the correct key for the given certificate',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:remove',
      description: 'Remove an SSL certificate from an app',
      options: [
        Option(
          name: '--name',
          description: 'Name to remove',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--endpoint',
          description: 'Endpoint to remove',
          args: [
            Arg(
            name: 'endpoint'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:update',
      description: 'Update an SSL certificate on an app',
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
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--endpoint',
          description: 'Endpoint to update',
          args: [
            Arg(
            name: 'endpoint'
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
            name: 'remote'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: '--ssh-git',
          description: 'Use SSH git protocol'
        )
      ],
      args: [
        Arg(
        name: 'DIRECTORY',
        description: 'Where to clone the app',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'git:remote',
      description: 'Adds a git remote to an app repo',
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: '--ssh-git',
          description: 'Use SSH git protocol'
        )
      ]
    ),
    Subcommand(
      name: 'addons',
      description: 'Lists your add-ons and attachments',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'addons:attach',
      description: 'Attach an existing add-on resource to an app',
      options: [
        Option(
          name: '--as',
          description: 'Name for add-on attachment',
          args: [
            Arg(
            name: 'as'
          )
          ]
        ),
        Option(
          name: '--credential',
          description: 'Credential name for scoped access to Heroku Postgres',
          args: [
            Arg(
            name: 'credential'
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Overwrite existing add-on attachment with same name',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'addon_name'
      )
      ]
    ),
    Subcommand(
      name: 'addons:create',
      description: 'Create a new add-on resource',
      options: [
        Option(
          name: '--name',
          description: 'Name for the add-on resource',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--as',
          description: 'Name for the initial add-on attachment',
          args: [
            Arg(
            name: 'as'
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Overwrite existing config vars or existing add-on attachments',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'service:plan'
      )
      ]
    ),
    Subcommand(
      name: 'addons:destroy',
      description: 'Permanently destroy an add-on resource',
      options: [
        Option(
          name: ['-f', '--force'],
          description: 'Allow destruction even if connected to other apps'
        ),
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'addons:detach',
      description: 'Detach an existing add-on resource from an app',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'attachment_name'
      )
      ]
    ),
    Subcommand(
      name: 'addons:docs',
      description: 'Open an add-on\'s Dev Center documentation in your browser',
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
            name: 'remote'
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
      name: 'addons:downgrade',
      description: 'Change add-on plan',
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
            name: 'remote'
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
      description: 'Show detailed add-on resource and attachment information',
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
            name: 'remote'
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
      name: 'addons:open',
      description: 'Open an add-on\'s dashboard in your browser',
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
            name: 'remote'
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
      name: 'addons:plans',
      description: 'List all available plans for an add-on services',
      options: [
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ],
      args: [
        Arg(
        name: 'service'
      )
      ]
    ),
    Subcommand(
      name: 'addons:rename',
      description: 'Rename an add-on',
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
            name: 'remote'
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
      description: 'List all available add-on services',
      options: [
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'addons:upgrade',
      description: 'Change add-on plan',
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
            name: 'remote'
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
      description: 'Show provisioning status of the add-ons on the app',
      options: [
        Option(
          name: '--wait-interval',
          description: 'How frequently to poll in seconds',
          args: [
            Arg(
            name: 'wait-interval'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'addon',
        isOptional: true
      )
      ]
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
          description: 'Set a custom authorization description',
          args: [
            Arg(
            name: 'description'
          )
          ]
        ),
        Option(
          name: ['-s', '--scope'],
          description: 'Set custom OAuth scopes',
          args: [
            Arg(
            name: 'scope'
          )
          ]
        ),
        Option(
          name: ['-e', '--expires-in'],
          description: 'Set expiration in seconds (default no expiration)',
          args: [
            Arg(
            name: 'expires-in'
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
        name: 'id'
      )
      ]
    ),
    Subcommand(
      name: ['authorizations:revoke', 'authorizations:destroy'],
      description: 'Revoke OAuth authorization',
      args: [
        Arg(
        name: 'id'
      )
      ]
    ),
    Subcommand(
      name: 'authorizations:rotate',
      description: 'Updates an OAuth authorization token',
      args: [
        Arg(
        name: 'id'
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
            name: 'description'
          )
          ]
        ),
        Option(
          name: '--client-id',
          description: 'Identifier of OAuth client to set',
          args: [
            Arg(
            name: 'client-id'
          )
          ]
        ),
        Option(
          name: '--client-secret',
          description: 'Secret of OAuth client to set',
          args: [
            Arg(
            name: 'client-secret'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id'
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
          name: ['-s', '--shell'],
          description: 'Output in shell format'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Output in json format'
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
        name: 'id'
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
        name: 'id'
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
        name: 'id'
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
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--url',
          description: 'Change the client redirect URL',
          args: [
            Arg(
            name: 'url'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id'
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
        name: 'id'
      )
      ]
    ),
    Subcommand(
      name: 'redis',
      description: 'Gets information about redis',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:cli',
      description: 'Opens a redis prompt',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:credentials',
      description: 'Display credentials information',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:info',
      description: 'Gets information about redis',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:keyspace-notifications',
      description: 'Set the keyspace notifications configuration',
      options: [
        Option(
          name: ['-c', '--config'],
          description: 'Set keyspace notifications configuration',
          args: [
            Arg(
            name: 'config'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:maintenance',
      description: 'Manage maintenance windows',
      options: [
        Option(
          name: ['-w', '--window'],
          description: 'Set weekly UTC maintenance window',
          args: [
            Arg(
            name: 'window'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:maxmemory',
      description: 'Set the key eviction policy',
      options: [
        Option(
          name: ['-p', '--policy'],
          description: 'Set policy name',
          args: [
            Arg(
            name: 'policy'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:promote',
      description: 'Sets DATABASE as your REDIS_URL',
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
            name: 'remote'
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
      name: 'redis:stats-reset',
      description: 'Reset all stats covered by RESETSTAT (https://redis.io/commands/config-resetstat)',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:timeout',
      description: 'Set the number of seconds to wait before killing idle connections',
      options: [
        Option(
          name: ['-s', '--seconds'],
          description: 'Set timeout value',
          args: [
            Arg(
            name: 'seconds'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'redis:wait',
      description: 'Wait for Redis instance to be available',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'container',
      description: 'Use containers to build and deploy Heroku apps'
    ),
    Subcommand(
      name: 'container:login',
      description: 'Log in to Heroku Container Registry',
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: ''
        )
      ]
    ),
    Subcommand(
      name: 'container:logout',
      description: 'Log out from Heroku Container Registry',
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: ''
        )
      ]
    ),
    Subcommand(
      name: 'container:pull',
      description: 'Pulls an image from an app\'s process type',
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: ''
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'container:push',
      description: 'Builds, then pushes Docker images to deploy your Heroku app',
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: ''
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
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '--context-path',
          description: 'Path to use as build context (defaults to Dockerfile dir)',
          args: [
            Arg(
            name: 'context-path',
            template: 'filepaths'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'container:release',
      description: 'Releases previously pushed Docker images to your Heroku app',
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: ''
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'container:rm',
      description: 'Remove the process type from your app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'container:run',
      description: 'Builds, then runs the docker image locally',
      options: [
        Option(
          name: ['-p', '--port'],
          description: 'Port the app will run on',
          args: [
            Arg(
            name: 'port'
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose'],
          description: ''
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logs',
      description: 'Display recent log output',
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-n', '--num'],
          description: 'Number of lines to display',
          args: [
            Arg(
            name: 'num'
          )
          ]
        ),
        Option(
          name: ['-d', '--dyno'],
          description: 'Only show output from this dyno type (such as "web" or "worker")',
          args: [
            Arg(
            name: 'dyno'
          )
          ]
        ),
        Option(
          name: ['-s', '--source'],
          description: 'Only show output from this source (such as "app" or "heroku")',
          args: [
            Arg(
            name: 'source'
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
      name: 'run',
      description: 'Run a one-off process inside a heroku dyno',
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-s', '--size'],
          description: 'Dyno size',
          args: [
            Arg(
            name: 'size'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Process type',
          args: [
            Arg(
            name: 'type'
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
            name: 'env'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-e', '--env'],
          description: 'Environment variables to set (use \';\' to split multiple vars)',
          args: [
            Arg(
            name: 'env'
          )
          ]
        ),
        Option(
          name: ['-s', '--size'],
          description: 'Dyno size',
          args: [
            Arg(
            name: 'size'
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
            name: 'type'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'outbound-rules:add',
      description: 'Add outbound rules to a Private Space',
      options: [
        Option(
          name: '--space',
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
        ),
        Option(
          name: '--dest',
          description: 'Target CIDR block dynos are allowed to communicate with',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--protocol',
          description: 'The protocol dynos are allowed to use when communicating with hosts in destination CIDR block. Valid protocols are "tcp", "udp", "icmp", "0-255" and "any"',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'The port dynos are allowed to use when communicating with hosts in destination CIDR block. Accepts a range in `<lowest port>-<highest port>` format. 0 is the minimum. The maximum port allowed is 65535, except for ICMP with a maximum of 255',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'outbound-rules',
      description: 'List Outbound Rules for a space',
      options: [
        Option(
          name: '--space',
          description: 'Space to get outbound rules from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ],
      args: [
        Arg(
        name: 'space'
      )
      ]
    ),
    Subcommand(
      name: 'outbound-rules:remove',
      description: 'Remove a Rules from the list of Outbound Rules',
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
        name: 'ruleNumber'
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
      description: 'Add this app to a pipeline',
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-s', '--stage'],
          description: 'Stage of first app in pipeline',
          args: [
            Arg(
            name: 'stage'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'pipeline',
        description: 'Name of pipeline'
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
            name: 'repo'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'name',
        description: 'Name of pipeline'
      )
      ]
    ),
    Subcommand(
      name: 'pipelines:create',
      description: 'Create a new pipeline',
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-s', '--stage'],
          description: 'Stage of first app in pipeline',
          args: [
            Arg(
            name: 'stage'
          )
          ]
        ),
        Option(
          name: ['-t', '--team'],
          description: 'The team which will own the apps',
          args: [
            Arg(
            name: 'team'
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
        description: 'Name of pipeline'
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
            name: 'remote'
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
        description: 'Name of pipeline'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-t', '--to'],
          description: 'Comma separated list of apps to promote to',
          args: [
            Arg(
            name: 'to'
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
            name: 'remote'
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
            name: 'team'
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
            name: 'pipeline'
          )
          ]
        ),
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-s', '--stage'],
          description: 'New stage of app',
          args: [
            Arg(
            name: 'stage'
          )
          ]
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
            name: 'app'
          )
          ]
        ),
        Option(
          name: ['-r', '--remote'],
          description: 'Git remote of app to use',
          args: [
            Arg(
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
            name: 'pipeline'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-p', '--pipeline'],
          description: 'Name of pipeline',
          args: [
            Arg(
            name: 'pipeline'
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
      name: 'spaces',
      description: 'List available spaces',
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
            name: 'team'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:create',
      description: 'Create a new space',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Name of space to create',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: '--region',
          description: 'Region name',
          args: [
            Arg(
            name: 'region'
          )
          ]
        ),
        Option(
          name: '--cidr',
          description: 'RFC-1918 CIDR the space will use',
          args: [
            Arg(
            name: 'cidr'
          )
          ]
        ),
        Option(
          name: '--data-cidr',
          description: 'RFC-1918 CIDR used by Heroku Data resources for the space',
          args: [
            Arg(
            name: 'data-cidr'
          )
          ]
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
            name: 'team'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:destroy',
      description: 'Destroy a space',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to destroy',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to space name to bypass confirm prompt',
          args: [
            Arg(
            name: 'confirm'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:info',
      description: 'Show info about a space',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get info of',
          args: [
            Arg(
            name: 'space'
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
      description: 'Display the information necessary to initiate a peering connection',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get peering info from',
          args: [
            Arg(
            name: 'space'
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
      description: 'List peering connections for a space',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get peer list from',
          args: [
            Arg(
            name: 'space'
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
      description: 'Accepts a pending peering request for a private space',
      options: [
        Option(
          name: ['-p', '--pcxid'],
          description: 'PCX ID of a pending peering',
          args: [
            Arg(
            name: 'pcxid'
          )
          ]
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Space to get peering info from',
          args: [
            Arg(
            name: 'space'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:peerings:destroy',
      description: 'Destroys an active peering connection in a private space',
      options: [
        Option(
          name: ['-p', '--pcxid'],
          description: 'PCX ID of a pending peering',
          args: [
            Arg(
            name: 'pcxid'
          )
          ]
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Space to get peering info from',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to PCX ID to bypass confirm prompt',
          args: [
            Arg(
            name: 'confirm'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:ps',
      description: 'List dynos for a space',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get dynos of',
          args: [
            Arg(
            name: 'space'
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
      description: 'Renames a space',
      options: [
        Option(
          name: '--from',
          description: 'Current name of space',
          args: [
            Arg(
            name: 'from'
          )
          ]
        ),
        Option(
          name: '--to',
          description: 'Desired name of space',
          args: [
            Arg(
            name: 'to'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:topology',
      description: 'Show space topology',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get topology of',
          args: [
            Arg(
            name: 'space'
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
      description: 'Transfer a space to another team',
      options: [
        Option(
          name: '--space',
          description: 'Name of space',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: '--team',
          description: 'Desired owner of space',
          args: [
            Arg(
            name: 'team'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:config',
      description: 'Display the configuration information for VPN',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space the VPN connection belongs to',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name or id of the VPN connection to retrieve config from',
          args: [
            Arg(
            name: 'name'
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
      description: 'Create VPN',
      options: [
        Option(
          name: ['-n', '--name'],
          description: 'VPN name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: ['-i', '--ip'],
          description: 'Public IP of customer gateway',
          args: [
            Arg(
            name: 'ip'
          )
          ]
        ),
        Option(
          name: ['-c', '--cidrs'],
          description: 'A list of routable CIDRs separated by commas',
          args: [
            Arg(
            name: 'cidrs'
          )
          ]
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Space name',
          args: [
            Arg(
            name: 'space'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:connections',
      description: 'List the VPN Connections for a space',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get VPN connections from',
          args: [
            Arg(
            name: 'space'
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
      description: 'Destroys VPN in a private space',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get peering info from',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name or id of the VPN connection to retrieve config from',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to VPN connection name to bypass confirm prompt',
          args: [
            Arg(
            name: 'confirm'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:info',
      description: 'Display the information for VPN',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space the vpn connection belongs to',
          args: [
            Arg(
            name: 'space'
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
            name: 'name'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:update',
      description: 'Update VPN',
      options: [
        Option(
          name: ['-n', '--name'],
          description: 'VPN name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: ['-c', '--cidrs'],
          description: 'A list of routable CIDRs separated by commas',
          args: [
            Arg(
            name: 'cidrs'
          )
          ]
        ),
        Option(
          name: ['-s', '--space'],
          description: 'Space name',
          args: [
            Arg(
            name: 'space'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:vpn:wait',
      description: 'Wait for VPN Connection to be created',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space the vpn connection belongs to',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name or id of the vpn connection to wait for',
          args: [
            Arg(
            name: 'name'
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
            name: 'interval'
          )
          ]
        ),
        Option(
          name: ['-t', '--timeout'],
          description: 'Maximum number of seconds to wait',
          args: [
            Arg(
            name: 'timeout'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spaces:wait',
      description: 'Wait for a space to be created',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get info of',
          args: [
            Arg(
            name: 'space'
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
            name: 'interval'
          )
          ]
        ),
        Option(
          name: ['-t', '--timeout'],
          description: 'Maximum number of seconds to wait',
          args: [
            Arg(
            name: 'timeout'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'trusted-ips',
      description: 'List trusted IP ranges for a space',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to get inbound rules from',
          args: [
            Arg(
            name: 'space'
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
      description: 'Add one range to the list of trusted IP ranges',
      options: [
        Option(
          name: ['-s', '--space'],
          description: 'Space to add rule to',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to space name to bypass confirm prompt',
          args: [
            Arg(
            name: 'confirm'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'source'
      )
      ]
    ),
    Subcommand(
      name: 'trusted-ips:remove',
      description: 'Remove a range from the list of trusted IP ranges',
      options: [
        Option(
          name: '--space',
          description: 'Space to remove rule from',
          args: [
            Arg(
            name: 'space'
          )
          ]
        ),
        Option(
          name: '--confirm',
          description: 'Set to space name to bypass confirm prompt',
          args: [
            Arg(
            name: 'confirm'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'source'
      )
      ]
    ),
    Subcommand(
      name: 'ps:copy',
      description: 'Copy a file from a dyno to the local filesystem',
      options: [
        Option(
          name: ['-d', '--dyno'],
          description: 'Specify the dyno to connect to',
          args: [
            Arg(
            name: 'dyno'
          )
          ]
        ),
        Option(
          name: ['-o', '--output'],
          description: 'The name of the output file',
          args: [
            Arg(
            name: 'output'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'file'
      )
      ]
    ),
    Subcommand(
      name: 'ps:exec',
      description: 'Create an SSH session to a dyno',
      options: [
        Option(
          name: ['-d', '--dyno'],
          description: 'Specify the dyno to connect to',
          args: [
            Arg(
            name: 'dyno'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:forward',
      description: 'Forward traffic on a local port to a dyno',
      options: [
        Option(
          name: ['-d', '--dyno'],
          description: 'Specify the dyno to connect to',
          args: [
            Arg(
            name: 'dyno'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'port'
      )
      ]
    ),
    Subcommand(
      name: 'ps:socks',
      description: 'Launch a SOCKS proxy into a dyno',
      options: [
        Option(
          name: ['-d', '--dyno'],
          description: 'Specify the dyno to connect to',
          args: [
            Arg(
            name: 'dyno'
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'access',
      description: 'List who has access to an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'access:add',
      description: 'Add new users to your app',
      options: [
        Option(
          name: ['-p', '--permissions'],
          description: 'List of permissions comma separated',
          args: [
            Arg(
            name: 'permissions'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'email'
      )
      ]
    ),
    Subcommand(
      name: 'access:remove',
      description: 'Remove users from a team app',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'email'
      )
      ]
    ),
    Subcommand(
      name: 'access:update',
      description: 'Update existing collaborators on an team app',
      options: [
        Option(
          name: ['-p', '--permissions'],
          description: 'Comma-delimited list of permissions to update (deploy,manage,operate)',
          args: [
            Arg(
            name: 'permissions'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'email'
      )
      ]
    ),
    Subcommand(
      name: 'apps:join',
      description: 'Add yourself to a team app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:leave',
      description: 'Remove yourself from a team app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:lock',
      description: 'Prevent team members from joining an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:transfer',
      description: 'Transfer applications to another user or team',
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
            name: 'remote'
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
      description: 'Unlock an app so any team member can join',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'join',
      description: 'Add yourself to a team app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'leave',
      description: 'Remove yourself from a team app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'lock',
      description: 'Prevent team members from joining an app',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'members',
      description: 'List members of a team',
      options: [
        Option(
          name: ['-r', '--role'],
          description: 'Filter by role',
          args: [
            Arg(
            name: 'role'
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
            name: 'team'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'members:add',
      description: 'Adds a user to a team',
      options: [
        Option(
          name: ['-r', '--role'],
          description: 'Member role (admin, collaborator, member, owner)',
          args: [
            Arg(
            name: 'role'
          )
          ]
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
            name: 'team'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'email'
      )
      ]
    ),
    Subcommand(
      name: 'members:remove',
      description: 'Removes a user from a team',
      options: [
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
            name: 'team'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'email'
      )
      ]
    ),
    Subcommand(
      name: 'members:set',
      description: 'Sets a members role in a team',
      options: [
        Option(
          name: ['-r', '--role'],
          description: 'Member role (admin, collaborator, member, owner)',
          args: [
            Arg(
            name: 'role'
          )
          ]
        ),
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
            name: 'team'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'email'
      )
      ]
    ),
    Subcommand(
      name: 'orgs',
      description: 'List the teams that you are a member of',
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
      description: 'Open the team interface in a browser window',
      options: [
        Option(
          name: ['-t', '--team'],
          description: 'Team to use',
          args: [
            Arg(
            name: 'team'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'teams',
      description: 'List the teams that you are a member of',
      options: [
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ]
    ),
    Subcommand(
      name: 'unlock',
      description: 'Unlock an app so any team member can join',
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
            name: 'remote'
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
            name: 'remote'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: '--min',
          description: 'Minimum number of dynos',
          args: [
            Arg(
            name: 'min'
          )
          ]
        ),
        Option(
          name: '--max',
          description: 'Maximum number of dynos',
          args: [
            Arg(
            name: 'max'
          )
          ]
        ),
        Option(
          name: '--p95',
          description: 'Desired p95 response time',
          args: [
            Arg(
            name: 'p95'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'Wait for one specific dyno type',
          args: [
            Arg(
            name: 'type'
          )
          ]
        ),
        Option(
          name: ['-w', '--wait-interval'],
          description: 'How frequently to poll in seconds (to avoid hitting Heroku API rate limits)',
          args: [
            Arg(
            name: 'wait-interval'
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
            name: 'remote'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma delimited event types your server will receive',
          args: [
            Arg(
            name: 'include'
          )
          ]
        ),
        Option(
          name: ['-l', '--level'],
          description: 'Notify does not retry, sync will retry until successful or timeout',
          args: [
            Arg(
            name: 'level'
          )
          ]
        ),
        Option(
          name: ['-s', '--secret'],
          description: 'Value to sign delivery with in Heroku-Webhook-Hmac-SHA256 header',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        ),
        Option(
          name: ['-t', '--authorization'],
          description: 'Authoriation header to send with webhooks',
          args: [
            Arg(
            name: 'authorization'
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'URL for receiver',
          args: [
            Arg(
            name: 'url'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'Filter deliveries by status',
          args: [
            Arg(
            name: 'status'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id'
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
            name: 'remote'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Id of webhook to remove'
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
            name: 'remote'
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma delimited event types your server will receive',
          args: [
            Arg(
            name: 'include'
          )
          ]
        ),
        Option(
          name: ['-l', '--level'],
          description: 'Notify does not retry, sync will retry until successful or timeout',
          args: [
            Arg(
            name: 'level'
          )
          ]
        ),
        Option(
          name: ['-s', '--secret'],
          description: 'Value to sign delivery with in Heroku-Webhook-Hmac-SHA256 header',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        ),
        Option(
          name: ['-t', '--authorization'],
          description: 'Authoriation header to send with webhooks',
          args: [
            Arg(
            name: 'authorization'
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'URL for receiver',
          args: [
            Arg(
            name: 'url'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id'
      )
      ]
    ),
    Subcommand(
      name: 'commands',
      description: 'List all the commands',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Display unfiltered api data in json format'
        ),
        Option(
          name: '--hidden',
          description: 'Show hidden commands'
        ),
        Option(
          name: '--columns',
          description: 'Only show provided columns (comma-separated)',
          args: [
            Arg(
            name: 'columns'
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'Property to sort by (prepend \'-\' for descending)',
          args: [
            Arg(
            name: 'sort'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Filter property by partial string matching, ex: name=foo',
          args: [
            Arg(
            name: 'filter'
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
            name: 'output',
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
      name: 'help',
      description: 'Display help for <%= config.bin %>',
      options: [
        Option(
          name: '--all',
          description: 'See all commands in CLI'
        )
      ],
      args: [
        Arg(
        name: 'command',
        description: 'Command to show help for',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'which',
      description: 'Show which plugin a command is in',
      args: [
        Arg(
        name: 'command'
      )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update the <%= config.bin %> CLI',
      args: [
        Arg(
        name: 'channel',
        isOptional: true
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
      name: ['plugins:install', 'plugins:add'],
      description: 'Installs a plugin into the CLI',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: ''
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Yarn install with force flag'
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'Plugin to install'
      )
      ]
    ),
    Subcommand(
      name: 'plugins:link',
      description: 'Links a plugin into the CLI for development',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show CLI help'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: ''
        )
      ],
      args: [
        Arg(
        name: 'path',
        description: 'Path to plugin',
        template: 'folders'
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
          name: ['-v', '--verbose'],
          description: ''
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'Plugin to uninstall',
        isOptional: true
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
          name: ['-v', '--verbose'],
          description: ''
        )
      ]
    ),
    Subcommand(
      name: 'pg',
      description: 'Show database information',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups',
      description: 'List database backups',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pg:backups:cancel',
      description: 'Cancel an in-progress backup or restore (default newest)',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_id',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:capture',
      description: 'Capture a new backup',
      options: [
        Option(
          name: '--wait-interval',
          description: '',
          args: [
            Arg(
            name: 'wait-interval'
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose'],
          description: ''
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:delete',
      description: 'Delete a backup',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
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
      name: 'pg:backups:download',
      description: 'Downloads database backup',
      options: [
        Option(
          name: ['-o', '--output'],
          description: 'Location to download to. Defaults to latest.dump',
          args: [
            Arg(
            name: 'output'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_id',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:info',
      description: 'Get information about a specific backup',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_id',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:restore',
      description: 'Restore a backup (default latest) to a database',
      options: [
        Option(
          name: '--wait-interval',
          description: '',
          args: [
            Arg(
            name: 'wait-interval'
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose'],
          description: ''
        ),
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
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
      description: 'Schedule daily backups for given database',
      options: [
        Option(
          name: '--at',
          description: 'At a specific (24h) hour in the given timezone. Defaults to UTC. --at \'[HOUR]:00 [TIMEZONE]\'',
          args: [
            Arg(
            name: 'at'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:schedules',
      description: 'List backup schedule',
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
            name: 'remote'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pg:backups:unschedule',
      description: 'Stop daily backups',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:backups:url',
      description: 'Get secret but publicly accessible URL of a backup',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'backup_id',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:bloat',
      description: 'Show table and index bloat in your database ordered by most wasteful',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:blocking',
      description: 'Display queries holding locks other queries are waiting to be released',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:connection-pooling:attach',
      description: 'Add an attachment to a database using connection pooling',
      options: [
        Option(
          name: '--as',
          description: 'Name for add-on attachment',
          args: [
            Arg(
            name: 'as'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:copy',
      description: 'Copy all data from source db to target',
      options: [
        Option(
          name: '--wait-interval',
          description: '',
          args: [
            Arg(
            name: 'wait-interval'
          )
          ]
        ),
        Option(
          name: '--verbose',
          description: ''
        ),
        Option(
          name: '--confirm',
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
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
      description: 'Show information on credentials in the database',
      options: [
        Option(
          name: '--reset',
          description: 'DEPRECATED'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:create',
      description: 'Create credential within database',
      options: [
        Option(
          name: ['-n', '--name'],
          description: 'Name of the new credential within the database',
          args: [
            Arg(
            name: 'name'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:destroy',
      description: 'Destroy credential within database',
      options: [
        Option(
          name: ['-n', '--name'],
          description: 'Unique identifier for the credential',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:repair-default',
      description: 'Repair the permissions of the default credential within database',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:rotate',
      description: 'Rotate the database credentials',
      options: [
        Option(
          name: ['-n', '--name'],
          description: 'Which credential to rotate (default credentials if not specified)',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--all',
          description: 'Rotate all credentials'
        ),
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:credentials:url',
      description: 'Show information on a database credential',
      options: [
        Option(
          name: ['-n', '--name'],
          description: 'Which credential to show (default credentials if not specified)',
          args: [
            Arg(
            name: 'name'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:diagnose',
      description: 'Run or view diagnostics report',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'DATABASE|REPORT_ID',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:info',
      description: 'Show database information',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:kill',
      description: 'Kill a query',
      options: [
        Option(
          name: ['-f', '--force'],
          description: ''
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
            name: 'remote'
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
      description: 'Terminates all connections for all credentials',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:links',
      description: 'Lists all databases and information on link',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:links:create',
      description: 'Create a link between data stores',
      options: [
        Option(
          name: '--as',
          description: 'Name of link to create',
          args: [
            Arg(
            name: 'as'
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
            name: 'remote'
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
      description: 'Destroys a link between data stores',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
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
      description: 'Display queries with active locks',
      options: [
        Option(
          name: ['-t', '--truncate'],
          description: 'Truncates queries to 40 characters'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:maintenance',
      description: 'Show current maintenance information',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:maintenance:run',
      description: 'Start maintenance',
      options: [
        Option(
          name: ['-f', '--force'],
          description: ''
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:maintenance:window',
      description: 'Set weekly maintenance window',
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
            name: 'remote'
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
      description: 'Show 10 queries that have longest execution time in aggregate',
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
            name: 'num'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:promote',
      description: 'Sets DATABASE as your DATABASE_URL',
      options: [
        Option(
          name: ['-f', '--force'],
          description: ''
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
            name: 'remote'
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
      name: 'pg:ps',
      description: 'View active queries with execution time',
      options: [
        Option(
          name: ['-v', '--verbose'],
          description: ''
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:psql',
      description: 'Open a psql shell to the database',
      options: [
        Option(
          name: ['-c', '--command'],
          description: 'SQL command to run',
          args: [
            Arg(
            name: 'command'
          )
          ]
        ),
        Option(
          name: ['-f', '--file'],
          description: 'SQL file to run',
          args: [
            Arg(
            name: 'file'
          )
          ]
        ),
        Option(
          name: '--credential',
          description: 'Credential to use',
          args: [
            Arg(
            name: 'credential'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:pull',
      description: 'Pull Heroku database into local or remote database',
      options: [
        Option(
          name: '--exclude-table-data',
          description: 'Tables for which data should be excluded (use \';\' to split multiple names)',
          args: [
            Arg(
            name: 'exclude-table-data'
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
            name: 'remote'
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
      description: 'Push local or remote into Heroku database',
      options: [
        Option(
          name: '--exclude-table-data',
          description: 'Tables for which data should be excluded (use \';\' to split multiple names)',
          args: [
            Arg(
            name: 'exclude-table-data'
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
            name: 'remote'
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
      description: 'Delete all data in DATABASE',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:settings',
      description: 'Show your current database settings',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:settings:log-lock-waits',
      description: 'Controls whether a log message is produced when a session waits longer than the deadlock_timeout to acquire a lock. deadlock_timeout is set to 1 second',
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
            name: 'remote'
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
      description: 'The duration of each completed statement will be logged if the statement completes after the time specified by VALUE',
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
            name: 'remote'
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
      description: 'Log_statement controls which SQL statements are logged',
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
            name: 'remote'
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
      description: 'Stop a replica from following and make it a writeable database',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
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
            name: 'remote'
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
      name: 'pg:upgrade',
      description: 'Unfollow a database and upgrade it to the latest stable PostgreSQL version',
      options: [
        Option(
          name: ['-c', '--confirm'],
          description: '',
          args: [
            Arg(
            name: 'confirm'
          )
          ]
        ),
        Option(
          name: ['-v', '--version'],
          description: 'PostgreSQL version to upgrade to',
          args: [
            Arg(
            name: 'version'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:vacuum-stats',
      description: 'Show dead rows and whether an automatic vacuum is expected to be triggered',
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pg:wait',
      description: 'Blocks until database is available',
      options: [
        Option(
          name: '--wait-interval',
          description: 'How frequently to poll in seconds (to avoid rate limiting)',
          args: [
            Arg(
            name: 'wait-interval'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'psql',
      description: 'Open a psql shell to the database',
      options: [
        Option(
          name: ['-c', '--command'],
          description: 'SQL command to run',
          args: [
            Arg(
            name: 'command'
          )
          ]
        ),
        Option(
          name: ['-f', '--file'],
          description: 'SQL file to run',
          args: [
            Arg(
            name: 'file'
          )
          ]
        ),
        Option(
          name: '--credential',
          description: 'Credential to use',
          args: [
            Arg(
            name: 'credential'
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
            name: 'remote'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'database',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'rake',
      options: [
        Option(
          name: '--size',
          description: 'Dyno size',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--exit-code',
          description: 'Passthrough the exit code of the remote command'
        ),
        Option(
          name: '--env',
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
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'rake',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'addons:add',
      description: 'Create a new add-on resource',
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
        )
      ],
      args: [
        Arg(
          name: 'service:plan'
        ),
        Arg(
          name: 'addon',
          isVariadic: true
        )
      ]
    ),
    Subcommand(
      name: 'addons:remove',
      description: 'Permanently destroy an add-on resource',
      options: [
        Option(
          name: '--force',
          description: 'Allow destruction even if connected to other apps'
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
            name: 'app',
            isOptional: true
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
      name: 'create',
      description: 'Creates a new app',
      options: [
        Option(
          name: '--app',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--addons',
          description: 'Comma-delimited list of addons to install',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--buildpack',
          description: 'Buildpack url to use for this app',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--manifest',
          description: 'Use heroku.yml settings for this app'
        ),
        Option(
          name: '--no-remote',
          description: 'Do not create a git remote'
        ),
        Option(
          name: '--remote',
          description: 'The git remote to create, default "heroku"',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--stack',
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
          name: '--ssh-git',
          description: 'Use SSH git protocol for local git remote'
        ),
        Option(
          name: '--internal-routing',
          description: 'Private space-only. create as an Internal Web App that is only routable in the local network'
        ),
        Option(
          name: '--features',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--kernel',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--locked'
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: '--team',
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'app'
      )
      ]
    ),
    Subcommand(
      name: 'destroy',
      description: 'Permanently destroy an app',
      options: [
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
            name: 'app',
            isOptional: true
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'app'
      )
      ]
    ),
    Subcommand(
      name: 'apps:delete',
      description: 'Permanently destroy an app',
      options: [
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
            name: 'app',
            isOptional: true
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'app'
      )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List your apps',
      options: [
        Option(
          name: '--all',
          description: 'Include apps in all teams'
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: '--space',
          description: 'Filter by space',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--personal',
          description: 'List apps in personal account when a default team is set'
        ),
        Option(
          name: '--internal-routing',
          description: 'Filter to Internal Web Apps'
        ),
        Option(
          name: '--team',
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'apps:list',
      description: 'List your apps',
      options: [
        Option(
          name: '--all',
          description: 'Include apps in all teams'
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        ),
        Option(
          name: '--space',
          description: 'Filter by space',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--personal',
          description: 'List apps in personal account when a default team is set'
        ),
        Option(
          name: '--internal-routing',
          description: 'Filter to Internal Web Apps'
        ),
        Option(
          name: '--team',
          description: 'Team to use',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'info',
      description: 'Show detailed app information',
      options: [
        Option(
          name: '--shell',
          description: 'Output more shell friendly key/value pairs'
        ),
        Option(
          name: '--extended'
        ),
        Option(
          name: '--json'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app',
            isOptional: true
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'app'
      )
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'Open the app in a web browser',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'path',
        template: 'filepath'
      )
      ]
    ),
    Subcommand(
      name: 'rename',
      description: 'Rename an app',
      options: [
        Option(
          name: '--ssh-git',
          description: 'Use ssh git protocol instead of https'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'stack',
      description: 'Show the list of available stacks',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stack:set',
      description: 'Set the stack of an app',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'config:add',
      description: 'Set one or more config vars',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'confi'
      )
      ]
    ),
    Subcommand(
      name: 'dashboard',
      description: 'Display information about favorite apps'
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart app dynos',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'scale',
      description: 'Scale dyno quantity up or down',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'scal'
      )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop app dyno',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'kill',
      description: 'Stop app dyno',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'resize',
      description: 'Manage dyno sizes',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'resiz'
      )
      ]
    ),
    Subcommand(
      name: 'dyno:type',
      description: 'Manage dyno sizes',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'rollback',
      description: 'Rollback to a previous release',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'releas'
      )
      ]
    ),
    Subcommand(
      name: 'auth:disable',
      description: 'Disables an experimental feature',
      args: [
        Arg(
        name: 'feature'
      )
      ],
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
          description: 'The git remote to create, default "heroku"',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: 'confirm',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certs:wait',
      description: 'Waits for the certificate to be activated',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show help for this command'
        )
      ]
    ),
    Subcommand(
      name: 'git:credentials',
      description: 'Internal command for git-credentials',
      args: [
        Arg(
        name: 'comman'
      )
      ]
    ),
    Subcommand(
      name: 'sharing:add',
      args: [
        Arg(
        name: 'sharin'
      )
      ]
    ),
    Subcommand(
      name: 'sharing:access',
      args: [
        Arg(
        name: 'sharin'
      )
      ]
    ),
    Subcommand(
      name: 'sharing:remove',
      args: [
        Arg(
        name: 'sharin'
      )
      ]
    ),
    Subcommand(
      name: 'join:null',
      description: 'Add yourself to a team app',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'leave:null',
      description: 'Remove yourself from a team app',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sharing:transfer',
      args: [
        Arg(
        name: 'sharin'
      )
      ]
    ),
    Subcommand(
      name: 'unlock:null',
      description: 'Unlock an app so any team member can join',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'orgs:default'
    ),
    Subcommand(
      name: 'pg:backups:public-url',
      description: 'Get secret but publicly accessible URL of a backup',
      options: [
        Option(
          name: '--quiet'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'pg:backups:publicurl',
      description: 'Get secret but publicly accessible URL of a backup',
      options: [
        Option(
          name: '--quiet'
        ),
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'pg:repoint',
      description: 'Changes which leader a follower is following',
      options: [
        Option(
          name: '--confirm',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--follow',
          description: 'Leader database to follow',
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
        )
      ],
      args: [
        Arg(
        name: 'databas'
      )
      ]
    ),
    Subcommand(
      name: 'pg:settings:log-connections',
      description: 'Controls whether a log message is produced when a login attempt is made. Default is true',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
          )
          ]
        )
      ],
      args: [
        Arg(
          name: 'value'
        ),
        Arg(
          name: 'database'
        )
      ]
    ),
    Subcommand(
      name: 'pg:vacuum_stats',
      description: 'Show dead rows and whether an automatic vacuum is expected to be triggered',
      options: [
        Option(
          name: ['-a', '--app'],
          description: 'App to run command against',
          args: [
            Arg(
            name: 'app'
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
      name: 'pipelines:disable',
      description: 'Disable review apps and/or settings on an existing pipeline',
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
          description: 'The git remote to create, default "heroku"',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: 'pipeline',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: 'autodeploy',
          description: 'Disable autodeployments'
        ),
        Option(
          name: 'autodestroy',
          description: 'Disable automatically destroying review apps'
        )
      ]
    ),
    Subcommand(
      name: 'pipelines:enable',
      description: 'Enable review apps and/or settings on an existing pipeline',
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
          description: 'The git remote to create, default "heroku"',
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
          name: 'autodeploy',
          description: 'Autodeploy the review app'
        ),
        Option(
          name: 'autodestroy',
          description: 'Autodestroy the review app'
        )
      ]
    ),
    Subcommand(
      name: 'ps:disable',
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
          description: 'The git remote to create, default "heroku"',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ps:enable',
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
          description: 'The git remote to create, default "heroku"',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: 'min',
          description: 'Minimum number of dynos',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: 'max',
          description: 'Maximum number of dynos',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: 'p95',
          description: 'Desired p95 response time',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: 'notifications',
          description: 'Receive email notifications when the max dyno limit is reached'
        )
      ]
    ),
    Subcommand(
      name: 'ps:regions',
      description: 'List available regions for deployment',
      options: [
        Option(
          name: 'json',
          description: 'Output in json format'
        ),
        Option(
          name: 'private',
          description: 'Show regions for private spaces'
        ),
        Option(
          name: 'common',
          description: 'Show regions for common runtime'
        )
      ]
    ),
    Subcommand(
      name: 'run:console',
      description: '',
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
          description: 'The git remote to create, default "heroku"',
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
          name: ['-e', '--env'],
          description: 'Environment variables to set (use \';\' to split multiple vars)',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run:logs',
      description: '',
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
          description: 'The git remote to create, default "heroku"',
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
          name: ['-p', '--ps'],
          description: 'Hidden alias for dyno',
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
        )
      ]
    ),
    Subcommand(
      name: 'run:rake',
      description: '',
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
          description: 'The git remote to create, default "heroku"',
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
          name: ['-e', '--env'],
          description: 'Environment variables to set (use \';\' to split multiple vars)',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run:inside',
      description: 'Run a one-off process inside an existing heroku dyno',
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
          description: 'The git remote to create, default "heroku"',
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
          name: 'listen',
          description: 'Listen on a local port'
        )
      ]
    ),
    Subcommand(
      name: 'console',
      options: [
        Option(
          name: '--size',
          description: 'Dyno size',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--env',
          description: 'Environment variables to set (use \';\' to split multiple vars)',
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
        )
      ]
    ),
    Subcommand(
      name: 'spaces:hosts',
      description: 'List dedicated hosts for a space',
      options: [
        Option(
          name: '--space',
          description: 'Space to get host list from',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--json',
          description: 'Output in json format'
        )
      ],
      args: [
        Arg(
        name: 'spac'
      )
      ]
    )
  ]
);
