// Auto-generated from TypeScript source: vtex.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> commonOptions = [

  Option(
    name: ['--help', '-h'],
    description: 'Show help for command',
    priority: 1
  )
];

/// Completion spec for `vtex` CLI
final FigSpec vtexSpec = FigSpec(
  name: 'vtex',
  description: 'Fig autocomplete for VTEX IO\'s CLI - VTEX IO\'s CLI allows you to perform any action necessary to your development process, such as linking local files to the VTEX platform, managing workspaces, and releasing new app versions',
  subcommands: [

    Subcommand(
      name: 'add',
      description: 'Adds the specified app(s) to the manifest\'s dependencies',
      args: [

        Arg(
          name: 'APPID',
          description: 'Name and version ({vendor}.{appname}@{x.x.x}) of the dependency to include in the manifest.json file'
        ),
        Arg(
          name: 'ITHAPPID',
          description: 'Names and versions ({vendor}.{appname}@{x.x.x}) of the multiple dependencies to include in the manifest.json file',
          isOptional: true
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'autoupdate',
      description: 'Automatically updates VTEX IO\'s CLI',
      args: [
        Arg(
        name: 'CHANNEL',
        description: 'Channel to automatically updates',
        isOptional: true
      )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'browse',
      description: 'Opens the URL relative to your current workspace and account in a new browser window',
      args: [
        Arg(
        name: 'PATH',
        description: 'Relative path from https://{workspace}--{account}.myvtex.com/',
        isOptional: true
      )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--qr', '-q'],
          description: 'Prints a QR Code on the terminal',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Env Configuration',
      options: [

        ...commonOptions
      ],
      subcommands: [

        Subcommand(
          name: 'get',
          description: 'Prints the value of the requested configuration key',
          args: [
            Arg(
            name: 'CONFIGNAME',
            description: 'Configuration to retrieve the value from'
          )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Resets the specified configuration to its default value',
          args: [
            Arg(
            name: 'CONFIGNAME',
            description: 'Name of the configuration to reset'
          )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Sets the value of a configuration key',
          args: [

            Arg(
              name: 'CONFIGNAME',
              description: 'Name of the configuration to reset'
            ),
            Arg(
              name: 'VALUE',
              description: 'New value of the specified configuration'
            )
          ],
          options: [

            ...commonOptions
          ]
        )
      ]
    ),
    Subcommand(
      name: 'debug dotnet',
      description: 'Debug .NET applications (IDEs only)',
      args: [
        Arg(
        name: 'DEBUGINST',
        description: 'Name of the .NET application to debug'
      )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Publishes an app as a stable version. Only works for apps previously published as a release candidate version [see vtex publish --help]',
      args: [
        Arg(
        name: 'APPID',
        description: 'Name and version of the app you want to deploy',
        isOptional: true
      )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--yes', '-y'],
          description: 'Answers yes to all prompts',
          priority: 1
        ),
        Option(
          name: ['--force', '-f'],
          isDangerous: true,
          description: '(Use with caution.) Ignores the testing period of 7 minutes after publishing an app',
          priority: 2
        )
      ]
    ),
    Subcommand(
      name: 'deprecate',
      description: 'Deprecates the specified app, uninstalling and downgrading it to the latest stable version in every VTEX account',
      args: [

        Arg(
          name: 'APPID',
          description: 'Name and version of the app ({vendor}.{appname}@{x.x.x}) to deprecate',
          isOptional: true
        ),
        Arg(
          name: 'ITHAPPID',
          description: 'Names and versions of the multiple apps ({vendor}.{appname}@{x.x.x}) to deprecate',
          isOptional: true
        )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--yes', '-y'],
          description: 'Answers yes to all prompts',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'deps',
      description: 'Displays the differences between the dependencies of two distinct workspaces. If a single parameter is passed, the specified workspace\'s dependencies are compared with the master\'s. If no parameter is passed, the diff is made between the current workspace and master',
      subcommands: [

        Subcommand(
          name: 'diff',
          description: 'Displays the differences between the dependencies of two distinct workspaces. If a single parameter is passed, the specified workspace\'s dependencies are compared with the master\'s. If no parameter is passed, the diff is made between the current workspace and master',
          args: [

            Arg(
              name: 'WORKSPACE1',
              description: 'First workspace for comparison',
              isOptional: true
            ),
            Arg(
              name: 'WORKSPACE2',
              description: '[default: master] Second workspace for comparison',
              isOptional: true
            )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Displays the complete dependency tree of the current workspace',
          options: [

            ...commonOptions,
            Option(
              name: ['--keys', '-k'],
              description: 'Shows only key dependencies',
              priority: 1
            ),
            Option(
              name: ['--npm', '-n'],
              description: 'Includes dependencies from the npm registry',
              priority: 2
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates a dependency of the current workspace. If not specified which dependency, it updates all of them',
          args: [

            Arg(
              name: 'APPID',
              description: 'Name and version of the app ({vendor}.{appname}@{x.x.x}) to update',
              isOptional: true
            ),
            Arg(
              name: 'ITHAPPID',
              description: 'Names and versions of the multiple apps ({vendor}.{appname}@{x.x.x}) to update',
              isOptional: true
            )
          ],
          options: [

            ...commonOptions
          ]
        )
      ]
    ),
    Subcommand(
      name: 'edition',
      description: 'Displays the Edition App version installed on the current account',
      subcommands: [

        Subcommand(
          name: 'get',
          description: 'Displays the Edition App version installed on the current account',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Sets the Edition App version for the current account',
          args: [
            Arg(
            name: 'EDITION',
            description: 'Name of the Edition App to install'
          )
          ],
          options: [

            ...commonOptions
          ]
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Displays help for VTEX CLI commands',
      args: [
        Arg(
        name: 'COMMAND',
        description: 'Command to show help about',
        isOptional: true
      )
      ],
      options: [

        ...commonOptions,
        Option(
          name: '--all',
          description: 'Displays all commands available in the CLI',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'infra',
      description: 'Infra service',
      subcommands: [

        Subcommand(
          name: 'install',
          description: 'Installs an infra service',
          args: [
            Arg(
            name: 'SERVICEID',
            description: 'Name and version of the service ({vendor}.{servicename}@{x.x.x}) to install'
          )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists installed infra services',
          args: [
            Arg(
            name: 'NAME',
            description: 'Service name',
            isOptional: true
          )
          ],
          options: [

            ...commonOptions,
            Option(
              name: ['--available', '-a'],
              description: 'Lists services that are available to install',
              priority: 1
            ),
            Option(
              name: ['--filter=filter', '-f'],
              description: 'Lists services that contain the specified word',
              priority: 2
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates all installed infra services',
          options: [

            ...commonOptions
          ]
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Copies starting files and folders from VTEX boilerplates into your local directories',
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Installs an app on the current workspace. If not specified which one, it defaults to the app in the current directory',
      args: [

        Arg(
          name: 'APPID',
          description: 'Name and version of the app ({vendor}.{appname}@{x.x.x}) to install',
          isOptional: true
        ),
        Arg(
          name: 'ITHAPPID',
          description: 'Names and versions of the multiple apps ({vendor}.{appname}@{x.x.x}) to install',
          isOptional: true
        )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--force', '-f'],
          isDangerous: true,
          description: 'Installs the specified app without checking for route conflicts',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'lighthouse',
      description: 'Runs a Lighthouse audit over the specified URL',
      subcommands: [

        Subcommand(
          name: 'audit',
          description: 'Runs a Lighthouse audit over the specified URL',
          args: [
            Arg(
            name: 'URL',
            description: 'URL to audit'
          )
          ],
          options: [

            ...commonOptions,
            Option(
              name: ['--json', '-j'],
              description: 'Returns the report as a json on stdout',
              priority: 1
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a previous audit report, filtering by app and/or URL',
          options: [

            ...commonOptions,
            Option(
              name: ['--app=app', '-a'],
              description: 'Filters by app name',
              priority: 1
            ),
            Option(
              name: ['--url=url', '-u'],
              description: 'Filters by URL',
              priority: 2
            )
          ]
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'lh',
      description: 'Runs a Lighthouse audit over the specified URL',
      subcommands: [

        Subcommand(
          name: 'audit',
          description: 'Runs a Lighthouse audit over the specified URL',
          args: [
            Arg(
            name: 'URL',
            description: 'URL to audit'
          )
          ],
          options: [

            ...commonOptions,
            Option(
              name: ['--json', '-j'],
              description: 'Returns the report as a json on stdout',
              priority: 1
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a previous audit report, filtering by app and/or URL',
          options: [

            ...commonOptions,
            Option(
              name: ['--app=app', '-a'],
              description: 'Filters by app name',
              priority: 1
            ),
            Option(
              name: ['--url=url', '-u'],
              description: 'Filters by URL',
              priority: 2
            )
          ]
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'link',
      description: 'Syncs the app in the current directory with the development workspace in use',
      options: [

        ...commonOptions,
        Option(
          name: ['--account=account', '-a'],
          description: 'Starts a development session in the specified account. Must be paired with the \'--workspace\' flag',
          priority: 1
        ),
        Option(
          name: ['--clean', '-c'],
          description: 'Cleans builder cache',
          priority: 2
        ),
        Option(
          name: ['--setup', '-s'],
          description: 'Sets up typing definitions before linking the app [see vtex setup --help]',
          priority: 3
        ),
        Option(
          name: ['--unsafe', '-u'],
          description: 'Allows linking the app despite Typescript errors',
          priority: 4
        ),
        Option(
          name: ['--workspace=workspace', '-w'],
          description: 'Starts a development session in the specified workspace. Can be paired with the \'--account\' flag to switch from the current account and workspace',
          priority: 5
        ),
        Option(
          name: '--no-watch',
          description: 'Doesn\'t watch for file changes after the initial link',
          priority: 6
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Lists the apps installed on the current workspace and account',
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'local token',
      description: 'Prints the user\'s auth token and copies it to the clipboard',
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Login to a VTEX account',
      args: [
        Arg(
        name: 'ACCOUNT',
        description: 'Account name to log in',
        isOptional: true
      )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--workspace=workspace', '-w'],
          description: 'Logs in the specified workspace',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Logs out of the current VTEX account',
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'logs',
      description: 'Shows logs of an app. (Only apps in production.)',
      args: [
        Arg(
        name: 'APP',
        description: 'Name of the app to show logs',
        isOptional: true
      )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--all', '-a'],
          description: 'Shows logs of every app installed on the current account',
          priority: 1
        ),
        Option(
          name: ['--past', '-p'],
          description: 'Shows previous logs of the specified app',
          priority: 2
        )
      ]
    ),
    Subcommand(
      name: 'publish',
      description: 'Publishes the app in the current directory as a release candidate version',
      options: [

        ...commonOptions,
        Option(
          name: ['--force', '-f'],
          isDangerous: true,
          description: 'Publishes the app independently of SemVer rules',
          priority: 1
        ),
        Option(
          name: ['--tag=tag', '-t'],
          description: 'Adds the specified tag to the release',
          priority: 2
        ),
        Option(
          name: ['--workspace=workspace', '-w'],
          description: 'Uses the specified workspace in the app registry',
          priority: 3
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Answers yes to all prompts',
          priority: 4
        )
      ]
    ),
    Subcommand(
      name: 'redirects',
      description: 'Redirects from the current account and workspace',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Deletes redirects from the current account and workspace',
          args: [
            Arg(
            name: 'CSVPATH',
            description: 'CSV file containing the URL paths to be deleted'
          )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Exports all redirects defined in the current account and workspace to a CSV file',
          args: [
            Arg(
            name: 'CSVPATH',
            description: 'Name of the CSV file'
          )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Imports redirects from a CSV file to the current account and workspace',
          options: [

            ...commonOptions,
            Option(
              name: ['--reset', '-r'],
              description: 'Removes all redirects previously defined',
              priority: 1
            )
          ]
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'release',
      description: '(Only for git users.) Bumps the app version, commits, and pushes to remote the app in the current directory',
      args: [

        Arg(
          name: 'RELEASETYPE',
          description: 'Release type (major, minor, or patch)',
          isOptional: true
        ),
        Arg(
          name: 'TAGNAME',
          description: 'Tag name (e.g., stable, beta)',
          isOptional: true
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'settings',
      description: 'VTEX CLI Settings',
      subcommands: [

        Subcommand(
          name: 'get',
          description: '',
          args: [

            Arg(
              name: 'APNAME',
              description: 'Name of the app to check the available settings'
            ),
            Arg(
              name: 'FIELD',
              description: 'Name of the setting',
              isOptional: true
            )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Sets value to the specified setting of an app',
          args: [

            Arg(
              name: 'APPNAME',
              description: 'Name of the app'
            ),
            Arg(
              name: 'FIELD',
              description: 'Name of the setting'
            ),
            Arg(
              name: 'VALUE',
              description: 'Value of the setting'
            )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'unset',
          description: 'Disables the specified setting of an app',
          args: [

            Arg(
              name: 'APPNAME',
              description: 'Name of the app'
            ),
            Arg(
              name: 'FIELD',
              description: 'Name of the setting'
            )
          ],
          options: [

            ...commonOptions
          ]
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'setup',
      description: 'Sets up typings and tools for the current development environment',
      options: [

        ...commonOptions,
        Option(
          name: ['--ignore-linked', '-i'],
          description: 'Sets up types from published apps, and ignores types from linked apps',
          priority: 1
        ),
        Option(
          name: '--all',
          description: 'Sets up all available typings, configs, and tools',
          priority: 2
        ),
        Option(
          name: '--tooling',
          description: 'Sets up Prettier, Husky, and ESLint',
          priority: 3
        ),
        Option(
          name: '--tsconfig',
          description: 'Sets up React and Node TSconfig, if applicable',
          priority: 4
        ),
        Option(
          name: '--typings',
          description: 'Sets up GraphQL and React typings',
          priority: 5
        )
      ]
    ),
    Subcommand(
      name: 'submit',
      description: 'Submits the current app, or an specified one, to validation from VTEX App Store team',
      args: [
        Arg(
        name: 'APPID',
        description: 'Name of the app to be validated',
        isOptional: true
      )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'support',
      description: 'Logs in as support to another VTEX account',
      args: [
        Arg(
        name: 'ACCOUNT',
        description: 'Name of the account to give support'
      )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'switch',
      description: 'Switches to another VTEX account',
      args: [
        Arg(
        name: 'ACCOUNT',
        description: 'Account name to log in'
      )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--workspace=workspace', '-w'],
          description: 'Moves to the specified workspace',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Runs unit tests for the app in the current directory',
      subcommands: [

        Subcommand(
          name: 'e2e',
          description: 'Runs E2E integration tests for the app in the current directory',
          options: [

            ...commonOptions,
            Option(
              name: ['--report=report', '-r'],
              description: 'Displays the results and state of the specified test ID',
              priority: 1
            ),
            Option(
              name: ['--token', '-t'],
              description: '(Not recommended.) Sends your personal authorization token to your testing session, making it available during the tests. It can be dangerous since it exposes your token via the \'authToken\' environment variable',
              priority: 2
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Runs tests for the apps installed on the specified workspace',
              priority: 3
            )
          ]
        ),
        Subcommand(
          name: 'unit',
          description: 'Runs unit tests for the app in the current directory',
          options: [

            ...commonOptions,
            Option(
              name: ['--unsafe', '-u'],
              description: 'Ignores Typescript errors',
              priority: 1
            )
          ]
        )
      ],
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'undeprecate',
      description: 'Reestablishes a deprecated version of an app as a stable version',
      args: [

        Arg(
          name: 'APPID',
          description: 'Name and version of the app ({vendor}.{appname}@{x.x.x}) to undeprecate',
          isOptional: true
        ),
        Arg(
          name: 'ITHAPPID',
          description: 'Names and versions of the multiple apps ({vendor}.{appname}@{x.x.x}) to undeprecate',
          isOptional: true
        )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--yes', '-y'],
          description: 'Answers yes to all prompts',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstalls an app from the current workspace. If not specified which app to uninstall, it defaults to the app in the current directory',
      args: [

        Arg(
          name: 'APPNAME',
          description: 'Name and version of the app ({vendor}.{appname}@{x.x.x}) to uninstall',
          isOptional: true
        ),
        Arg(
          name: 'ITHAPPNAME',
          description: 'Names and versions of the multiple apps ({vendor}.{appname}@{x.x.x}) to uninstall',
          isOptional: true
        )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--yes', '-y'],
          description: 'Answers yes to all prompts',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'unlink',
      description: 'Unlinks an app from the current workspace. If not specified which app to unlink, it defaults to the app in the current directory',
      args: [

        Arg(
          name: 'APPID',
          description: 'Name and version of the app ({vendor}.{appname}@{x.x.x}) to unlink',
          isOptional: true
        ),
        Arg(
          name: 'ITHAPPID',
          description: 'Names and versions of the multiple apps ({vendor}.{appname}@{x.x.x}) to unlink',
          isOptional: true
        )
      ],
      options: [

        ...commonOptions,
        Option(
          name: ['--all', '-a'],
          description: 'Unlinks all apps',
          priority: 1
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Updates all installed apps to the latest (minor or patch) version. Does not upgrade to another major version',
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'url',
      description: 'Prints base URL for the current account and workspace',
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'whoami',
      description: 'Prints the current account, workspace, environment, and login details',
      options: [

        ...commonOptions
      ]
    ),
    Subcommand(
      name: 'workspace',
      description: 'Workspace from the current account',
      subcommands: [

        Subcommand(
          name: 'abtest',
          description: 'A/B tests from running on the current account',
          subcommands: [

            Subcommand(
              name: 'finish',
              description: 'Stops all A/B tests from running on the current account',
              options: [

                ...commonOptions
              ]
            ),
            Subcommand(
              name: 'start',
              description: 'Starts a new A/B test on the current workspace',
              options: [

                ...commonOptions
              ]
            ),
            Subcommand(
              name: 'status',
              description: 'Displays the results of the active A/B tests',
              options: [

                ...commonOptions
              ]
            )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes one or many workspaces from the current account',
          args: [

            Arg(
              name: 'WORKSPACE1',
              description: 'Name of the workspace to delete'
            ),
            Arg(
              name: 'ITHWORKSPACE',
              description: 'Name of the multiple workspaces to delete',
              isOptional: true
            )
          ],
          options: [

            ...commonOptions,
            Option(
              name: ['--force', '-f'],
              isDangerous: true,
              description: 'Deletes the specified workspace even if it is currently in use',
              priority: 1
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Answers yes to all prompts',
              priority: 2
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all workspaces of the current account',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'promote',
          description: 'Promotes the current workspace to master. Only works for production workspaces',
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Cleans all configurations of the specified workspace and recreates it with the configurations from master',
          args: [
            Arg(
            name: 'WORKSPACENAME',
            description: 'Name of the workspace to reset',
            isOptional: true
          )
          ],
          options: [

            ...commonOptions,
            Option(
              name: ['--production', '-p'],
              description: 'Recreates the workspace as a production one',
              priority: 1
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Answers yes to all prompts',
              priority: 2
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Displays information about the specified workspace',
          args: [
            Arg(
            name: 'WORKSPACENAME',
            description: 'Name of the workspace',
            isOptional: true
          )
          ],
          options: [

            ...commonOptions
          ]
        ),
        Subcommand(
          name: 'use',
          description: 'Creates and switches to a new workspace or simply switches to an existing one',
          args: [
            Arg(
            name: 'WORKSPACE',
            description: 'Name of the workspace to use'
          )
          ],
          options: [

            ...commonOptions,
            Option(
              name: ['--production', '-p'],
              description: 'Creates and/or switches to a production workspace',
              priority: 1
            ),
            Option(
              name: ['--reset', '-r'],
              description: 'Resets the workspace before switching to it',
              priority: 2
            )
          ]
        )
      ],
      options: [

        ...commonOptions
      ]
    )
  ],
  options: [

    ...commonOptions
  ]
);
