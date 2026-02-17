// Auto-generated from TypeScript source: bot.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bot` CLI
final FigSpec botSpec = FigSpec(
  name: 'bot',
  description: 'Manage Microsoft Azure Bot Service',
  subcommands: [

    Subcommand(
      name: 'authsetting',
      description: 'Manage OAuth connection settings on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an OAuth connection setting on a bot',
          options: [

            Option(
              name: '--client-id',
              description: 'Client ID associated with the service provider setting',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--client-secret',
              description: 'Client secret associated with the service provider setting',
              args: [
                Arg(
                name: 'client-secre'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--provider-scope-string',
              description: 'The scope string associated with the service provider setting.The string should be delimited as needed for the service provider',
              args: [
                Arg(
                name: 'provider-scope-strin'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--service',
              description: 'Name of the service provider. For a list of all service providers, use az bot connection listserviceproviders',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: ['--setting-name', '-c'],
              description: 'Name of the oauth connection setting',
              args: [
                Arg(
                name: 'setting-nam'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'Parameter values for service provider parameters. Usage: --parameters key=value key1=value1',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an OAuth connection setting on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--setting-name', '-c'],
              description: 'Name of the oauth connection setting',
              args: [
                Arg(
                name: 'setting-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Show all OAuth connection settings on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-providers',
          description: 'List details for all service providers available for creating OAuth connection settings',
          options: [

            Option(
              name: '--provider-name',
              description: 'Service provider name for which to fetch details',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of an OAuth connection setting on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--setting-name', '-c'],
              description: 'Name of the oauth connection setting',
              args: [
                Arg(
                name: 'setting-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a new v4 SDK bot',
      options: [

        Option(
          name: '--app-type',
          description: 'Microsoft App Type for the bot. Possible values include: "UserAssignedMSI", "SingleTenant", "MultiTenant"',
          args: [
            Arg(
            name: 'app-typ'
          )
          ]
        ),
        Option(
          name: '--appid',
          description: 'The Microsoft account ID (MSA ID) to be used with the bot',
          args: [
            Arg(
            name: 'appi'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--cmk-key-vault-key-url', '--cmk'],
          description: 'The key vault key url to enable Customer Managed Keys encryption',
          args: [
            Arg(
            name: 'cmk-key-vault-key-ur'
          )
          ]
        ),
        Option(
          name: ['--description', '-d'],
          description: 'The description of the bot',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the bot. If not specified, defaults to the name of the bot',
          args: [
            Arg(
            name: 'display-nam'
          )
          ]
        ),
        Option(
          name: ['--endpoint', '-e'],
          description: 'The messaging endpoint of the bot',
          args: [
            Arg(
            name: 'endpoin'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--msi-resource-id',
          description: 'Microsoft App Managed Identity Resource Id for the bot',
          args: [
            Arg(
            name: 'msi-resource-i'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'The Sku of the bot',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'F0'),
              FigSuggestion(name: 'S1')
            ]
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--tenant-id',
          description: 'Microsoft App Tenant Id for the bot',
          args: [
            Arg(
            name: 'tenant-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete an existing bot',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'download',
      description: 'Download an existing bot',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--save-path',
          description: 'The directory to download bot code to',
          args: [
            Arg(
            name: 'save-pat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'prepare-deploy',
      description: 'Add scripts/config files for publishing with az webapp deployment',
      options: [

        Option(
          name: '--lang',
          description: 'The language or runtime of the bot',
          args: [
            Arg(
            name: 'lang',
            suggestions: [

              FigSuggestion(name: 'Csharp'),
              FigSuggestion(name: 'Javascript'),
              FigSuggestion(name: 'Typescript')
            ]
          )
          ]
        ),
        Option(
          name: '--code-dir',
          description: 'The directory to place the generated deployment files in. Defaults to the current directory the command is called from',
          args: [
            Arg(
            name: 'code-di'
          )
          ]
        ),
        Option(
          name: '--proj-file-path',
          description: 'The path to the .csproj file relative to --code-dir',
          args: [
            Arg(
            name: 'proj-file-pat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'prepare-publish',
      description: '(Maintenance mode) Add scripts to your local source code directory to be able to publish back using az bot publish for v3 SDK bots',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--proj-file-path',
          description: 'Path to the start up project file name. (E.g. "./EchoBotWithCounter.csproj") Required only for C#',
          args: [
            Arg(
            name: 'proj-file-pat'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--sln-name',
          description: 'Name of the start up solution file name. Required only for C#',
          args: [
            Arg(
            name: 'sln-nam'
          )
          ]
        ),
        Option(
          name: '--code-dir',
          description: 'The directory to download deployment scripts to',
          args: [
            Arg(
            name: 'code-di'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The Microsoft Bot Builder SDK version to be used in the bot template that will be created',
          args: [
            Arg(
            name: 'version',
            suggestions: [

              FigSuggestion(name: 'v3'),
              FigSuggestion(name: 'v4')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'publish',
      description: 'Publish to a bot\'s associated app service',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--code-dir',
          description: 'The directory to upload bot code from',
          args: [
            Arg(
            name: 'code-di'
          )
          ]
        ),
        Option(
          name: '--keep-node-modules',
          description: 'Keep node_modules folder and do not run npm install on the App Service. This can greatly speed up publish commands for Node.js SDK bots',
          args: [
            Arg(
            name: 'keep-node-modules',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--proj-file-path',
          description: 'Path to the start up project file name. (E.g. "./EchoBotWithCounter.csproj")',
          args: [
            Arg(
            name: 'proj-file-pat'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Configurable timeout in seconds for checking the status of deployment',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The Microsoft Bot Builder SDK version of the bot',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get an existing bot',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--msbot',
          description: 'Show the output as JSON compatible with a .bot file',
          args: [
            Arg(
            name: 'msbot',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update an existing bot',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--app-insights-api-key', '--ai-api-key'],
          description: 'Azure Application Insights API Key used to read bot analytics data. Provide a key if you want to view analytics about your bot in the Analytics blade',
          args: [
            Arg(
            name: 'app-insights-api-ke'
          )
          ]
        ),
        Option(
          name: ['--app-insights-app-id', '--ai-app-id'],
          description: 'Azure Application Insights Application ID used to read bot analytics data. Provide an Id if you want to view analytics about your bot in the Analytics blade',
          args: [
            Arg(
            name: 'app-insights-app-i'
          )
          ]
        ),
        Option(
          name: ['--app-insights-key', '--ai-key'],
          description: 'Azure Application Insights Key used to write bot analytics data. Provide a key if you want to receive bot analytics',
          args: [
            Arg(
            name: 'app-insights-ke'
          )
          ]
        ),
        Option(
          name: ['--cmk-key-vault-key-url', '--cmk'],
          description: 'The key vault key url to enable Customer Managed Keys encryption',
          args: [
            Arg(
            name: 'cmk-key-vault-key-ur'
          )
          ]
        ),
        Option(
          name: '--cmk-off',
          description: 'Set encryption to Microsoft-Managed Keys',
          args: [
            Arg(
            name: 'cmk-of'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The bot\'s new description',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: ['--display-name', '-d'],
          description: 'The bot\'s new display name',
          args: [
            Arg(
            name: 'display-nam'
          )
          ]
        ),
        Option(
          name: ['--endpoint', '-e'],
          description: 'The new endpoint of the bot. Must start with "https://"',
          args: [
            Arg(
            name: 'endpoin'
          )
          ]
        ),
        Option(
          name: '--icon-url',
          description: 'Icon URL for bot avatar. Accepts PNG files with file size limit of 30KB',
          args: [
            Arg(
            name: 'icon-ur'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'The Sku of the bot',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'F0'),
              FigSuggestion(name: 'S1')
            ]
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'directline',
      description: 'Manage the Directline Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the DirectLine Channel on a bot with only v3 protocol enabled',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--disablev1',
              description: 'If true, v1 protocol will be disabled on the channel',
              args: [
                Arg(
                name: 'disablev1',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--disablev3',
              description: 'If true, v3 protocol will be disabled on the channel',
              args: [
                Arg(
                name: 'disablev3',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-enhanced-auth',
              description: 'If true, enables enhanced authentication features. Must be true for --trusted-origins parameters to work'
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--site-name', '-s'],
              description: 'Name of the Directline channel site',
              args: [
                Arg(
                name: 'site-nam'
              )
              ]
            ),
            Option(
              name: '--trusted-origins',
              description: 'Space separated Trusted Origins URLs (must use HTTPS) e.g. --trusted-origins https://mybotsite1.azurewebsites.net https://mybotsite2.azurewebsites.net',
              args: [
                Arg(
                name: 'trusted-origin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Directline Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the Directline Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the DirectLine Channel on a bot with only v3 protocol enabled',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--disablev1',
              description: 'If true, v1 protocol will be disabled on the channel',
              args: [
                Arg(
                name: 'disablev1',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--disablev3',
              description: 'If true, v3 protocol will be disabled on the channel',
              args: [
                Arg(
                name: 'disablev3',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-enhanced-auth',
              description: 'If true, enables enhanced authentication features. Must be true for --trusted-origins parameters to work'
            ),
            Option(
              name: ['--site-name', '-s'],
              description: 'Name of the Directline channel site',
              args: [
                Arg(
                name: 'site-nam'
              )
              ]
            ),
            Option(
              name: '--trusted-origins',
              description: 'Space separated Trusted Origins URLs (must use HTTPS) e.g. --trusted-origins https://mybotsite1.azurewebsites.net https://mybotsite2.azurewebsites.net',
              args: [
                Arg(
                name: 'trusted-origin'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'email',
      description: 'Manage the email Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the Email Channel on a bot',
          options: [

            Option(
              name: ['--email-address', '-a'],
              description: 'The email address for the bot',
              args: [
                Arg(
                name: 'email-addres'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The email password for the bot',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the email Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the email Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'facebook',
      description: 'Manage the Facebook Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the Facebook Channel on a bot',
          options: [

            Option(
              name: '--appid',
              description: 'The Facebook application id',
              args: [
                Arg(
                name: 'appi'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--page-id',
              description: 'Page ID of the Facebook page to be used for the bot',
              args: [
                Arg(
                name: 'page-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'The Facebook application secret',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--token',
              description: 'The Facebook application access token',
              args: [
                Arg(
                name: 'toke'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Facebook Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the Facebook Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'kik',
      description: 'Manage the Kik Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the Kik Channel on a bot',
          options: [

            Option(
              name: '--key',
              description: 'The API key for the Kik account',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--user-name', '-u'],
              description: 'Kik user name',
              args: [
                Arg(
                name: 'user-nam'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--is-validated',
              description: 'Whether or not the Kik account has been validated for use with the bot',
              args: [
                Arg(
                name: 'is-validated',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Kik Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the Kik Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'msteams',
      description: 'Manage the Microsoft Teams Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the Microsoft Teams Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--calling-web-hook',
              description: 'The calling web hook to use on Microsoft Teams',
              args: [
                Arg(
                name: 'calling-web-hoo'
              )
              ]
            ),
            Option(
              name: '--enable-calling',
              description: 'Enable calling on Microsoft Teams',
              args: [
                Arg(
                name: 'enable-calling',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Microsoft Teams Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the Microsoft Teams Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'skype',
      description: 'Manage the Skype Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the Skype Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--calling-web-hook',
              description: 'The calling web hook to use on Skype',
              args: [
                Arg(
                name: 'calling-web-hoo'
              )
              ]
            ),
            Option(
              name: '--enable-calling',
              description: 'Enable calling on Skype',
              args: [
                Arg(
                name: 'enable-calling',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-groups',
              description: 'Enable groups on Skype',
              args: [
                Arg(
                name: 'enable-groups',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-media-cards',
              description: 'Enable media cards on Skype',
              args: [
                Arg(
                name: 'enable-media-cards',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-messaging',
              description: 'Enable messaging on Skype',
              args: [
                Arg(
                name: 'enable-messaging',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-screen-sharing',
              description: 'Enable screen sharing on Skype',
              args: [
                Arg(
                name: 'enable-screen-sharing',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-video',
              description: 'Enable video on Skype',
              args: [
                Arg(
                name: 'enable-video',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--groups-mode',
              description: 'Select groups mode on Skype',
              args: [
                Arg(
                name: 'groups-mod'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Skype Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the Skype Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'slack',
      description: 'Manage the Slack Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the Slack Channel on a bot',
          options: [

            Option(
              name: '--client-id',
              description: 'The client ID from Slack',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--client-secret',
              description: 'The client secret from Slack',
              args: [
                Arg(
                name: 'client-secre'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--verification-token',
              description: 'The verification token from Slack',
              args: [
                Arg(
                name: 'verification-toke'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--landing-page-url',
              description: 'The landing page url to redirect to after login',
              args: [
                Arg(
                name: 'landing-page-ur'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Slack Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the Slack Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sms',
      description: 'Manage the SMS Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the SMS Channel on a bot',
          options: [

            Option(
              name: '--account-sid',
              description: 'The account SID for the Twilio account',
              args: [
                Arg(
                name: 'account-si'
              )
              ]
            ),
            Option(
              name: '--auth-token',
              description: 'The token token for the Twilio account',
              args: [
                Arg(
                name: 'auth-toke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--phone',
              description: 'The phone number for the Twilio account',
              args: [
                Arg(
                name: 'phon'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--is-validated',
              description: 'Whether or not the Twilio account has been validated for use with the bot',
              args: [
                Arg(
                name: 'is-validated',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the SMS Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the SMS Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'telegram',
      description: 'Manage the Telegram Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the Telegram Channel on a bot',
          options: [

            Option(
              name: '--access-token',
              description: 'The access token for the Telegram account',
              args: [
                Arg(
                name: 'access-toke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--add-disabled',
              description: 'Add the channel in a disabled state',
              args: [
                Arg(
                name: 'add-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--is-validated',
              description: 'Whether or not the Telegram account has been validated for use with the bot',
              args: [
                Arg(
                name: 'is-validated',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the Telegram Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of the Telegram Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'webchat',
      description: 'Manage the Webchat Channel on a bot',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Get details of the Webchat Channel on a bot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secrets',
              description: 'Show secrets in response for the channel',
              args: [
                Arg(
                name: 'with-secrets',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
