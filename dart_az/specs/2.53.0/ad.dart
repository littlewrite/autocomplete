// Auto-generated from TypeScript source: ad.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ad` CLI
final FigSpec adSpec = FigSpec(
  name: 'ad',
  description: 'Manage Azure Active Directory Graph entities needed for Role Based Access Control',
  subcommands: [

    Subcommand(
      name: 'app',
      description: 'Manage applications with AAD Graph',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a web application, web API or native application',
          options: [

            Option(
              name: '--display-name',
              description: 'The display name of the application',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--app-roles',
              description: 'The collection of roles assigned to the application. With app role assignments, these roles can be assigned to users, groups, or service principals associated with other applications. Should be JSON file path or in-line JSON string. See examples for details',
              args: [
                Arg(
                name: 'app-role'
              )
              ]
            ),
            Option(
              name: '--enable-access-token-issuance',
              description: 'Specifies whether this web application can request an access token using the OAuth 2.0 implicit flow',
              args: [
                Arg(
                name: 'enable-access-token-issuance',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-id-token-issuance',
              description: 'Specifies whether this web application can request an ID token using the OAuth 2.0 implicit flow',
              args: [
                Arg(
                name: 'enable-id-token-issuance',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--end-date',
              description: 'Date or datetime after which credentials expire (e.g. \'2017-12-31T11:59:59+00:00\' or \'2017-12-31\'). Default value is one year after current time',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: '--identifier-uris',
              description: 'Space-separated values. Also known as App ID URI, this value is set when an application is used as a resource app. The identifierUris acts as the prefix for the scopes you\'ll reference in your API\'s code, and it must be globally unique. You can use the default value provided, which is in the form api://, or specify a more readable URI like https://contoso.com/api',
              args: [
                Arg(
                name: 'identifier-uri'
              )
              ]
            ),
            Option(
              name: '--is-fallback-public-client',
              description: 'Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is false which means the fallback application type is confidential client such as a web app',
              args: [
                Arg(
                name: 'is-fallback-public-client',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--key-display-name',
              description: 'Friendly name for the key',
              args: [
                Arg(
                name: 'key-display-nam'
              )
              ]
            ),
            Option(
              name: '--key-type',
              description: 'The type of the key credentials associated with the application',
              args: [
                Arg(
                name: 'key-type',
                suggestions: [

                  FigSuggestion(name: 'AsymmetricX509Cert'),
                  FigSuggestion(name: 'Password'),
                  FigSuggestion(name: 'Symmetric')
                ]
              )
              ]
            ),
            Option(
              name: '--key-usage',
              description: 'The usage of the key credentials associated with the application',
              args: [
                Arg(
                name: 'key-usage',
                suggestions: [

                  FigSuggestion(name: 'Sign'),
                  FigSuggestion(name: 'Verify')
                ]
              )
              ]
            ),
            Option(
              name: '--key-value',
              description: 'The value for the key credentials associated with the application',
              args: [
                Arg(
                name: 'key-valu'
              )
              ]
            ),
            Option(
              name: '--optional-claims',
              description: 'Application developers can configure optional claims in their Azure AD applications to specify the claims that are sent to their application by the Microsoft security token service. For more information, see https://docs.microsoft.com/azure/active-directory/develop/active-directory-optional-claims. Should be JSON file path or in-line JSON string. See examples for details',
              args: [
                Arg(
                name: 'optional-claim'
              )
              ]
            ),
            Option(
              name: '--public-client-redirect-uris',
              description: 'Space-separated values. Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent',
              args: [
                Arg(
                name: 'public-client-redirect-uri'
              )
              ]
            ),
            Option(
              name: '--required-resource-accesses',
              description: 'Specifies the resources that the application needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. Should be JSON file path or in-line JSON string. See examples for details',
              args: [
                Arg(
                name: 'required-resource-accesse'
              )
              ]
            ),
            Option(
              name: '--sign-in-audience',
              description: 'Specifies the Microsoft accounts that are supported for the current application',
              args: [
                Arg(
                name: 'sign-in-audience',
                suggestions: [

                  FigSuggestion(name: 'AzureADMultipleOrgs'),
                  FigSuggestion(name: 'AzureADMyOrg'),
                  FigSuggestion(name: 'AzureADandPersonalMicrosoftAccount'),
                  FigSuggestion(name: 'PersonalMicrosoftAccount')
                ]
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'Date or datetime at which credentials become valid (e.g. \'2017-01-01T01:00:00+00:00\' or \'2017-01-01\'). Default value is current time',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: '--web-home-page-url',
              description: 'Home page or landing page of the application',
              args: [
                Arg(
                name: 'web-home-page-ur'
              )
              ]
            ),
            Option(
              name: '--web-redirect-uris',
              description: 'Space-separated values. Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent',
              args: [
                Arg(
                name: 'web-redirect-uri'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an application',
          options: [

            Option(
              name: '--id',
              description: 'Identifier uri, application id, or object id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List applications',
          options: [

            Option(
              name: '--all',
              description: 'List all entities, expect long delay if under a big organization',
              args: [
                Arg(
                name: 'al'
              )
              ]
            ),
            Option(
              name: '--app-id',
              description: 'Application id',
              args: [
                Arg(
                name: 'app-i'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the application',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'OData filter, e.g. --filter "displayname eq \'test\' and servicePrincipalType eq \'Application\'"',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--identifier-uri',
              description: 'Graph application identifier, must be in uri format',
              args: [
                Arg(
                name: 'identifier-ur'
              )
              ]
            ),
            Option(
              name: '--show-mine',
              description: 'List entities owned by the current user',
              args: [
                Arg(
                name: 'show-min'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of an application',
          options: [

            Option(
              name: '--id',
              description: 'Identifier uri, application id, or object id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an application',
          options: [

            Option(
              name: '--id',
              description: 'Identifier uri, application id, or object id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
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
              name: '--app-roles',
              description: 'The collection of roles assigned to the application. With app role assignments, these roles can be assigned to users, groups, or service principals associated with other applications. Should be JSON file path or in-line JSON string. See examples for details',
              args: [
                Arg(
                name: 'app-role'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The display name of the application',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--enable-access-token-issuance',
              description: 'Specifies whether this web application can request an access token using the OAuth 2.0 implicit flow',
              args: [
                Arg(
                name: 'enable-access-token-issuance',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-id-token-issuance',
              description: 'Specifies whether this web application can request an ID token using the OAuth 2.0 implicit flow',
              args: [
                Arg(
                name: 'enable-id-token-issuance',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--end-date',
              description: 'Date or datetime after which credentials expire (e.g. \'2017-12-31T11:59:59+00:00\' or \'2017-12-31\'). Default value is one year after current time',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--identifier-uris',
              description: 'Space-separated values. Also known as App ID URI, this value is set when an application is used as a resource app. The identifierUris acts as the prefix for the scopes you\'ll reference in your API\'s code, and it must be globally unique. You can use the default value provided, which is in the form api://, or specify a more readable URI like https://contoso.com/api',
              args: [
                Arg(
                name: 'identifier-uri'
              )
              ]
            ),
            Option(
              name: '--is-fallback-public-client',
              description: 'Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is false which means the fallback application type is confidential client such as a web app',
              args: [
                Arg(
                name: 'is-fallback-public-client',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--key-display-name',
              description: 'Friendly name for the key',
              args: [
                Arg(
                name: 'key-display-nam'
              )
              ]
            ),
            Option(
              name: '--key-type',
              description: 'The type of the key credentials associated with the application',
              args: [
                Arg(
                name: 'key-type',
                suggestions: [

                  FigSuggestion(name: 'AsymmetricX509Cert'),
                  FigSuggestion(name: 'Password'),
                  FigSuggestion(name: 'Symmetric')
                ]
              )
              ]
            ),
            Option(
              name: '--key-usage',
              description: 'The usage of the key credentials associated with the application',
              args: [
                Arg(
                name: 'key-usage',
                suggestions: [

                  FigSuggestion(name: 'Sign'),
                  FigSuggestion(name: 'Verify')
                ]
              )
              ]
            ),
            Option(
              name: '--key-value',
              description: 'The value for the key credentials associated with the application',
              args: [
                Arg(
                name: 'key-valu'
              )
              ]
            ),
            Option(
              name: '--optional-claims',
              description: 'Application developers can configure optional claims in their Azure AD applications to specify the claims that are sent to their application by the Microsoft security token service. For more information, see https://docs.microsoft.com/azure/active-directory/develop/active-directory-optional-claims. Should be JSON file path or in-line JSON string. See examples for details',
              args: [
                Arg(
                name: 'optional-claim'
              )
              ]
            ),
            Option(
              name: '--public-client-redirect-uris',
              description: 'Space-separated values. Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent',
              args: [
                Arg(
                name: 'public-client-redirect-uri'
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
              name: '--required-resource-accesses',
              description: 'Specifies the resources that the application needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. Should be JSON file path or in-line JSON string. See examples for details',
              args: [
                Arg(
                name: 'required-resource-accesse'
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
              name: '--sign-in-audience',
              description: 'Specifies the Microsoft accounts that are supported for the current application',
              args: [
                Arg(
                name: 'sign-in-audience',
                suggestions: [

                  FigSuggestion(name: 'AzureADMultipleOrgs'),
                  FigSuggestion(name: 'AzureADMyOrg'),
                  FigSuggestion(name: 'AzureADandPersonalMicrosoftAccount'),
                  FigSuggestion(name: 'PersonalMicrosoftAccount')
                ]
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'Date or datetime at which credentials become valid (e.g. \'2017-01-01T01:00:00+00:00\' or \'2017-01-01\'). Default value is current time',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: '--web-home-page-url',
              description: 'Home page or landing page of the application',
              args: [
                Arg(
                name: 'web-home-page-ur'
              )
              ]
            ),
            Option(
              name: '--web-redirect-uris',
              description: 'Space-separated values. Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent',
              args: [
                Arg(
                name: 'web-redirect-uri'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'credential',
          description: 'Manage an application\'s password or certificate credentials',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete an application\'s password or certificate credentials',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--key-id',
                  description: 'Credential key id',
                  args: [
                    Arg(
                    name: 'key-i'
                  )
                  ]
                ),
                Option(
                  name: '--cert',
                  description: 'Operate on certificate credentials'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List an application\'s password or certificate credential metadata. (The content of the password or certificate credential is not retrievable.)',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--cert',
                  description: 'Operate on certificate credentials'
                )
              ]
            ),
            Subcommand(
              name: 'reset',
              description: 'Reset an application\'s password or certificate credentials',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--append',
                  description: 'Append the new credential instead of overwriting'
                ),
                Option(
                  name: '--cert',
                  description: 'Certificate to use for credentials. When used with --keyvault,, indicates the name of the cert to use or create. Otherwise, supply a PEM or DER formatted public certificate string. Use @{path} to load from a file. Do not include private key info',
                  args: [
                    Arg(
                    name: 'cer'
                  )
                  ]
                ),
                Option(
                  name: '--create-cert',
                  description: 'Create a self-signed certificate to use for the credential. Only the current OS user has read/write permission to this certificate. Use with --keyvault to create the certificate in Key Vault. Otherwise, a certificate will be created locally'
                ),
                Option(
                  name: '--display-name',
                  description: 'Friendly name for the credential',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--end-date',
                  description: 'Finer grain of expiry time if \'--years\' is insufficient, e.g. \'2020-12-31T11:59:59+00:00\' or \'2299-12-31\'',
                  args: [
                    Arg(
                    name: 'end-dat'
                  )
                  ]
                ),
                Option(
                  name: '--keyvault',
                  description: 'Name or ID of a KeyVault to use for creating or retrieving certificates',
                  args: [
                    Arg(
                    name: 'keyvaul'
                  )
                  ]
                ),
                Option(
                  name: '--years',
                  description: 'Number of years for which the credentials will be valid. Default: 1 year',
                  args: [
                    Arg(
                    name: 'year'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'federated-credential',
          description: 'Manage application federated identity credentials',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create application federated identity credential',
              options: [

                Option(
                  name: '--id',
                  description: 'Application\'s appId, identifierUri, or id (formerly known as objectId)',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--parameters',
                  description: 'Parameters for creating federated identity credential. Should be JSON file path or in-line JSON string. See examples for details',
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
              description: 'Delete application federated identity credential',
              options: [

                Option(
                  name: '--federated-credential-id',
                  description: 'ID or name of the federated identity credential',
                  args: [
                    Arg(
                    name: 'federated-credential-i'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Application\'s appId, identifierUri, or id (formerly known as objectId)',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List application federated identity credentials',
              options: [

                Option(
                  name: '--id',
                  description: 'Application\'s appId, identifierUri, or id (formerly known as objectId)',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show application federated identity credential',
              options: [

                Option(
                  name: '--federated-credential-id',
                  description: 'ID or name of the federated identity credential',
                  args: [
                    Arg(
                    name: 'federated-credential-i'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Application\'s appId, identifierUri, or id (formerly known as objectId)',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update application federated identity credential',
              options: [

                Option(
                  name: '--federated-credential-id',
                  description: 'ID or name of the federated identity credential',
                  args: [
                    Arg(
                    name: 'federated-credential-i'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Application\'s appId, identifierUri, or id (formerly known as objectId)',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--parameters',
                  description: 'Parameters for creating federated identity credential. Should be JSON file path or in-line JSON string. See examples for details',
                  args: [
                    Arg(
                    name: 'parameter'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'owner',
          description: 'Manage application owners',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an application owner',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--owner-object-id',
                  description: 'Owner\'s object id',
                  args: [
                    Arg(
                    name: 'owner-object-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List application owners',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id of the application',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove an application owner',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--owner-object-id',
                  description: 'Owner\'s object id',
                  args: [
                    Arg(
                    name: 'owner-object-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'permission',
          description: 'Manage an application\'s OAuth2 permissions',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an API permission',
              options: [

                Option(
                  name: '--api',
                  description: 'RequiredResourceAccess.resourceAppId - The unique identifier for the resource that the application requires access to. This should be equal to the appId declared on the target resource application',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--api-permissions',
                  description: 'Space-separated list of {id}={type}. {id} is resourceAccess.id - The unique identifier for one of the oauth2PermissionScopes or appRole instances that the resource application exposes. {type} is resourceAccess.type - Specifies whether the id property references an oauth2PermissionScopes or an appRole. The possible values are: Scope (for OAuth 2.0 permission scopes) or Role (for app roles)',
                  args: [
                    Arg(
                    name: 'api-permission'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'admin-consent',
              description: 'Grant Application & Delegated permissions through admin-consent',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Remove an API permission',
              options: [

                Option(
                  name: '--api',
                  description: 'RequiredResourceAccess.resourceAppId - The unique identifier for the resource that the application requires access to. This should be equal to the appId declared on the target resource application',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--api-permissions',
                  description: 'Specify ResourceAccess.id - The unique identifier for one of the OAuth2Permission or AppRole instances that the resource application exposes. Space-separated list of <resource-access-id>',
                  args: [
                    Arg(
                    name: 'api-permission'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'grant',
              description: 'Grant the app an API Delegated permissions',
              options: [

                Option(
                  name: ['--resource-id', '--api,'],
                  description: 'The id of the resource service principal to which access is authorized. This identifies the API which the client is authorized to attempt to call on behalf of a signed-in user',
                  args: [
                    Arg(
                    name: 'resource-i'
                  )
                  ]
                ),
                Option(
                  name: ['--client-id', '--id,'],
                  description: 'The id of the client service principal for the application which is authorized to act on behalf of a signed-in user when accessing an API',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'A space-separated list of the claim values for delegated permissions which should be included in access tokens for the resource application (the API). For example, openid User.Read GroupMember.Read.All. Each claim value should match the value field of one of the delegated permissions defined by the API, listed in the oauth2PermissionScopes property of the resource service principal',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                ),
                Option(
                  name: '--consent-type',
                  description: 'Indicates whether authorization is granted for the client application to impersonate all users or only a specific user. \'AllPrincipals\' indicates authorization to impersonate all users. \'Principal\' indicates authorization to impersonate a specific user. Consent on behalf of all users can be granted by an administrator. Non-admin users may be authorized to consent on behalf of themselves in some cases, for some delegated permissions',
                  args: [
                    Arg(
                    name: 'consent-type',
                    suggestions: [

                      FigSuggestion(name: 'AllPrincipals'),
                      FigSuggestion(name: 'Principal')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--principal-id',
                  description: 'The id of the user on behalf of whom the client is authorized to access the resource, when consentType is \'Principal\'. If consentType is \'AllPrincipals\' this value is null. Required when consentType is \'Principal\'',
                  args: [
                    Arg(
                    name: 'principal-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List API permissions the application has requested',
              options: [

                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id of the associated application',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-grants',
              description: 'List Oauth2 permission grants',
              options: [

                Option(
                  name: '--filter',
                  description: 'OData filter, e.g. --filter "displayname eq \'test\' and servicePrincipalType eq \'Application\'"',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Identifier uri, application id, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--show-resource-name', '-r'],
                  description: 'Show resource\'s display name',
                  args: [
                    Arg(
                    name: 'show-resource-name',
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
    ),
    Subcommand(
      name: 'ds',
      description: 'Manage domain service with azure active directory',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new domain service with the specified parameters',
          options: [

            Option(
              name: '--domain',
              description: 'The name of the Azure domain that the user would like to deploy Domain Services to',
              args: [
                Arg(
                name: 'domai'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the domain service',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--replica-sets',
              description: 'List of ReplicaSets',
              args: [
                Arg(
                name: 'replica-set'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--domain-config-type',
              description: 'Domain Configuration Type',
              args: [
                Arg(
                name: 'domain-config-type',
                suggestions: [

                  FigSuggestion(name: 'FullySynced'),
                  FigSuggestion(name: 'ResourceTrusting')
                ]
              )
              ]
            ),
            Option(
              name: '--external-access',
              description: 'A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled',
              args: [
                Arg(
                name: 'external-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--filtered-sync',
              description: 'Enabled or Disabled flag to turn on Group-based filtered sync',
              args: [
                Arg(
                name: 'filtered-sync',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--ldaps',
              description: 'A flag to determine whether or not Secure LDAP is enabled or disabled',
              args: [
                Arg(
                name: 'ldaps',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--notify-dc-admins',
              description: 'Should domain controller admins be notified',
              args: [
                Arg(
                name: 'notify-dc-admins',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--notify-global-admins',
              description: 'Should global admins be notified',
              args: [
                Arg(
                name: 'notify-global-admins',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--notify-others',
              description: 'The list of additional recipients',
              args: [
                Arg(
                name: 'notify-other'
              )
              ]
            ),
            Option(
              name: '--ntlm-v1',
              description: 'A flag to determine whether or not NtlmV1 is enabled or disabled',
              args: [
                Arg(
                name: 'ntlm-v1',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--pfx-cert',
              description: 'The certificate required to configure Secure LDAP. The parameter passed here should be the file path to the certificate pfx file or a base64encoded representation of the certificate pfx file',
              args: [
                Arg(
                name: 'pfx-cer'
              )
              ]
            ),
            Option(
              name: '--pfx-cert-pwd',
              description: 'The password to decrypt the provided Secure LDAP certificate pfx file',
              args: [
                Arg(
                name: 'pfx-cert-pw'
              )
              ]
            ),
            Option(
              name: '--resource-forest',
              description: 'Resource Forest',
              args: [
                Arg(
                name: 'resource-forest',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--settings',
              description: 'List of settings for Resource Forest. This can be either a JSON-formatted string or the location to a file containing the JSON object',
              args: [
                Arg(
                name: 'setting'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Sku Type',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Enterprise'),
                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard')
                ]
              )
              ]
            ),
            Option(
              name: '--sync-kerberos-pwd',
              description: 'A flag to determine whether or not SyncKerberosPasswords is enabled or disabled',
              args: [
                Arg(
                name: 'sync-kerberos-pwd',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--sync-ntlm-pwd',
              description: 'A flag to determine whether or not SyncNtlmPasswords is enabled or disabled',
              args: [
                Arg(
                name: 'sync-ntlm-pwd',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--sync-on-prem-pwd',
              description: 'A flag to determine whether or not SyncOnPremPasswords is enabled or disabled',
              args: [
                Arg(
                name: 'sync-on-prem-pwd',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--tls-v1',
              description: 'A flag to determine whether or not TlsV1 is enabled or disabled',
              args: [
                Arg(
                name: 'tls-v1',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'The Delete Domain Service operation deletes an existing Domain Service',
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
              description: 'The name of the domain service',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List domain services in resource group or in subscription',
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
          description: 'Get the specified domain service',
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
              description: 'The name of the domain service',
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
          name: 'update',
          description: 'Update the existing deployment properties for domain service',
          options: [

            Option(
              name: '--domain-config-type',
              description: 'Domain Configuration Type',
              args: [
                Arg(
                name: 'domain-config-type',
                suggestions: [

                  FigSuggestion(name: 'FullySynced'),
                  FigSuggestion(name: 'ResourceTrusting')
                ]
              )
              ]
            ),
            Option(
              name: '--external-access',
              description: 'A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled',
              args: [
                Arg(
                name: 'external-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--filtered-sync',
              description: 'Enabled or Disabled flag to turn on Group-based filtered sync',
              args: [
                Arg(
                name: 'filtered-sync',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--ldaps',
              description: 'A flag to determine whether or not Secure LDAP is enabled or disabled',
              args: [
                Arg(
                name: 'ldaps',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the domain service',
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
              name: '--notify-dc-admins',
              description: 'Should domain controller admins be notified',
              args: [
                Arg(
                name: 'notify-dc-admins',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--notify-global-admins',
              description: 'Should global admins be notified',
              args: [
                Arg(
                name: 'notify-global-admins',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--notify-others',
              description: 'The list of additional recipients',
              args: [
                Arg(
                name: 'notify-other'
              )
              ]
            ),
            Option(
              name: '--ntlm-v1',
              description: 'A flag to determine whether or not NtlmV1 is enabled or disabled',
              args: [
                Arg(
                name: 'ntlm-v1',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--pfx-cert',
              description: 'The certificate required to configure Secure LDAP. The parameter passed here should be the file path to the certificate pfx file or a base64encoded representation of the certificate pfx file',
              args: [
                Arg(
                name: 'pfx-cer'
              )
              ]
            ),
            Option(
              name: '--pfx-cert-pwd',
              description: 'The password to decrypt the provided Secure LDAP certificate pfx file',
              args: [
                Arg(
                name: 'pfx-cert-pw'
              )
              ]
            ),
            Option(
              name: '--replica-sets',
              description: 'List of ReplicaSets',
              args: [
                Arg(
                name: 'replica-set'
              )
              ]
            ),
            Option(
              name: '--resource-forest',
              description: 'Resource Forest',
              args: [
                Arg(
                name: 'resource-forest',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--settings',
              description: 'List of settings for Resource Forest. This can be either a JSON-formatted string or the location to a file containing the JSON object',
              args: [
                Arg(
                name: 'setting'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Sku Type',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Enterprise'),
                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard')
                ]
              )
              ]
            ),
            Option(
              name: '--sync-kerberos-pwd',
              description: 'A flag to determine whether or not SyncKerberosPasswords is enabled or disabled',
              args: [
                Arg(
                name: 'sync-kerberos-pwd',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--sync-ntlm-pwd',
              description: 'A flag to determine whether or not SyncNtlmPasswords is enabled or disabled',
              args: [
                Arg(
                name: 'sync-ntlm-pwd',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--sync-on-prem-pwd',
              description: 'A flag to determine whether or not SyncOnPremPasswords is enabled or disabled',
              args: [
                Arg(
                name: 'sync-on-prem-pwd',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--tls-v1',
              description: 'A flag to determine whether or not TlsV1 is enabled or disabled',
              args: [
                Arg(
                name: 'tls-v1',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the ad ds is met',
          options: [

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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              description: 'The name of the domain service',
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
        )
      ]
    ),
    Subcommand(
      name: 'group',
      description: 'Manage Azure Active Directory groups',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a group in the directory',
          options: [

            Option(
              name: '--display-name',
              description: 'Object\'s display name or its prefix',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--mail-nickname',
              description: 'Mail nickname',
              args: [
                Arg(
                name: 'mail-nicknam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Group description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Always create a new group instead of updating the one with same display and mail nickname',
              args: [
                Arg(
                name: 'force',
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
          name: 'delete',
          description: 'Delete a group from the directory',
          options: [

            Option(
              name: ['--group', '-g'],
              description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
              args: [
                Arg(
                name: 'grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-member-groups',
          description: 'Get a collection of object IDs of groups of which the specified group is a member',
          options: [

            Option(
              name: ['--group', '-g'],
              description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
              args: [
                Arg(
                name: 'grou'
              )
              ]
            ),
            Option(
              name: '--security-enabled-only',
              description: 'True to specify that only security groups that the entity is a member of should be returned; false to specify that all groups and directory roles that the entity is a member of should be returned'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List groups in the directory',
          options: [

            Option(
              name: '--display-name',
              description: 'Object\'s display name or its prefix',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'OData filter, e.g. --filter "displayname eq \'test\' and servicePrincipalType eq \'Application\'"',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get group information from the directory',
          options: [

            Option(
              name: ['--group', '-g'],
              description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
              args: [
                Arg(
                name: 'grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'member',
          description: 'Manage Azure Active Directory group members',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a member to a group',
              options: [

                Option(
                  name: ['--group', '-g'],
                  description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
                  args: [
                    Arg(
                    name: 'grou'
                  )
                  ]
                ),
                Option(
                  name: '--member-id',
                  description: 'The object ID of the contact, group, user, or service principal',
                  args: [
                    Arg(
                    name: 'member-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'check',
              description: 'Check if a member is in a group',
              options: [

                Option(
                  name: ['--group', '-g'],
                  description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
                  args: [
                    Arg(
                    name: 'grou'
                  )
                  ]
                ),
                Option(
                  name: '--member-id',
                  description: 'The object ID of the contact, group, user, or service principal',
                  args: [
                    Arg(
                    name: 'member-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Get the members of a group',
              options: [

                Option(
                  name: ['--group', '-g'],
                  description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
                  args: [
                    Arg(
                    name: 'grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a member from a group',
              options: [

                Option(
                  name: ['--group', '-g'],
                  description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
                  args: [
                    Arg(
                    name: 'grou'
                  )
                  ]
                ),
                Option(
                  name: '--member-id',
                  description: 'The object ID of the contact, group, user, or service principal',
                  args: [
                    Arg(
                    name: 'member-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'owner',
          description: 'Manage Azure Active Directory group owners',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a group owner',
              options: [

                Option(
                  name: ['--group', '-g'],
                  description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
                  args: [
                    Arg(
                    name: 'grou'
                  )
                  ]
                ),
                Option(
                  name: '--owner-object-id',
                  description: 'Owner\'s object id',
                  args: [
                    Arg(
                    name: 'owner-object-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List group owners',
              options: [

                Option(
                  name: ['--group', '-g'],
                  description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
                  args: [
                    Arg(
                    name: 'grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a group owner',
              options: [

                Option(
                  name: ['--group', '-g'],
                  description: 'Group\'s object id or display name(prefix also works if there is a unique match)',
                  args: [
                    Arg(
                    name: 'grou'
                  )
                  ]
                ),
                Option(
                  name: '--owner-object-id',
                  description: 'Owner\'s object id',
                  args: [
                    Arg(
                    name: 'owner-object-i'
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
      name: 'signed-in-user',
      description: 'Show graph information about current signed-in user in CLI',
      subcommands: [

        Subcommand(
          name: 'list-owned-objects',
          description: 'Get the list of directory objects that are owned by the user',
          options: [

            Option(
              name: ['--type', '-t'],
              description: 'Object type filter, e.g. "application", "servicePrincipal" "group", etc',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details for the currently logged-in user'
        )
      ]
    ),
    Subcommand(
      name: 'sp',
      description: 'Manage Azure Active Directory service principals for automation authentication',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a service principal',
          options: [

            Option(
              name: '--id',
              description: 'Identifier uri, application id, or object id of the associated application',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-for-rbac',
          description: 'Create a service principal and configure its access to Azure resources',
          options: [

            Option(
              name: '--cert',
              description: 'Certificate to use for credentials. When used with --keyvault,, indicates the name of the cert to use or create. Otherwise, supply a PEM or DER formatted public certificate string. Use @{path} to load from a file. Do not include private key info',
              args: [
                Arg(
                name: 'cer'
              )
              ]
            ),
            Option(
              name: '--create-cert',
              description: 'Create a self-signed certificate to use for the credential. Only the current OS user has read/write permission to this certificate. Use with --keyvault to create the certificate in Key Vault. Otherwise, a certificate will be created locally'
            ),
            Option(
              name: ['--display-name', '--name', '-n'],
              description: 'Display name of the service principal. If not present, default to azure-cli-%Y-%m-%d-%H-%M-%S where the suffix is the time of creation',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: ['--json-auth', '--sdk-auth'],
              description: 'Option \'--sdk-auth\' has been deprecated and will be removed in a future release. Output service principal credential along with cloud endpoints in JSON format',
              args: [
                Arg(
                name: 'json-auth',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--keyvault',
              description: 'Name or ID of a KeyVault to use for creating or retrieving certificates',
              args: [
                Arg(
                name: 'keyvaul'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Role of the service principal',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scopes',
              description: 'Space-separated list of scopes the service principal\'s role assignment applies to. e.g., subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM',
              args: [
                Arg(
                name: 'scope'
              )
              ]
            ),
            Option(
              name: '--years',
              description: 'Number of years for which the credentials will be valid. Default: 1 year',
              args: [
                Arg(
                name: 'year'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a service principal',
          options: [

            Option(
              name: '--id',
              description: 'Service principal name, or object id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List service principals',
          options: [

            Option(
              name: '--all',
              description: 'List all entities, expect long delay if under a big organization',
              args: [
                Arg(
                name: 'al'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Object\'s display name or its prefix',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'OData filter, e.g. --filter "displayname eq \'test\' and servicePrincipalType eq \'Application\'"',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--show-mine',
              description: 'List entities owned by the current user',
              args: [
                Arg(
                name: 'show-min'
              )
              ]
            ),
            Option(
              name: '--spn',
              description: 'Service principal name',
              args: [
                Arg(
                name: 'sp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a service principal',
          options: [

            Option(
              name: '--id',
              description: 'Service principal name, or object id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a service principal',
          options: [

            Option(
              name: '--id',
              description: 'Service principal name, or object id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
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
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'credential',
          description: 'Manage a service principal\'s password or certificate credentials',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a service principal\'s password or certificate credentials',
              options: [

                Option(
                  name: '--id',
                  description: 'Service principal name, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--key-id',
                  description: 'Credential key id',
                  args: [
                    Arg(
                    name: 'key-i'
                  )
                  ]
                ),
                Option(
                  name: '--cert',
                  description: 'Operate on certificate credentials'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List a service principal\'s password or certificate credential metadata. (The content of the password or certificate credential is not retrievable.)',
              options: [

                Option(
                  name: '--id',
                  description: 'Service principal name, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--cert',
                  description: 'Operate on certificate credentials'
                )
              ]
            ),
            Subcommand(
              name: 'reset',
              description: 'Reset a service principal\'s password or certificate credentials',
              options: [

                Option(
                  name: '--id',
                  description: 'Service principal name, or object id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--append',
                  description: 'Append the new credential instead of overwriting'
                ),
                Option(
                  name: '--cert',
                  description: 'Certificate to use for credentials. When used with --keyvault,, indicates the name of the cert to use or create. Otherwise, supply a PEM or DER formatted public certificate string. Use @{path} to load from a file. Do not include private key info',
                  args: [
                    Arg(
                    name: 'cer'
                  )
                  ]
                ),
                Option(
                  name: '--create-cert',
                  description: 'Create a self-signed certificate to use for the credential. Only the current OS user has read/write permission to this certificate. Use with --keyvault to create the certificate in Key Vault. Otherwise, a certificate will be created locally'
                ),
                Option(
                  name: '--display-name',
                  description: 'Friendly name for the credential',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--end-date',
                  description: 'Finer grain of expiry time if \'--years\' is insufficient, e.g. \'2020-12-31T11:59:59+00:00\' or \'2299-12-31\'',
                  args: [
                    Arg(
                    name: 'end-dat'
                  )
                  ]
                ),
                Option(
                  name: '--keyvault',
                  description: 'Name or ID of a KeyVault to use for creating or retrieving certificates',
                  args: [
                    Arg(
                    name: 'keyvaul'
                  )
                  ]
                ),
                Option(
                  name: '--years',
                  description: 'Number of years for which the credentials will be valid. Default: 1 year',
                  args: [
                    Arg(
                    name: 'year'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'owner',
          description: 'Manage service principal owners',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List service principal owners',
              options: [

                Option(
                  name: '--id',
                  description: 'Service principal name, or object id or the service principal',
                  args: [
                    Arg(
                    name: 'i'
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
      name: 'user',
      description: 'Manage Azure Active Directory users and user authentication',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an Azure Active Directory user',
          options: [

            Option(
              name: '--display-name',
              description: 'Object\'s display name or its prefix',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The password that should be assigned to the user for authentication',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--user-principal-name',
              description: 'The user principal name (someuser@contoso.com). It must contain one of the verified domains for the tenant',
              args: [
                Arg(
                name: 'user-principal-nam'
              )
              ]
            ),
            Option(
              name: '--force-change-password-next-sign-in',
              description: 'Marks this user as needing to update their password the next time they authenticate. If omitted, false will be used'
            ),
            Option(
              name: '--immutable-id',
              description: 'This must be specified if you are using a federated domain for the user\'s userPrincipalName (UPN) property when creating a new user account. It is used to associate an on-premises Active Directory user account with their Azure AD user object',
              args: [
                Arg(
                name: 'immutable-i'
              )
              ]
            ),
            Option(
              name: '--mail-nickname',
              description: 'Mail alias. Defaults to user principal name',
              args: [
                Arg(
                name: 'mail-nicknam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete Azure Active Directory user',
          options: [

            Option(
              name: '--id',
              description: 'The object ID or principal name of the user for which to get information',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-member-groups',
          description: 'Get groups of which the user is a member',
          options: [

            Option(
              name: '--id',
              description: 'The object ID or principal name of the user for which to get information',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--security-enabled-only',
              description: 'True to specify that only security groups that the entity is a member of should be returned; false to specify that all groups and directory roles that the entity is a member of should be returned'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Azure Active Directory users',
          options: [

            Option(
              name: '--display-name',
              description: 'Object\'s display name or its prefix',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'OData filter, e.g. --filter "displayname eq \'test\' and servicePrincipalType eq \'Application\'"',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--upn',
              description: 'User principal name, e.g. john.doe@contoso.com',
              args: [
                Arg(
                name: 'up'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details for a Azure Active Directory user',
          options: [

            Option(
              name: '--id',
              description: 'The object ID or principal name of the user for which to get information',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update Azure Active Directory users',
          options: [

            Option(
              name: '--id',
              description: 'The object ID or principal name of the user for which to get information',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--account-enabled',
              description: 'Enable the user account',
              args: [
                Arg(
                name: 'account-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Object\'s display name or its prefix',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--force-change-password-next-sign-in',
              description: 'If the user must change her password on the next login',
              args: [
                Arg(
                name: 'force-change-password-next-sign-in',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--mail-nickname',
              description: 'Mail alias. Defaults to user principal name',
              args: [
                Arg(
                name: 'mail-nicknam'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'User password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
