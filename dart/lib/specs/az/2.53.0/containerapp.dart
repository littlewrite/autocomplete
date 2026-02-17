// Auto-generated from TypeScript source: containerapp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `containerapp` CLI
final FigSpec containerappSpec = FigSpec(
  name: 'containerapp',
  description: 'Manage Azure Container Apps',
  subcommands: [

    Subcommand(
      name: 'auth',
      description: 'Manage containerapp authentication and authorization',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Show the authentication settings for the containerapp',
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'update',
          description: 'Update the authentication settings for the containerapp',
          options: [

            Option(
              name: ['--unauthenticated-client-action', '--action'],
              description: 'The action to take when an unauthenticated client attempts to access the app',
              args: [
                Arg(
                name: 'unauthenticated-client-action',
                suggestions: [

                  FigSuggestion(name: 'AllowAnonymous'),
                  FigSuggestion(name: 'RedirectToLoginPage'),
                  FigSuggestion(name: 'Return401'),
                  FigSuggestion(name: 'Return403')
                ]
              )
              ]
            ),
            Option(
              name: '--config-file-path',
              description: 'The path of the config file containing auth settings if they come from a file',
              args: [
                Arg(
                name: 'config-file-pat'
              )
              ]
            ),
            Option(
              name: ['--proxy-custom-host-header', '--custom-host-header'],
              description: 'The name of the header containing the host of the request',
              args: [
                Arg(
                name: 'proxy-custom-host-heade'
              )
              ]
            ),
            Option(
              name: ['--proxy-custom-proto-header', '--custom-proto-header'],
              description: 'The name of the header containing the scheme of the request',
              args: [
                Arg(
                name: 'proxy-custom-proto-heade'
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
              name: '--excluded-paths',
              description: 'The list of paths that should be excluded from authentication rules',
              args: [
                Arg(
                name: 'excluded-path'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--proxy-convention',
              description: 'The convention used to determine the url of the request made',
              args: [
                Arg(
                name: 'proxy-convention',
                suggestions: [

                  FigSuggestion(name: 'Custom'),
                  FigSuggestion(name: 'NoProxy'),
                  FigSuggestion(name: 'Standard')
                ]
              )
              ]
            ),
            Option(
              name: '--redirect-provider',
              description: 'The default authentication provider to use when multiple providers are configured',
              args: [
                Arg(
                name: 'redirect-provide'
              )
              ]
            ),
            Option(
              name: '--require-https',
              description: 'False if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, true',
              args: [
                Arg(
                name: 'require-https',
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
              name: '--runtime-version',
              description: 'The RuntimeVersion of the Authentication / Authorization feature in use for the current app',
              args: [
                Arg(
                name: 'runtime-versio'
              )
              ]
            ),
            Option(
              name: '--sas-url-secret',
              description: 'The blob storage SAS URL to be used for token store',
              args: [
                Arg(
                name: 'sas-url-secre'
              )
              ]
            ),
            Option(
              name: '--sas-url-secret-name',
              description: 'The secret name that contains blob storage SAS URL to be used for token store',
              args: [
                Arg(
                name: 'sas-url-secret-nam'
              )
              ]
            ),
            Option(
              name: '--set',
              description: 'Value of a specific field within the configuration settings for the Azure App Service Authentication / Authorization feature',
              args: [
                Arg(
                name: 'se'
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
              name: '--token-store',
              description: 'Boolean indicating if token store is enabled for the app',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'apple',
          description: 'Manage containerapp authentication and authorization of the Apple identity provider',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: '--client-secret-name',
                  description: 'The app secret name that contains the client secret of the relying party application',
                  args: [
                    Arg(
                    name: 'client-secret-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'facebook',
          description: 'Manage containerapp authentication and authorization of the Facebook identity provider',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: ['--app-secret-name', '--secret-name'],
                  description: 'The app secret name that contains the app secret',
                  args: [
                    Arg(
                    name: 'app-secret-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Manage containerapp authentication and authorization of the GitHub identity provider',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: '--client-secret-name',
                  description: 'The app secret name that contains the client secret of the relying party application',
                  args: [
                    Arg(
                    name: 'client-secret-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Manage containerapp authentication and authorization of the Google identity provider',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: '--client-secret-name',
                  description: 'The app secret name that contains the client secret of the relying party application',
                  args: [
                    Arg(
                    name: 'client-secret-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Manage containerapp authentication and authorization of the Microsoft identity provider',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: '--client-secret-name',
                  description: 'The app secret name that contains the client secret of the relying party application',
                  args: [
                    Arg(
                    name: 'client-secret-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Manage containerapp authentication and authorization of the custom OpenID Connect identity providers',
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
                  description: 'The client secret',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret-name',
                  description: 'The app secret name that contains the client secret of the relying party application',
                  args: [
                    Arg(
                    name: 'client-secret-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  description: 'The client secret',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret-name',
                  description: 'The app secret name that contains the client secret of the relying party application',
                  args: [
                    Arg(
                    name: 'client-secret-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Manage containerapp authentication and authorization of the Twitter identity provider',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: ['--consumer-secret-name', '--secret-name'],
                  description: 'The consumer secret name that contains the app secret',
                  args: [
                    Arg(
                    name: 'consumer-secret-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
      name: 'browse',
      description: 'Open a containerapp in the browser, if possible',
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
          description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
      description: 'Create a container app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: '--allow-insecure',
          description: 'Allow insecure connections for ingress traffic'
        ),
        Option(
          name: '--args',
          description: 'A list of container startup command argument(s). Space-separated values e.g. "-c" "mycommand". Empty string to clear existing values',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '--bind',
          description: 'Space separated list of services(bindings) to be connected to this app. e.g. SVC_NAME1[:BIND_NAME1] SVC_NAME2[:BIND_NAME2]',
          args: [
            Arg(
            name: 'bin'
          )
          ]
        ),
        Option(
          name: ['--branch', '-b'],
          description: 'Branch in the provided GitHub repository. Assumed to be the GitHub repository\'s default branch if not specified',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: '--command',
          description: 'A list of supported commands on the container that will executed during startup. Space-separated values e.g. "/bin/queue" "mycommand". Empty string to clear existing values',
          args: [
            Arg(
            name: 'comman'
          )
          ]
        ),
        Option(
          name: '--container-name',
          description: 'Name of the container',
          args: [
            Arg(
            name: 'container-nam'
          )
          ]
        ),
        Option(
          name: '--context-path',
          description: 'Path in the repository to run docker build. Defaults to "./". Dockerfile is assumed to be named "Dockerfile" and in this directory',
          args: [
            Arg(
            name: 'context-pat'
          )
          ]
        ),
        Option(
          name: '--cpu',
          description: 'Required CPU in cores from 0.25 - 2.0, e.g. 0.5',
          args: [
            Arg(
            name: 'cp'
          )
          ]
        ),
        Option(
          name: ['--dapr-enable-api-logging', '--dal'],
          description: 'Enable API logging for the Dapr sidecar'
        ),
        Option(
          name: '--dapr-app-id',
          description: 'The Dapr application identifier',
          args: [
            Arg(
            name: 'dapr-app-i'
          )
          ]
        ),
        Option(
          name: '--dapr-app-port',
          description: 'The port Dapr uses to talk to the application',
          args: [
            Arg(
            name: 'dapr-app-por'
          )
          ]
        ),
        Option(
          name: '--dapr-app-protocol',
          description: 'The protocol Dapr uses to talk to the application',
          args: [
            Arg(
            name: 'dapr-app-protocol',
            suggestions: [

              FigSuggestion(name: 'grpc'),
              FigSuggestion(name: 'http')
            ]
          )
          ]
        ),
        Option(
          name: ['--dapr-http-max-request-size', '--dhmrs'],
          description: 'Increase max size of request body http and grpc servers parameter in MB to handle uploading of big files',
          args: [
            Arg(
            name: 'dapr-http-max-request-siz'
          )
          ]
        ),
        Option(
          name: ['--dapr-http-read-buffer-size', '--dhrbs'],
          description: 'Dapr max size of http header read buffer in KB to handle when sending multi-KB headers',
          args: [
            Arg(
            name: 'dapr-http-read-buffer-siz'
          )
          ]
        ),
        Option(
          name: '--dapr-log-level',
          description: 'Set the log level for the Dapr sidecar',
          args: [
            Arg(
            name: 'dapr-log-level',
            suggestions: [

              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warn')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-dapr',
          description: 'Boolean indicating if the Dapr side car is enabled'
        ),
        Option(
          name: '--env-vars',
          description: 'A list of environment variable(s) for the container. Space-separated values in \'key=value\' format. Empty string to clear existing values. Prefix value with \'secretref:\' to reference a secret',
          args: [
            Arg(
            name: 'env-var'
          )
          ]
        ),
        Option(
          name: '--environment',
          description: 'Name or resource ID of the container app\'s environment',
          args: [
            Arg(
            name: 'environmen'
          )
          ]
        ),
        Option(
          name: '--environment-type',
          description: 'Type of environment',
          args: [
            Arg(
            name: 'environment-type',
            suggestions: [

              FigSuggestion(name: 'connected'),
              FigSuggestion(name: 'managed')
            ]
          )
          ]
        ),
        Option(
          name: '--exposed-port',
          description: 'Additional exposed port. Only supported by tcp transport protocol. Must be unique per environment if the app ingress is external',
          args: [
            Arg(
            name: 'exposed-por'
          )
          ]
        ),
        Option(
          name: ['--image', '-i'],
          description: 'Container image, e.g. publisher/image-name:tag',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--ingress',
          description: 'The ingress type',
          args: [
            Arg(
            name: 'ingress',
            suggestions: [

              FigSuggestion(name: 'external'),
              FigSuggestion(name: 'internal')
            ]
          )
          ]
        ),
        Option(
          name: '--max-replicas',
          description: 'The maximum number of replicas',
          args: [
            Arg(
            name: 'max-replica'
          )
          ]
        ),
        Option(
          name: '--memory',
          description: 'Required memory from 0.5 - 4.0 ending with "Gi", e.g. 1.0Gi',
          args: [
            Arg(
            name: 'memor'
          )
          ]
        ),
        Option(
          name: '--min-replicas',
          description: 'The minimum number of replicas',
          args: [
            Arg(
            name: 'min-replica'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--registry-identity',
          description: 'A Managed Identity to authenticate with the registry server instead of username/password. Use a resource ID or \'system\' for user-defined and system-defined identities, respectively. The registry must be an ACR. If possible, an \'acrpull\' role assignemnt will be created for the identity automatically',
          args: [
            Arg(
            name: 'registry-identit'
          )
          ]
        ),
        Option(
          name: '--registry-password',
          description: 'The password to log in to container registry. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
          args: [
            Arg(
            name: 'registry-passwor'
          )
          ]
        ),
        Option(
          name: '--registry-server',
          description: 'The container registry server hostname, e.g. myregistry.azurecr.io',
          args: [
            Arg(
            name: 'registry-serve'
          )
          ]
        ),
        Option(
          name: '--registry-username',
          description: 'The username to log in to container registry',
          args: [
            Arg(
            name: 'registry-usernam'
          )
          ]
        ),
        Option(
          name: '--repo',
          description: 'Create an app via GitHub Actions in the format: https://github.com// or /',
          args: [
            Arg(
            name: 'rep'
          )
          ]
        ),
        Option(
          name: '--revision-suffix',
          description: 'User friendly suffix that is appended to the revision name',
          args: [
            Arg(
            name: 'revision-suffi'
          )
          ]
        ),
        Option(
          name: '--revisions-mode',
          description: 'The active revisions mode for the container app',
          args: [
            Arg(
            name: 'revisions-mode',
            suggestions: [

              FigSuggestion(name: 'multiple'),
              FigSuggestion(name: 'single')
            ]
          )
          ]
        ),
        Option(
          name: ['--scale-rule-auth', '--sra'],
          description: 'Scale rule auth parameters. Auth parameters must be in format "= = ..."',
          args: [
            Arg(
            name: 'scale-rule-aut'
          )
          ]
        ),
        Option(
          name: [
            '--scale-rule-http-concurrency',
            '--scale-rule-tcp-concurrency',
            '--srhc',
            '--srtc',
          ],
          description: 'The maximum number of concurrent requests before scale out. Only supported for http and tcp scale rules',
          args: [
            Arg(
            name: 'scale-rule-http-concurrenc'
          )
          ]
        ),
        Option(
          name: ['--scale-rule-metadata', '--srm'],
          description: 'Scale rule metadata. Metadata must be in format "= = ..."',
          args: [
            Arg(
            name: 'scale-rule-metadat'
          )
          ]
        ),
        Option(
          name: ['--scale-rule-name', '--srn'],
          description: 'The name of the scale rule',
          args: [
            Arg(
            name: 'scale-rule-nam'
          )
          ]
        ),
        Option(
          name: ['--scale-rule-type', '--srt'],
          description: 'The type of the scale rule. Default: http. For more information please visit https://learn.microsoft.com/azure/container-apps/scale-app#scale-triggers',
          args: [
            Arg(
            name: 'scale-rule-typ'
          )
          ]
        ),
        Option(
          name: '--secret-volume-mount',
          description: 'Path to mount all secrets e.g. mnt/secrets',
          args: [
            Arg(
            name: 'secret-volume-moun'
          )
          ]
        ),
        Option(
          name: ['--secrets', '-s'],
          description: 'A list of secret(s) for the container app. Space-separated values in \'key=value\' format',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        ),
        Option(
          name: ['--service-principal-client-id', '--sp-cid'],
          description: 'The service principal client ID. Used by GitHub Actions to authenticate with Azure',
          args: [
            Arg(
            name: 'service-principal-client-i'
          )
          ]
        ),
        Option(
          name: ['--service-principal-client-secret', '--sp-sec'],
          description: 'The service principal client secret. Used by GitHub Actions to authenticate with Azure',
          args: [
            Arg(
            name: 'service-principal-client-secre'
          )
          ]
        ),
        Option(
          name: ['--service-principal-tenant-id', '--sp-tid'],
          description: 'The service principal tenant ID. Used by GitHub Actions to authenticate with Azure',
          args: [
            Arg(
            name: 'service-principal-tenant-i'
          )
          ]
        ),
        Option(
          name: '--source',
          description: 'Local directory path containing the application source and Dockerfile for building the container image. Preview: If no Dockerfile is present, a container image is generated using buildpacks. If Docker is not running or buildpacks cannot be used, Oryx will be used to generate the image. See the supported Oryx runtimes here: https://github.com/microsoft/Oryx/blob/main/doc/supportedRuntimeVersions.md',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        ),
        Option(
          name: '--system-assigned',
          description: 'Boolean indicating whether to assign system-assigned identity'
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
          name: '--target-port',
          description: 'The application port used for ingress traffic',
          args: [
            Arg(
            name: 'target-por'
          )
          ]
        ),
        Option(
          name: ['--termination-grace-period', '--tgp'],
          description: 'Duration in seconds a replica is given to gracefully shut down before it is forcefully terminated. (Default: 30)',
          args: [
            Arg(
            name: 'termination-grace-perio'
          )
          ]
        ),
        Option(
          name: '--token',
          description: 'A Personal Access Token with write access to the specified repository. For more information: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line. If not provided or not found in the cache (and using --repo), a browser page will be opened to authenticate with Github',
          args: [
            Arg(
            name: 'toke'
          )
          ]
        ),
        Option(
          name: '--transport',
          description: 'The transport protocol used for ingress traffic',
          args: [
            Arg(
            name: 'transport',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'http'),
              FigSuggestion(name: 'http2'),
              FigSuggestion(name: 'tcp')
            ]
          )
          ]
        ),
        Option(
          name: '--user-assigned',
          description: 'Space-separated user identities to be assigned',
          args: [
            Arg(
            name: 'user-assigne'
          )
          ]
        ),
        Option(
          name: ['--workload-profile-name', '-w'],
          description: 'Name of the workload profile to run the app on',
          args: [
            Arg(
            name: 'workload-profile-nam'
          )
          ]
        ),
        Option(
          name: '--yaml',
          description: 'Path to a .yaml file with the configuration of a container app. All other parameters will be ignored. For an example, see https://docs.microsoft.com/azure/container-apps/azure-resource-manager-api-spec#examples',
          args: [
            Arg(
            name: 'yam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a container app',
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
          description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'exec',
      description: 'Open an SSH-like interactive shell within a container app replica',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the Containerapp',
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
          name: '--command',
          description: 'The startup command (bash, zsh, sh, etc.)',
          args: [
            Arg(
            name: 'comman'
          )
          ]
        ),
        Option(
          name: '--container',
          description: 'The name of the container to ssh into',
          args: [
            Arg(
            name: 'containe'
          )
          ]
        ),
        Option(
          name: '--replica',
          description: 'The name of the replica to ssh into. List replicas with \'az containerapp replica list\'. A replica may not exist if there is not traffic to your app',
          args: [
            Arg(
            name: 'replic'
          )
          ]
        ),
        Option(
          name: '--revision',
          description: 'The name of the container app revision to ssh into. Defaults to the latest revision',
          args: [
            Arg(
            name: 'revisio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List container apps',
      options: [

        Option(
          name: '--environment',
          description: 'Name or resource ID of the container app\'s environment',
          args: [
            Arg(
            name: 'environmen'
          )
          ]
        ),
        Option(
          name: '--environment-type',
          description: 'Type of environment',
          args: [
            Arg(
            name: 'environment-type',
            suggestions: [

              FigSuggestion(name: 'connected'),
              FigSuggestion(name: 'managed')
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
        )
      ]
    ),
    Subcommand(
      name: 'list-usages',
      description: 'List usages of subscription level quotas in specific region',
      options: [

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
      name: 'show',
      description: 'Show details of a container app',
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
          description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: '--show-secrets',
          description: 'Show Containerapp secrets'
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
      name: 'show-custom-domain-verification-id',
      description: 'Show the verification id for binding app or environment custom domains'
    ),
    Subcommand(
      name: 'up',
      description: 'Create or update a container app as well as any associated resources (ACR, resource group, container apps environment, GitHub Actions, etc.)',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--branch', '-b'],
          description: 'The branch of the Github repo. Assumed to be the Github repo\'s default branch if not specified',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: '--browse',
          description: 'Open the app in a web browser after creation and deployment, if possible'
        ),
        Option(
          name: '--context-path',
          description: 'Path in the repo from which to run the docker build. Defaults to "./". Dockerfile is assumed to be named "Dockerfile" and in this directory',
          args: [
            Arg(
            name: 'context-pat'
          )
          ]
        ),
        Option(
          name: '--env-vars',
          description: 'A list of environment variable(s) for the container. Space-separated values in \'key=value\' format. Empty string to clear existing values. Prefix value with \'secretref:\' to reference a secret',
          args: [
            Arg(
            name: 'env-var'
          )
          ]
        ),
        Option(
          name: '--environment',
          description: 'Name or resource ID of the container app\'s environment',
          args: [
            Arg(
            name: 'environmen'
          )
          ]
        ),
        Option(
          name: ['--image', '-i'],
          description: 'Container image, e.g. publisher/image-name:tag',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--ingress',
          description: 'The ingress type',
          args: [
            Arg(
            name: 'ingress',
            suggestions: [

              FigSuggestion(name: 'external'),
              FigSuggestion(name: 'internal')
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
        ),
        Option(
          name: '--logs-workspace-id',
          description: 'Workspace ID of the Log Analytics workspace to send diagnostics logs to. You can use "az monitor log-analytics workspace create" to create one. Extra billing may apply',
          args: [
            Arg(
            name: 'logs-workspace-i'
          )
          ]
        ),
        Option(
          name: '--logs-workspace-key',
          description: 'Log Analytics workspace key to configure your Log Analytics workspace. You can use "az monitor log-analytics workspace get-shared-keys" to retrieve the key',
          args: [
            Arg(
            name: 'logs-workspace-ke'
          )
          ]
        ),
        Option(
          name: '--registry-password',
          description: 'The password to log in to container registry. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
          args: [
            Arg(
            name: 'registry-passwor'
          )
          ]
        ),
        Option(
          name: '--registry-server',
          description: 'The container registry server hostname, e.g. myregistry.azurecr.io',
          args: [
            Arg(
            name: 'registry-serve'
          )
          ]
        ),
        Option(
          name: '--registry-username',
          description: 'The username to log in to container registry',
          args: [
            Arg(
            name: 'registry-usernam'
          )
          ]
        ),
        Option(
          name: '--repo',
          description: 'Create an app via Github Actions. In the format: https://github.com// or /',
          args: [
            Arg(
            name: 'rep'
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
          name: ['--service-principal-client-id', '--sp-cid'],
          description: 'The service principal client ID. Used by Github Actions to authenticate with Azure',
          args: [
            Arg(
            name: 'service-principal-client-i'
          )
          ]
        ),
        Option(
          name: ['--service-principal-client-secret', '--sp-sec'],
          description: 'The service principal client secret. Used by Github Actions to authenticate with Azure',
          args: [
            Arg(
            name: 'service-principal-client-secre'
          )
          ]
        ),
        Option(
          name: ['--service-principal-tenant-id', '--sp-tid'],
          description: 'The service principal tenant ID. Used by Github Actions to authenticate with Azure',
          args: [
            Arg(
            name: 'service-principal-tenant-i'
          )
          ]
        ),
        Option(
          name: '--source',
          description: 'Local directory path containing the application source and Dockerfile for building the container image. Preview: If no Dockerfile is present, a container image is generated using buildpacks. If Docker is not running or buildpacks cannot be used, Oryx will be used to generate the image. See the supported Oryx runtimes here: https://github.com/microsoft/Oryx/blob/main/doc/supportedRuntimeVersions.md',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        ),
        Option(
          name: '--target-port',
          description: 'The application port used for ingress traffic',
          args: [
            Arg(
            name: 'target-por'
          )
          ]
        ),
        Option(
          name: '--token',
          description: 'A Personal Access Token with write access to the specified repository. For more information: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line. If not provided or not found in the cache (and using --repo), a browser page will be opened to authenticate with Github',
          args: [
            Arg(
            name: 'toke'
          )
          ]
        ),
        Option(
          name: ['--workload-profile-name', '-w'],
          description: 'The friendly name for the workload profile',
          args: [
            Arg(
            name: 'workload-profile-nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a container app. In multiple revisions mode, create a new revision based on the latest revision',
      options: [

        Option(
          name: '--args',
          description: 'A list of container startup command argument(s). Space-separated values e.g. "-c" "mycommand". Empty string to clear existing values',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '--bind',
          description: 'Space separated list of services(bindings) to be connected to this app. e.g. SVC_NAME1[:BIND_NAME1] SVC_NAME2[:BIND_NAME2]',
          args: [
            Arg(
            name: 'bin'
          )
          ]
        ),
        Option(
          name: '--command',
          description: 'A list of supported commands on the container that will executed during startup. Space-separated values e.g. "/bin/queue" "mycommand". Empty string to clear existing values',
          args: [
            Arg(
            name: 'comman'
          )
          ]
        ),
        Option(
          name: '--container-name',
          description: 'Name of the container',
          args: [
            Arg(
            name: 'container-nam'
          )
          ]
        ),
        Option(
          name: '--cpu',
          description: 'Required CPU in cores from 0.25 - 2.0, e.g. 0.5',
          args: [
            Arg(
            name: 'cp'
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
          name: ['--image', '-i'],
          description: 'Container image, e.g. publisher/image-name:tag',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--max-replicas',
          description: 'The maximum number of replicas',
          args: [
            Arg(
            name: 'max-replica'
          )
          ]
        ),
        Option(
          name: '--memory',
          description: 'Required memory from 0.5 - 4.0 ending with "Gi", e.g. 1.0Gi',
          args: [
            Arg(
            name: 'memor'
          )
          ]
        ),
        Option(
          name: '--min-replicas',
          description: 'The minimum number of replicas',
          args: [
            Arg(
            name: 'min-replica'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: '--remove-all-env-vars',
          description: 'Remove all environment variable(s) from container'
        ),
        Option(
          name: '--remove-env-vars',
          description: 'Remove environment variable(s) from container. Space-separated environment variable names',
          args: [
            Arg(
            name: 'remove-env-var'
          )
          ]
        ),
        Option(
          name: '--replace-env-vars',
          description: 'Replace environment variable(s) in container. Other existing environment variables are removed. Space-separated values in \'key=value\' format. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
          args: [
            Arg(
            name: 'replace-env-var'
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
          name: '--revision-suffix',
          description: 'User friendly suffix that is appended to the revision name',
          args: [
            Arg(
            name: 'revision-suffi'
          )
          ]
        ),
        Option(
          name: ['--scale-rule-auth', '--sra'],
          description: 'Scale rule auth parameters. Auth parameters must be in format "= = ..."',
          args: [
            Arg(
            name: 'scale-rule-aut'
          )
          ]
        ),
        Option(
          name: [
            '--scale-rule-http-concurrency',
            '--scale-rule-tcp-concurrency',
            '--srhc',
            '--srtc',
          ],
          description: 'The maximum number of concurrent requests before scale out. Only supported for http and tcp scale rules',
          args: [
            Arg(
            name: 'scale-rule-http-concurrenc'
          )
          ]
        ),
        Option(
          name: ['--scale-rule-metadata', '--srm'],
          description: 'Scale rule metadata. Metadata must be in format "= = ..."',
          args: [
            Arg(
            name: 'scale-rule-metadat'
          )
          ]
        ),
        Option(
          name: ['--scale-rule-name', '--srn'],
          description: 'The name of the scale rule',
          args: [
            Arg(
            name: 'scale-rule-nam'
          )
          ]
        ),
        Option(
          name: ['--scale-rule-type', '--srt'],
          description: 'The type of the scale rule. Default: http. For more information please visit https://learn.microsoft.com/azure/container-apps/scale-app#scale-triggers',
          args: [
            Arg(
            name: 'scale-rule-typ'
          )
          ]
        ),
        Option(
          name: '--secret-volume-mount',
          description: 'Path to mount all secrets e.g. mnt/secrets',
          args: [
            Arg(
            name: 'secret-volume-moun'
          )
          ]
        ),
        Option(
          name: '--set-env-vars',
          description: 'Add or update environment variable(s) in container. Existing environment variables are not modified. Space-separated values in \'key=value\' format. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
          args: [
            Arg(
            name: 'set-env-var'
          )
          ]
        ),
        Option(
          name: '--source',
          description: 'Local directory path containing the application source and Dockerfile for building the container image. Preview: If no Dockerfile is present, a container image is generated using buildpacks. If Docker is not running or buildpacks cannot be used, Oryx will be used to generate the image. See the supported Oryx runtimes here: https://github.com/microsoft/Oryx/blob/main/doc/supportedRuntimeVersions.md',
          args: [
            Arg(
            name: 'sourc'
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
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: ['--termination-grace-period', '--tgp'],
          description: 'Duration in seconds a replica is given to gracefully shut down before it is forcefully terminated. (Default: 30)',
          args: [
            Arg(
            name: 'termination-grace-perio'
          )
          ]
        ),
        Option(
          name: '--unbind',
          description: 'Space separated list of services(bindings) to be removed from this app. e.g. BIND_NAME1',
          args: [
            Arg(
            name: 'unbin'
          )
          ]
        ),
        Option(
          name: ['--workload-profile-name', '-w'],
          description: 'The friendly name for the workload profile',
          args: [
            Arg(
            name: 'workload-profile-nam'
          )
          ]
        ),
        Option(
          name: '--yaml',
          description: 'Path to a .yaml file with the configuration of a container app. All other parameters will be ignored. For an example, see https://docs.microsoft.com/azure/container-apps/azure-resource-manager-api-spec#examples',
          args: [
            Arg(
            name: 'yam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'compose',
      description: 'Commands to create Azure Container Apps from Compose specifications',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create one or more Container Apps in a new or existing Container App Environment from a Compose specification',
          options: [

            Option(
              name: '--environment',
              description: 'Name or resource ID of the container app\'s environment',
              args: [
                Arg(
                name: 'environmen'
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
              name: ['--compose-file-path', '-f'],
              description: 'Path to a Docker Compose file with the configuration to import to Azure Container Apps',
              args: [
                Arg(
                name: 'compose-file-pat'
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
              name: '--registry-password',
              description: 'The password to log in to container registry. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
              args: [
                Arg(
                name: 'registry-passwor'
              )
              ]
            ),
            Option(
              name: '--registry-server',
              description: 'The container registry server hostname, e.g. myregistry.azurecr.io',
              args: [
                Arg(
                name: 'registry-serve'
              )
              ]
            ),
            Option(
              name: '--registry-username',
              description: 'The username to log in to container registry',
              args: [
                Arg(
                name: 'registry-usernam'
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
              name: '--transport',
              description: 'Option \'--transport\' has been deprecated and will be removed in a future release. Use \'--transport-mapping\' instead. Transport options per Container App instance (servicename=transportsetting)',
              args: [
                Arg(
                name: 'transpor'
              )
              ]
            ),
            Option(
              name: '--transport-mapping',
              description: 'Transport options per Container App instance (servicename=transportsetting)',
              args: [
                Arg(
                name: 'transport-mappin'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'connected-env',
      description: 'Commands to manage Container Apps Connected environments for use with Arc enabled Container Apps',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Container Apps connected environment',
          options: [

            Option(
              name: '--custom-location',
              description: 'Resource ID of custom location. List using \'az customlocation list\'',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Container Apps connected environment',
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
              name: ['--dapr-ai-connection-string', '-d'],
              description: 'Application Insights connection string used by Dapr to export Service to Service communication telemetry',
              args: [
                Arg(
                name: 'dapr-ai-connection-strin'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--static-ip',
              description: 'Static IP of the connectedEnvironment',
              args: [
                Arg(
                name: 'static-i'
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
          name: 'delete',
          description: 'Delete a Container Apps connected environment',
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
              description: 'Name of the Container Apps connected environment',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Container Apps connected environments by subscription or resource group',
          options: [

            Option(
              name: '--custom-location',
              description: 'Resource ID of custom location. List using \'az customlocation list\'',
              args: [
                Arg(
                name: 'custom-locatio'
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
          description: 'Show details of a Container Apps connected environment',
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
              description: 'Name of the Container Apps connected environment',
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
          name: 'certificate',
          description: 'Commands to manage certificates for the Container Apps connected environment',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a certificate from the Container Apps connected environment',
              options: [

                Option(
                  name: ['--certificate', '-c'],
                  description: 'Name or resource id of the certificate',
                  args: [
                    Arg(
                    name: 'certificat'
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
                  description: 'Name of the Container Apps connected environment',
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
                ),
                Option(
                  name: ['--thumbprint', '-t'],
                  description: 'Thumbprint of the certificate',
                  args: [
                    Arg(
                    name: 'thumbprin'
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
              description: 'List certificates for a connected environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps connected environment',
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
                  name: ['--certificate', '-c'],
                  description: 'Name or resource id of the certificate',
                  args: [
                    Arg(
                    name: 'certificat'
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
                  name: ['--thumbprint', '-t'],
                  description: 'Thumbprint of the certificate',
                  args: [
                    Arg(
                    name: 'thumbprin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'upload',
              description: 'Add or update a certificate',
              options: [

                Option(
                  name: ['--certificate-file', '-f'],
                  description: 'The filepath of the .pfx or .pem file',
                  args: [
                    Arg(
                    name: 'certificate-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-name', '-c'],
                  description: 'Name of the certificate which should be unique within the Container Apps connected environment',
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
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps connected environment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The certificate file password',
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
                  name: '--show-prompt',
                  description: 'Show prompt to upload an existing certificate'
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
          name: 'dapr-component',
          description: 'Commands to manage Dapr components for Container Apps connected environments',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List Dapr components for a connected environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The environment name',
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
              name: 'remove',
              description: 'Remove a Dapr component from a connected environment',
              options: [

                Option(
                  name: '--dapr-component-name',
                  description: 'The Dapr component name',
                  args: [
                    Arg(
                    name: 'dapr-component-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The environment name',
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
              name: 'set',
              description: 'Create or update a Dapr component',
              options: [

                Option(
                  name: '--dapr-component-name',
                  description: 'The Dapr component name',
                  args: [
                    Arg(
                    name: 'dapr-component-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The environment name',
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
                  name: '--yaml',
                  description: 'Path to a .yaml file with the configuration of a Dapr component. All other parameters will be ignored. For an example, see https://learn.microsoft.com/en-us/azure/container-apps/dapr-overview?tabs=bicep1%2Cyaml#component-schema',
                  args: [
                    Arg(
                    name: 'yam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a Dapr component',
              options: [

                Option(
                  name: '--dapr-component-name',
                  description: 'The Dapr component name',
                  args: [
                    Arg(
                    name: 'dapr-component-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The environment name',
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
            )
          ]
        ),
        Subcommand(
          name: 'storage',
          description: 'Commands to manage storage for the Container Apps connected environment',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the storages for a connected environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps connected environment',
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
              name: 'remove',
              description: 'Remove a storage from a connected environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps connected environment',
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
                  name: '--storage-name',
                  description: 'Name of the storage',
                  args: [
                    Arg(
                    name: 'storage-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Create or update a storage',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps connected environment',
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
                  name: '--storage-name',
                  description: 'Name of the storage',
                  args: [
                    Arg(
                    name: 'storage-nam'
                  )
                  ]
                ),
                Option(
                  name: '--access-mode',
                  description: 'Access mode for the AzureFile storage',
                  args: [
                    Arg(
                    name: 'access-mode',
                    suggestions: [

                      FigSuggestion(name: 'ReadOnly'),
                      FigSuggestion(name: 'ReadWrite')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--azure-file-account-name', '--account-name', '-a'],
                  description: 'Name of the AzureFile storage account',
                  args: [
                    Arg(
                    name: 'azure-file-account-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--azure-file-account-key',
                    '--storage-account-key',
                    '-k',
                  ],
                  description: 'Key of the AzureFile storage account',
                  args: [
                    Arg(
                    name: 'azure-file-account-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--azure-file-share-name', '--file-share', '-f'],
                  description: 'Name of the share on the AzureFile storage',
                  args: [
                    Arg(
                    name: 'azure-file-share-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a storage',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps connected environment',
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
                  name: '--storage-name',
                  description: 'Name of the storage',
                  args: [
                    Arg(
                    name: 'storage-nam'
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
      description: 'Commands to manage containerapp connections',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a containerapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the containerapp connection',
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
              description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
              description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
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
          description: 'List connections of a containerapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--source-id',
              description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
          description: 'List source configurations of a containerapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the containerapp connection',
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
              description: 'Name of the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-support-types',
          description: 'List client types and auth types supported by containerapp connections',
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
          description: 'Get the details of a containerapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the containerapp connection',
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
              description: 'Name of the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate a containerapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the containerapp connection',
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
              description: 'Name of the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
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
              description: 'Name of the containerapp connection',
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
              description: 'Name of the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
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
          description: 'Create a connection between a containerapp and a target resource',
          subcommands: [

            Subcommand(
              name: 'appconfig',
              description: 'Create a containerapp connection to appconfig',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to confluent-cloud',
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
                  description: 'The client type used on the containerapp',
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
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to cosmos-cassandra',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to cosmos-gremlin',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to cosmos-mongo',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to cosmos-sql',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to cosmos-table',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to eventhub',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to keyvault',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new keyvault when creating the containerapp connection'
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to mysql',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to mysql-flexible',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to postgres',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new postgres when creating the containerapp connection'
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to postgres-flexible',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to redis',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to redis-enterprise',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to servicebus',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to signalr',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to sql',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to storage-blob',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new storage-blob when creating the containerapp connection'
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to storage-file',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to storage-queue',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to storage-table',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Create a containerapp connection to webpubsub',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
          description: 'Update a containerapp connection',
          subcommands: [

            Subcommand(
              name: 'appconfig',
              description: 'Update a containerapp to appconfig connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to confluent-cloud connection',
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
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the container app. Required if \'--source-id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--source-id\' is not specified.None',
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
                  name: '--source-id',
                  description: 'The resource id of a containerapp. Required if [\'--resource-group\', \'--name\'] are not specified',
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
              description: 'Update a containerapp to cosmos-cassandra connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to cosmos-gremlin connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to cosmos-mongo connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to cosmos-sql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to cosmos-table connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to eventhub connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to keyvault connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to mysql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to mysql-flexible connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to postgres connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to postgres-flexible connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to redis connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to redis-enterprise connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to servicebus connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to signalr connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to sql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  name: '--connection',
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to storage-blob connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to storage-file connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to storage-queue connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to storage-table connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
              description: 'Update a containerapp to webpubsub connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the containerapp',
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
                  description: 'Name of the containerapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The container where the connection information will be saved (as environment variables)',
                  args: [
                    Arg(
                    name: 'containe'
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
                  description: 'Name of the container app. Required if \'--id\' is not specified.None',
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
                  description: 'The resource group which contains the container app. Required if \'--id\' is not specified.None',
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
      name: 'dapr',
      description: 'Commands to manage Dapr. To manage Dapr components, see az containerapp env dapr-component',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable Dapr for a container app. Removes existing values',
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'enable',
          description: 'Enable Dapr for a container app. Updates existing values',
          options: [

            Option(
              name: ['--dapr-enable-api-logging', '--dal'],
              description: 'Enable API logging for the Dapr sidecar'
            ),
            Option(
              name: '--dapr-app-id',
              description: 'The Dapr application identifier',
              args: [
                Arg(
                name: 'dapr-app-i'
              )
              ]
            ),
            Option(
              name: '--dapr-app-port',
              description: 'The port Dapr uses to talk to the application',
              args: [
                Arg(
                name: 'dapr-app-por'
              )
              ]
            ),
            Option(
              name: '--dapr-app-protocol',
              description: 'The protocol Dapr uses to talk to the application',
              args: [
                Arg(
                name: 'dapr-app-protocol',
                suggestions: [

                  FigSuggestion(name: 'grpc'),
                  FigSuggestion(name: 'http')
                ]
              )
              ]
            ),
            Option(
              name: ['--dapr-http-max-request-size', '--dhmrs'],
              description: 'Increase max size of request body http and grpc servers parameter in MB to handle uploading of big files',
              args: [
                Arg(
                name: 'dapr-http-max-request-siz'
              )
              ]
            ),
            Option(
              name: ['--dapr-http-read-buffer-size', '--dhrbs'],
              description: 'Dapr max size of http header read buffer in KB to handle when sending multi-KB headers',
              args: [
                Arg(
                name: 'dapr-http-read-buffer-siz'
              )
              ]
            ),
            Option(
              name: '--dapr-log-level',
              description: 'Set the log level for the Dapr sidecar',
              args: [
                Arg(
                name: 'dapr-log-level',
                suggestions: [

                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warn')
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
      name: 'env',
      description: 'Commands to manage Container Apps environments',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Container Apps environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Container Apps environment',
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
              name: ['--custom-domain-certificate-file', '--certificate-file'],
              description: 'The filepath of the certificate file (.pfx or .pem) for the environment\'s custom domain. To manage certificates for container apps, use az containerapp env certificate',
              args: [
                Arg(
                name: 'custom-domain-certificate-fil'
              )
              ]
            ),
            Option(
              name: [
                '--custom-domain-certificate-password',
                '--certificate-password',
              ],
              description: 'The certificate file password for the environment\'s custom domain',
              args: [
                Arg(
                name: 'custom-domain-certificate-passwor'
              )
              ]
            ),
            Option(
              name: ['--custom-domain-dns-suffix', '--dns-suffix'],
              description: 'The DNS suffix for the environment\'s custom domain',
              args: [
                Arg(
                name: 'custom-domain-dns-suffi'
              )
              ]
            ),
            Option(
              name: '--dapr-instrumentation-key',
              description: 'Application Insights instrumentation key used by Dapr to export Service to Service communication telemetry',
              args: [
                Arg(
                name: 'dapr-instrumentation-ke'
              )
              ]
            ),
            Option(
              name: '--docker-bridge-cidr',
              description: 'CIDR notation IP range assigned to the Docker bridge. It must not overlap with any Subnet IP ranges or the IP range defined in Platform Reserved CIDR, if defined',
              args: [
                Arg(
                name: 'docker-bridge-cid'
              )
              ]
            ),
            Option(
              name: '--enable-mtls',
              description: 'Boolean indicating if mTLS peer authentication is enabled for the environment',
              args: [
                Arg(
                name: 'enable-mtls',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--enable-workload-profiles', '-w'],
              description: 'Boolean indicating if the environment is enabled to have workload profiles'
            ),
            Option(
              name: ['--infrastructure-resource-group', '-i'],
              description: 'Name for resource group that will contain infrastructure resources. If not provided, a resource group name will be generated',
              args: [
                Arg(
                name: 'infrastructure-resource-grou'
              )
              ]
            ),
            Option(
              name: ['--infrastructure-subnet-resource-id', '-s'],
              description: 'Resource ID of a subnet for infrastructure components and user app containers',
              args: [
                Arg(
                name: 'infrastructure-subnet-resource-i'
              )
              ]
            ),
            Option(
              name: '--internal-only',
              description: 'Boolean indicating the environment only has an internal load balancer. These environments do not have a public static IP resource, therefore must provide infrastructureSubnetResourceId if enabling this property'
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of resource. Examples: eastus2, northeurope',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--logs-destination',
              description: 'Logs destination',
              args: [
                Arg(
                name: 'logs-destination',
                suggestions: [

                  FigSuggestion(name: 'azure-monitor'),
                  FigSuggestion(name: 'log-analytics'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            ),
            Option(
              name: '--logs-workspace-id',
              description: 'Workspace ID of the Log Analytics workspace to send diagnostics logs to. Only works with logs destination "log-analytics". You can use "az monitor log-analytics workspace create" to create one. Extra billing may apply',
              args: [
                Arg(
                name: 'logs-workspace-i'
              )
              ]
            ),
            Option(
              name: '--logs-workspace-key',
              description: 'Log Analytics workspace key to configure your Log Analytics workspace. Only works with logs destination "log-analytics". You can use "az monitor log-analytics workspace get-shared-keys" to retrieve the key',
              args: [
                Arg(
                name: 'logs-workspace-ke'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--platform-reserved-cidr',
              description: 'IP range in CIDR notation that can be reserved for environment infrastructure IP addresses. It must not overlap with any other Subnet IP ranges',
              args: [
                Arg(
                name: 'platform-reserved-cid'
              )
              ]
            ),
            Option(
              name: '--platform-reserved-dns-ip',
              description: 'An IP address from the IP range defined by Platform Reserved CIDR that will be reserved for the internal DNS server',
              args: [
                Arg(
                name: 'platform-reserved-dns-i'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Name or resource ID of the storage account used for Azure Monitor. If this value is provided, Azure Monitor Diagnostic Settings will be created automatically',
              args: [
                Arg(
                name: 'storage-accoun'
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
              name: ['--zone-redundant', '-z'],
              description: 'Enable zone redundancy on the environment. Cannot be used without --infrastructure-subnet-resource-id. If used with --location, the subnet\'s location must match'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Container Apps environment',
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
              description: 'Name of the Container Apps Environment',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Container Apps environments by subscription or resource group',
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
          name: 'list-usages',
          description: 'List usages of quotas for specific managed environment',
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
              description: 'Name of the Container Apps environment',
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
          description: 'Show details of a Container Apps environment',
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
              description: 'Name of the Container Apps Environment',
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
          name: 'update',
          description: 'Update a Container Apps environment',
          options: [

            Option(
              name: ['--custom-domain-certificate-file', '--certificate-file'],
              description: 'The filepath of the certificate file (.pfx or .pem) for the environment\'s custom domain. To manage certificates for container apps, use az containerapp env certificate',
              args: [
                Arg(
                name: 'custom-domain-certificate-fil'
              )
              ]
            ),
            Option(
              name: [
                '--custom-domain-certificate-password',
                '--certificate-password',
              ],
              description: 'The certificate file password for the environment\'s custom domain',
              args: [
                Arg(
                name: 'custom-domain-certificate-passwor'
              )
              ]
            ),
            Option(
              name: ['--custom-domain-dns-suffix', '--dns-suffix'],
              description: 'The DNS suffix for the environment\'s custom domain',
              args: [
                Arg(
                name: 'custom-domain-dns-suffi'
              )
              ]
            ),
            Option(
              name: '--enable-mtls',
              description: 'Boolean indicating if mTLS peer authentication is enabled for the environment',
              args: [
                Arg(
                name: 'enable-mtls',
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
              name: '--logs-destination',
              description: 'Logs destination',
              args: [
                Arg(
                name: 'logs-destination',
                suggestions: [

                  FigSuggestion(name: 'azure-monitor'),
                  FigSuggestion(name: 'log-analytics'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            ),
            Option(
              name: '--logs-workspace-id',
              description: 'Workspace ID of the Log Analytics workspace to send diagnostics logs to. Only works with logs destination "log-analytics". You can use "az monitor log-analytics workspace create" to create one. Extra billing may apply',
              args: [
                Arg(
                name: 'logs-workspace-i'
              )
              ]
            ),
            Option(
              name: '--logs-workspace-key',
              description: 'Log Analytics workspace key to configure your Log Analytics workspace. Only works with logs destination "log-analytics". You can use "az monitor log-analytics workspace get-shared-keys" to retrieve the key',
              args: [
                Arg(
                name: 'logs-workspace-ke'
              )
              ]
            ),
            Option(
              name: '--max-nodes',
              description: 'The maximum nodes for this workload profile, --workload-profile-name required',
              args: [
                Arg(
                name: 'max-node'
              )
              ]
            ),
            Option(
              name: '--min-nodes',
              description: 'The minimum nodes for this workload profile, --workload-profile-name required',
              args: [
                Arg(
                name: 'min-node'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Container Apps environment',
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Name or resource ID of the storage account used for Azure Monitor. If this value is provided, Azure Monitor Diagnostic Settings will be created automatically',
              args: [
                Arg(
                name: 'storage-accoun'
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--workload-profile-name', '-w'],
              description: 'The friendly name for the workload profile',
              args: [
                Arg(
                name: 'workload-profile-nam'
              )
              ]
            ),
            Option(
              name: '--workload-profile-type',
              description: 'The type of workload profile to add or update in this environment, --workload-profile-name required',
              args: [
                Arg(
                name: 'workload-profile-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'certificate',
          description: 'Commands to manage certificates for the Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a managed certificate',
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
                  description: 'Name of the Container Apps environment',
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
                  name: ['--validation-method', '-v'],
                  description: 'Validation method of custom domain ownership. Supported methods are HTTP, CNAME and TXT',
                  args: [
                    Arg(
                    name: 'validation-metho'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-name', '-c'],
                  description: 'Name of the managed certificate which should be unique within the Container Apps environment',
                  args: [
                    Arg(
                    name: 'certificate-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a certificate from the Container Apps environment',
              options: [

                Option(
                  name: ['--certificate', '-c'],
                  description: 'Name or resource id of the certificate',
                  args: [
                    Arg(
                    name: 'certificat'
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
                  name: ['--location', '-l'],
                  description: 'Location of resource. Examples: eastus2, northeurope',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps environment',
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
                ),
                Option(
                  name: ['--thumbprint', '-t'],
                  description: 'Thumbprint of the certificate',
                  args: [
                    Arg(
                    name: 'thumbprin'
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
              description: 'List certificates for an environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps environment',
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
                  name: ['--certificate', '-c'],
                  description: 'Name or resource id of the certificate',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location of resource. Examples: eastus2, northeurope',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-certificates-only', '-m'],
                  description: 'List managed certificates only'
                ),
                Option(
                  name: ['--private-key-certificates-only', '-p'],
                  description: 'List private-key certificates only'
                ),
                Option(
                  name: ['--thumbprint', '-t'],
                  description: 'Thumbprint of the certificate',
                  args: [
                    Arg(
                    name: 'thumbprin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'upload',
              description: 'Add or update a certificate',
              options: [

                Option(
                  name: ['--certificate-file', '-f'],
                  description: 'The filepath of the .pfx or .pem file',
                  args: [
                    Arg(
                    name: 'certificate-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-name', '-c'],
                  description: 'Name of the certificate which should be unique within the Container Apps environment',
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
                  name: ['--location', '-l'],
                  description: 'Location of resource. Examples: eastus2, northeurope',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps environment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The certificate file password',
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
                  name: '--show-prompt',
                  description: 'Show prompt to upload an existing certificate'
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
          name: 'dapr-component',
          description: 'Commands to manage Dapr components for the Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List Dapr components for an environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The environment name',
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
              name: 'remove',
              description: 'Remove a Dapr component from an environment',
              options: [

                Option(
                  name: '--dapr-component-name',
                  description: 'The Dapr component name',
                  args: [
                    Arg(
                    name: 'dapr-component-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The environment name',
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
              name: 'set',
              description: 'Create or update a Dapr component',
              options: [

                Option(
                  name: '--dapr-component-name',
                  description: 'The Dapr component name',
                  args: [
                    Arg(
                    name: 'dapr-component-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The environment name',
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
                  name: '--yaml',
                  description: 'Path to a .yaml file with the configuration of a Dapr component. All other parameters will be ignored. For an example, see https://learn.microsoft.com/en-us/azure/container-apps/dapr-overview?tabs=bicep1%2Cyaml#component-schema',
                  args: [
                    Arg(
                    name: 'yam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a Dapr component',
              options: [

                Option(
                  name: '--dapr-component-name',
                  description: 'The Dapr component name',
                  args: [
                    Arg(
                    name: 'dapr-component-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The environment name',
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
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show container app environment logs',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show past environment logs and/or print logs in real time (with the --follow parameter)',
              options: [

                Option(
                  name: '--follow',
                  description: 'Print logs in real time if present'
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
                  description: 'Name of the Container Apps environment',
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
                ),
                Option(
                  name: '--tail',
                  description: 'The number of past logs to print (0-300)',
                  args: [
                    Arg(
                    name: 'tai'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage',
          description: 'Commands to manage storage for the Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the storages for an environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps environment',
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
              name: 'remove',
              description: 'Remove a storage from an environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps environment',
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
                  name: '--storage-name',
                  description: 'Name of the storage',
                  args: [
                    Arg(
                    name: 'storage-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Create or update a storage',
              options: [

                Option(
                  name: '--access-mode',
                  description: 'Access mode for the AzureFile storage',
                  args: [
                    Arg(
                    name: 'access-mode',
                    suggestions: [

                      FigSuggestion(name: 'ReadOnly'),
                      FigSuggestion(name: 'ReadWrite')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--azure-file-account-name', '--account-name', '-a'],
                  description: 'Name of the AzureFile storage account',
                  args: [
                    Arg(
                    name: 'azure-file-account-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--azure-file-account-key',
                    '--storage-account-key',
                    '-k',
                  ],
                  description: 'Key of the AzureFile storage account',
                  args: [
                    Arg(
                    name: 'azure-file-account-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--azure-file-share-name', '--file-share', '-f'],
                  description: 'Name of the share on the AzureFile storage',
                  args: [
                    Arg(
                    name: 'azure-file-share-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps environment',
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
                  name: '--storage-name',
                  description: 'Name of the storage',
                  args: [
                    Arg(
                    name: 'storage-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a storage',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Container Apps environment',
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
                  name: '--storage-name',
                  description: 'Name of the storage',
                  args: [
                    Arg(
                    name: 'storage-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'workload-profile',
          description: 'Manage the workload profiles of a Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Create a workload profile in a Container Apps environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Container App environment',
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
                  name: ['--workload-profile-name', '-w'],
                  description: 'The friendly name for the workload profile',
                  args: [
                    Arg(
                    name: 'workload-profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--max-nodes',
                  description: 'The maximum node count for the workload profile',
                  args: [
                    Arg(
                    name: 'max-node'
                  )
                  ]
                ),
                Option(
                  name: '--min-nodes',
                  description: 'The minimum node count for the workload profile',
                  args: [
                    Arg(
                    name: 'min-node'
                  )
                  ]
                ),
                Option(
                  name: '--workload-profile-type',
                  description: 'The type of workload profile to add to this environment. Run \'az containerapp env workload-profile list-supported -l \' to check the options for your region',
                  args: [
                    Arg(
                    name: 'workload-profile-typ'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a workload profile from a Container Apps environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Container App environment',
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
                  name: ['--workload-profile-name', '-w'],
                  description: 'The friendly name for the workload profile',
                  args: [
                    Arg(
                    name: 'workload-profile-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the workload profiles from a Container Apps environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Container App environment',
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
              name: 'list-supported',
              description: 'List the supported workload profiles in a region',
              options: [

                Option(
                  name: ['--location', '-l'],
                  description: 'Location of resource. Examples: eastus2, northeurope',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Create or update an existing workload profile in a Container Apps environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Container App environment',
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
                  name: ['--workload-profile-name', '-w'],
                  description: 'The friendly name for the workload profile',
                  args: [
                    Arg(
                    name: 'workload-profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--max-nodes',
                  description: 'The maximum node count for the workload profile',
                  args: [
                    Arg(
                    name: 'max-node'
                  )
                  ]
                ),
                Option(
                  name: '--min-nodes',
                  description: 'The minimum node count for the workload profile',
                  args: [
                    Arg(
                    name: 'min-node'
                  )
                  ]
                ),
                Option(
                  name: '--workload-profile-type',
                  description: 'The type of workload profile to add or update. Run \'az containerapp env workload-profile list-supported -l \' to check the options for your region',
                  args: [
                    Arg(
                    name: 'workload-profile-typ'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a workload profile from a Container Apps environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Container App environment',
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
                  name: ['--workload-profile-name', '-w'],
                  description: 'The friendly name for the workload profile',
                  args: [
                    Arg(
                    name: 'workload-profile-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an existing workload profile in a Container Apps environment',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Container App environment',
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
                  name: ['--workload-profile-name', '-w'],
                  description: 'The friendly name for the workload profile',
                  args: [
                    Arg(
                    name: 'workload-profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--max-nodes',
                  description: 'The maximum node count for the workload profile',
                  args: [
                    Arg(
                    name: 'max-node'
                  )
                  ]
                ),
                Option(
                  name: '--min-nodes',
                  description: 'The minimum node count for the workload profile',
                  args: [
                    Arg(
                    name: 'min-node'
                  )
                  ]
                ),
                Option(
                  name: '--workload-profile-type',
                  description: 'The type of workload profile to update. Run \'az containerapp env workload-profile list-supported -l \' to check the options for your region',
                  args: [
                    Arg(
                    name: 'workload-profile-typ'
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
      name: 'github-action',
      description: 'Commands to manage GitHub Actions',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a GitHub Actions workflow to a repository to deploy a container app',
          options: [

            Option(
              name: '--repo-url',
              description: 'The GitHub repository to which the workflow file will be added. In the format: https://github.com//',
              args: [
                Arg(
                name: 'repo-ur'
              )
              ]
            ),
            Option(
              name: ['--branch', '-b'],
              description: 'The branch of the Github repo. Assumed to be the Github repo\'s default branch if not specified',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--context-path',
              description: 'Path in the repo from which to run the docker build. Defaults to "./"',
              args: [
                Arg(
                name: 'context-pat'
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
              name: ['--image', '-i'],
              description: 'Container image name that the Github Action should use. Defaults to the Container App name',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--login-with-github',
              description: 'Interactively log in with Github to retrieve the Personal Access Token'
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--registry-password',
              description: 'The password of the registry. If using Azure Container Registry, we will try to infer the credentials if not supplied',
              args: [
                Arg(
                name: 'registry-passwor'
              )
              ]
            ),
            Option(
              name: '--registry-url',
              description: 'The container registry server, e.g. myregistry.azurecr.io',
              args: [
                Arg(
                name: 'registry-ur'
              )
              ]
            ),
            Option(
              name: '--registry-username',
              description: 'The username of the registry. If using Azure Container Registry, we will try to infer the credentials if not supplied',
              args: [
                Arg(
                name: 'registry-usernam'
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
              name: '--service-principal-client-id',
              description: 'The service principal client ID',
              args: [
                Arg(
                name: 'service-principal-client-i'
              )
              ]
            ),
            Option(
              name: '--service-principal-client-secret',
              description: 'The service principal client secret',
              args: [
                Arg(
                name: 'service-principal-client-secre'
              )
              ]
            ),
            Option(
              name: '--service-principal-tenant-id',
              description: 'The service principal tenant ID',
              args: [
                Arg(
                name: 'service-principal-tenant-i'
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
          name: 'delete',
          description: 'Remove a previously configured Container Apps GitHub Actions workflow from a repository',
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
              name: '--login-with-github',
              description: 'Interactively log in with Github to retrieve the Personal Access Token'
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'show',
          description: 'Show the GitHub Actions configuration on a container app',
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
      name: 'hostname',
      description: 'Commands to manage hostnames of a container app',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add the hostname to a container app without binding',
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'bind',
          description: 'Add or update the hostname and binding with a certificate',
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
              name: ['--certificate', '-c'],
              description: 'Name or resource id of the certificate',
              args: [
                Arg(
                name: 'certificat'
              )
              ]
            ),
            Option(
              name: ['--environment', '-e'],
              description: 'Name or resource id of the Container App environment',
              args: [
                Arg(
                name: 'environmen'
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
            ),
            Option(
              name: ['--thumbprint', '-t'],
              description: 'Thumbprint of the certificate',
              args: [
                Arg(
                name: 'thumbprin'
              )
              ]
            ),
            Option(
              name: ['--validation-method', '-v'],
              description: 'Validation method of custom domain ownership',
              args: [
                Arg(
                name: 'validation-metho'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete hostnames from a container app',
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the hostnames of a container app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'identity',
      description: 'Commands to manage managed identities',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign managed identity to a container app',
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: '--system-assigned',
              description: 'Boolean indicating whether to assign system-assigned identity'
            ),
            Option(
              name: '--user-assigned',
              description: 'Space-separated user identities',
              args: [
                Arg(
                name: 'user-assigne'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a managed identity from a container app',
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: '--system-assigned',
              description: 'Boolean indicating whether to assign system-assigned identity'
            ),
            Option(
              name: '--user-assigned',
              description: 'Space-separated user identities. If no user identities are specified, all user identities will be removed',
              args: [
                Arg(
                name: 'user-assigne'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show managed identities of a container app',
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
      name: 'ingress',
      description: 'Commands to manage ingress and traffic-splitting',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable ingress for a container app',
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'enable',
          description: 'Enable or update ingress for a container app',
          options: [

            Option(
              name: '--target-port',
              description: 'The application port used for ingress traffic',
              args: [
                Arg(
                name: 'target-por'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'The ingress type',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'external'),
                  FigSuggestion(name: 'internal')
                ]
              )
              ]
            ),
            Option(
              name: '--allow-insecure',
              description: 'Allow insecure connections for ingress traffic'
            ),
            Option(
              name: '--exposed-port',
              description: 'Additional exposed port. Only supported by tcp transport protocol. Must be unique per environment if the app ingress is external',
              args: [
                Arg(
                name: 'exposed-por'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
            ),
            Option(
              name: '--transport',
              description: 'The transport protocol used for ingress traffic',
              args: [
                Arg(
                name: 'transport',
                suggestions: [

                  FigSuggestion(name: 'auto'),
                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'http2'),
                  FigSuggestion(name: 'tcp')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a container app\'s ingress',
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'update',
          description: 'Update ingress for a container app',
          options: [

            Option(
              name: '--allow-insecure',
              description: 'Allow insecure connections for ingress traffic'
            ),
            Option(
              name: '--exposed-port',
              description: 'Additional exposed port. Only supported by tcp transport protocol. Must be unique per environment if the app ingress is external',
              args: [
                Arg(
                name: 'exposed-por'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
            ),
            Option(
              name: '--target-port',
              description: 'The application port used for ingress traffic',
              args: [
                Arg(
                name: 'target-por'
              )
              ]
            ),
            Option(
              name: '--transport',
              description: 'The transport protocol used for ingress traffic',
              args: [
                Arg(
                name: 'transport',
                suggestions: [

                  FigSuggestion(name: 'auto'),
                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'http2'),
                  FigSuggestion(name: 'tcp')
                ]
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'The ingress type',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'external'),
                  FigSuggestion(name: 'internal')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'access-restriction',
          description: 'Commands to manage IP access restrictions',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List IP access restrictions for a container app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: 'remove',
              description: 'Remove IP access restrictions from a container app',
              options: [

                Option(
                  name: '--rule-name',
                  description: 'The IP security restriction name',
                  args: [
                    Arg(
                    name: 'rule-nam'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              description: 'Configure IP access restrictions for a container app',
              options: [

                Option(
                  name: '--action',
                  description: 'Whether the IP security restriction allows or denies access. All restrictions must be use the same action. If no restrictions are set, all traffic is allowed',
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
                  name: '--ip-address',
                  description: 'The address range of the IP security restriction in IPv4 CIDR notation. (for example, \'198.51.100.14/24\')',
                  args: [
                    Arg(
                    name: 'ip-addres'
                  )
                  ]
                ),
                Option(
                  name: '--rule-name',
                  description: 'The IP security restriction name',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'The description of the IP security restriction',
                  args: [
                    Arg(
                    name: 'descriptio'
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'cors',
          description: 'Commands to manage CORS policy for a container app',
          subcommands: [

            Subcommand(
              name: 'disable',
              description: 'Disable CORS policy for a container app',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: 'enable',
              description: 'Enable CORS policy for a container app',
              options: [

                Option(
                  name: ['--allowed-origins', '-r'],
                  description: 'A list of allowed origin(s) for the container app. Values are space-separated. Empty string to clear existing values',
                  args: [
                    Arg(
                    name: 'allowed-origin'
                  )
                  ]
                ),
                Option(
                  name: '--allow-credentials',
                  description: 'Whether the credential is allowed for the container app',
                  args: [
                    Arg(
                    name: 'allow-credentials',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--allowed-headers', '-a'],
                  description: 'A list of allowed header(s) for the container app. Values are space-separated. Empty string to clear existing values',
                  args: [
                    Arg(
                    name: 'allowed-header'
                  )
                  ]
                ),
                Option(
                  name: ['--allowed-methods', '-m'],
                  description: 'A list of allowed method(s) for the container app. Values are space-separated. Empty string to clear existing values',
                  args: [
                    Arg(
                    name: 'allowed-method'
                  )
                  ]
                ),
                Option(
                  name: ['--expose-headers', '-e'],
                  description: 'A list of expose header(s) for the container app. Values are space-separated. Empty string to clear existing values',
                  args: [
                    Arg(
                    name: 'expose-header'
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
                  name: '--max-age',
                  description: 'The maximum age of the allowed origin in seconds. Only postive integer or empty string are allowed. Empty string resets max_age to null',
                  args: [
                    Arg(
                    name: 'max-ag'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              description: 'Show CORS policy for a container app',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: 'update',
              description: 'Update CORS policy for a container app',
              options: [

                Option(
                  name: '--allow-credentials',
                  description: 'Whether the credential is allowed for the container app',
                  args: [
                    Arg(
                    name: 'allow-credentials',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--allowed-headers', '-a'],
                  description: 'A list of allowed header(s) for the container app. Values are space-separated. Empty string to clear existing values',
                  args: [
                    Arg(
                    name: 'allowed-header'
                  )
                  ]
                ),
                Option(
                  name: ['--allowed-methods', '-m'],
                  description: 'A list of allowed method(s) for the container app. Values are space-separated. Empty string to clear existing values',
                  args: [
                    Arg(
                    name: 'allowed-method'
                  )
                  ]
                ),
                Option(
                  name: ['--allowed-origins', '-r'],
                  description: 'A list of allowed origin(s) for the container app. Values are space-separated. Empty string to clear existing values',
                  args: [
                    Arg(
                    name: 'allowed-origin'
                  )
                  ]
                ),
                Option(
                  name: ['--expose-headers', '-e'],
                  description: 'A list of expose header(s) for the container app. Values are space-separated. Empty string to clear existing values',
                  args: [
                    Arg(
                    name: 'expose-header'
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
                  name: '--max-age',
                  description: 'The maximum age of the allowed origin in seconds. Only postive integer or empty string are allowed. Empty string resets max_age to null',
                  args: [
                    Arg(
                    name: 'max-ag'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'sticky-sessions',
          description: 'Commands to set Sticky session affinity for a container app',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Configure Sticky session for a container app',
              options: [

                Option(
                  name: '--affinity',
                  description: 'Whether the affinity for the container app is Sticky or None',
                  args: [
                    Arg(
                    name: 'affinity',
                    suggestions: [

                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'sticky')
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              description: 'Show the Affinity for a container app',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'traffic',
          description: 'Commands to manage traffic-splitting',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Configure traffic-splitting for a container app',
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
                  name: '--label-weight',
                  description: 'A list of label weight(s) for the container app. Space-separated values in \'label_name=weight\' format',
                  args: [
                    Arg(
                    name: 'label-weigh'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: '--revision-weight',
                  description: 'A list of revision weight(s) for the container app. Space-separated values in \'revision_name=weight\' format. For latest revision, use \'latest=weight\'',
                  args: [
                    Arg(
                    name: 'revision-weigh'
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
                  name: '--traffic-weight',
                  description: 'Option \'--traffic-weight\' has been deprecated and will be removed in a future release. Use \'--revision-weight\' instead. A list of revision weight(s) for the container app. Space-separated values in \'revision_name=weight\' format. For latest revision, use \'latest=weight\'',
                  args: [
                    Arg(
                    name: 'traffic-weigh'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show traffic-splitting configuration for a container app',
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
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
        )
      ]
    ),
    Subcommand(
      name: 'job',
      description: 'Commands to manage Container Apps jobs',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a container apps job',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: '--args',
              description: 'A list of container startup command argument(s). Space-separated values e.g. "-c" "mycommand". Empty string to clear existing values',
              args: [
                Arg(
                name: 'arg'
              )
              ]
            ),
            Option(
              name: '--command',
              description: 'A list of supported commands on the container that will executed during startup. Space-separated values e.g. "/bin/queue" "mycommand". Empty string to clear existing values',
              args: [
                Arg(
                name: 'comman'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Name of the container',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--cpu',
              description: 'Required CPU in cores from 0.25 - 2.0, e.g. 0.5',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: '--cron-expression',
              description: 'Cron expression. Only supported for trigger type "Schedule"',
              args: [
                Arg(
                name: 'cron-expressio'
              )
              ]
            ),
            Option(
              name: '--env-vars',
              description: 'A list of environment variable(s) for the container. Space-separated values in \'key=value\' format. Empty string to clear existing values. Prefix value with \'secretref:\' to reference a secret',
              args: [
                Arg(
                name: 'env-var'
              )
              ]
            ),
            Option(
              name: '--environment',
              description: 'Name or resource ID of the container app\'s environment',
              args: [
                Arg(
                name: 'environmen'
              )
              ]
            ),
            Option(
              name: '--environment-type',
              description: 'Type of environment',
              args: [
                Arg(
                name: 'environment-type',
                suggestions: [

                  FigSuggestion(name: 'connected'),
                  FigSuggestion(name: 'managed')
                ]
              )
              ]
            ),
            Option(
              name: '--image',
              description: 'Container image, e.g. publisher/image-name:tag',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--max-executions',
              description: 'Maximum number of job executions to run per polling interval',
              args: [
                Arg(
                name: 'max-execution'
              )
              ]
            ),
            Option(
              name: '--memory',
              description: 'Required memory from 0.5 - 4.0 ending with "Gi", e.g. 1.0Gi',
              args: [
                Arg(
                name: 'memor'
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Boolean indicating whether to assign system-assigned identity'
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Space-separated user identities to be assigned',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: '--min-executions',
              description: 'Minimum number of job executions to run per polling interval',
              args: [
                Arg(
                name: 'min-execution'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--parallelism',
              description: 'Maximum number of replicas to run per execution',
              args: [
                Arg(
                name: 'parallelis'
              )
              ]
            ),
            Option(
              name: '--polling-interval',
              description: 'Interval to check each event source in seconds. Defaults to 30s',
              args: [
                Arg(
                name: 'polling-interva'
              )
              ]
            ),
            Option(
              name: ['--replica-completion-count', '--rcc'],
              description: 'Number of replicas that need to complete successfully for execution to succeed',
              args: [
                Arg(
                name: 'replica-completion-coun'
              )
              ]
            ),
            Option(
              name: '--registry-identity',
              description: 'A Managed Identity to authenticate with the registry server instead of username/password. Use a resource ID or \'system\' for user-defined and system-defined identities, respectively. The registry must be an ACR. If possible, an \'acrpull\' role assignemnt will be created for the identity automatically',
              args: [
                Arg(
                name: 'registry-identit'
              )
              ]
            ),
            Option(
              name: '--registry-password',
              description: 'The password to log in to container registry. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
              args: [
                Arg(
                name: 'registry-passwor'
              )
              ]
            ),
            Option(
              name: '--registry-server',
              description: 'The container registry server hostname, e.g. myregistry.azurecr.io',
              args: [
                Arg(
                name: 'registry-serve'
              )
              ]
            ),
            Option(
              name: '--registry-username',
              description: 'The username to log in to container registry',
              args: [
                Arg(
                name: 'registry-usernam'
              )
              ]
            ),
            Option(
              name: '--replica-retry-limit',
              description: 'Maximum number of retries before the replica fails',
              args: [
                Arg(
                name: 'replica-retry-limi'
              )
              ]
            ),
            Option(
              name: '--replica-timeout',
              description: 'Maximum number of seconds a replica can execute',
              args: [
                Arg(
                name: 'replica-timeou'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-auth', '--sra'],
              description: 'Scale rule auth parameters. Auth parameters must be in format "= = ..."',
              args: [
                Arg(
                name: 'scale-rule-aut'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-metadata', '--srm'],
              description: 'Scale rule metadata. Metadata must be in format "= = ..."',
              args: [
                Arg(
                name: 'scale-rule-metadat'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-name', '--srn'],
              description: 'The name of the scale rule',
              args: [
                Arg(
                name: 'scale-rule-nam'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-type', '--srt'],
              description: 'The type of the scale rule',
              args: [
                Arg(
                name: 'scale-rule-typ'
              )
              ]
            ),
            Option(
              name: ['--secrets', '-s'],
              description: 'A list of secret(s) for the container app. Space-separated values in \'key=value\' format',
              args: [
                Arg(
                name: 'secret'
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
              name: '--trigger-type',
              description: 'Trigger type. Schedule | Event | Manual',
              args: [
                Arg(
                name: 'trigger-typ'
              )
              ]
            ),
            Option(
              name: ['--workload-profile-name', '-w'],
              description: 'The friendly name for the workload profile',
              args: [
                Arg(
                name: 'workload-profile-nam'
              )
              ]
            ),
            Option(
              name: '--yaml',
              description: 'Path to a .yaml file with the configuration of a container app. All other parameters will be ignored. For an example, see https://docs.microsoft.com/azure/container-apps/azure-resource-manager-api-spec#examples',
              args: [
                Arg(
                name: 'yam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Container Apps Job',
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
              description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Container Apps Job by subscription or resource group',
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
          description: 'Show details of a Container Apps Job',
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
              description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'start',
          description: 'Start a Container Apps Job execution',
          options: [

            Option(
              name: '--args',
              description: 'A list of container startup command argument(s). Space-separated values e.g. "-c" "mycommand". Empty string to clear existing values',
              args: [
                Arg(
                name: 'arg'
              )
              ]
            ),
            Option(
              name: '--command',
              description: 'A list of supported commands on the container that will executed during startup. Space-separated values e.g. "/bin/queue" "mycommand". Empty string to clear existing values',
              args: [
                Arg(
                name: 'comman'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Name of the container',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--cpu',
              description: 'Required CPU in cores from 0.25 - 2.0, e.g. 0.5',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: '--env-vars',
              description: 'A list of environment variable(s) for the container. Space-separated values in \'key=value\' format. Empty string to clear existing values. Prefix value with \'secretref:\' to reference a secret',
              args: [
                Arg(
                name: 'env-var'
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
              name: '--image',
              description: 'Container image, e.g. publisher/image-name:tag',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--memory',
              description: 'Required memory from 0.5 - 4.0 ending with "Gi", e.g. 1.0Gi',
              args: [
                Arg(
                name: 'memor'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: '--registry-identity',
              description: 'A Managed Identity to authenticate with the registry server instead of username/password. Use a resource ID or \'system\' for user-defined and system-defined identities, respectively. The registry must be an ACR. If possible, an \'acrpull\' role assignemnt will be created for the identity automatically',
              args: [
                Arg(
                name: 'registry-identit'
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
              name: '--yaml',
              description: 'Path to a .yaml file with the configuration of a container app. All other parameters will be ignored. For an example, see https://docs.microsoft.com/azure/container-apps/azure-resource-manager-api-spec#examples',
              args: [
                Arg(
                name: 'yam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stops a Container Apps Job execution',
          options: [

            Option(
              name: '--execution-name-list',
              description: 'Comma separated list of job execution names',
              args: [
                Arg(
                name: 'execution-name-lis'
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
              name: '--job-execution-name',
              description: 'Name of the specific job execution which needs to be stopped',
              args: [
                Arg(
                name: 'job-execution-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'update',
          description: 'Update a Container Apps Job',
          options: [

            Option(
              name: '--args',
              description: 'A list of container startup command argument(s). Space-separated values e.g. "-c" "mycommand". Empty string to clear existing values',
              args: [
                Arg(
                name: 'arg'
              )
              ]
            ),
            Option(
              name: '--command',
              description: 'A list of supported commands on the container that will executed during startup. Space-separated values e.g. "/bin/queue" "mycommand". Empty string to clear existing values',
              args: [
                Arg(
                name: 'comman'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Name of the container',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--cpu',
              description: 'Required CPU in cores from 0.25 - 2.0, e.g. 0.5',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: '--cron-expression',
              description: 'Cron expression. Only supported for trigger type "Schedule"',
              args: [
                Arg(
                name: 'cron-expressio'
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
              name: '--image',
              description: 'Container image, e.g. publisher/image-name:tag',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--max-executions',
              description: 'Maximum number of job executions to run per polling interval',
              args: [
                Arg(
                name: 'max-execution'
              )
              ]
            ),
            Option(
              name: '--memory',
              description: 'Required memory from 0.5 - 4.0 ending with "Gi", e.g. 1.0Gi',
              args: [
                Arg(
                name: 'memor'
              )
              ]
            ),
            Option(
              name: '--min-executions',
              description: 'Minimum number of job executions to run per polling interval',
              args: [
                Arg(
                name: 'min-execution'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: '--parallelism',
              description: 'Maximum number of replicas to run per execution',
              args: [
                Arg(
                name: 'parallelis'
              )
              ]
            ),
            Option(
              name: '--polling-interval',
              description: 'Interval to check each event source in seconds. Defaults to 30s',
              args: [
                Arg(
                name: 'polling-interva'
              )
              ]
            ),
            Option(
              name: ['--replica-completion-count', '--rcc'],
              description: 'Number of replicas that need to complete successfully for execution to succeed',
              args: [
                Arg(
                name: 'replica-completion-coun'
              )
              ]
            ),
            Option(
              name: '--remove-all-env-vars',
              description: 'Remove all environment variable(s) from container'
            ),
            Option(
              name: '--remove-env-vars',
              description: 'Remove environment variable(s) from container. Space-separated environment variable names',
              args: [
                Arg(
                name: 'remove-env-var'
              )
              ]
            ),
            Option(
              name: '--replace-env-vars',
              description: 'Replace environment variable(s) in container. Other existing environment variables are removed. Space-separated values in \'key=value\' format. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
              args: [
                Arg(
                name: 'replace-env-var'
              )
              ]
            ),
            Option(
              name: '--replica-retry-limit',
              description: 'Maximum number of retries before the replica fails',
              args: [
                Arg(
                name: 'replica-retry-limi'
              )
              ]
            ),
            Option(
              name: '--replica-timeout',
              description: 'Maximum number of seconds a replica can execute',
              args: [
                Arg(
                name: 'replica-timeou'
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
              name: ['--scale-rule-auth', '--sra'],
              description: 'Scale rule auth parameters. Auth parameters must be in format "= = ..."',
              args: [
                Arg(
                name: 'scale-rule-aut'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-metadata', '--srm'],
              description: 'Scale rule metadata. Metadata must be in format "= = ..."',
              args: [
                Arg(
                name: 'scale-rule-metadat'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-name', '--srn'],
              description: 'The name of the scale rule',
              args: [
                Arg(
                name: 'scale-rule-nam'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-type', '--srt'],
              description: 'The type of the scale rule',
              args: [
                Arg(
                name: 'scale-rule-typ'
              )
              ]
            ),
            Option(
              name: '--set-env-vars',
              description: 'Add or update environment variable(s) in container. Existing environment variables are not modified. Space-separated values in \'key=value\' format. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
              args: [
                Arg(
                name: 'set-env-var'
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--workload-profile-name', '-w'],
              description: 'The friendly name for the workload profile',
              args: [
                Arg(
                name: 'workload-profile-nam'
              )
              ]
            ),
            Option(
              name: '--yaml',
              description: 'Path to a .yaml file with the configuration of a container app. All other parameters will be ignored. For an example, see https://docs.microsoft.com/azure/container-apps/azure-resource-manager-api-spec#examples',
              args: [
                Arg(
                name: 'yam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'execution',
          description: 'Commands to view executions of a Container App Job',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get list of all executions of a Container App Job',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              description: 'Get execution of a Container App Job',
              options: [

                Option(
                  name: '--job-execution-name',
                  description: 'Name of the specific job execution',
                  args: [
                    Arg(
                    name: 'job-execution-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
            )
          ]
        ),
        Subcommand(
          name: 'identity',
          description: 'Commands to manage managed identities for container app job',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Assign managed identity to a container app job',
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
                  description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: '--system-assigned',
                  description: 'Boolean indicating whether to assign system-assigned identity'
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Space-separated user identities',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a managed identity from a container app job',
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
                  description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: '--system-assigned',
                  description: 'Boolean indicating whether to assign system-assigned identity'
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Space-separated user identities. If no user identities are specified, all user identities will be removed',
                  args: [
                    Arg(
                    name: 'user-assigne'
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
              name: 'show',
              description: 'Show managed identities of a container app job',
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
                  description: 'The name of the Container Apps Job. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'secret',
          description: 'Commands to manage secrets',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the secrets of a container app job',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the container app job for which the secret needs to be retrieved',
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
                  name: '--show-values',
                  description: 'Show the secret values'
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove secrets from a container app job',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the container app job for which the secret needs to be retrieved',
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
                  name: '--secret-names',
                  description: 'A list of secret(s) for the container app job. Space-separated secret values names',
                  args: [
                    Arg(
                    name: 'secret-name'
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
              name: 'set',
              description: 'Create/update secrets',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the container app job for which the secret needs to be retrieved',
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
                  name: ['--secrets', '-s'],
                  description: 'A list of secret(s) for the container app job. Space-separated values in \'key=value\' or \'key=keyvaultref:keyvaulturl,identityref:identity\' format (where \'key\' cannot be longer than 20 characters)',
                  args: [
                    Arg(
                    name: 'secret'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of a secret',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the container app job for which the secret needs to be retrieved',
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
                  name: '--secret-name',
                  description: 'The name of the secret to show',
                  args: [
                    Arg(
                    name: 'secret-nam'
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
      name: 'logs',
      description: 'Show container app logs',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Show past logs and/or print logs in real time (with the --follow parameter). Note that the logs are only taken from one revision, replica, and container (for non-system logs)',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp',
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
              name: '--container',
              description: 'The name of the container',
              args: [
                Arg(
                name: 'containe'
              )
              ]
            ),
            Option(
              name: '--follow',
              description: 'Print logs in real time if present'
            ),
            Option(
              name: '--format',
              description: 'Log output format',
              args: [
                Arg(
                name: 'format',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'text')
                ]
              )
              ]
            ),
            Option(
              name: '--replica',
              description: 'The name of the replica. List replicas with \'az containerapp replica list\'. A replica may not exist if there is not traffic to your app',
              args: [
                Arg(
                name: 'replic'
              )
              ]
            ),
            Option(
              name: '--revision',
              description: 'The name of the container app revision. Defaults to the latest revision',
              args: [
                Arg(
                name: 'revisio'
              )
              ]
            ),
            Option(
              name: '--tail',
              description: 'The number of past logs to print (0-300)',
              args: [
                Arg(
                name: 'tai'
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'Type of logs to stream',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'console'),
                  FigSuggestion(name: 'system')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'patch',
      description: 'Patch Azure Container Apps. Patching is only available for the apps built using the source to cloud feature. See https://aka.ms/aca-local-source-to-cloud',
      subcommands: [

        Subcommand(
          name: 'apply',
          description: 'List and apply container apps to be patched. Patching is only available for the apps built using the source to cloud feature. See https://aka.ms/aca-local-source-to-cloud',
          options: [

            Option(
              name: ['--environment', '-e'],
              description: 'Name or resource id of the Container App environment',
              args: [
                Arg(
                name: 'environmen'
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
              name: '--show-all',
              description: 'Show all patchable and unpatchable container apps'
            )
          ]
        ),
        Subcommand(
          name: 'interactive',
          description: 'List and select container apps to be patched in an interactive way. Patching is only available for the apps built using the source to cloud feature. See https://aka.ms/aca-local-source-to-cloud',
          options: [

            Option(
              name: ['--environment', '-e'],
              description: 'Name or resource id of the Container App environment',
              args: [
                Arg(
                name: 'environmen'
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
              name: '--show-all',
              description: 'Show all patchable and unpatchable container apps'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List container apps that can be patched. Patching is only available for the apps built using the source to cloud feature. See https://aka.ms/aca-local-source-to-cloud',
          options: [

            Option(
              name: ['--environment', '-e'],
              description: 'Name or resource id of the Container App environment',
              args: [
                Arg(
                name: 'environmen'
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
              name: '--show-all',
              description: 'Show all patchable and unpatchable container apps'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'registry',
      description: 'Commands to manage container registry information',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List container registries configured in a container app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'remove',
          description: 'Remove a container registry\'s details',
          options: [

            Option(
              name: '--server',
              description: 'The container registry server, e.g. myregistry.azurecr.io',
              args: [
                Arg(
                name: 'serve'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Add or update a container registry\'s details',
          options: [

            Option(
              name: '--server',
              description: 'The container registry server, e.g. myregistry.azurecr.io',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'The managed identity with which to authenticate to the Azure Container Registry (instead of username/password). Use \'system\' for a system-defined identity or a resource id for a user-defined identity. The managed identity should have been assigned acrpull permissions on the ACR before deployment (use \'az role assignment create --role acrpull ...\')',
              args: [
                Arg(
                name: 'identit'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The password of the registry. If using Azure Container Registry, we will try to infer the credentials if not supplied',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'The username of the registry. If using Azure Container Registry, we will try to infer the credentials if not supplied',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a container registry',
          options: [

            Option(
              name: '--server',
              description: 'The container registry server, e.g. myregistry.azurecr.io',
              args: [
                Arg(
                name: 'serve'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
      name: 'replica',
      description: 'Manage container app replicas',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List a container app revision\'s replica',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp',
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
              name: '--revision',
              description: 'The name of the container app revision. Defaults to the latest revision',
              args: [
                Arg(
                name: 'revisio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a container app replica',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--replica',
              description: 'The name of the replica',
              args: [
                Arg(
                name: 'replic'
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
              name: '--revision',
              description: 'The name of the container app revision. Defaults to the latest revision',
              args: [
                Arg(
                name: 'revisio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'revision',
      description: 'Commands to manage revisions',
      subcommands: [

        Subcommand(
          name: 'activate',
          description: 'Activate a revision',
          options: [

            Option(
              name: '--revision',
              description: 'Name of the revision',
              args: [
                Arg(
                name: 'revisio'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'copy',
          description: 'Create a revision based on a previous revision',
          options: [

            Option(
              name: '--args',
              description: 'A list of container startup command argument(s). Space-separated values e.g. "-c" "mycommand". Empty string to clear existing values',
              args: [
                Arg(
                name: 'arg'
              )
              ]
            ),
            Option(
              name: '--command',
              description: 'A list of supported commands on the container that will executed during startup. Space-separated values e.g. "/bin/queue" "mycommand". Empty string to clear existing values',
              args: [
                Arg(
                name: 'comman'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Name of the container',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--cpu',
              description: 'Required CPU in cores from 0.25 - 2.0, e.g. 0.5',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: '--from-revision',
              description: 'Revision to copy from. Default: latest revision',
              args: [
                Arg(
                name: 'from-revisio'
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
              name: ['--image', '-i'],
              description: 'Container image, e.g. publisher/image-name:tag',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--max-replicas',
              description: 'The maximum number of replicas',
              args: [
                Arg(
                name: 'max-replica'
              )
              ]
            ),
            Option(
              name: '--memory',
              description: 'Required memory from 0.5 - 4.0 ending with "Gi", e.g. 1.0Gi',
              args: [
                Arg(
                name: 'memor'
              )
              ]
            ),
            Option(
              name: '--min-replicas',
              description: 'The minimum number of replicas',
              args: [
                Arg(
                name: 'min-replica'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--remove-all-env-vars',
              description: 'Remove all environment variable(s) from container'
            ),
            Option(
              name: '--remove-env-vars',
              description: 'Remove environment variable(s) from container. Space-separated environment variable names',
              args: [
                Arg(
                name: 'remove-env-var'
              )
              ]
            ),
            Option(
              name: '--replace-env-vars',
              description: 'Replace environment variable(s) in container. Other existing environment variables are removed. Space-separated values in \'key=value\' format. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
              args: [
                Arg(
                name: 'replace-env-var'
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
              name: '--revision-suffix',
              description: 'User friendly suffix that is appended to the revision name',
              args: [
                Arg(
                name: 'revision-suffi'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-auth', '--sra'],
              description: 'Scale rule auth parameters. Auth parameters must be in format "= = ..."',
              args: [
                Arg(
                name: 'scale-rule-aut'
              )
              ]
            ),
            Option(
              name: [
                '--scale-rule-http-concurrency',
                '--scale-rule-tcp-concurrency',
                '--srhc',
                '--srtc',
              ],
              description: 'The maximum number of concurrent requests before scale out. Only supported for http and tcp scale rules',
              args: [
                Arg(
                name: 'scale-rule-http-concurrenc'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-metadata', '--srm'],
              description: 'Scale rule metadata. Metadata must be in format "= = ..."',
              args: [
                Arg(
                name: 'scale-rule-metadat'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-name', '--srn'],
              description: 'The name of the scale rule',
              args: [
                Arg(
                name: 'scale-rule-nam'
              )
              ]
            ),
            Option(
              name: ['--scale-rule-type', '--srt'],
              description: 'The type of the scale rule. Default: http. For more information please visit https://learn.microsoft.com/azure/container-apps/scale-app#scale-triggers',
              args: [
                Arg(
                name: 'scale-rule-typ'
              )
              ]
            ),
            Option(
              name: '--set-env-vars',
              description: 'Add or update environment variable(s) in container. Existing environment variables are not modified. Space-separated values in \'key=value\' format. If stored as a secret, value must start with \'secretref:\' followed by the secret name',
              args: [
                Arg(
                name: 'set-env-var'
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--workload-profile-name', '-w'],
              description: 'The friendly name for the workload profile',
              args: [
                Arg(
                name: 'workload-profile-nam'
              )
              ]
            ),
            Option(
              name: '--yaml',
              description: 'Path to a .yaml file with the configuration of a container app. All other parameters will be ignored. For an example, see https://docs.microsoft.com/azure/container-apps/azure-resource-manager-api-spec#examples',
              args: [
                Arg(
                name: 'yam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deactivate',
          description: 'Deactivate a revision',
          options: [

            Option(
              name: '--revision',
              description: 'Name of the revision',
              args: [
                Arg(
                name: 'revisio'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'List a container app\'s revisions',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: '--all',
              description: 'Show inactive revisions'
            )
          ]
        ),
        Subcommand(
          name: 'restart',
          description: 'Restart a revision',
          options: [

            Option(
              name: '--revision',
              description: 'Name of the revision',
              args: [
                Arg(
                name: 'revisio'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'set-mode',
          description: 'Set the revision mode of a container app',
          options: [

            Option(
              name: '--mode',
              description: 'The active revisions mode for the container app',
              args: [
                Arg(
                name: 'mode',
                suggestions: [

                  FigSuggestion(name: 'multiple'),
                  FigSuggestion(name: 'single')
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Show details of a revision',
          options: [

            Option(
              name: '--revision',
              description: 'Name of the revision',
              args: [
                Arg(
                name: 'revisio'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          name: 'label',
          description: 'Manage revision labels assigned to traffic weights',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Set a revision label to a revision with an associated traffic weight',
              options: [

                Option(
                  name: '--label',
                  description: 'Name of the label',
                  args: [
                    Arg(
                    name: 'labe'
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
                  name: '--revision',
                  description: 'Name of the revision',
                  args: [
                    Arg(
                    name: 'revisio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--no-prompt', '--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a revision label from a revision with an associated traffic weight',
              options: [

                Option(
                  name: '--label',
                  description: 'Name of the label',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: 'swap',
              description: 'Swap a revision label between two revisions with associated traffic weights',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
                  name: '--source',
                  description: 'Source label to be swapped',
                  args: [
                    Arg(
                    name: 'sourc'
                  )
                  ]
                ),
                Option(
                  name: '--target',
                  description: 'Target label to be swapped to',
                  args: [
                    Arg(
                    name: 'targe'
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
      name: 'secret',
      description: 'Commands to manage secrets',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the secrets of a container app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
              name: '--show-values',
              description: 'Show the secret values'
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove secrets from a container app',
          options: [

            Option(
              name: '--secret-names',
              description: 'A list of secret(s) for the container app. Space-separated secret values names',
              args: [
                Arg(
                name: 'secret-name'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Create/update secrets',
          options: [

            Option(
              name: ['--secrets', '-s'],
              description: 'A list of secret(s) for the container app. Space-separated values in \'key=value\' or \'key=keyvaultref:keyvaulturl,identityref:identity\' format (where \'key\' cannot be longer than 20 characters)',
              args: [
                Arg(
                name: 'secret'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
          description: 'Show details of a secret',
          options: [

            Option(
              name: '--secret-name',
              description: 'The name of the secret to show',
              args: [
                Arg(
                name: 'secret-nam'
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
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
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
      name: 'service',
      description: 'Commands to manage services available within the environment',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all services within the environment',
          options: [

            Option(
              name: '--environment',
              description: 'The environment name',
              args: [
                Arg(
                name: 'environmen'
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
          name: 'kafka',
          description: 'Commands to manage the kafka service for the Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Command to create the kafka service',
              options: [

                Option(
                  name: '--environment',
                  description: 'The environment name',
                  args: [
                    Arg(
                    name: 'environmen'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Command to delete the kafka service',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
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
          name: 'mariadb',
          description: 'Commands to manage the mariadb service for the Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Command to create the mariadb service',
              options: [

                Option(
                  name: '--environment',
                  description: 'The environment name',
                  args: [
                    Arg(
                    name: 'environmen'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Command to delete the mariadb service',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
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
          name: 'postgres',
          description: 'Commands to manage the postgres service for the Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Command to create the postgres service',
              options: [

                Option(
                  name: '--environment',
                  description: 'The environment name',
                  args: [
                    Arg(
                    name: 'environmen'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Command to delete the postgres service',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
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
          name: 'qdrant',
          description: 'Commands to manage the qdrant service for the Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Command to create the qdrant service',
              options: [

                Option(
                  name: '--environment',
                  description: 'The environment name',
                  args: [
                    Arg(
                    name: 'environmen'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Command to delete the qdrant service',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
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
          name: 'redis',
          description: 'Commands to manage the redis service for the Container Apps environment',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Command to create the redis service',
              options: [

                Option(
                  name: '--environment',
                  description: 'The environment name',
                  args: [
                    Arg(
                    name: 'environmen'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Command to delete the redis service',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The service name',
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
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
      name: 'ssl',
      description: 'Upload certificate to a managed environment, add hostname to an app in that environment, and bind the certificate to the hostname',
      subcommands: [

        Subcommand(
          name: 'upload',
          description: 'Upload certificate to a managed environment, add hostname to an app in that environment, and bind the certificate to the hostname',
          options: [

            Option(
              name: ['--certificate-file', '-f'],
              description: 'The filepath of the .pfx or .pem file',
              args: [
                Arg(
                name: 'certificate-fil'
              )
              ]
            ),
            Option(
              name: ['--environment', '-e'],
              description: 'Name or resource id of the Container App environment',
              args: [
                Arg(
                name: 'environmen'
              )
              ]
            ),
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
              name: ['--certificate-name', '-c'],
              description: 'Name of the certificate which should be unique within the Container Apps environment',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Containerapp. A name must consist of lower case alphanumeric characters or \'-\', start with a letter, end with an alphanumeric character, cannot have \'--\', and must be less than 32 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The certificate file password',
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
);
