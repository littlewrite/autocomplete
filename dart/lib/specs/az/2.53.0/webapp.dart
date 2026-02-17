// Auto-generated from TypeScript source: webapp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `webapp` CLI
final FigSpec webappSpec = FigSpec(
  name: 'webapp',
  description: 'Manage web apps',
  subcommands: [

    Subcommand(
      name: 'auth',
      description: 'Manage webapp authentication and authorization. To use v2 auth commands, run "az extension add --name authV2" to add the authV2 CLI extension',
      subcommands: [

        Subcommand(
          name: 'set',
          description: 'Sets the authentication settings for the webapp in the v2 format, overwriting any existing settings',
          options: [

            Option(
              name: ['--body', '-b'],
              description: 'JSON representation of the configuration settings for the Azure App Service Authentication / Authorization V2 feature',
              args: [
                Arg(
                name: 'bod'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the authentification settings for the webapp',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the authentication settings for the webapp',
          options: [

            Option(
              name: '--aad-allowed-token-audiences',
              description: 'One or more token audiences (comma-delimited)',
              args: [
                Arg(
                name: 'aad-allowed-token-audience'
              )
              ]
            ),
            Option(
              name: '--aad-client-id',
              description: 'Application ID to integrate AAD organization account Sign-in into your web app',
              args: [
                Arg(
                name: 'aad-client-i'
              )
              ]
            ),
            Option(
              name: '--aad-client-secret',
              description: 'AAD application secret',
              args: [
                Arg(
                name: 'aad-client-secre'
              )
              ]
            ),
            Option(
              name: [
                '--aad-client-secret-certificate-thumbprint',
                '--thumbprint',
              ],
              description: 'Alternative to AAD Client Secret, thumbprint of a certificate used for signing purposes',
              args: [
                Arg(
                name: 'aad-client-secret-certificate-thumbprin'
              )
              ]
            ),
            Option(
              name: '--aad-token-issuer-url',
              description: 'This url can be found in the JSON output returned from your active directory endpoint using your tenantID. The endpoint can be queried from az cloud show at "endpoints.activeDirectory". The tenantID can be found using az account show. Get the "issuer" from the JSON at //.well-known/openid-configuration',
              args: [
                Arg(
                name: 'aad-token-issuer-ur'
              )
              ]
            ),
            Option(
              name: '--action',
              description: '',
              args: [
                Arg(
                name: 'action',
                suggestions: [

                  FigSuggestion(name: 'AllowAnonymous'),
                  FigSuggestion(name: 'LoginWithAzureActiveDirectory'),
                  FigSuggestion(name: 'LoginWithFacebook'),
                  FigSuggestion(name: 'LoginWithGoogle'),
                  FigSuggestion(name: 'LoginWithMicrosoftAccount'),
                  FigSuggestion(name: 'LoginWithTwitter')
                ]
              )
              ]
            ),
            Option(
              name: '--allowed-external-redirect-urls',
              description: 'One or more urls (space-delimited)',
              args: [
                Arg(
                name: 'allowed-external-redirect-url'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: '',
              args: [
                Arg(
                name: 'enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--facebook-app-id',
              description: 'Application ID to integrate Facebook Sign-in into your web app',
              args: [
                Arg(
                name: 'facebook-app-i'
              )
              ]
            ),
            Option(
              name: '--facebook-app-secret',
              description: 'Facebook Application client secret',
              args: [
                Arg(
                name: 'facebook-app-secre'
              )
              ]
            ),
            Option(
              name: '--facebook-oauth-scopes',
              description: 'One or more facebook authentication scopes (comma-delimited)',
              args: [
                Arg(
                name: 'facebook-oauth-scope'
              )
              ]
            ),
            Option(
              name: '--google-client-id',
              description: 'Application ID to integrate Google Sign-in into your web app',
              args: [
                Arg(
                name: 'google-client-i'
              )
              ]
            ),
            Option(
              name: '--google-client-secret',
              description: 'Google Application client secret',
              args: [
                Arg(
                name: 'google-client-secre'
              )
              ]
            ),
            Option(
              name: '--google-oauth-scopes',
              description: 'One or more Google authentication scopes (space-delimited)',
              args: [
                Arg(
                name: 'google-oauth-scope'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--microsoft-account-client-id',
              description: 'AAD V2 Application ID to integrate Microsoft account Sign-in into your web app',
              args: [
                Arg(
                name: 'microsoft-account-client-i'
              )
              ]
            ),
            Option(
              name: '--microsoft-account-client-secret',
              description: 'AAD V2 Application client secret',
              args: [
                Arg(
                name: 'microsoft-account-client-secre'
              )
              ]
            ),
            Option(
              name: '--microsoft-account-oauth-scopes',
              description: 'One or more Microsoft authentification scopes (comma-delimited)',
              args: [
                Arg(
                name: 'microsoft-account-oauth-scope'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: '--runtime-version',
              description: 'Runtime version of the Authentication/Authorization feature in use for the current app',
              args: [
                Arg(
                name: 'runtime-versio'
              )
              ]
            ),
            Option(
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--token-refresh-extension-hours',
              description: 'Hours, must be formattable into a float',
              args: [
                Arg(
                name: 'token-refresh-extension-hour'
              )
              ]
            ),
            Option(
              name: '--token-store',
              description: 'Use App Service Token Store',
              args: [
                Arg(
                name: 'token-store',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--twitter-consumer-key',
              description: 'Application ID to integrate Twitter Sign-in into your web app',
              args: [
                Arg(
                name: 'twitter-consumer-ke'
              )
              ]
            ),
            Option(
              name: '--twitter-consumer-secret',
              description: 'Twitter Application client secret',
              args: [
                Arg(
                name: 'twitter-consumer-secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'apple',
          description: 'Manage webapp authentication and authorization of the Apple identity provider',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the authentication settings for the Apple identity provider',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the client id and client secret for the Apple identity provider',
              options: [

                Option(
                  name: '--client-id',
                  description: 'The Client ID of the app used for login',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret',
                  description: 'The client secret',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--client-secret-setting-name', '--secret-setting'],
                  description: 'The app setting name that contains the client secret',
                  args: [
                    Arg(
                    name: 'client-secret-setting-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: '--scopes',
                  description: 'A list of the scopes that should be requested while authenticating',
                  args: [
                    Arg(
                    name: 'scope'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'config-version',
          description: 'Manage the state of the configuration version for the authentication settings for the webapp. Configuration version v1 refers to the /authSettings endpoints whereas v2 refers to the /authSettingsV2 endpoints',
          subcommands: [

            Subcommand(
              name: 'revert',
              description: 'Reverts the configuration version of the authentication settings for the webapp from v2 to v1 (classic)',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the configuration version of the authentication settings for the webapp. Configuration version v1 refers to the /authSettings endpoints whereas v2 refers to the /authSettingsV2 endpoints',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'upgrade',
              description: 'Upgrades the configuration version of the authentication settings for the webapp from v1 (classic) to v2',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'facebook',
          description: 'Manage webapp authentication and authorization of the Facebook identity provider',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the authentication settings for the Facebook identity provider',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the app id and app secret for the Facebook identity provider',
              options: [

                Option(
                  name: '--app-id',
                  description: 'The App ID of the app used for login',
                  args: [
                    Arg(
                    name: 'app-i'
                  )
                  ]
                ),
                Option(
                  name: '--app-secret',
                  description: 'The app secret',
                  args: [
                    Arg(
                    name: 'app-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--app-secret-setting-name', '--secret-setting'],
                  description: 'The app setting name that contains the app secret',
                  args: [
                    Arg(
                    name: 'app-secret-setting-nam'
                  )
                  ]
                ),
                Option(
                  name: '--graph-api-version',
                  description: 'The version of the Facebook api to be used while logging in',
                  args: [
                    Arg(
                    name: 'graph-api-versio'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: '--scopes',
                  description: 'A list of the scopes that should be requested while authenticating',
                  args: [
                    Arg(
                    name: 'scope'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'github',
          description: 'Manage webapp authentication and authorization of the GitHub identity provider',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the authentication settings for the GitHub identity provider',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the client id and client secret for the GitHub identity provider',
              options: [

                Option(
                  name: '--client-id',
                  description: 'The Client ID of the app used for login',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret',
                  description: 'The client secret',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--client-secret-setting-name', '--secret-setting'],
                  description: 'The app setting name that contains the client secret',
                  args: [
                    Arg(
                    name: 'client-secret-setting-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: '--scopes',
                  description: 'A list of the scopes that should be requested while authenticating',
                  args: [
                    Arg(
                    name: 'scope'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'google',
          description: 'Manage webapp authentication and authorization of the Google identity provider',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the authentication settings for the Google identity provider',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the client id and client secret for the Google identity provider',
              options: [

                Option(
                  name: ['--allowed-token-audiences', '--allowed-audiences'],
                  description: 'The configuration settings of the allowed list of audiences from which to validate the JWT token',
                  args: [
                    Arg(
                    name: 'allowed-token-audience'
                  )
                  ]
                ),
                Option(
                  name: '--client-id',
                  description: 'The Client ID of the app used for login',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret',
                  description: 'The client secret',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--client-secret-setting-name', '--secret-setting'],
                  description: 'The app setting name that contains the client secret',
                  args: [
                    Arg(
                    name: 'client-secret-setting-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: '--scopes',
                  description: 'A list of the scopes that should be requested while authenticating',
                  args: [
                    Arg(
                    name: 'scope'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'microsoft',
          description: 'Manage webapp authentication and authorization of the Microsoft identity provider',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the authentication settings for the Azure Active Directory identity provider',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the client id and client secret for the Azure Active Directory identity provider',
              options: [

                Option(
                  name: ['--allowed-token-audiences', '--allowed-audiences'],
                  description: 'The configuration settings of the allowed list of audiences from which to validate the JWT token',
                  args: [
                    Arg(
                    name: 'allowed-token-audience'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--client-secret-certificate-issuer',
                    '--certificate-issuer',
                  ],
                  description: 'Alternative to AAD Client Secret and thumbprint, issuer of a certificate used for signing purposes',
                  args: [
                    Arg(
                    name: 'client-secret-certificate-issue'
                  )
                  ]
                ),
                Option(
                  name: '--client-id',
                  description: 'The Client ID of this relying party application, known as the client_id',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret',
                  description: 'AAD application secret',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--client-secret-certificate-san', '--san'],
                  description: 'Alternative to AAD Client Secret and thumbprint, subject alternative name of a certificate used for signing purposes',
                  args: [
                    Arg(
                    name: 'client-secret-certificate-sa'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--client-secret-certificate-thumbprint',
                    '--thumbprint',
                  ],
                  description: 'Alternative to AAD Client Secret, thumbprint of a certificate used for signing purposes',
                  args: [
                    Arg(
                    name: 'client-secret-certificate-thumbprin'
                  )
                  ]
                ),
                Option(
                  name: ['--client-secret-setting-name', '--secret-setting'],
                  description: 'The app setting name that contains the client secret of the relying party application',
                  args: [
                    Arg(
                    name: 'client-secret-setting-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--issuer',
                  description: 'The OpenID Connect Issuer URI that represents the entity which issues access tokens for this application',
                  args: [
                    Arg(
                    name: 'issue'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tenant-id',
                  description: 'The tenant id of the application',
                  args: [
                    Arg(
                    name: 'tenant-i'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'openid-connect',
          description: 'Manage webapp authentication and authorization of the custom OpenID Connect identity providers',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Configure a new custom OpenID Connect identity provider',
              options: [

                Option(
                  name: '--provider-name',
                  description: 'The name of the custom OpenID Connect provider',
                  args: [
                    Arg(
                    name: 'provider-nam'
                  )
                  ]
                ),
                Option(
                  name: '--client-id',
                  description: 'The Client ID of the app used for login',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret',
                  description: 'The application secret of the app used for login',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--client-secret-setting-name', '--secret-setting'],
                  description: 'The app setting name that contains the client secret',
                  args: [
                    Arg(
                    name: 'client-secret-setting-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--openid-configuration',
                  description: 'The endpoint that contains all the configuration endpoints for the provider',
                  args: [
                    Arg(
                    name: 'openid-configuratio'
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
                  name: '--scopes',
                  description: 'A list of the scopes that should be requested while authenticating',
                  args: [
                    Arg(
                    name: 'scope'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Removes an existing custom OpenID Connect identity provider',
              options: [

                Option(
                  name: '--provider-name',
                  description: 'The name of the custom OpenID Connect provider',
                  args: [
                    Arg(
                    name: 'provider-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the authentication settings for the custom OpenID Connect identity provider',
              options: [

                Option(
                  name: '--provider-name',
                  description: 'The name of the custom OpenID Connect provider',
                  args: [
                    Arg(
                    name: 'provider-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the client id and client secret setting name for an existing custom OpenID Connect identity provider',
              options: [

                Option(
                  name: '--provider-name',
                  description: 'The name of the custom OpenID Connect provider',
                  args: [
                    Arg(
                    name: 'provider-nam'
                  )
                  ]
                ),
                Option(
                  name: '--client-id',
                  description: 'The Client ID of the app used for login',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret',
                  description: 'The application secret of the app used for login',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--client-secret-setting-name', '--secret-setting'],
                  description: 'The app setting name that contains the client secret',
                  args: [
                    Arg(
                    name: 'client-secret-setting-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--openid-configuration',
                  description: 'The endpoint that contains all the configuration endpoints for the provider',
                  args: [
                    Arg(
                    name: 'openid-configuratio'
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
                  name: '--scopes',
                  description: 'A list of the scopes that should be requested while authenticating',
                  args: [
                    Arg(
                    name: 'scope'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'twitter',
          description: 'Manage webapp authentication and authorization of the Twitter identity provider',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the authentication settings for the Twitter identity provider',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the consumer key and consumer secret for the Twitter identity provider',
              options: [

                Option(
                  name: '--consumer-key',
                  description: 'The OAuth 1.0a consumer key of the Twitter application used for sign-in',
                  args: [
                    Arg(
                    name: 'consumer-ke'
                  )
                  ]
                ),
                Option(
                  name: '--consumer-secret',
                  description: 'The consumer secret',
                  args: [
                    Arg(
                    name: 'consumer-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--consumer-secret-setting-name', '--secret-setting'],
                  description: 'The app setting name that contains the OAuth 1.0a consumer secret of the Twitter',
                  args: [
                    Arg(
                    name: 'consumer-secret-setting-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'auth-classic',
      description: 'Manage webapp authentication and authorization in the classic format',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Show the authentication settings for the webapp in the classic format',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the authentication settings for the webapp in the classic format',
          options: [

            Option(
              name: ['--aad-allowed-token-audiences', '--allowed-audiences'],
              description: 'One or more token audiences (space-delimited)',
              args: [
                Arg(
                name: 'aad-allowed-token-audience'
              )
              ]
            ),
            Option(
              name: '--aad-client-id',
              description: 'Application ID to integrate AAD organization account Sign-in into your web app',
              args: [
                Arg(
                name: 'aad-client-i'
              )
              ]
            ),
            Option(
              name: '--aad-client-secret',
              description: 'AAD application secret',
              args: [
                Arg(
                name: 'aad-client-secre'
              )
              ]
            ),
            Option(
              name: [
                '--aad-client-secret-certificate-thumbprint',
                '--thumbprint',
              ],
              description: 'Alternative to AAD Client Secret, thumbprint of a certificate used for signing purposes',
              args: [
                Arg(
                name: 'aad-client-secret-certificate-thumbprin'
              )
              ]
            ),
            Option(
              name: [
                '--aad-client-secret-setting-name',
                '--aad-secret-setting',
              ],
              description: 'The app setting name that contains the client secret of the relying party application',
              args: [
                Arg(
                name: 'aad-client-secret-setting-nam'
              )
              ]
            ),
            Option(
              name: '--aad-token-issuer-url',
              description: 'This url can be found in the JSON output returned from your active directory endpoint using your tenantID. The endpoint can be queried from az cloud show at "endpoints.activeDirectory". The tenantID can be found using az account show. Get the "issuer" from the JSON at //.well-known/openid-configuration',
              args: [
                Arg(
                name: 'aad-token-issuer-ur'
              )
              ]
            ),
            Option(
              name: '--action',
              description: 'The action to take when an unauthenticated client attempts to access the app',
              args: [
                Arg(
                name: 'action',
                suggestions: [

                  FigSuggestion(name: 'AllowAnonymous'),
                  FigSuggestion(name: 'LoginWithAzureActiveDirectory'),
                  FigSuggestion(name: 'LoginWithFacebook'),
                  FigSuggestion(name: 'LoginWithGoogle'),
                  FigSuggestion(name: 'LoginWithMicrosoftAccount'),
                  FigSuggestion(name: 'LoginWithTwitter')
                ]
              )
              ]
            ),
            Option(
              name: '--allowed-redirect-urls',
              description: 'One or more urls (space-delimited)',
              args: [
                Arg(
                name: 'allowed-redirect-url'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'True if the Authentication / Authorization feature is enabled for the current app; otherwise, false',
              args: [
                Arg(
                name: 'enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--facebook-app-id',
              description: 'Application ID to integrate Facebook Sign-in into your web app',
              args: [
                Arg(
                name: 'facebook-app-i'
              )
              ]
            ),
            Option(
              name: '--facebook-app-secret',
              description: 'Facebook Application client secret',
              args: [
                Arg(
                name: 'facebook-app-secre'
              )
              ]
            ),
            Option(
              name: [
                '--facebook-app-secret-setting-name',
                '--fb-secret-setting',
              ],
              description: 'The app setting name that contains the app secret used for Facebook Login',
              args: [
                Arg(
                name: 'facebook-app-secret-setting-nam'
              )
              ]
            ),
            Option(
              name: '--facebook-oauth-scopes',
              description: 'One or more facebook authentication scopes (space-delimited)',
              args: [
                Arg(
                name: 'facebook-oauth-scope'
              )
              ]
            ),
            Option(
              name: '--github-client-id',
              description: 'The Client Id of the GitHub app used for login',
              args: [
                Arg(
                name: 'github-client-i'
              )
              ]
            ),
            Option(
              name: '--github-client-secret',
              description: 'The Client Secret of the GitHub app used for login',
              args: [
                Arg(
                name: 'github-client-secre'
              )
              ]
            ),
            Option(
              name: [
                '--github-client-secret-setting-name',
                '--github-secret-setting',
              ],
              description: 'The app setting name that contains the client secret of the Github app used for GitHub Login',
              args: [
                Arg(
                name: 'github-client-secret-setting-nam'
              )
              ]
            ),
            Option(
              name: ['--github-oauth-scopes', '--github-scopes'],
              description: 'The OAuth 2.0 scopes that will be requested as part of GitHub Login authentication',
              args: [
                Arg(
                name: 'github-oauth-scope'
              )
              ]
            ),
            Option(
              name: '--google-client-id',
              description: 'Application ID to integrate Google Sign-in into your web app',
              args: [
                Arg(
                name: 'google-client-i'
              )
              ]
            ),
            Option(
              name: '--google-client-secret',
              description: 'Google Application client secret',
              args: [
                Arg(
                name: 'google-client-secre'
              )
              ]
            ),
            Option(
              name: [
                '--google-client-secret-setting-name',
                '--google-secret-setting',
              ],
              description: 'The app setting name that contains the client secret associated with the Google web application',
              args: [
                Arg(
                name: 'google-client-secret-setting-nam'
              )
              ]
            ),
            Option(
              name: '--google-oauth-scopes',
              description: 'One or more Google authentication scopes (space-delimited)',
              args: [
                Arg(
                name: 'google-oauth-scope'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--microsoft-account-client-id', '--msa-client'],
              description: 'AAD V2 Application ID to integrate Microsoft account Sign-in into your web app',
              args: [
                Arg(
                name: 'microsoft-account-client-i'
              )
              ]
            ),
            Option(
              name: ['--microsoft-account-client-secret', '--msa-secret'],
              description: 'AAD V2 Application client secret',
              args: [
                Arg(
                name: 'microsoft-account-client-secre'
              )
              ]
            ),
            Option(
              name: [
                '--microsoft-account-client-secret-setting-name',
                '--msa-secret-setting',
              ],
              description: 'The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication',
              args: [
                Arg(
                name: 'microsoft-account-client-secret-setting-nam'
              )
              ]
            ),
            Option(
              name: ['--microsoft-account-oauth-scopes', '--msa-scopes'],
              description: 'One or more Microsoft authentification scopes (space-delimited)',
              args: [
                Arg(
                name: 'microsoft-account-oauth-scope'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app',
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
              name: '--runtime-version',
              description: 'Runtime version of the Authentication/Authorization feature in use for the current app',
              args: [
                Arg(
                name: 'runtime-versio'
              )
              ]
            ),
            Option(
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: [
                '--token-refresh-extension-hours',
                '--token-refresh-hours',
              ],
              description: 'Hours, must be formattable into a float',
              args: [
                Arg(
                name: 'token-refresh-extension-hour'
              )
              ]
            ),
            Option(
              name: '--token-store',
              description: 'Use App Service Token Store',
              args: [
                Arg(
                name: 'token-store',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--twitter-consumer-key',
              description: 'Application ID to integrate Twitter Sign-in into your web app',
              args: [
                Arg(
                name: 'twitter-consumer-ke'
              )
              ]
            ),
            Option(
              name: ['--twitter-consumer-secret', '--twitter-secret'],
              description: 'Twitter Application client secret',
              args: [
                Arg(
                name: 'twitter-consumer-secre'
              )
              ]
            ),
            Option(
              name: [
                '--twitter-consumer-secret-setting-name',
                '--twitter-secret-setting',
              ],
              description: 'The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in',
              args: [
                Arg(
                name: 'twitter-consumer-secret-setting-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'browse',
      description: 'Open a web app in a browser. This is not supported in Azure Cloud Shell',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--logs', '-l'],
          description: 'Enable viewing the log stream immediately after launching the web app'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a web app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the new web app. Web app name can contain only allow alphanumeric characters and hyphens, it cannot start or end in a hyphen, and must be less than 64 characters',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--plan', '-p'],
          description: 'Name or resource id of the app service plan. Use \'appservice plan create\' to get one',
          args: [
            Arg(
            name: 'pla'
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
          name: '--assign-identity',
          description: 'Accept system or user assigned identities separated by spaces. Use \'[system]\' to refer system assigned identity, or a resource id to refer user assigned identity. Check out help for more examples',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: ['--deployment-container-image-name', '-i'],
          description: 'Container image name from Docker Hub, e.g. publisher/image-name:tag',
          args: [
            Arg(
            name: 'deployment-container-image-nam'
          )
          ]
        ),
        Option(
          name: ['--deployment-local-git', '-l'],
          description: 'Enable local git',
          args: [
            Arg(
            name: 'deployment-local-gi'
          )
          ]
        ),
        Option(
          name: ['--deployment-source-branch', '-b'],
          description: 'The branch to deploy',
          args: [
            Arg(
            name: 'deployment-source-branc'
          )
          ]
        ),
        Option(
          name: ['--deployment-source-url', '-u'],
          description: 'Git repository URL to link with manual integration',
          args: [
            Arg(
            name: 'deployment-source-ur'
          )
          ]
        ),
        Option(
          name: ['--docker-registry-server-password', '-w'],
          description: 'The container registry server password. Required for private registries',
          args: [
            Arg(
            name: 'docker-registry-server-passwor'
          )
          ]
        ),
        Option(
          name: ['--docker-registry-server-user', '-s'],
          description: 'The container registry server username',
          args: [
            Arg(
            name: 'docker-registry-server-use'
          )
          ]
        ),
        Option(
          name: '--https-only',
          description: 'Redirect all traffic made to an app using HTTP to HTTPS'
        ),
        Option(
          name: '--multicontainer-config-file',
          description: 'Linux only. Config file for multicontainer apps. (local or remote)',
          args: [
            Arg(
            name: 'multicontainer-config-fil'
          )
          ]
        ),
        Option(
          name: '--multicontainer-config-type',
          description: 'Linux only',
          args: [
            Arg(
            name: 'multicontainer-config-type',
            suggestions: [

              FigSuggestion(name: 'COMPOSE'),
              FigSuggestion(name: 'KUBE')
            ]
          )
          ]
        ),
        Option(
          name: '--public-network-access',
          description: 'Enable or disable public access to the web app',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: '--role',
          description: 'Role name or id the system assigned identity will have',
          args: [
            Arg(
            name: 'rol'
          )
          ]
        ),
        Option(
          name: ['--runtime', '-r'],
          description: 'Canonicalized web runtime in the format of Framework:Version, e.g. "PHP:7.2".Use az webapp list-runtimes for available list',
          args: [
            Arg(
            name: 'runtim'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Scope that the system assigned identity can access',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        ),
        Option(
          name: '--startup-file',
          description: 'Linux only. The web\'s startup file',
          args: [
            Arg(
            name: 'startup-fil'
          )
          ]
        ),
        Option(
          name: '--subnet',
          description: 'Name or resource ID of the pre-existing subnet to have the webapp join. The --vnet is argument also needed if specifying subnet by name',
          args: [
            Arg(
            name: 'subne'
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
          name: '--vnet',
          description: 'Name or resource ID of the regional virtual network. If there are multiple vnets of the same name across different resource groups, use vnet resource id to specify which vnet to use. If vnet name is used, by default, the vnet in the same resource group as the webapp will be used. Must be used with --subnet argument',
          args: [
            Arg(
            name: 'vne'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-remote-connection',
      description: 'Creates a remote connection using a tcp tunnel to your web app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--instance', '-i'],
          description: 'Webapp instance to connect to. Defaults to none',
          args: [
            Arg(
            name: 'instanc'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--port', '-p'],
          description: 'Port for the remote connection. Default: Random available port',
          args: [
            Arg(
            name: 'por'
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout in seconds. Defaults to none',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a web app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--keep-dns-registration',
          description: 'Argument \'keep_dns_registration\' has been deprecated and will be removed in version \'3.0.0\'. Keep DNS registration',
          args: [
            Arg(
            name: 'keep-dns-registratio'
          )
          ]
        ),
        Option(
          name: '--keep-empty-plan',
          description: 'Keep empty app service plan',
          args: [
            Arg(
            name: 'keep-empty-pla'
          )
          ]
        ),
        Option(
          name: '--keep-metrics',
          description: 'Keep app metrics',
          args: [
            Arg(
            name: 'keep-metric'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the webapp',
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploys a provided artifact to Azure Web Apps',
      options: [

        Option(
          name: '--async',
          description: 'If true, the artifact is deployed asynchronously. (The command will exit once the artifact is pushed to the web app.). Synchronous deployments are not yet supported when using "--src-url"',
          args: [
            Arg(
            name: 'async',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--clean',
          description: 'If true, cleans the target directory prior to deploying the file(s). Default value is determined based on artifact type',
          args: [
            Arg(
            name: 'clean',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--ignore-stack',
          description: 'If true, any stack-specific defaults are ignored',
          args: [
            Arg(
            name: 'ignore-stack',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the webapp to deploy to',
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
          name: '--restart',
          description: 'If true, the web app will be restarted following the deployment. Set this to false if you are deploying multiple artifacts and do not want to restart the site on the earlier deployments',
          args: [
            Arg(
            name: 'restart',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--src-path',
          description: 'Path of the artifact to be deployed. Ex: "myapp.zip" or "/myworkspace/apps/myapp.war"',
          args: [
            Arg(
            name: 'src-pat'
          )
          ]
        ),
        Option(
          name: '--src-url',
          description: 'URL of the artifact. The webapp will pull the artifact from this URL. Ex: "http://mysite.com/files/myapp.war?key=123"',
          args: [
            Arg(
            name: 'src-ur'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: '--target-path',
          description: 'Absolute path that the artifact should be deployed to. Defaults to "home/site/wwwroot/" Ex: "/home/site/deployments/tools/", "/home/site/scripts/startup-script.sh"',
          args: [
            Arg(
            name: 'target-pat'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Timeout for the deployment operation in milliseconds. Ignored when using "--src-url" since synchronous deployments are not yet supported when using "--src-url"',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Used to override the type of artifact being deployed',
          args: [
            Arg(
            name: 'type',
            suggestions: [

              FigSuggestion(name: 'ear'),
              FigSuggestion(name: 'jar'),
              FigSuggestion(name: 'lib'),
              FigSuggestion(name: 'startup'),
              FigSuggestion(name: 'static'),
              FigSuggestion(name: 'war'),
              FigSuggestion(name: 'zip')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List web apps',
      options: [

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
      name: 'list-instances',
      description: 'List all scaled out instances of a web app or web app slot',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
          name: ['--slot', '-s'],
          description: 'Name of the web app slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-runtimes',
      description: 'List available built-in stacks which can be used for web apps',
      options: [

        Option(
          name: '--linux',
          description: 'Argument \'linux\' has been deprecated and will be removed in a future release. Use \'--os-type\' instead. List runtime stacks for linux based web apps'
        ),
        Option(
          name: ['--os-type', '--os'],
          description: 'Limit the output to just windows or linux runtimes',
          args: [
            Arg(
            name: 'os-type',
            suggestions: [

              FigSuggestion(name: 'linux'),
              FigSuggestion(name: 'windows')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart a web app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'scale',
      description: 'Modify the number of instances of a webapp on Arc enabled Kubernetes workloads',
      options: [

        Option(
          name: '--instance-count',
          description: 'Number of instances',
          args: [
            Arg(
            name: 'instance-coun'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. You can configure the default using az configure --defaults web=<name>',
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of a web app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ssh',
      description: 'SSH command establishes a ssh session to the web container and developer would get a shell terminal remotely',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--instance', '-i'],
          description: 'Webapp instance to connect to. Defaults to none',
          args: [
            Arg(
            name: 'instanc'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--port', '-p'],
          description: 'Port for the remote connection. Default: Random available port',
          args: [
            Arg(
            name: 'por'
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout in seconds. Defaults to none',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Start a web app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop a web app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'up',
      description: 'Create a webapp and deploy code from a local workspace to the app. The command is required to run from the folder where the code is present. Current support includes Node, Python, .NET Core and ASP.NET. Node, Python apps are created as Linux apps. .Net Core, ASP.NET, and static HTML apps are created as Windows apps. Append the html flag to deploy as a static HTML app. Each time the command is successfully run, default argument values for resource group, sku, location, plan, and name are saved for the current directory. These defaults are then used for any arguments not provided on subsequent runs of the command in the same directory.  Use \'az configure\' to manage defaults',
      options: [

        Option(
          name: ['--app-service-environment', '-e'],
          description: 'Name or resource ID of the (pre-existing) App Service Environment to deploy to. Requires an Isolated V2 sku [I1v2, I2v2, I3v2]',
          args: [
            Arg(
            name: 'app-service-environmen'
          )
          ]
        ),
        Option(
          name: '--dryrun',
          description: 'Show summary of the create and deploy operation instead of executing it'
        ),
        Option(
          name: '--html',
          description: 'Ignore app detection and deploy as an html app'
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--launch-browser', '-b'],
          description: 'Launch the created app using the default browser. This is not supported in Azure Cloud Shell'
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
          name: '--logs',
          description: 'Configure default logging required to enable viewing log stream immediately after launching the webapp'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--os-type',
          description: 'Set the OS type for the app to be created',
          args: [
            Arg(
            name: 'os-type',
            suggestions: [

              FigSuggestion(name: 'Linux'),
              FigSuggestion(name: 'Windows')
            ]
          )
          ]
        ),
        Option(
          name: ['--plan', '-p'],
          description: 'Name of the app service plan associated with the webapp',
          args: [
            Arg(
            name: 'pla'
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
          name: ['--runtime', '-r'],
          description: 'Canonicalized web runtime in the format of Framework:Version, e.g. "PHP:7.2".Use az webapp list-runtimes for available list',
          args: [
            Arg(
            name: 'runtim'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), P2V2(Premium V2 Medium), P3V2(Premium V2 Large), P0V3(Premium V3 Extra Small), P1V3(Premium V3 Small), P2V3(Premium V3 Medium), P3V3(Premium V3 Large), P1MV3(Premium Memory Optimized V3 Small), P2MV3(Premium Memory Optimized V3 Medium), P3MV3(Premium Memory Optimized V3 Large), P4MV3(Premium Memory Optimized V3 Extra Large), P5MV3(Premium Memory Optimized V3 Extra Extra Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large), I1v2 (Isolated V2 Small), I2v2 (Isolated V2 Medium), I3v2 (Isolated V2 Large), I4v2 (Isolated V2 I4v2), I5v2 (Isolated V2 I5v2), I6v2 (Isolated V2 I6v2), WS1 (Logic Apps Workflow Standard 1), WS2 (Logic Apps Workflow Standard 2), WS3 (Logic Apps Workflow Standard 3)',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'B1'),
              FigSuggestion(name: 'B2'),
              FigSuggestion(name: 'B3'),
              FigSuggestion(name: 'D1'),
              FigSuggestion(name: 'F1'),
              FigSuggestion(name: 'FREE'),
              FigSuggestion(name: 'I1'),
              FigSuggestion(name: 'I1v2'),
              FigSuggestion(name: 'I2'),
              FigSuggestion(name: 'I2v2'),
              FigSuggestion(name: 'I3'),
              FigSuggestion(name: 'I3v2'),
              FigSuggestion(name: 'I4v2'),
              FigSuggestion(name: 'I5v2'),
              FigSuggestion(name: 'I6v2'),
              FigSuggestion(name: 'P0V3'),
              FigSuggestion(name: 'P1MV3'),
              FigSuggestion(name: 'P1V2'),
              FigSuggestion(name: 'P1V3'),
              FigSuggestion(name: 'P2MV3'),
              FigSuggestion(name: 'P2V2'),
              FigSuggestion(name: 'P2V3'),
              FigSuggestion(name: 'P3MV3'),
              FigSuggestion(name: 'P3V2'),
              FigSuggestion(name: 'P3V3'),
              FigSuggestion(name: 'P4MV3'),
              FigSuggestion(name: 'P5MV3'),
              FigSuggestion(name: 'S1'),
              FigSuggestion(name: 'S2'),
              FigSuggestion(name: 'S3'),
              FigSuggestion(name: 'SHARED'),
              FigSuggestion(name: 'WS1'),
              FigSuggestion(name: 'WS2'),
              FigSuggestion(name: 'WS3')
            ]
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update an existing web app',
      options: [

        Option(
          name: '--add',
          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
          args: [
            Arg(
            name: 'ad'
          )
          ]
        ),
        Option(
          name: '--client-affinity-enabled',
          description: 'Enables sending session affinity cookies',
          args: [
            Arg(
            name: 'client-affinity-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--force-dns-registration',
          description: 'Argument \'force_dns_registration\' has been deprecated and will be removed in version \'3.0.0\'. If true, web app hostname is force registered with DNS',
          args: [
            Arg(
            name: 'force-dns-registration',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--https-only',
          description: 'Redirect all traffic made to an app using HTTP to HTTPS',
          args: [
            Arg(
            name: 'https-only',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--minimum-elastic-instance-count', '-i'],
          description: 'Minimum number of instances. App must be in an elastic scale App Service Plan',
          args: [
            Arg(
            name: 'minimum-elastic-instance-coun'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--prewarmed-instance-count', '-w'],
          description: 'Number of preWarmed instances. App must be in an elastic scale App Service Plan',
          args: [
            Arg(
            name: 'prewarmed-instance-coun'
          )
          ]
        ),
        Option(
          name: '--remove',
          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
          args: [
            Arg(
            name: 'remov'
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
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: '--skip-custom-domain-verification',
          description: 'Argument \'skip_custom_domain_verification\' has been deprecated and will be removed in version \'3.0.0\'. If true, custom (non *.azurewebsites.net) domains associated with web app are not verified',
          args: [
            Arg(
            name: 'skip-custom-domain-verification',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--skip-dns-registration',
          description: 'Argument \'skip_dns_registration\' has been deprecated and will be removed in version \'3.0.0\'. If true web app hostname is not registered with DNS on creation',
          args: [
            Arg(
            name: 'skip-dns-registration',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: '--ttl-in-seconds',
          description: 'Argument \'ttl_in_seconds\' has been deprecated and will be removed in version \'3.0.0\'. Time to live in seconds for web app\'s default domain name',
          args: [
            Arg(
            name: 'ttl-in-seconds',
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
      name: 'config',
      description: 'Configure a web app',
      subcommands: [

        Subcommand(
          name: 'set',
          description: 'Set a web app\'s configuration',
          options: [

            Option(
              name: '--always-on',
              description: 'Ensure web app gets loaded all the time, rather unloaded after been idle. Recommended when you have continuous web jobs running',
              args: [
                Arg(
                name: 'always-on',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--auto-heal-enabled',
              description: 'Enable or disable auto heal',
              args: [
                Arg(
                name: 'auto-heal-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--ftps-state',
              description: 'Set the Ftps state value for an app. Default value is \'AllAllowed\'',
              args: [
                Arg(
                name: 'ftps-state',
                suggestions: [

                  FigSuggestion(name: 'AllAllowed'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'FtpsOnly')
                ]
              )
              ]
            ),
            Option(
              name: '--generic-configurations',
              description: 'Provide site configuration list in a format of either key=value pair or @<json_file>. PowerShell and Windows Command Prompt users should use a JSON file to provide these configurations to avoid compatibility issues with escape characters',
              args: [
                Arg(
                name: 'generic-configuration'
              )
              ]
            ),
            Option(
              name: '--http20-enabled',
              description: 'Configures a web site to allow clients to connect over http2.0',
              args: [
                Arg(
                name: 'http20-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--java-container',
              description: 'The java container, e.g., Tomcat, Jetty',
              args: [
                Arg(
                name: 'java-containe'
              )
              ]
            ),
            Option(
              name: '--java-container-version',
              description: 'The version of the java container, e.g., \'8.0.23\' for Tomcat',
              args: [
                Arg(
                name: 'java-container-versio'
              )
              ]
            ),
            Option(
              name: '--java-version',
              description: 'The version used to run your web app if using Java, e.g., \'1.7\' for Java 7, \'1.8\' for Java 8',
              args: [
                Arg(
                name: 'java-versio'
              )
              ]
            ),
            Option(
              name: '--linux-fx-version',
              description: 'The runtime stack used for your linux-based webapp, e.g., "RUBY|2.5.5", "NODE|12LTS", "PHP|7.2", "DOTNETCORE|2.1". See https://aka.ms/linux-stacks for more info',
              args: [
                Arg(
                name: 'linux-fx-versio'
              )
              ]
            ),
            Option(
              name: '--min-tls-version',
              description: 'The minimum version of TLS required for SSL requests, e.g., \'1.0\', \'1.1\', \'1.2\'',
              args: [
                Arg(
                name: 'min-tls-versio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--net-framework-version',
              description: 'The version used to run your web app if using .NET Framework, e.g., \'v4.0\' for .NET 4.6 and \'v3.0\' for .NET 3.5',
              args: [
                Arg(
                name: 'net-framework-versio'
              )
              ]
            ),
            Option(
              name: '--number-of-workers',
              description: 'The number of workers to be allocated',
              args: [
                Arg(
                name: 'number-of-worker'
              )
              ]
            ),
            Option(
              name: '--php-version',
              description: 'The version used to run your web app if using PHP, e.g., 5.5, 5.6, 7.0',
              args: [
                Arg(
                name: 'php-versio'
              )
              ]
            ),
            Option(
              name: '--powershell-version',
              description: 'The version used to run your function app if using PowerShell, e.g., 7.2',
              args: [
                Arg(
                name: 'powershell-versio'
              )
              ]
            ),
            Option(
              name: '--prewarmed-instance-count',
              description: 'Number of pre-warmed instances a function app has',
              args: [
                Arg(
                name: 'prewarmed-instance-coun'
              )
              ]
            ),
            Option(
              name: '--python-version',
              description: 'The version used to run your web app if using Python, e.g., 2.7, 3.4',
              args: [
                Arg(
                name: 'python-versio'
              )
              ]
            ),
            Option(
              name: '--remote-debugging-enabled',
              description: 'Enable or disable remote debugging',
              args: [
                Arg(
                name: 'remote-debugging-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--startup-file',
              description: 'The startup file for linux hosted web apps, e.g. \'process.json\' for Node.js web',
              args: [
                Arg(
                name: 'startup-fil'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--use-32bit-worker-process',
              description: 'Use 32 bits worker process or not',
              args: [
                Arg(
                name: 'use-32bit-worker-process',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--vnet-route-all-enabled',
              description: 'Configure regional VNet integration to route all traffic to the VNet',
              args: [
                Arg(
                name: 'vnet-route-all-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--web-sockets-enabled',
              description: 'Enable or disable web sockets',
              args: [
                Arg(
                name: 'web-sockets-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--windows-fx-version',
              description: 'A docker image name used for your windows container web app, e.g., microsoft/nanoserver:ltsc2016',
              args: [
                Arg(
                name: 'windows-fx-versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a web app\'s configuration',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'access-restriction',
          description: 'Methods that show, set, add, and remove access restrictions on a webapp',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Adds an Access Restriction to the webapp',
              options: [

                Option(
                  name: ['--priority', '-p'],
                  description: 'Priority of the access restriction rule',
                  args: [
                    Arg(
                    name: 'priorit'
                  )
                  ]
                ),
                Option(
                  name: '--action',
                  description: 'Allow or deny access',
                  args: [
                    Arg(
                    name: 'action',
                    suggestions: [

                      FigSuggestion(name: 'Allow'),
                      FigSuggestion(name: 'Deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the access restriction rule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--http-headers',
                  description: 'Space-separated http headers in a format of <name>=<value>',
                  args: [
                    Arg(
                    name: 'http-header'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--ignore-missing-endpoint', '-i'],
                  description: 'Create access restriction rule with checking if the subnet has Microsoft.Web service endpoint enabled'
                ),
                Option(
                  name: '--ip-address',
                  description: 'IP address or CIDR range (optional comma separated list of up to 8 ranges)',
                  args: [
                    Arg(
                    name: 'ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--rule-name', '-r'],
                  description: 'Name of the access restriction rule to add',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--scm-site',
                  description: 'True if access restrictions is added for scm site'
                ),
                Option(
                  name: '--service-tag',
                  description: 'Service Tag (optional comma separated list of up to 8 tags)',
                  args: [
                    Arg(
                    name: 'service-ta'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Subnet name (requires vNet name) or subnet resource id',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'VNet name',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-resource-group',
                  description: 'Resource group of virtual network (default is web app resource group)',
                  args: [
                    Arg(
                    name: 'vnet-resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Removes an Access Restriction from the webapp',
              options: [

                Option(
                  name: '--action',
                  description: 'Allow or deny access',
                  args: [
                    Arg(
                    name: 'action',
                    suggestions: [

                      FigSuggestion(name: 'Allow'),
                      FigSuggestion(name: 'Deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--ip-address',
                  description: 'IP address or CIDR range (optional comma separated list of up to 8 ranges)',
                  args: [
                    Arg(
                    name: 'ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--rule-name', '-r'],
                  description: 'Name of the access restriction to remove',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--scm-site',
                  description: 'True if access restriction should be removed from scm site'
                ),
                Option(
                  name: '--service-tag',
                  description: 'Service Tag (optional comma separated list of up to 8 tags)',
                  args: [
                    Arg(
                    name: 'service-ta'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Subnet name (requires vNet name) or subnet resource id',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'VNet name',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Sets if SCM site is using the same restrictions as the main site',
              options: [

                Option(
                  name: '--use-same-restrictions-for-scm-site',
                  description: 'Use same access restrictions for scm site',
                  args: [
                    Arg(
                    name: 'use-same-restrictions-for-scm-site',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show Access Restriction settings for webapp',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'appsettings',
          description: 'Configure web app settings. Updating or removing application settings will cause an app recycle',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete web app settings',
              options: [

                Option(
                  name: '--setting-names',
                  description: 'Space-separated appsettings names',
                  args: [
                    Arg(
                    name: 'setting-name'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Get the details of a web app\'s settings',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Set a web app\'s settings',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: '--settings',
                  description: 'Space-separated appsettings in KEY=VALUE format. Use @{file} to load from a file. See https://go.microsoft.com/fwlink/?linkid=2219923 for more information on file format and editing app settings in bulk',
                  args: [
                    Arg(
                    name: 'setting'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--slot-settings',
                  description: 'Space-separated appsettings in KEY=VALUE format. Use @{file} to load from a file. Given setting are added to the configuration and marked as Deployment slot setting by default',
                  args: [
                    Arg(
                    name: 'slot-setting'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'backup',
          description: 'Manage backups for web apps',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a backup of a web app',
              options: [

                Option(
                  name: '--container-url',
                  description: 'URL with SAS token to the blob storage container',
                  args: [
                    Arg(
                    name: 'container-ur'
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
                  name: '--webapp-name',
                  description: 'The name of the web app',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                ),
                Option(
                  name: '--backup-name',
                  description: 'Name of the backup. If unspecified, the backup will be named with the web app name and a timestamp',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: '--db-connection-string',
                  description: 'Connection string for the database in the backup',
                  args: [
                    Arg(
                    name: 'db-connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--db-name',
                  description: 'Name of the database in the backup',
                  args: [
                    Arg(
                    name: 'db-nam'
                  )
                  ]
                ),
                Option(
                  name: '--db-type',
                  description: 'Type of database in the backup',
                  args: [
                    Arg(
                    name: 'db-type',
                    suggestions: [

                      FigSuggestion(name: 'LocalMySql'),
                      FigSuggestion(name: 'MySql'),
                      FigSuggestion(name: 'PostgreSql'),
                      FigSuggestion(name: 'SqlAzure')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a web app backup',
              options: [

                Option(
                  name: '--backup-id',
                  description: 'Id of the backup',
                  args: [
                    Arg(
                    name: 'backup-i'
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
                  name: '--webapp-name',
                  description: 'The name of the web app',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List backups of a web app',
              options: [

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
                  name: '--webapp-name',
                  description: 'The name of the web app',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore',
              description: 'Restore a web app from a backup',
              options: [

                Option(
                  name: '--backup-name',
                  description: 'Name of the backup to restore',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: '--container-url',
                  description: 'URL with SAS token to the blob storage container',
                  args: [
                    Arg(
                    name: 'container-ur'
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
                  name: '--webapp-name',
                  description: 'The name of the web app',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                ),
                Option(
                  name: '--db-connection-string',
                  description: 'Connection string for the database in the backup',
                  args: [
                    Arg(
                    name: 'db-connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--db-name',
                  description: 'Name of the database in the backup',
                  args: [
                    Arg(
                    name: 'db-nam'
                  )
                  ]
                ),
                Option(
                  name: '--db-type',
                  description: 'Type of database in the backup',
                  args: [
                    Arg(
                    name: 'db-type',
                    suggestions: [

                      FigSuggestion(name: 'LocalMySql'),
                      FigSuggestion(name: 'MySql'),
                      FigSuggestion(name: 'PostgreSql'),
                      FigSuggestion(name: 'SqlAzure')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ignore-hostname-conflict',
                  description: 'Ignores custom hostnames stored in the backup',
                  args: [
                    Arg(
                    name: 'ignore-hostname-conflic'
                  )
                  ]
                ),
                Option(
                  name: '--overwrite',
                  description: 'Overwrite the source web app, if --target-name is not specified',
                  args: [
                    Arg(
                    name: 'overwrit'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--target-name',
                  description: 'The name to use for the restored web app. If unspecified, will default to the name that was used when the backup was created',
                  args: [
                    Arg(
                    name: 'target-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the backup schedule for a web app',
              options: [

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
                  name: '--webapp-name',
                  description: 'The name of the web app',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Configure a new backup schedule for a web app',
              options: [

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
                  name: '--webapp-name',
                  description: 'The name of the web app',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                ),
                Option(
                  name: '--backup-name',
                  description: 'Name of the backup. If unspecified, the backup will be named with the web app name and a timestamp',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: '--container-url',
                  description: 'URL with SAS token to the blob storage container',
                  args: [
                    Arg(
                    name: 'container-ur'
                  )
                  ]
                ),
                Option(
                  name: '--db-connection-string',
                  description: 'Connection string for the database in the backup',
                  args: [
                    Arg(
                    name: 'db-connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--db-name',
                  description: 'Name of the database in the backup',
                  args: [
                    Arg(
                    name: 'db-nam'
                  )
                  ]
                ),
                Option(
                  name: '--db-type',
                  description: 'Type of database in the backup',
                  args: [
                    Arg(
                    name: 'db-type',
                    suggestions: [

                      FigSuggestion(name: 'LocalMySql'),
                      FigSuggestion(name: 'MySql'),
                      FigSuggestion(name: 'PostgreSql'),
                      FigSuggestion(name: 'SqlAzure')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--frequency',
                  description: 'How often to backup. Use a number followed by d or h, e.g. 5d = 5 days, 2h = 2 hours',
                  args: [
                    Arg(
                    name: 'frequenc'
                  )
                  ]
                ),
                Option(
                  name: '--retain-one',
                  description: 'Always keep one backup, regardless of how old it is',
                  args: [
                    Arg(
                    name: 'retain-one',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--retention',
                  description: 'How many days to keep a backup before automatically deleting it. Set to 0 for indefinite retention',
                  args: [
                    Arg(
                    name: 'retentio'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'connection-string',
          description: 'Manage a web app\'s connection strings',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a web app\'s connection strings',
              options: [

                Option(
                  name: '--setting-names',
                  description: 'Space-separated connection-string names',
                  args: [
                    Arg(
                    name: 'setting-name'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. You can configure the default using az configure --defaults web=<name>. If --ids is provided this should NOT be specified',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Get a web app\'s connection strings',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Update a web app\'s connection strings',
              options: [

                Option(
                  name: ['--connection-string-type', '-t'],
                  description: 'Connection string type',
                  args: [
                    Arg(
                    name: 'connection-string-type',
                    suggestions: [

                      FigSuggestion(name: 'ApiHub'),
                      FigSuggestion(name: 'Custom'),
                      FigSuggestion(name: 'DocDb'),
                      FigSuggestion(name: 'EventHub'),
                      FigSuggestion(name: 'MySql'),
                      FigSuggestion(name: 'NotificationHub'),
                      FigSuggestion(name: 'PostgreSQL'),
                      FigSuggestion(name: 'RedisCache'),
                      FigSuggestion(name: 'SQLAzure'),
                      FigSuggestion(name: 'SQLServer'),
                      FigSuggestion(name: 'ServiceBus')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. You can configure the default using az configure --defaults web=<name>. If --ids is provided this should NOT be specified',
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
                  name: '--settings',
                  description: 'Space-separated connection-string in a format of <name>=<value>',
                  args: [
                    Arg(
                    name: 'setting'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--slot-settings',
                  description: 'Space-separated slot connection-string in a format of either <name>=<value> or @<json_file>',
                  args: [
                    Arg(
                    name: 'slot-setting'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'container',
          description: 'Manage an existing web app\'s container settings',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete an existing web app\'s container settings',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Set an existing web app\'s container settings',
              options: [

                Option(
                  name: ['--docker-custom-image-name', '-c', '-i'],
                  description: 'The container custom image name and optionally the tag name (e.g., /:)',
                  args: [
                    Arg(
                    name: 'docker-custom-image-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--docker-registry-server-password', '-p'],
                  description: 'The container registry server password',
                  args: [
                    Arg(
                    name: 'docker-registry-server-passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--docker-registry-server-url', '-r'],
                  description: 'The container registry server url',
                  args: [
                    Arg(
                    name: 'docker-registry-server-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--docker-registry-server-user', '-u'],
                  description: 'The container registry server username',
                  args: [
                    Arg(
                    name: 'docker-registry-server-use'
                  )
                  ]
                ),
                Option(
                  name: ['--enable-app-service-storage', '-t'],
                  description: 'Enables platform storage (custom container only)',
                  args: [
                    Arg(
                    name: 'enable-app-service-storage',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--multicontainer-config-file',
                  description: 'Config file for multicontainer apps',
                  args: [
                    Arg(
                    name: 'multicontainer-config-fil'
                  )
                  ]
                ),
                Option(
                  name: '--multicontainer-config-type',
                  description: 'Config type',
                  args: [
                    Arg(
                    name: 'multicontainer-config-type',
                    suggestions: [

                      FigSuggestion(name: 'COMPOSE'),
                      FigSuggestion(name: 'KUBE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get details of a web app\'s container settings',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: '--show-multicontainer-config',
                  description: 'Shows decoded config if a multicontainer config is set',
                  args: [
                    Arg(
                    name: 'show-multicontainer-confi'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'hostname',
          description: 'Configure hostnames for a web app',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Bind a hostname to a web app',
              options: [

                Option(
                  name: '--hostname',
                  description: 'Hostname assigned to the site, such as custom domains',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--webapp-name',
                  description: 'Webapp name. You can configure the default using az configure --defaults web=<name>',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Unbind a hostname from a web app',
              options: [

                Option(
                  name: '--hostname',
                  description: 'Hostname assigned to the site, such as custom domains',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--webapp-name',
                  description: 'Webapp name. You can configure the default using az configure --defaults web=<name>',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get-external-ip',
              description: 'Get the external-facing IP address for a web app',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--webapp-name',
                  description: 'Webapp name. You can configure the default using az configure --defaults web=<name>',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all hostname bindings for a web app',
              options: [

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
                  name: '--webapp-name',
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
                  args: [
                    Arg(
                    name: 'webapp-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'snapshot',
          description: 'Manage web app snapshots',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the restorable snapshots for a web app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore',
              description: 'Restore a web app snapshot',
              options: [

                Option(
                  name: '--time',
                  description: 'Timestamp of the snapshot to restore',
                  args: [
                    Arg(
                    name: 'tim'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: '--restore-content-only',
                  description: 'Restore the web app files without restoring the settings'
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-name',
                  description: 'Name of the web app to retrieve snapshot from',
                  args: [
                    Arg(
                    name: 'source-nam'
                  )
                  ]
                ),
                Option(
                  name: '--source-resource-group',
                  description: 'Name of the resource group to retrieve snapshot from',
                  args: [
                    Arg(
                    name: 'source-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--source-slot',
                  description: 'Name of the web app slot to retrieve snapshot from',
                  args: [
                    Arg(
                    name: 'source-slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'ssl',
          description: 'Configure SSL certificates for web apps',
          subcommands: [

            Subcommand(
              name: 'bind',
              description: 'Bind an SSL certificate to a web app',
              options: [

                Option(
                  name: '--certificate-thumbprint',
                  description: 'The ssl cert thumbprint',
                  args: [
                    Arg(
                    name: 'certificate-thumbprin'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-type',
                  description: 'The ssl cert type',
                  args: [
                    Arg(
                    name: 'ssl-type',
                    suggestions: [

                      FigSuggestion(name: 'IP'),
                      FigSuggestion(name: 'SNI')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--hostname',
                  description: 'The custom domain name. If empty, hostnames will be selected automatically',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a Managed Certificate for a hostname in a webapp app',
              options: [

                Option(
                  name: '--hostname',
                  description: 'The custom domain name',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: '--certificate-name',
                  description: 'The name of the certificate',
                  args: [
                    Arg(
                    name: 'certificate-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an SSL certificate from a web app',
              options: [

                Option(
                  name: '--certificate-thumbprint',
                  description: 'The ssl cert thumbprint',
                  args: [
                    Arg(
                    name: 'certificate-thumbprin'
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
              name: 'import',
              description: 'Import an SSL or App Service Certificate to a web app from Key Vault',
              options: [

                Option(
                  name: '--key-vault',
                  description: 'The name or resource ID of the Key Vault',
                  args: [
                    Arg(
                    name: 'key-vaul'
                  )
                  ]
                ),
                Option(
                  name: '--key-vault-certificate-name',
                  description: 'The name of the certificate in Key Vault',
                  args: [
                    Arg(
                    name: 'key-vault-certificate-nam'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-name',
                  description: 'The name of the certificate',
                  args: [
                    Arg(
                    name: 'certificate-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List SSL certificates for a web app',
              options: [

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
              description: 'Show the details of an SSL certificate for a web app',
              options: [

                Option(
                  name: '--certificate-name',
                  description: 'The name of the certificate',
                  args: [
                    Arg(
                    name: 'certificate-nam'
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
              name: 'unbind',
              description: 'Unbind an SSL certificate from a web app',
              options: [

                Option(
                  name: '--certificate-thumbprint',
                  description: 'The ssl cert thumbprint',
                  args: [
                    Arg(
                    name: 'certificate-thumbprin'
                  )
                  ]
                ),
                Option(
                  name: '--hostname',
                  description: 'The custom domain name. If empty, hostnames will be selected automatically',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'upload',
              description: 'Upload an SSL certificate to a web app',
              options: [

                Option(
                  name: '--certificate-file',
                  description: 'The filepath for the .pfx file',
                  args: [
                    Arg(
                    name: 'certificate-fil'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-password',
                  description: 'The ssl cert password',
                  args: [
                    Arg(
                    name: 'certificate-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-name',
                  description: 'The name of the certificate',
                  args: [
                    Arg(
                    name: 'certificate-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-account',
          description: 'Manage a web app\'s Azure storage account configurations. (Linux Web Apps and Windows Containers Web Apps Only)',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an Azure storage account configuration to a web app. (Linux Web Apps and Windows Containers Web Apps Only)',
              options: [

                Option(
                  name: ['--access-key', '-k'],
                  description: 'Storage account access key',
                  args: [
                    Arg(
                    name: 'access-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'Storage account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--custom-id', '-i'],
                  description: 'Name of the share configured within the web app',
                  args: [
                    Arg(
                    name: 'custom-i'
                  )
                  ]
                ),
                Option(
                  name: ['--share-name', '--sn'],
                  description: 'Name of the file share as given in the storage account',
                  args: [
                    Arg(
                    name: 'share-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-type', '-t'],
                  description: 'Storage type',
                  args: [
                    Arg(
                    name: 'storage-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureBlob'),
                      FigSuggestion(name: 'AzureFiles')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--mount-path', '-m'],
                  description: 'The path which the web app uses to read-write data ex: /share1 or /share2',
                  args: [
                    Arg(
                    name: 'mount-pat'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--slot-setting',
                  description: 'Slot setting'
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a web app\'s Azure storage account configuration. (Linux Web Apps and Windows Containers Web Apps Only)',
              options: [

                Option(
                  name: ['--custom-id', '-i'],
                  description: 'Name of the share configured within the web app',
                  args: [
                    Arg(
                    name: 'custom-i'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Get a web app\'s Azure storage account configurations. (Linux Web Apps and Windows Containers Web Apps Only)',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an existing Azure storage account configuration on a web app. (Linux Web Apps and Windows Containers Web Apps Only)',
              options: [

                Option(
                  name: ['--custom-id', '-i'],
                  description: 'Name of the share configured within the web app',
                  args: [
                    Arg(
                    name: 'custom-i'
                  )
                  ]
                ),
                Option(
                  name: ['--access-key', '-k'],
                  description: 'Storage account access key',
                  args: [
                    Arg(
                    name: 'access-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'Storage account name',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--mount-path', '-m'],
                  description: 'The path which the web app uses to read-write data ex: /share1 or /share2',
                  args: [
                    Arg(
                    name: 'mount-pat'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--share-name', '--sn'],
                  description: 'Name of the file share as given in the storage account',
                  args: [
                    Arg(
                    name: 'share-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--slot-setting',
                  description: 'Slot setting'
                ),
                Option(
                  name: ['--storage-type', '-t'],
                  description: 'Storage type',
                  args: [
                    Arg(
                    name: 'storage-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureBlob'),
                      FigSuggestion(name: 'AzureFiles')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'connection',
      description: 'Commands to manage webapp connections',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a webapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the webapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--slot',
              description: 'The name of the slot. Default to the production slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List connections of a webapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--slot',
              description: 'The name of the slot. Default to the production slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--source-id',
              description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
              args: [
                Arg(
                name: 'source-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-configuration',
          description: 'List source configurations of a webapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the webapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--slot',
              description: 'The name of the slot. Default to the production slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-support-types',
          description: 'List client types and auth types supported by webapp connections',
          options: [

            Option(
              name: ['--target-type', '-t'],
              description: 'The target resource type',
              args: [
                Arg(
                name: 'target-type',
                suggestions: [

                  FigSuggestion(name: 'appconfig'),
                  FigSuggestion(name: 'confluent-cloud'),
                  FigSuggestion(name: 'cosmos-cassandra'),
                  FigSuggestion(name: 'cosmos-gremlin'),
                  FigSuggestion(name: 'cosmos-mongo'),
                  FigSuggestion(name: 'cosmos-sql'),
                  FigSuggestion(name: 'cosmos-table'),
                  FigSuggestion(name: 'eventhub'),
                  FigSuggestion(name: 'keyvault'),
                  FigSuggestion(name: 'mysql'),
                  FigSuggestion(name: 'mysql-flexible'),
                  FigSuggestion(name: 'postgres'),
                  FigSuggestion(name: 'postgres-flexible'),
                  FigSuggestion(name: 'redis'),
                  FigSuggestion(name: 'redis-enterprise'),
                  FigSuggestion(name: 'servicebus'),
                  FigSuggestion(name: 'signalr'),
                  FigSuggestion(name: 'sql'),
                  FigSuggestion(name: 'storage-blob'),
                  FigSuggestion(name: 'storage-file'),
                  FigSuggestion(name: 'storage-queue'),
                  FigSuggestion(name: 'storage-table'),
                  FigSuggestion(name: 'webpubsub')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a webapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the webapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--slot',
              description: 'The name of the slot. Default to the production slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate a webapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the webapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--slot',
              description: 'The name of the slot. Default to the production slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the connection is met',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the webapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--slot',
              description: 'The name of the slot. Default to the production slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a connection between a webapp and a target resource',
          subcommands: [

            Subcommand(
              name: 'appconfig',
              description: 'Create a webapp connection to appconfig',
              options: [

                Option(
                  name: '--app-config',
                  description: 'Name of the app configuration. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'app-confi'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--app-config\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the app configuration. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'confluent-cloud',
              description: 'Create a webapp connection to confluent-cloud',
              options: [

                Option(
                  name: '--bootstrap-server',
                  description: 'Kafka bootstrap server url',
                  args: [
                    Arg(
                    name: 'bootstrap-serve'
                  )
                  ]
                ),
                Option(
                  name: '--kafka-key',
                  description: 'Kafka API-Key (key)',
                  args: [
                    Arg(
                    name: 'kafka-ke'
                  )
                  ]
                ),
                Option(
                  name: '--kafka-secret',
                  description: 'Kafka API-Key (secret)',
                  args: [
                    Arg(
                    name: 'kafka-secre'
                  )
                  ]
                ),
                Option(
                  name: '--schema-key',
                  description: 'Schema registry API-Key (key)',
                  args: [
                    Arg(
                    name: 'schema-ke'
                  )
                  ]
                ),
                Option(
                  name: '--schema-registry',
                  description: 'Schema registry url',
                  args: [
                    Arg(
                    name: 'schema-registr'
                  )
                  ]
                ),
                Option(
                  name: '--schema-secret',
                  description: 'Schema registry API-Key (secret)',
                  args: [
                    Arg(
                    name: 'schema-secre'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-cassandra',
              description: 'Create a webapp connection to cosmos-cassandra',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--key-space',
                  description: 'Name of the keyspace. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'key-spac'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--key-space\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-gremlin',
              description: 'Create a webapp connection to cosmos-gremlin',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: '--graph',
                  description: 'Name of the graph. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'grap'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--database\', \'--graph\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-mongo',
              description: 'Create a webapp connection to cosmos-mongo',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-sql',
              description: 'Create a webapp connection to cosmos-sql',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-table',
              description: 'Create a webapp connection to cosmos-table',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--table',
                  description: 'Name of the table. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'tabl'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--table\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'eventhub',
              description: 'Create a webapp connection to eventhub',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'kafka-springBoot'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'Name of the eventhub namespace. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--namespace\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the eventhub. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'keyvault',
              description: 'Create a webapp connection to keyvault',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new keyvault when creating the webapp connection'
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--vault\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the keyvault. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault',
                  description: 'Name of the keyvault. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'vaul'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql',
              description: 'Create a webapp connection to mysql',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the mysql database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the mysql server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the mysql server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql-flexible',
              description: 'Create a webapp connection to mysql-flexible',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the mysql flexible database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the mysql flexible server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the mysql flexible server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'postgres',
              description: 'Create a webapp connection to postgres',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of postgres database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new postgres when creating the webapp connection'
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of postgres server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the postgres service. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'postgres-flexible',
              description: 'Create a webapp connection to postgres-flexible',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of postgres flexible database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of postgres flexible server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the flexible postgres service. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis',
              description: 'Create a webapp connection to redis',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the redis database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the redis server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the redis server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis-enterprise',
              description: 'Create a webapp connection to redis-enterprise',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the redis enterprise database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the redis enterprise server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the redis server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'servicebus',
              description: 'Create a webapp connection to servicebus',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'Name of the servicebus namespace. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--namespace\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the servicebus. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'signalr',
              description: 'Create a webapp connection to signalr',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--signalr',
                  description: 'Name of the signalr service. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'signal'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--signalr\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the signalr. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sql',
              description: 'Create a webapp connection to sql',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the sql database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the sql server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the sql server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-blob',
              description: 'Create a webapp connection to storage-blob',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new storage-blob when creating the webapp connection'
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-file',
              description: 'Create a webapp connection to storage-file',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-queue',
              description: 'Create a webapp connection to storage-queue',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-table',
              description: 'Create a webapp connection to storage-table',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'webpubsub',
              description: 'Create a webapp connection to webpubsub',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--webpubsub\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the webpubsub. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                ),
                Option(
                  name: '--webpubsub',
                  description: 'Name of the webpubsub service. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'webpubsu'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a webapp connection',
          subcommands: [

            Subcommand(
              name: 'appconfig',
              description: 'Update a webapp to appconfig connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'confluent-cloud',
              description: 'Update a webapp to confluent-cloud connection',
              options: [

                Option(
                  name: '--connection',
                  description: 'Name of the connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--bootstrap-server',
                  description: 'Kafka bootstrap server url',
                  args: [
                    Arg(
                    name: 'bootstrap-serve'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--kafka-key',
                  description: 'Kafka API-Key (key)',
                  args: [
                    Arg(
                    name: 'kafka-ke'
                  )
                  ]
                ),
                Option(
                  name: '--kafka-secret',
                  description: 'Kafka API-Key (secret)',
                  args: [
                    Arg(
                    name: 'kafka-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--schema-key',
                  description: 'Schema registry API-Key (key)',
                  args: [
                    Arg(
                    name: 'schema-ke'
                  )
                  ]
                ),
                Option(
                  name: '--schema-registry',
                  description: 'Schema registry url',
                  args: [
                    Arg(
                    name: 'schema-registr'
                  )
                  ]
                ),
                Option(
                  name: '--schema-secret',
                  description: 'Schema registry API-Key (secret)',
                  args: [
                    Arg(
                    name: 'schema-secre'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a webapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-cassandra',
              description: 'Update a webapp to cosmos-cassandra connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-gremlin',
              description: 'Update a webapp to cosmos-gremlin connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-mongo',
              description: 'Update a webapp to cosmos-mongo connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-sql',
              description: 'Update a webapp to cosmos-sql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-table',
              description: 'Update a webapp to cosmos-table connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'eventhub',
              description: 'Update a webapp to eventhub connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'kafka-springBoot'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'keyvault',
              description: 'Update a webapp to keyvault connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql',
              description: 'Update a webapp to mysql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql-flexible',
              description: 'Update a webapp to mysql-flexible connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'postgres',
              description: 'Update a webapp to postgres connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'postgres-flexible',
              description: 'Update a webapp to postgres-flexible connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis',
              description: 'Update a webapp to redis connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis-enterprise',
              description: 'Update a webapp to redis-enterprise connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'servicebus',
              description: 'Update a webapp to servicebus connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'signalr',
              description: 'Update a webapp to signalr connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sql',
              description: 'Update a webapp to sql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--config-connstr',
                  description: 'Store configuration into connection strings, only could be used together with dotnet client_type'
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-blob',
              description: 'Update a webapp to storage-blob connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-file',
              description: 'Update a webapp to storage-file connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-queue',
              description: 'Update a webapp to storage-queue connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-table',
              description: 'Update a webapp to storage-table connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'webpubsub',
              description: 'Update a webapp to webpubsub connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the webapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the webapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the webapp. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--slot',
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'cors',
      description: 'Manage Cross-Origin Resource Sharing (CORS)',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add allowed origins',
          options: [

            Option(
              name: ['--allowed-origins', '-a'],
              description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*" and remove all other origins from the list',
              args: [
                Arg(
                name: 'allowed-origin'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove allowed origins',
          options: [

            Option(
              name: ['--allowed-origins', '-a'],
              description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*" and remove all other origins from the list',
              args: [
                Arg(
                name: 'allowed-origin'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show allowed origins',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deleted',
      description: 'Manage deleted web apps',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List web apps that have been deleted',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'Name of the deleted web app slot',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore',
          description: 'Restore a deleted web app',
          options: [

            Option(
              name: '--deleted-id',
              description: 'Resource ID of the deleted web app',
              args: [
                Arg(
                name: 'deleted-i'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app to restore the deleted content to',
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
              name: '--restore-content-only',
              description: 'Restore only deleted files without web app settings',
              args: [
                Arg(
                name: 'restore-content-onl'
              )
              ]
            ),
            Option(
              name: ['--slot', '-s'],
              description: 'Slot to restore the deleted content to',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--target-app-svc-plan',
              description: 'The app service plan for the new azure web app',
              args: [
                Arg(
                name: 'target-app-svc-pla'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deployment',
      description: 'Manage web app deployments',
      subcommands: [

        Subcommand(
          name: 'list-publishing-credentials',
          description: 'Get the details for available web app publishing credentials',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-publishing-profiles',
          description: 'Get the details for available web app deployment profiles',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--xml',
              description: 'Retrieves the publishing profile details in XML format'
            )
          ]
        ),
        Subcommand(
          name: 'container',
          description: 'Manage container-based continuous deployment',
          subcommands: [

            Subcommand(
              name: 'config',
              description: 'Configure continuous deployment via containers',
              options: [

                Option(
                  name: ['--enable-cd', '-e'],
                  description: 'Enable/disable continuous deployment',
                  args: [
                    Arg(
                    name: 'enable-cd',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-cd-url',
              description: 'Get the URL which can be used to configure webhooks for continuous deployment',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'github-actions',
          description: 'Configure GitHub Actions for a webapp',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a GitHub Actions workflow file to the specified repository. The workflow will build and deploy your app to the specified webapp',
              options: [

                Option(
                  name: '--repo',
                  description: 'The GitHub repository to which the workflow file will be added. In the format: /',
                  args: [
                    Arg(
                    name: 'rep'
                  )
                  ]
                ),
                Option(
                  name: ['--branch', '-b'],
                  description: 'The branch to which the workflow file will be added. Defaults to "master" if not specified',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: ['--force', '-f'],
                  description: 'When true, the command will overwrite any workflow file with a conflicting name'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--login-with-github',
                  description: 'Interactively log in with GitHub to retrieve the Personal Access Token'
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--runtime', '-r'],
                  description: 'Canonicalized web runtime in the format of Framework|Version, e.g. "PHP|5.6". Use "az webapp list-runtimes" for available list',
                  args: [
                    Arg(
                    name: 'runtim'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'A Personal Access Token with write access to the specified repository. For more information: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line',
                  args: [
                    Arg(
                    name: 'toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove and disconnect the GitHub Actions workflow file from the specified repository',
              options: [

                Option(
                  name: '--repo',
                  description: 'The GitHub repository to which the workflow file will be added. In the format: /',
                  args: [
                    Arg(
                    name: 'rep'
                  )
                  ]
                ),
                Option(
                  name: ['--branch', '-b'],
                  description: 'The branch to which the workflow file will be added. Defaults to "master" if not specified',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--login-with-github',
                  description: 'Interactively log in with GitHub to retrieve the Personal Access Token'
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'A Personal Access Token with write access to the specified repository. For more information: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line',
                  args: [
                    Arg(
                    name: 'toke'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'slot',
          description: 'Manage web app deployment slots',
          subcommands: [

            Subcommand(
              name: 'auto-swap',
              description: 'Configure deployment slot auto swap',
              options: [

                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--auto-swap-slot',
                  description: 'Target slot to auto swap',
                  args: [
                    Arg(
                    name: 'auto-swap-slo'
                  )
                  ]
                ),
                Option(
                  name: '--disable',
                  description: 'Disable auto swap',
                  args: [
                    Arg(
                    name: 'disabl'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a deployment slot',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--configuration-source',
                  description: 'Source slot to clone configurations from. Use web app\'s name to refer to the production slot',
                  args: [
                    Arg(
                    name: 'configuration-sourc'
                  )
                  ]
                ),
                Option(
                  name: ['--deployment-container-image-name', '-i'],
                  description: 'Container image name, e.g. publisher/image-name:tag',
                  args: [
                    Arg(
                    name: 'deployment-container-image-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--docker-registry-server-password', '-w'],
                  description: 'The container registry server password',
                  args: [
                    Arg(
                    name: 'docker-registry-server-passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--docker-registry-server-user', '-u'],
                  description: 'The container registry server username',
                  args: [
                    Arg(
                    name: 'docker-registry-server-use'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a deployment slot',
              options: [

                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all deployment slots',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'swap',
              description: 'Swap deployment slots for a web app',
              options: [

                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--action',
                  description: 'Swap types. use \'preview\' to apply target slot\'s settings on the source slot first; use \'swap\' to complete it; use \'reset\' to reset the swap',
                  args: [
                    Arg(
                    name: 'action',
                    suggestions: [

                      FigSuggestion(name: 'preview'),
                      FigSuggestion(name: 'reset'),
                      FigSuggestion(name: 'swap')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the webapp',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--preserve-vnet',
                  description: 'Preserve Virtual Network to the slot during swap, default to \'true\'',
                  args: [
                    Arg(
                    name: 'preserve-vnet',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--target-slot',
                  description: 'Target slot to swap, default to \'production\'',
                  args: [
                    Arg(
                    name: 'target-slo'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'source',
          description: 'Manage web app deployment via source control',
          subcommands: [

            Subcommand(
              name: 'config',
              description: 'Manage deployment from git or Mercurial repositories',
              options: [

                Option(
                  name: ['--repo-url', '-u'],
                  description: 'Repository url to pull the latest source from, e.g. https://github.com/foo/foo-web',
                  args: [
                    Arg(
                    name: 'repo-ur'
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'The branch name of the repository',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--git-token',
                  description: 'Git access token required for auto sync',
                  args: [
                    Arg(
                    name: 'git-toke'
                  )
                  ]
                ),
                Option(
                  name: '--github-action',
                  description: 'If using GitHub action, default to False',
                  args: [
                    Arg(
                    name: 'github-actio'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--manual-integration',
                  description: 'Disable automatic sync between source control and web',
                  args: [
                    Arg(
                    name: 'manual-integratio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--repository-type',
                  description: 'Repository type',
                  args: [
                    Arg(
                    name: 'repository-type',
                    suggestions: [

                      FigSuggestion(name: 'externalgit'),
                      FigSuggestion(name: 'git'),
                      FigSuggestion(name: 'github'),
                      FigSuggestion(name: 'localgit'),
                      FigSuggestion(name: 'mercurial')
                    ]
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'config-local-git',
              description: 'Get a URL for a git repository endpoint to clone and push to for web app deployment',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'config-zip',
              description: 'Perform deployment using the kudu zip push deployment for a web app',
              options: [

                Option(
                  name: '--src',
                  description: 'A zip file path for deployment',
                  args: [
                    Arg(
                    name: 'sr'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a source control deployment configuration',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a source control deployment configuration',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sync',
              description: 'Synchronize from the repository. Only needed under manual integration mode',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update-token',
              description: 'Update source control token cached in Azure app service',
              options: [

                Option(
                  name: '--git-token',
                  description: 'Git access token required for auto sync',
                  args: [
                    Arg(
                    name: 'git-toke'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'user',
          description: 'Manage user credentials for deployment',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Update deployment credentials',
              options: [

                Option(
                  name: '--user-name',
                  description: 'User name',
                  args: [
                    Arg(
                    name: 'user-nam'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'Password, will prompt if not specified',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get deployment publishing user'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'hybrid-connection',
      description: 'Methods that list, add and remove hybrid-connections from webapps',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add an existing hybrid-connection to a webapp',
          options: [

            Option(
              name: '--hybrid-connection',
              description: 'Hybrid connection name',
              args: [
                Arg(
                name: 'hybrid-connectio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Hybrid connection namespace',
              args: [
                Arg(
                name: 'namespac'
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the hybrid-connections on a webapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a hybrid-connection from a webapp',
          options: [

            Option(
              name: '--hybrid-connection',
              description: 'Hybrid connection name',
              args: [
                Arg(
                name: 'hybrid-connectio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Hybrid connection namespace',
              args: [
                Arg(
                name: 'namespac'
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'identity',
      description: 'Manage web app\'s managed identity',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign managed identity to the web app',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to assign. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: '--role',
              description: 'Role name or id the managed identity will be assigned',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The scope the managed identity has access to',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Disable web app\'s managed identity',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to assign. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Display web app\'s managed identity',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'log',
      description: 'Manage web app logs',
      subcommands: [

        Subcommand(
          name: 'config',
          description: 'Configure logging for a web app',
          options: [

            Option(
              name: '--application-logging',
              description: 'Configure application logging',
              args: [
                Arg(
                name: 'application-logging',
                suggestions: [

                  FigSuggestion(name: 'azureblobstorage'),
                  FigSuggestion(name: 'filesystem'),
                  FigSuggestion(name: 'off')
                ]
              )
              ]
            ),
            Option(
              name: '--detailed-error-messages',
              description: 'Configure detailed error messages',
              args: [
                Arg(
                name: 'detailed-error-messages',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--docker-container-logging',
              description: 'Configure gathering STDOUT and STDERR output from container',
              args: [
                Arg(
                name: 'docker-container-logging',
                suggestions: [

                  FigSuggestion(name: 'filesystem'),
                  FigSuggestion(name: 'off')
                ]
              )
              ]
            ),
            Option(
              name: '--failed-request-tracing',
              description: 'Configure failed request tracing',
              args: [
                Arg(
                name: 'failed-request-tracing',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--level',
              description: 'Logging level',
              args: [
                Arg(
                name: 'level',
                suggestions: [

                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'information'),
                  FigSuggestion(name: 'verbose'),
                  FigSuggestion(name: 'warning')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--web-server-logging',
              description: 'Configure Web server logging',
              args: [
                Arg(
                name: 'web-server-logging',
                suggestions: [

                  FigSuggestion(name: 'filesystem'),
                  FigSuggestion(name: 'off')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Download a web app\'s log history as a zip file',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--log-file',
              description: 'The downloaded zipped log file path',
              args: [
                Arg(
                name: 'log-fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a web app\'s logging configuration',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'tail',
          description: 'Start live log tracing for a web app',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--provider',
              description: 'By default all live traces configured by az webapp log config will be shown, but you can scope to certain providers/folders, e.g. \'application\', \'http\', etc. For details, check out https://github.com/projectkudu/kudu/wiki/Diagnostic-Log-Stream',
              args: [
                Arg(
                name: 'provide'
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deployment',
          description: 'Manage web app deployment logs',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List deployments associated with web app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show deployment logs of the latest deployment, or a specific deployment if deployment-id is specified',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: '--deployment-id',
                  description: 'Deployment ID. If none specified, returns the deployment logs of the latest deployment',
                  args: [
                    Arg(
                    name: 'deployment-i'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'scan',
      description: 'Holds group of commands which cater to webapp scans. Currently available only for Linux based webapps',
      subcommands: [

        Subcommand(
          name: 'list-result',
          description: 'Get details of all scans conducted on webapp, upto max scan limit set on the webapp This will get you the scan log results in addition to the scan status of each scan conducted on the webapp',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp to connect to',
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
              name: ['--slot', '-s'],
              description: 'Name of the deployment slot to use',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-result',
          description: 'Get results of specified scan-id. This will fetch you the Scan log results of the specified scan-id',
          options: [

            Option(
              name: '--scan-id',
              description: 'Unique scan id',
              args: [
                Arg(
                name: 'scan-i'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp to connect to',
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
              name: ['--slot', '-s'],
              description: 'Name of the deployment slot to use',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Starts the scan on the specified webapp files in the wwwroot directory. It returns a JSON containing the ScanID, traking and results URL',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp to connect to',
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
              name: ['--slot', '-s'],
              description: 'Name of the deployment slot to use',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Timeout for operation in milliseconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stops the current executing scan. Does nothing if no scan is executing',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp to connect to',
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
              name: ['--slot', '-s'],
              description: 'Name of the deployment slot to use',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'track',
          description: 'Track status of scan by providing scan-id. You can track the status of the scan from [Starting, Success, Failed, TimeoutFailure, Executing]',
          options: [

            Option(
              name: '--scan-id',
              description: 'Unique scan id',
              args: [
                Arg(
                name: 'scan-i'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the webapp to connect to',
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
              name: ['--slot', '-s'],
              description: 'Name of the deployment slot to use',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'traffic-routing',
      description: 'Manage traffic routing for web apps',
      subcommands: [

        Subcommand(
          name: 'clear',
          description: 'Clear the routing rules and send all traffic to production',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Configure routing traffic to deployment slots',
          options: [

            Option(
              name: ['--distribution', '-d'],
              description: 'Space-separated slot routings in a format of <slot-name>=<percentage> e.g. staging=50. Unused traffic percentage will go to the Production slot',
              args: [
                Arg(
                name: 'distributio'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Display the current distribution of traffic across slots',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'vnet-integration',
      description: 'Methods that list, add, and remove virtual network integrations from a webapp',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a regional virtual network integration to a webapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: '--subnet',
              description: 'The name or resource ID of the subnet',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--vnet',
              description: 'The name or resource ID of the Vnet',
              args: [
                Arg(
                name: 'vne'
              )
              ]
            ),
            Option(
              name: '--skip-delegation-check',
              description: 'Skip check if you do not have permission or the VNet is in another subscription'
            ),
            Option(
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the virtual network integrations on a webapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a regional virtual network integration from webapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
              name: ['--slot', '-s'],
              description: 'The name of the slot. Default to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'webjob',
      description: 'Allows management operations for webjobs on a web app',
      subcommands: [

        Subcommand(
          name: 'continuous',
          description: 'Allows management operations of continuous webjobs on a web app',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all continuous webjobs on a selected web app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Delete a specific continuous webjob',
              options: [

                Option(
                  name: ['--webjob-name', '-w'],
                  description: 'The name of the webjob',
                  args: [
                    Arg(
                    name: 'webjob-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'start',
              description: 'Start a specific continuous webjob on a selected web app',
              options: [

                Option(
                  name: ['--webjob-name', '-w'],
                  description: 'The name of the webjob',
                  args: [
                    Arg(
                    name: 'webjob-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'stop',
              description: 'Stop a specific continuous webjob',
              options: [

                Option(
                  name: ['--webjob-name', '-w'],
                  description: 'The name of the webjob',
                  args: [
                    Arg(
                    name: 'webjob-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'triggered',
          description: 'Allows management operations of triggered webjobs on a web app',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all triggered webjobs hosted on a web app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'log',
              description: 'Get history of a specific triggered webjob hosted on a web app',
              options: [

                Option(
                  name: ['--webjob-name', '-w'],
                  description: 'The name of the webjob',
                  args: [
                    Arg(
                    name: 'webjob-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Delete a specific triggered webjob hosted on a web app',
              options: [

                Option(
                  name: ['--webjob-name', '-w'],
                  description: 'The name of the webjob',
                  args: [
                    Arg(
                    name: 'webjob-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'run',
              description: 'Run a specific triggered webjob hosted on a web app',
              options: [

                Option(
                  name: ['--webjob-name', '-w'],
                  description: 'The name of the webjob',
                  args: [
                    Arg(
                    name: 'webjob-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
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
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
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
