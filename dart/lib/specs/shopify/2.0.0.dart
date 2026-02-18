// AI-generated from TypeScript source: 2.0.0.ts
// Generated at: 2026-02-17

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `shopify` CLI
// final FigSubcommand shopifySpec = FigSubcommand( // TODO
final shopifySpec = FigSpec(
    name: "shopify",
    description:
        "Shopify CLI helps you build Shopify apps. It quickly generates Node.js, Ruby on Rails, and PHP apps, app extensions, Shopify Scripts (beta), and Shopify themes. You can also use it for Shopify themes and when automating many common development tasks. Visit https://shopify.dev/apps/tools/cli to know more",
    icon: "https://avatars.githubusercontent.com/u/8085?s=16&v=4",
    options: [
      Option(
        name: ["--help", "-h"],
        icon: "fig://icon?type=option",
        description: "Show help for this command",
        priority: 1,
        isPersistent: true,
      ),
    ],
    subcommands: [
      Subcommand(
          name: 'shopify',
          options: [
            Option(
                name: ['--help', '-h'],
                description: 'Show help for this command',
                priority: 1,
                isPersistent: true)
          ],
          description:
              'Shopify CLI helps you build Shopify apps. It quickly generates Node.js, Ruby on Rails, and PHP apps, app extensions, Shopify Scripts (beta), and Shopify themes. You can also use it for Shopify themes and when automating many common development tasks. Visit https://shopify.dev/apps/tools/cli to know more',
          icon: 'https://avatars.githubusercontent.com/u/8085?s=16&v=4',
          subcommands: [
            Subcommand(
                name: 'theme',
                priority: 100,
                description: 'Suite of commands for developing Shopify themes',
                subcommands: [
                  Subcommand(
                      name: 'init',
                      priority: 100,
                      description:
                          'Clones a Git repository to your local machine to use as the starting point for building a theme',
                      args: [
                        Arg(
                            name: 'NAME',
                            description:
                                'The name that you want to give your theme. Cloned files are stored in a folder with this name')
                      ],
                      options: [
                        Option(
                            name: '--clone-url',
                            description:
                                'The URL of the Git repository that you want to clone. If no URL is specified, then https://github.com/Shopify/dawn.git is used',
                            args: [Arg(name: 'URL')])
                      ]),
                  Subcommand(
                      name: 'serve',
                      description:
                          'Uploads the current theme as a development theme to the store that you\'re connected to',
                      options: [
                        Option(
                            name: '--live-reload',
                            description:
                                'The level at which content is reloaded when changes are made to the theme',
                            args: [
                              Arg(name: 'MODE', suggestions: [
                                FigSuggestion(
                                    name: 'hot-reload',
                                    description:
                                        'Hot reloads local changes to CSS and sections (default)'),
                                FigSuggestion(
                                    name: 'full-page',
                                    description:
                                        'Refreshes the entire page when a file is modified'),
                                FigSuggestion(
                                    name: 'off',
                                    description: 'Deactivate live reload')
                              ])
                            ]),
                        Option(
                            name: '--host',
                            description:
                                'The network interface the web server listens on. The default value is 127.0.0.1',
                            args: [
                              Arg(
                                  name: 'IP',
                                  description:
                                      'The network interface the web server listens on. The default value is 127.0.0.1')
                            ]),
                        Option(
                            name: '--port',
                            description:
                                'The local port to serve the theme preview from',
                            args: [
                              Arg(
                                  name: 'PORT',
                                  description:
                                      'The local port to serve the theme preview from')
                            ]),
                        Option(
                            name: '--poll',
                            description:
                                'Force the polling adapter to watch file changes. You can try this option if live reload isn\'t working as expected')
                      ]),
                  Subcommand(
                      name: 'check',
                      icon: 'fig://icon?type=alert',
                      description:
                          'Calls and runs Theme Check to analyze your theme code for errors and to ensure that it follows theme and Liquid best practices. Learn more about the checks that Theme Check runs',
                      options: [
                        Option(
                            name: '--config',
                            description:
                                'The path to your custom Theme Check config. This config overrides .theme-check.yml, if it is present in the directory being analyzed',
                            args: [Arg(name: 'PATH', template: 'filepaths')]),
                        Option(
                            name: '--category',
                            description:
                                'Run only the specified category of checks. You can specify multiple categories using multiple instances of this flag',
                            args: [
                              Arg(name: 'CATEGORY', suggestions: [
                                FigSuggestion(name: 'html'),
                                FigSuggestion(name: 'json'),
                                FigSuggestion(name: 'liquid'),
                                FigSuggestion(name: 'performance'),
                                FigSuggestion(name: 'translation')
                              ])
                            ]),
                        Option(
                            name: '--exclude-category',
                            description:
                                'Run all checks other than those in the specified category. You can specify multiple categories using multiple instances of this flag',
                            args: [
                              Arg(name: 'CATEGORY', suggestions: [
                                FigSuggestion(name: 'html'),
                                FigSuggestion(name: 'json'),
                                FigSuggestion(name: 'liquid'),
                                FigSuggestion(name: 'performance'),
                                FigSuggestion(name: 'translation')
                              ])
                            ]),
                        Option(
                            name: '--fail-level',
                            description:
                                'Configure the severity level that causes a run of theme check to fail (exit code 1). Options include error, suggestion, and style',
                            args: [
                              Arg(name: 'LEVEL', suggestions: [
                                FigSuggestion(name: 'error'),
                                FigSuggestion(name: 'suggestion'),
                                FigSuggestion(name: 'style')
                              ])
                            ]),
                        Option(
                            name: '--auto-correct',
                            description:
                                'Automatically fix correctable offenses'),
                        Option(
                            name: '--init',
                            description:
                                'Generate a new Theme Check config file'),
                        Option(
                            name: '--output',
                            description:
                                'Output the results of the check to a file. Options include json and text (default)',
                            args: [
                              Arg(name: 'type', suggestions: [
                                FigSuggestion(name: 'json'),
                                FigSuggestion(name: 'text')
                              ])
                            ]),
                        Option(
                            name: '--print',
                            description: 'Output the active config to STDOUT'),
                        Option(
                            name: '--list',
                            description: 'List the active checks'),
                        Option(
                            name: '--version',
                            description:
                                'Print the version of Theme Check being used')
                      ]),
                  Subcommand(
                      name: 'open',
                      description:
                          'Returns links that let you preview the specified theme',
                      options: [
                        Option(
                            name: '--theme',
                            description:
                                'The name or ID of the theme that you want to overwrite',
                            args: [Arg(name: 'NAME_OR_ID')]),
                        Option(
                            name: '--live',
                            description:
                                'Returns links for the live (published) theme. This option doesn\'t require --theme'),
                        Option(
                            name: '--development',
                            description:
                                'Returns links for your development theme. This option doesn\'t require --theme')
                      ]),
                  Subcommand(
                      name: 'delete',
                      description: 'Deletes a theme from your store',
                      args: [
                        Arg(
                            name: 'THEME_ID',
                            description:
                                'The ID of the theme that you want to delete. You can specify multiple theme IDs separated by spaces')
                      ],
                      options: [
                        Option(
                            name: '--development',
                            description: 'Deletes your development theme'),
                        Option(
                            name: '--force',
                            description:
                                'Deletes the theme without confirming with the user')
                      ]),
                  Subcommand(
                      name: 'package',
                      icon: 'fig://icon?type=box',
                      description:
                          'Packages your local theme files into a ZIP file that can be uploaded to Shopify',
                      args: [
                        Arg(name: 'ROOT', isOptional: true, template: 'folders')
                      ]),
                  Subcommand(
                      name: 'publish',
                      description:
                          'Publishes an unpublished theme from your theme library',
                      args: [
                        Arg(
                            name: 'THEME_ID',
                            description:
                                'The ID of the theme that you want to delete. You can specify multiple theme IDs separated by spaces')
                      ],
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'Publish the theme without confirming with the user')
                      ]),
                  Subcommand(
                      name: 'pull',
                      description: 'Retrieves theme files from Shopify',
                      options: [
                        Option(
                            name: '--theme',
                            description:
                                'The name or ID of the theme that you want to overwrite',
                            args: [Arg(name: 'NAME_OR_ID')]),
                        Option(
                            name: '--live',
                            description:
                                'Pulls the live (published) theme. This option doesn\'t require --theme'),
                        Option(
                            name: '--development',
                            description:
                                'Downloads theme files from your remote development theme. You might use this command to copy changes made to the development theme in the theme editor to your local copy of the theme. This option doesn\'t require --theme'),
                        Option(
                            name: '--nodelete',
                            description:
                                'Runs the pull command without deleting local files'),
                        Option(
                            name: '--ignore',
                            description:
                                'Skips downloading the specified files from Shopify. Specify multiple patterns to ignore by using the flag multiple times in a single command. If files are excluded using .shopifyignore, then both the contents of .shopifyignore and the --ignore flag are respected'),
                        Option(
                            name: '--only',
                            description:
                                'Downloads only the specified files from Shopify. Specify multiple patterns by using the flag multiple times in a single command')
                      ]),
                  Subcommand(
                      name: 'push',
                      description:
                          'Uploads your local theme files to Shopify, overwriting the remote theme if specified',
                      options: [
                        Option(
                            name: '--theme',
                            description:
                                'The name or ID of the theme that you want to overwrite',
                            args: [Arg(name: 'NAME_OR_ID')]),
                        Option(
                            name: '--development',
                            description:
                                'Pushes to your development theme. If you don\'t have a development theme, then one is created. This option doesn\'t require --theme'),
                        Option(
                            name: '--nodelete',
                            description:
                                'Pushes your local files without deleting remote files from Shopify'),
                        Option(
                            name: '--json',
                            description:
                                'Returns information about the pushed theme as a JSON object'),
                        Option(
                            name: '--allow-live',
                            description:
                                'Allows Shopify CLI to overwrite the live (published) theme'),
                        Option(
                            name: '--live',
                            description:
                                'Pushes to the live (published) theme. This option doesn\'t require --theme or --allow-live'),
                        Option(
                            name: '--publish',
                            description:
                                'After the theme is pushed, publishes the theme so it is live in the store'),
                        Option(
                            name: '--unpublished',
                            description:
                                'Uploads the theme to the theme library as a new unpublished theme.You\'re prompted to provide a name for the theme. Use the --theme flag to provide a name as a part of the command'),
                        Option(
                            name: '--ignore',
                            description:
                                'Skips uploading the specified files to Shopify. Specify multiple patterns to ignore by using the flag multiple times in a single command. If files are excluded using .shopifyignore, then both the contents of .shopifyignore and the --ignore flag are respected'),
                        Option(
                            name: '--only',
                            description:
                                'Uploads only the specified files to Shopify. Specify multiple patterns by using the flag multiple times in a single command')
                      ]),
                  Subcommand(
                      name: 'list',
                      description:
                          'Lists the themes in your store, along with their IDs and statuses')
                ]),
            Subcommand(
                name: 'app',
                priority: 90,
                description:
                    'This reference lists the Shopify CLI commands for apps',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      priority: 100,
                      description: 'Creates a ruby on rails / node / php app',
                      subcommands: [
                        Subcommand(
                            name: 'rails',
                            description:
                                'Connects an existing app to Shopify CLI. Creates a config file',
                            options: [
                              Option(
                                  name: '--name',
                                  description: 'App name. Any string',
                                  args: [Arg(name: 'NAME')]),
                              Option(
                                  name: '--organization-id',
                                  description:
                                      'Partner organization ID. Must be an existing organization',
                                  args: [Arg(name: 'ID')]),
                              Option(
                                  name: '--store-domain',
                                  description:
                                      'Development store URL. Must be an existing development store',
                                  args: [Arg(name: 'MYSHOPIFYDOMAIN')]),
                              Option(
                                  name: '--type',
                                  description:
                                      'Whether this app is public or custom',
                                  args: [
                                    Arg(name: 'APPTYPE', suggestions: [
                                      FigSuggestion(name: 'public'),
                                      FigSuggestion(name: 'custom')
                                    ])
                                  ]),
                              Option(
                                  name: '--verbose',
                                  description:
                                      'Output verbose information when installing dependencies'),
                              Option(
                                  name: '--db',
                                  description: 'Database type',
                                  args: [
                                    Arg(name: 'DB', suggestions: [
                                      FigSuggestion(name: 'mysql'),
                                      FigSuggestion(name: 'postgresql'),
                                      FigSuggestion(name: 'sqlite3'),
                                      FigSuggestion(name: 'oracle'),
                                      FigSuggestion(name: 'frontbase'),
                                      FigSuggestion(name: 'ibm_db'),
                                      FigSuggestion(name: 'sqlserver'),
                                      FigSuggestion(name: 'jdbcmysql'),
                                      FigSuggestion(name: 'jdbcsqlite3'),
                                      FigSuggestion(name: 'jdbcpostgresql'),
                                      FigSuggestion(name: 'jdbc')
                                    ])
                                  ]),
                              Option(
                                  name: '--rails-opts',
                                  description:
                                      'Additional options. Must be string containing one or more valid Rails options, separated by spaces',
                                  args: [Arg(name: 'RAILSOPTS')])
                            ]),
                        Subcommand(
                            name: 'node',
                            description: 'Creates an embedded nodejs app',
                            options: [
                              Option(
                                  name: '--name',
                                  description: 'App name. Any string',
                                  args: [Arg(name: 'NAME')]),
                              Option(
                                  name: '--organization-id',
                                  description:
                                      'Partner organization ID. Must be an existing organization',
                                  args: [Arg(name: 'ID')]),
                              Option(
                                  name: '--store-domain',
                                  description:
                                      'Development store URL. Must be an existing development store',
                                  args: [Arg(name: 'MYSHOPIFYDOMAIN')]),
                              Option(
                                  name: '--type',
                                  description:
                                      'Whether this app is public or custom',
                                  args: [
                                    Arg(name: 'APPTYPE', suggestions: [
                                      FigSuggestion(name: 'public'),
                                      FigSuggestion(name: 'custom')
                                    ])
                                  ]),
                              Option(
                                  name: '--verbose',
                                  description:
                                      'Output verbose information when installing dependencies')
                            ]),
                        Subcommand(
                            name: 'php',
                            description:
                                'Connects an existing app to Shopify CLI. Creates a config file',
                            options: [
                              Option(
                                  name: '--name',
                                  description: 'App name. Any string',
                                  args: [Arg(name: 'NAME')]),
                              Option(
                                  name: '--organization-id',
                                  description:
                                      'Partner organization ID. Must be an existing organization',
                                  args: [Arg(name: 'ID')]),
                              Option(
                                  name: '--store-domain',
                                  description:
                                      'Development store URL. Must be an existing development store',
                                  args: [Arg(name: 'MYSHOPIFYDOMAIN')]),
                              Option(
                                  name: '--type',
                                  description:
                                      'Whether this app is public or custom',
                                  args: [
                                    Arg(name: 'APPTYPE', suggestions: [
                                      FigSuggestion(name: 'public'),
                                      FigSuggestion(name: 'custom')
                                    ])
                                  ]),
                              Option(
                                  name: '--verbose',
                                  description:
                                      'Output verbose information when installing dependencies')
                            ])
                      ]),
                  Subcommand(
                      name: 'connect',
                      priority: 90,
                      description:
                          'Connects an existing app to Shopify CLI. Creates a config file'),
                  Subcommand(
                      name: 'deploy',
                      priority: 80,
                      description:
                          'Deploy the current app to a hosting service. Heroku (https://www.heroku.com) is currently the only option, but more will be added in the future',
                      subcommands: [
                        Subcommand(
                            icon: 'fig://icon?type=heroku',
                            name: 'heroku',
                            description: 'Deploys the current app to Heroku')
                      ]),
                  Subcommand(
                      name: 'open',
                      priority: 70,
                      description:
                          'Open your local development app in the default browser'),
                  Subcommand(
                      name: 'serve',
                      priority: 60,
                      description:
                          'Start a local development server for your project, as well as a public ngrok tunnel to your localhost'),
                  Subcommand(
                      name: 'tunnel',
                      priority: 50,
                      description:
                          'Controls an HTTP tunnel to your local development app using ngrok. With the tunnel command, you can authenticate with ngrok and start or stop the tunnel. To authenticate with ngrok, you need to create an ngrok account, and then create an authentication token from your ngrok dashboard. Copy your token and use it with the auth command',
                      subcommands: [
                        Subcommand(
                            priority: 100,
                            name: 'start',
                            description:
                                'Starts an ngrok tunnel, will print the URL for an existing tunnel if already running'),
                        Subcommand(
                            priority: 90,
                            name: 'stop',
                            description: 'Stops the ngrok tunnel'),
                        Subcommand(
                            priority: 80,
                            name: 'auth',
                            description:
                                'Writes an ngrok auth token to ~/.ngrok2/ngrok.yml to connect with an ngrok account. Visit https://dashboard.ngrok.com/signup to sign up',
                            options: [
                              Option(
                                  name: '--token',
                                  description: 'Ngrok auth token',
                                  args: [Arg(name: 'token')])
                            ])
                      ])
                ]),
            Subcommand(
                name: 'extension',
                priority: 80,
                description: 'Suite of commands for developing app extensions',
                subcommands: [
                  Subcommand(
                      priority: 100,
                      name: 'create',
                      description:
                          'Scaffolds a new extension project in a subdirectory of your app. To specify the type and name of your extension, you can use the interactive prompts or specify them as parameters on the command',
                      options: [
                        Option(
                            name: '--type',
                            description:
                                'The type of extension that you want to create',
                            args: [Arg(name: 'TYPE')]),
                        Option(
                            name: '--name',
                            description:
                                'The name of the extension. Shopify CLI transforms the input into snake case to name your directory. Extension names have a 50 character limit',
                            args: [Arg(name: 'NAME')]),
                        Option(name: '--api-key', args: [Arg(name: 'KEY')])
                      ]),
                  Subcommand(
                      name: 'serve',
                      priority: 90,
                      description:
                          'Starts a local server that can be rendered in the development store. This command must be run from your extension’s directory. The server will continue to run until you press Ctrl+C',
                      options: [
                        Option(
                            name: '--tunnel',
                            description:
                                'Creates an HTTP tunnel (this is the default behavior)'),
                        Option(
                            name: '--no-tunnel',
                            description: 'Skips creating an HTTP tunnel'),
                        Option(name: '--ressourceUrl', args: [
                          Arg(
                              name: 'RESOURCE',
                              description:
                                  'A relative link to product or variant')
                        ])
                      ]),
                  Subcommand(
                      name: 'register',
                      priority: 80,
                      description:
                          'Creates your app extension and associates it with an app in your Partner organization. This step should be done only once for each app extension. Before you can push your code to Shopify, you need to create an app in your Partner Dashboard that you want to register your extension to. After an extension is registered to an app, the registration can’t be undone',
                      options: [
                        Option(
                            name: '--api-key',
                            description:
                                'The API key of the app that you want to register your extension to',
                            args: [Arg(name: 'KEY')])
                      ]),
                  Subcommand(
                      name: 'connect',
                      priority: 70,
                      description:
                          'Connects your local project directory to an existing app in your Partner organization. This command is intended to help teams collaborate on the same extension code. Each developer can clone the extension code locally, and then run shopify extension connect to populate the local .env file with the API keys required to push changes to the extension'),
                  Subcommand(
                      name: 'push',
                      priority: 60,
                      description:
                          'Uploads your code to Shopify. You need to run this command before you can publish your extension from the Partner Dashboard. You need to register your extension before you can push it to Shopify',
                      options: [
                        Option(
                            name: '--api-key',
                            description:
                                'Connect your extension and app by inserting your app\'s API key (which you can get from your app setup page on shopify.dev)',
                            args: [Arg(name: 'KEY')]),
                        Option(
                            name: '--registration-id',
                            description:
                                'The id of the extension\'s registration',
                            args: [Arg(name: 'REGISTRATION_ID')])
                      ]),
                  Subcommand(
                      name: 'check',
                      priority: 50,
                      icon: 'fig://icon?type=alert',
                      description:
                          'Runs Theme Check to analyze your code for errors and to ensure that it follows theme and Liquid best practices. Learn more about the checks that Theme Check runs. This command is only valid for theme app extensions',
                      options: [
                        Option(
                            name: '--config',
                            description:
                                'The path to your custom Theme Check config. This config overrides .theme-check.yml, if it is present in the directory being analyzed',
                            args: [Arg(name: 'PATH', template: 'filepaths')]),
                        Option(
                            name: '--category',
                            description:
                                'Run only the specified category of checks. You can specify multiple categories using multiple instances of this flag',
                            args: [
                              Arg(name: 'CATEGORY', suggestions: [
                                FigSuggestion(name: 'html'),
                                FigSuggestion(name: 'json'),
                                FigSuggestion(name: 'liquid'),
                                FigSuggestion(name: 'performance'),
                                FigSuggestion(name: 'translation')
                              ])
                            ]),
                        Option(
                            name: '--exclude-category',
                            description:
                                'Run all checks other than those in the specified category. You can specify multiple categories using multiple instances of this flag',
                            args: [
                              Arg(name: 'CATEGORY', suggestions: [
                                FigSuggestion(name: 'html'),
                                FigSuggestion(name: 'json'),
                                FigSuggestion(name: 'liquid'),
                                FigSuggestion(name: 'performance'),
                                FigSuggestion(name: 'translation')
                              ])
                            ]),
                        Option(
                            name: '--fail-level',
                            description:
                                'Configure the severity level that causes a run of theme check to fail (exit code 1). Options include error, suggestion, and style',
                            args: [
                              Arg(name: 'LEVEL', suggestions: [
                                FigSuggestion(name: 'error'),
                                FigSuggestion(name: 'suggestion'),
                                FigSuggestion(name: 'style')
                              ])
                            ]),
                        Option(
                            name: '--auto-correct',
                            description:
                                'Automatically fix correctable offenses'),
                        Option(
                            name: '--init',
                            description:
                                'Generate a new Theme Check config file'),
                        Option(
                            name: '--output',
                            description:
                                'Output the results of the check to a file. Options include json and text (default)',
                            args: [
                              Arg(name: 'type', suggestions: [
                                FigSuggestion(name: 'json'),
                                FigSuggestion(name: 'text')
                              ])
                            ]),
                        Option(
                            name: '--print',
                            description: 'Output the active config to STDOUT'),
                        Option(
                            name: '--list',
                            description: 'List the active checks'),
                        Option(
                            name: '--version',
                            description:
                                'Print the version of Theme Check being used')
                      ],
                      args: [
                        Arg(name: 'extension path', template: 'folders')
                      ])
                ]),
            Subcommand(
                name: 'login',
                priority: 70,
                description:
                    'Authenticates you, and logs you into the specified store, with Shopify CLI',
                options: [
                  Option(
                      name: '--store',
                      description:
                          'The store prefix, myshopify.com URL, admin URL, custom domain or custom domain admin',
                      args: [Arg(name: 'STORE')])
                ]),
            Subcommand(
                name: 'logout',
                priority: 60,
                description:
                    'Logs you out of the Shopify account or Partner account and store. The logout command clears credentials. You need to reauthenticate the next time that you connect to a store'),
            Subcommand(
                name: 'populate',
                priority: 50,
                description:
                    'Adds example data to your store for testing your app or theme’s behavior.The populate command lets you specify which type of data you\'re populating, and how many to create',
                args: [
                  Arg(name: 'TYPE', isVariadic: true, suggestions: [
                    FigSuggestion(
                        name: 'products',
                        description:
                            'Creates products in your store. Products are created with a title and a price'),
                    FigSuggestion(
                        name: 'customers',
                        description:
                            'Creates customers in your store. Customers are created with a name only'),
                    FigSuggestion(
                        name: 'draftorders',
                        description:
                            'Creates draft orders in your store. Draft orders are created with one custom item')
                  ])
                ],
                options: [
                  Option(priority: 1, name: '--count', args: [
                    Arg(
                        name: 'NUMBER',
                        description:
                            'Creates the specified number of records. This is an optional parameter. If no count is specified, then five records are created')
                  ])
                ]),
            Subcommand(
                name: 'store',
                priority: 40,
                icon: 'fig://icon?type=option',
                description:
                    'Displays the store that you\'re currently connected to'),
            Subcommand(
                name: 'version',
                priority: 30,
                icon: 'fig://icon?type=option',
                description:
                    'Displays the version of Shopify CLI that you\'re running'),
            Subcommand(
                name: 'config',
                priority: 10,
                description:
                    'Configures Shopify CLI options. There are two available options: analytics and feature',
                subcommands: [
                  Subcommand(
                      name: 'analytics',
                      description:
                          'Configures anonymous usage reporting by enabling or disabling analytics',
                      options: [
                        Option(name: '--status'),
                        Option(name: '--enable'),
                        Option(name: '--disable')
                      ]),
                  Subcommand(
                      name: 'feature',
                      description:
                          'Configures active feature sets in the CLI. This command is used for development and debugging work on the CLI tool itself. Unless you\'re developing the tool, don\'t alter this command. Review the Shopify CLI development guide for more information',
                      options: [
                        Option(name: '--status'),
                        Option(name: '--enable'),
                        Option(name: '--disable')
                      ],
                      args: [
                        Arg(name: 'feature_name')
                      ])
                ]),
            Subcommand(
                name: 'whoami',
                priority: 1,
                icon: 'fig://icon?type=option',
                description:
                    'Determines which Partner organization you\'re logged in to, or which store you\'re logged in to as a staff member'),
            Subcommand(
                name: 'switch',
                priority: 20,
                description:
                    'Switches between stores without logging out and logging in again',
                options: [
                  Option(
                      name: '--store',
                      description:
                          'The store prefix, myshopify.com URL, admin URL, custom domain or custom domain admin',
                      args: [Arg(name: 'STORE')])
                ]),
            Subcommand(
                name: 'script',
                priority: 25,
                description:
                    'Shopify Scripts is in beta and only available to stores on the Shopify Plus plan. Enrollment to the beta program is closed',
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description:
                          'Creates a new script project. The project is created in a subdirectory of the current directory',
                      options: [
                        Option(
                            name: '--api',
                            description:
                                'The API library to use for the script',
                            args: [
                              Arg(name: 'api_name', suggestions: [
                                FigSuggestion(name: 'shipping_methods'),
                                FigSuggestion(name: 'payment_methods')
                              ])
                            ]),
                        Option(
                            name: '--title',
                            description: 'The name of the script',
                            args: [Arg(name: 'script_name')]),
                        Option(
                            name: '--language',
                            description:
                                'The format or language of the script. Valid values: wasm. If unspecified, then your script project is created in WebAssembly (Wasm), which is the default format for script projects',
                            args: [Arg(name: 'script_language')])
                      ]),
                  Subcommand(
                      name: 'connect',
                      description:
                          'Connects a script to a Shopify Partner organization and custom app. You need to run the connect command before you first deploy the script to an app. The connect command creates the project\'s .env and .shopify-cli.yml files if they don\'t exist, or updates the files if they do exist. This command is useful if you\'re working on one project across multiple computers, or if you\'re collaborating with other developers using a version control system like Git'),
                  Subcommand(
                      name: 'push',
                      description:
                          'Deploys a previously connected script to the Shopify platform',
                      options: [
                        Option(
                            name: '--force',
                            description:
                                'Replaces the current script with the newest version. This parameter is required if you\'ve already pushed the script to the Shopify platform')
                      ])
                ])
          ])
    ]);
