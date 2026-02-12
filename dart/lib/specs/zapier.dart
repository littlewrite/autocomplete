// Auto-generated from TypeScript source: zapier.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `zapier-platform-cli` CLI
final FigSpec zapierPlatformCliSpec = FigSpec(
  name: 'zapier-platform-cli',
  description: 'The Zapier CLI is a developer-focused way to create and maintain Zapier integrations. See more at https://github.com/zapier/zapier-platform',
  subcommands: [
    Subcommand(
      name: 'analytics',
      description: 'Show the status of the analytics that are collected. Also used to change what is collected',
      options: [
        Option(
          name: ['-m', '--mode'],
          description: 'Choose how much information to share. Anonymous mode drops the OS type and Zapier user id, but keeps command info. Identifying information is used only for debugging purposes',
          args: [
            Arg(
            name: 'mode',
            suggestions: [
              FigSuggestion(name: 'enabled'),
              FigSuggestion(name: 'anonymous'),
              FigSuggestion(name: 'disabled')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Build a pushable zip from the current directory',
      options: [
        Option(
          name: '--disable-dependency-detection',
          description: 'Disable "smart" file inclusion. By default, Zapier only includes files that are required by `index.js`. If you (or your dependencies) require files dynamically (such as with `require(someVar)`), then you may see "Cannot find module" errors. Disabling this may make your `build.zip` too large. If that\'s the case, try using the `includeInBuild` option in your `.zapierapprc`. See the docs about `includeInBuild` for more info'
        )
      ]
    ),
    Subcommand(
      name: 'convert',
      description: 'Convert a Legacy Web Builder app or Visual Builder integration to a CLI integration',
      options: [
        Option(
          name: ['-v', '--version'],
          description: 'Convert a specific version. Required when converting a Visual Builder integration',
          args: [
            Arg(
            name: 'version'
          )
          ]
        )
      ],
      args: [
        Arg(
          name: 'integrationId',
          description: 'To get the integration/app ID, go to "https://zapier.com/app/developer", click on an integration, and copy the number directly after "/app/" in the URL'
        ),
        Arg(
          name: 'path',
          description: 'Relative to your current path - IE: `.` for current directory',
          template: 'folders'
        )
      ]
    ),
    Subcommand(
      name: ['delete:integration', 'delete:app'],
      description: 'Delete your integration (including all versions)',
      options: []
    ),
    Subcommand(
      name: 'delete:version',
      description: 'Delete a specific version of your integration',
      options: [],
      args: [
        Arg(
        name: 'version',
        description: 'Specify the version to delete. It must have no users or Zaps'
      )
      ]
    ),
    Subcommand(
      name: 'deprecate',
      description: 'Mark a non-production version of your integration as deprecated, with removal by a certain date',
      options: [],
      args: [
        Arg(
          name: 'version',
          description: 'The version to deprecate'
        ),
        Arg(
          name: 'date',
          description: 'The date (YYYY-MM-DD) when Zapier will make the specified version unavailable'
        )
      ]
    ),
    Subcommand(
      name: 'describe',
      description: 'Describe the current integraiton',
      options: []
    ),
    Subcommand(
      name: 'env:get',
      description: 'Get environment variables for a version',
      options: [],
      args: [
        Arg(
        name: 'version',
        description: 'The version to get the environment for'
      )
      ]
    ),
    Subcommand(
      name: 'env:set',
      description: 'Set environment variables for a version',
      options: [],
      args: [
        Arg(
          name: 'version',
          description: 'The version to set the environment for. Values are copied forward when a new version is created, but this command will only ever affect the specified version'
        ),
        Arg(
          name: 'key-value pairs...',
          description: 'The key-value pairs to set. Keys are case-insensitive. Each pair should be space separated and pairs should be separated by an `=`. For example: `A=123 B=456`',
          isOptional: true,
          isVariadic: true
        )
      ]
    ),
    Subcommand(
      name: 'env:unset',
      description: 'Unset environment variables for a version',
      options: [],
      args: [
        Arg(
          name: 'version',
          description: 'The version to set the environment for'
        ),
        Arg(
          name: 'keys...',
          description: 'The keys to unset. Keys are case-insensitive',
          isOptional: true,
          isVariadic: true
        )
      ]
    ),
    Subcommand(
      name: 'history',
      description: 'Get the history of your integration',
      options: []
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize a new Zapier integration with a project template',
      options: [
        Option(
          name: ['-t', '--template'],
          description: 'The template to start your integration with',
          args: [
            Arg(
            name: 'template',
            suggestions: [
              FigSuggestion(name: 'basic-auth'),
              FigSuggestion(name: 'callback'),
              FigSuggestion(name: 'custom-auth'),
              FigSuggestion(name: 'digest-auth'),
              FigSuggestion(name: 'dynamic-dropdown'),
              FigSuggestion(name: 'files'),
              FigSuggestion(name: 'minimal'),
              FigSuggestion(name: 'oauth1-trello'),
              FigSuggestion(name: 'oauth2'),
              FigSuggestion(name: 'search-or-create'),
              FigSuggestion(name: 'session-auth'),
              FigSuggestion(name: 'typescript')
            ]
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'path',
        description: 'Where to create the new integration. If the directory doesn\'t exist, it will be created. If the directory isn\'t empty, we\'ll ask for confirmation',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: ['integrations', 'apps'],
      description: 'List integrations you have admin access to',
      options: []
    ),
    Subcommand(
      name: 'link',
      description: 'Link the current directory with an existing integration',
      options: []
    ),
    Subcommand(
      name: 'login',
      description: 'Configure your `~/.zapierrc` with a deploy key',
      options: [
        Option(
          name: ['-s', '--sso'],
          description: 'Use this flag if you log into Zapier a Single Sign-On (SSO) button and don\'t have a Zapier password'
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Deactivate your active deploy key and reset `~/.zapierrc`',
      options: []
    ),
    Subcommand(
      name: 'logs',
      description: 'Print recent logs',
      options: [
        Option(
          name: ['-v', '--version'],
          description: 'Filter logs to the specified version',
          args: [
            Arg(
            name: 'version'
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'Filter logs to only see errors or successes',
          args: [
            Arg(
            name: 'status',
            suggestions: [
              FigSuggestion(name: 'any'),
              FigSuggestion(name: 'success'),
              FigSuggestion(name: 'error')
            ]
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'See logs of the specified type',
          args: [
            Arg(
            name: 'type',
            suggestions: [
              FigSuggestion(name: 'console'),
              FigSuggestion(name: 'bundle'),
              FigSuggestion(name: 'http')
            ]
          )
          ]
        ),
        Option(
          name: '--detailed',
          description: 'See extra info, like request/response body and headers'
        ),
        Option(
          name: ['-u', '--user'],
          description: 'Only show logs for this user. Defaults to your account',
          args: [
            Arg(
            name: 'user'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'Cap the number of logs returned. Max is 50 (also the default)',
          args: [
            Arg(
            name: 'limit'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Migrate users from one version of your integration to another',
      options: [
        Option(
          name: '--user',
          description: 'Migrate only this user',
          args: [
            Arg(
            name: 'user'
          )
          ]
        )
      ],
      args: [
        Arg(
          name: 'fromVersion',
          description: 'The version FROM which to migrate users'
        ),
        Arg(
          name: 'toVersion',
          description: 'The version TO which to migrate users'
        ),
        Arg(
          name: 'percent',
          description: 'Percentage (between 1 and 100) of users to migrate',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'promote',
      description: 'Promote a specific version to public access',
      options: [],
      args: [
        Arg(
        name: 'version',
        description: 'The version you want promote'
      )
      ]
    ),
    Subcommand(
      name: 'push',
      description: 'Build and upload the current integration',
      options: [
        Option(
          name: '--disable-dependency-detection',
          description: 'Disable "smart" file inclusion. By default, Zapier only includes files that are required by `index.js`. If you (or your dependencies) require files dynamically (such as with `require(someVar)`), then you may see "Cannot find module" errors. Disabling this may make your `build.zip` too large. If that\'s the case, try using the `includeInBuild` option in your `.zapierapprc`. See the docs about `includeInBuild` for more info'
        )
      ]
    ),
    Subcommand(
      name: 'register',
      description: 'Register a new integration in your account',
      options: [],
      args: [
        Arg(
        name: 'title',
        description: 'Your integrations\'s public title. Asked interactively if not present',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'scaffold',
      description: 'Add a starting trigger, create, search, or resource to your integration',
      options: [
        Option(
          name: ['-d', '--dest'],
          description: 'Specify the new file\'s directory. Use this flag when you want to create a different folder structure such as `src/triggers` instead of the default `triggers`. Defaults to `[triggers|searches|creates]/{noun}`',
          args: [
            Arg(
            name: 'dest',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--test-dest',
          description: 'Specify the new test file\'s directory. Use this flag when you want to create a different folder structure such as `src/triggers` instead of the default `triggers`. Defaults to `test/[triggers|searches|creates]/{noun}`',
          args: [
            Arg(
            name: 'test-dest',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['-e', '--entry'],
          description: 'Supply the path to your integration\'s root (`index.js`). Only needed if your `index.js` is in a subfolder, like `src`',
          args: [
            Arg(
            name: 'entry',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Should we overwrite an existing trigger/search/create file?'
        ),
        Option(
          name: '--no-help',
          description: 'When scaffolding, should we skip adding helpful intro comments? Useful if this isn\'t your first rodeo'
        )
      ],
      args: [
        Arg(
          name: 'actionType',
          suggestions: [
            FigSuggestion(name: 'trigger'),
            FigSuggestion(name: 'search'),
            FigSuggestion(name: 'create'),
            FigSuggestion(name: 'resource')
          ]
        ),
        Arg(
          name: 'noun'
        )
      ]
    ),
    Subcommand(
      name: ['team:add', 'team:invite'],
      description: 'Add a team member to your integration',
      options: [],
      args: [
        Arg(
          name: 'email',
          description: 'The user to be invited. If they don\'t have a Zapier account, they\'ll be prompted to create one'
        ),
        Arg(
          name: 'role',
          description: 'The level the invited team member should be at. Admins can edit everything and get email updates. Subscribers only get email updates',
          suggestions: [
            FigSuggestion(name: 'admin'),
            FigSuggestion(name: 'subscriber')
          ]
        ),
        Arg(
          name: 'message',
          description: 'A message sent in the email to your team member, if you need to provide context. Wrap the message in quotes to ensure spaces get saved',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['team:get', 'team:list'],
      description: 'Get team members involved with your integration',
      options: []
    ),
    Subcommand(
      name: ['team:remove', 'team:delete'],
      description: 'Remove a team member from all versions of your integration',
      options: []
    ),
    Subcommand(
      name: 'test',
      description: 'Test your integration via the "test" script in your "package.json"',
      options: [
        Option(
          name: '--skip-validate',
          description: 'Forgo running `zapier validate` before tests are run. This will speed up tests if you\'re modifying functionality of an existing integration rather than adding new actions'
        ),
        Option(
          name: '--yarn',
          description: 'Use `yarn` instead of `npm`. This happens automatically if there\'s a `yarn.lock` file, but you can manually force `yarn` if you run tests from a sub-directory'
        )
      ]
    ),
    Subcommand(
      name: 'upload',
      description: 'Upload the latest build of your integration to Zapier',
      options: []
    ),
    Subcommand(
      name: ['users:add', 'users:invite'],
      description: 'Add a user to some or all versions of your integration',
      options: [
        Option(
          name: ['-f', '--force'],
          description: 'Skip confirmation. Useful for running programmatically',
          isDangerous: true
        )
      ],
      args: [
        Arg(
          name: 'email',
          description: 'The user to be invited. If they don\'t have a Zapier account, they\'ll be prompted to create one'
        ),
        Arg(
          name: 'version',
          description: 'A version string (like 1.2.3). Optional, used only if you want to invite a user to a specific version instead of all versions',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['users:get', 'users:list'],
      description: 'Get a list of users who have been invited to your integration',
      options: []
    ),
    Subcommand(
      name: 'users:links',
      description: 'Get a list of links that are used to invite users to your integration',
      options: []
    ),
    Subcommand(
      name: ['users:remove', 'users:delete'],
      description: 'Remove a user from all versions of your integration',
      options: [
        Option(
          name: ['-f', '--force'],
          description: 'Skips confirmation. Useful for running programmatically',
          isDangerous: true
        )
      ],
      args: [
        Arg(
        name: 'email',
        description: 'The user to be removed'
      )
      ]
    ),
    Subcommand(
      name: 'validate',
      description: 'Validate your integration',
      options: [
        Option(
          name: '--without-style',
          description: 'Forgo pinging the Zapier server to run further checks'
        )
      ]
    ),
    Subcommand(
      name: 'versions',
      description: 'List the versions of your integration available for use in the Zapier editor',
      options: []
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
    )
  ]
);
