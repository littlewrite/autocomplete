// Auto-generated from TypeScript source: appconfig.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `appconfig` CLI
final FigSpec appconfigSpec = FigSpec(
  name: 'appconfig',
  description: 'Manage App Configurations',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create an App Configuration',
      options: [

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
          description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
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
          name: '--assign-identity',
          description: 'Space-separated list of managed identities to be assigned. Use "[system]" to refer to system-assigned managed identity or a resource ID to refer to user-assigned managed identity. If this argument is provided without any value, system-assigned managed identity will be assigned by default. If this argument is not provided, no managed identities will be assigned to this App Configuration store',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--disable-local-auth',
          description: 'Disable all authentication methods other than AAD authentication',
          args: [
            Arg(
            name: 'disable-local-auth',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--enable-public-network', '-e'],
          description: 'When true, requests coming from public networks have permission to access this store while private endpoint is enabled. When false, only requests made through Private Links can reach this store',
          args: [
            Arg(
            name: 'enable-public-network',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--enable-purge-protection', '-p'],
          description: 'Property specifying whether protection against purge is enabled for this App Configuration. Setting this property to true activates protection against purge for this App Configuration and its contents. Enabling this functionality is irreversible',
          args: [
            Arg(
            name: 'enable-purge-protection',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--retention-days',
          description: 'Number of days to retain the soft delete enabled App Configuration after deleting. Must be a positive integer between 0 and 7',
          args: [
            Arg(
            name: 'retention-day'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'The sku of App Configuration',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Free'),
              FigSuggestion(name: 'Standard')
            ]
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]',
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
      description: 'Delete an App Configuration',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Lists all App Configurations under the current subscription',
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
      name: 'list-deleted',
      description: 'List all deleted, but not yet purged App Configurations'
    ),
    Subcommand(
      name: 'purge',
      description: 'Permanently delete an App Configuration. Aka \'purge\' the deleted App Configuration',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location of the deleted App Configuration. Can be viewed using command az appconfig show-deleted',
          args: [
            Arg(
            name: 'locatio'
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
      name: 'recover',
      description: 'Recover a previously deleted, but not yet purged App Configuration',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location of the deleted App Configuration. Can be viewed using command az appconfig show-deleted',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Resource group of the deleted App Configuration',
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
      name: 'show',
      description: 'Show properties of an App Configuration',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
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
      name: 'show-deleted',
      description: 'Show properties of a deleted, but not yet purged App Configuration',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location of the deleted App Configuration',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update an App Configuration',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--disable-local-auth',
          description: 'Disable all authentication methods other than AAD authentication',
          args: [
            Arg(
            name: 'disable-local-auth',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--enable-public-network', '-e'],
          description: 'When true, requests coming from public networks have permission to access this store while private endpoint is enabled. When false, only requests made through Private Links can reach this store',
          args: [
            Arg(
            name: 'enable-public-network',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--enable-purge-protection', '-p'],
          description: 'Property specifying whether protection against purge is enabled for this App Configuration. Setting this property to true activates protection against purge for this App Configuration and its contents. Enabling this functionality is irreversible',
          args: [
            Arg(
            name: 'enable-purge-protection',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-key-name',
          description: 'The name of the KeyVault key',
          args: [
            Arg(
            name: 'encryption-key-nam'
          )
          ]
        ),
        Option(
          name: '--encryption-key-vault',
          description: 'The URI of the KeyVault',
          args: [
            Arg(
            name: 'encryption-key-vaul'
          )
          ]
        ),
        Option(
          name: '--encryption-key-version',
          description: 'The version of the KeyVault key. Use the latest version by default',
          args: [
            Arg(
            name: 'encryption-key-versio'
          )
          ]
        ),
        Option(
          name: '--identity-client-id',
          description: 'Client ID of the managed identity with wrap and unwrap access to encryption key. Use system-assigned managed identity by default',
          args: [
            Arg(
            name: 'identity-client-i'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'The sku of App Configuration',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Free'),
              FigSuggestion(name: 'Standard')
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
      name: 'credential',
      description: 'Manage credentials for App Configurations',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List access keys of an App Configuration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
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
          name: 'regenerate',
          description: 'Regenerate an access key for an App Configuration',
          options: [

            Option(
              name: '--id',
              description: 'Id of the key to be regenerated. Can be found using az appconfig credential list command',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
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
      name: 'feature',
      description: 'Manage feature flags stored in an App Configuration',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete feature flag',
          options: [

            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--feature',
              description: 'Name of the feature to be deleted. If the feature flag key is different from the default key, provide the --key argument instead. Support star sign as filters, for instance * means all features and abc* means features with abc as prefix. Comma separated features are not supported. Please provide escaped string if your feature name contains comma',
              args: [
                Arg(
                name: 'featur'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Support star sign as filters, for instance ".appconfig.featureflag/" means all features and ".appconfig.featureflag/abc" means features with abc as prefix. Comma separated features are not supported. Please provide escaped string if your feature name contains comma',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, delete the feature flag with null label by default. Support star sign as filters, for instance * means all labels and abc* means labels with abc as prefix',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          name: 'disable',
          description: 'Disable a feature flag to turn it OFF for use',
          options: [

            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--feature',
              description: 'Name of the feature to be disabled. If the feature flag key is different from the default key, provide the --key argument instead',
              args: [
                Arg(
                name: 'featur'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, disable the feature flag with null label by default',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          name: 'enable',
          description: 'Enable a feature flag to turn it ON for use',
          options: [

            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--feature',
              description: 'Name of the feature to be enabled. If the feature flag key is different from the default key, provide the --key argument instead',
              args: [
                Arg(
                name: 'featur'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, enable the feature flag with null label by default',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          description: 'List feature flags',
          options: [

            Option(
              name: '--all',
              description: 'List all feature flags'
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--feature',
              description: 'Name of the feature to be listed. If the feature flag key is different from the default key, provide the --key argument instead. Support star sign as filters, for instance * means all features and abc* means features with abc as prefix. Comma separated features are not supported. Please provide escaped string if your feature name contains comma',
              args: [
                Arg(
                name: 'featur'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Customize output fields for Feature Flags',
              args: [
                Arg(
                name: 'fields',
                suggestions: [

                  FigSuggestion(name: 'conditions'),
                  FigSuggestion(name: 'description'),
                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'label'),
                  FigSuggestion(name: 'last_modified'),
                  FigSuggestion(name: 'locked'),
                  FigSuggestion(name: 'name'),
                  FigSuggestion(name: 'state')
                ]
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Support star sign as filters, for instance ".appconfig.featureflag/" means all features and ".appconfig.featureflag/abc" means features with abc as prefix. Comma separated features are not supported. Please provide escaped string if your feature name contains comma',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, list all labels. Support star sign as filters, for instance * means all labels and abc* means labels with abc as prefix. Use \'\\0\' for null label',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--top', '-t'],
              description: 'Maximum number of items to return. Must be a positive integer. Default to 100',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'lock',
          description: 'Lock a feature flag to prohibit write operations',
          options: [

            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--feature',
              description: 'Name of the feature to be locked. If the feature flag key is different from the default key, provide the --key argument instead',
              args: [
                Arg(
                name: 'featur'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, lock the feature flag with null label by default',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          description: 'Set a feature flag',
          options: [

            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the feature flag to be set',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--feature',
              description: 'Name of the feature flag to be set. Feature name cannot contain the \'%\' character',
              args: [
                Arg(
                name: 'featur'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, set the feature flag with null label by default',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          description: 'Show all attributes of a feature flag',
          options: [

            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--feature',
              description: 'Name of the feature flag to be retrieved. If the feature flag key is different from the default key, provide the --key argument instead',
              args: [
                Arg(
                name: 'featur'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Customize output fields for Feature Flags',
              args: [
                Arg(
                name: 'fields',
                suggestions: [

                  FigSuggestion(name: 'conditions'),
                  FigSuggestion(name: 'description'),
                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'label'),
                  FigSuggestion(name: 'last_modified'),
                  FigSuggestion(name: 'locked'),
                  FigSuggestion(name: 'name'),
                  FigSuggestion(name: 'state')
                ]
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, show entry with null label. Filtering is not supported',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unlock',
          description: 'Unlock a feature to gain write operations',
          options: [

            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--feature',
              description: 'Name of the feature to be unlocked. If the feature flag key is different from the default key, provide the --key argument instead',
              args: [
                Arg(
                name: 'featur'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, unlock the feature flag with null label by default',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          name: 'filter',
          description: 'Manage filters associated with feature flags stored in an App Configuration',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a filter to a feature flag',
              options: [

                Option(
                  name: '--filter-name',
                  description: 'Name of the filter to be added',
                  args: [
                    Arg(
                    name: 'filter-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auth-mode',
                  description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
                  args: [
                    Arg(
                    name: 'auth-mode',
                    suggestions: [

                      FigSuggestion(name: 'key'),
                      FigSuggestion(name: 'login')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--feature',
                  description: 'Name of the feature to which you want to add the filter. If the feature flag key is different from the default key, provide the --key argument instead',
                  args: [
                    Arg(
                    name: 'featur'
                  )
                  ]
                ),
                Option(
                  name: '--filter-parameters',
                  description: 'Space-separated filter parameters in \'name[=value]\' format. The value must be an escaped JSON string',
                  args: [
                    Arg(
                    name: 'filter-parameter'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'Zero-based index in the list of filters where you want to insert the new filter. If no index is specified or index is invalid, filter will be added to the end of the list',
                  args: [
                    Arg(
                    name: 'inde'
                  )
                  ]
                ),
                Option(
                  name: '--key',
                  description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
                  args: [
                    Arg(
                    name: 'ke'
                  )
                  ]
                ),
                Option(
                  name: '--label',
                  description: 'If no label specified, add to the feature flag with null label by default',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
                  args: [
                    Arg(
                    name: 'nam'
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
              name: 'delete',
              description: 'Delete a filter from a feature flag',
              options: [

                Option(
                  name: '--all',
                  description: 'Delete all filters associated with a feature flag'
                ),
                Option(
                  name: '--auth-mode',
                  description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
                  args: [
                    Arg(
                    name: 'auth-mode',
                    suggestions: [

                      FigSuggestion(name: 'key'),
                      FigSuggestion(name: 'login')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--feature',
                  description: 'Name of the feature from which you want to delete the filter. If the feature flag key is different from the default key, provide the --key argument instead',
                  args: [
                    Arg(
                    name: 'featur'
                  )
                  ]
                ),
                Option(
                  name: '--filter-name',
                  description: 'Name of the filter to be deleted',
                  args: [
                    Arg(
                    name: 'filter-nam'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'Zero-based index of the filter to be deleted in case there are multiple instances with same filter name',
                  args: [
                    Arg(
                    name: 'inde'
                  )
                  ]
                ),
                Option(
                  name: '--key',
                  description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
                  args: [
                    Arg(
                    name: 'ke'
                  )
                  ]
                ),
                Option(
                  name: '--label',
                  description: 'If no label specified, delete from the feature flag with null label by default',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
                  args: [
                    Arg(
                    name: 'nam'
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
              description: 'List all filters for a feature flag',
              options: [

                Option(
                  name: '--all',
                  description: 'List all filters associated with a feature flag'
                ),
                Option(
                  name: '--auth-mode',
                  description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
                  args: [
                    Arg(
                    name: 'auth-mode',
                    suggestions: [

                      FigSuggestion(name: 'key'),
                      FigSuggestion(name: 'login')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--feature',
                  description: 'Name of the feature whose filters you want to be displayed. If the feature flag key is different from the default key, provide the --key argument instead',
                  args: [
                    Arg(
                    name: 'featur'
                  )
                  ]
                ),
                Option(
                  name: '--key',
                  description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
                  args: [
                    Arg(
                    name: 'ke'
                  )
                  ]
                ),
                Option(
                  name: '--label',
                  description: 'If no label specified, display filters from the feature flag with null label by default',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--top', '-t'],
                  description: 'Maximum number of items to return. Must be a positive integer. Default to 100',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show filters of a feature flag',
              options: [

                Option(
                  name: '--filter-name',
                  description: 'Name of the filter to be displayed',
                  args: [
                    Arg(
                    name: 'filter-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auth-mode',
                  description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
                  args: [
                    Arg(
                    name: 'auth-mode',
                    suggestions: [

                      FigSuggestion(name: 'key'),
                      FigSuggestion(name: 'login')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--feature',
                  description: 'Name of the feature which contains the filter. If the feature flag key is different from the default key, provide the --key argument instead',
                  args: [
                    Arg(
                    name: 'featur'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'Zero-based index of the filter to be displayed in case there are multiple instances with same filter name',
                  args: [
                    Arg(
                    name: 'inde'
                  )
                  ]
                ),
                Option(
                  name: '--key',
                  description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
                  args: [
                    Arg(
                    name: 'ke'
                  )
                  ]
                ),
                Option(
                  name: '--label',
                  description: 'If no label specified, show the feature flag with null label by default',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a filter in a feature flag',
              options: [

                Option(
                  name: '--filter-name',
                  description: 'Name of the filter to be updated',
                  args: [
                    Arg(
                    name: 'filter-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auth-mode',
                  description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
                  args: [
                    Arg(
                    name: 'auth-mode',
                    suggestions: [

                      FigSuggestion(name: 'key'),
                      FigSuggestion(name: 'login')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--feature',
                  description: 'Name of the feature whose filter you want to update. If the feature flag key is different from the default key, provide the --key argument instead',
                  args: [
                    Arg(
                    name: 'featur'
                  )
                  ]
                ),
                Option(
                  name: '--filter-parameters',
                  description: 'Space-separated filter parameters in \'name[=value]\' format. The value must be an escaped JSON string',
                  args: [
                    Arg(
                    name: 'filter-parameter'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'Zero-based index of the filter to be updated in case there are multiple instances with same filter name',
                  args: [
                    Arg(
                    name: 'inde'
                  )
                  ]
                ),
                Option(
                  name: '--key',
                  description: 'Key of the feature flag. Key must start with the ".appconfig.featureflag/" prefix. Key cannot contain the "%" character. If both key and feature arguments are provided, only key will be used. Default key is the reserved prefix ".appconfig.featureflag/" + feature name',
                  args: [
                    Arg(
                    name: 'ke'
                  )
                  ]
                ),
                Option(
                  name: '--label',
                  description: 'If no label specified, update the feature flag with null label by default',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
                  args: [
                    Arg(
                    name: 'nam'
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
      name: 'identity',
      description: 'Managed identities for App Configurations',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Update managed identities for an App Configuration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--identities',
              description: 'Accept system-assigned or user-assigned managed identities separated by spaces. Use \'[system]\' to refer to system-assigned managed identity or a resource ID to refer to user-assigned managed identity. If this argument is not provided or this argument is provided without any value, system-assigned managed identity will be used by default',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
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
          description: 'Remove managed identities for an App Configuration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--identities',
              description: 'Accept system-assigned or user-assigned managed identities separated by spaces. Use \'[system]\' to refer to system-assigned managed identity, \'[all]\' for all managed identities or a resource ID to refer user-assigned managed identity. If this argument is not provided or this argument is provided without any value, system-assigned managed identity will be removed by default',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
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
          description: 'Display managed identities for an App Configuration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
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
      name: 'kv',
      description: 'Manage key-values stored in an App Configuration',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete key-values',
          options: [

            Option(
              name: '--key',
              description: 'Support star sign as filters, for instance * means all key and abc* means keys with abc as prefix',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, delete entry with null label. Support star sign as filters, for instance * means all label and abc* means labels with abc as prefix',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          name: 'export',
          description: 'Export configurations to another place from your App Configuration',
          options: [

            Option(
              name: ['--destination', '-d'],
              description: 'The destination of exporting. Note that exporting feature flags to appservice is not supported',
              args: [
                Arg(
                name: 'destination',
                suggestions: [

                  FigSuggestion(name: 'appconfig'),
                  FigSuggestion(name: 'appservice'),
                  FigSuggestion(name: 'file')
                ]
              )
              ]
            ),
            Option(
              name: '--appservice-account',
              description: 'ARM ID for AppService OR the name of the AppService, assuming it is in the same subscription and resource group as the App Configuration. Required for AppService arguments',
              args: [
                Arg(
                name: 'appservice-accoun'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--dest-auth-mode',
              description: 'Auth mode for connecting to destination App Configuration. For details, refer to "--auth-mode" argument',
              args: [
                Arg(
                name: 'dest-auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--dest-connection-string',
              description: 'Combination of access key and endpoint of the destination store',
              args: [
                Arg(
                name: 'dest-connection-strin'
              )
              ]
            ),
            Option(
              name: '--dest-endpoint',
              description: 'If --dest-auth-mode is "login", provide endpoint URL of the destination App Configuration',
              args: [
                Arg(
                name: 'dest-endpoin'
              )
              ]
            ),
            Option(
              name: '--dest-label',
              description: 'Exported KVs will be labeled with this destination label. If neither --dest-label nor --preserve-labels is specified, will assign null label',
              args: [
                Arg(
                name: 'dest-labe'
              )
              ]
            ),
            Option(
              name: '--dest-name',
              description: 'The name of the destination App Configuration',
              args: [
                Arg(
                name: 'dest-nam'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: ['--export-as-reference', '-r'],
              description: 'Export key-values as App Configuration references. For more information, see https://docs.microsoft.com/en-us/azure/app-service/app-service-configuration-references'
            ),
            Option(
              name: '--format',
              description: 'File format exporting to. Required for file arguments. Currently, feature flags are not supported in properties format',
              args: [
                Arg(
                name: 'format',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'properties'),
                  FigSuggestion(name: 'yaml')
                ]
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'If no key specified, return all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix. Key filtering not applicable for feature flags. By default, all feature flags with specified label will be exported',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'Only keys and feature flags with this label will be exported. If no label specified, export keys and feature flags with null label by default. When export destination is appconfig, or when export destination is file with appconfig/kvset profile, this argument supports asterisk and comma signs for label filtering, for instance, * means all labels, abc* means labels with abc as prefix, and abc,xyz means labels with abc or xyz',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--naming-convention',
              description: 'Naming convention to be used for "Feature Management" section of file. Example: pascal = FeatureManagement, camel = featureManagement, underscore = feature_management, hyphen = feature-management',
              args: [
                Arg(
                name: 'naming-convention',
                suggestions: [

                  FigSuggestion(name: 'camel'),
                  FigSuggestion(name: 'hyphen'),
                  FigSuggestion(name: 'pascal'),
                  FigSuggestion(name: 'underscore')
                ]
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Local configuration file path. Required for file arguments',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--prefix',
              description: 'Prefix to be trimmed from keys. Prefix will be ignored for feature flags',
              args: [
                Arg(
                name: 'prefi'
              )
              ]
            ),
            Option(
              name: '--preserve-labels',
              description: 'Flag to preserve labels from source AppConfig. This argument should NOT be specified along with --dest-label'
            ),
            Option(
              name: '--profile',
              description: 'Export profile to be used for exporting the key-values. Options \'depth\', \'separator\', \'naming-convention\', \'prefix\', \'dest-label\' and, \'resolve-keyvault\' are not supported when using \'appconfig/kvset\' profile',
              args: [
                Arg(
                name: 'profile',
                suggestions: [

                  FigSuggestion(name: 'appconfig/default'),
                  FigSuggestion(name: 'appconfig/kvset')
                ]
              )
              ]
            ),
            Option(
              name: '--resolve-keyvault',
              description: 'Resolve the content of key vault reference'
            ),
            Option(
              name: '--separator',
              description: 'Delimiter for flattening the key-value pairs to json or yaml file. Required for exporting hierarchical structure. Separator will be ignored for property files and feature flags. Supported values: \'.\', \',\', \';\', \'-\', \'_\', \'__\', \'/\', \':\'',
              args: [
                Arg(
                name: 'separato'
              )
              ]
            ),
            Option(
              name: '--skip-features',
              description: 'Export items excluding all feature flags. By default, all features with the specified label will be exported to file or appconfig. Not applicable for appservice'
            ),
            Option(
              name: '--skip-keyvault',
              description: 'Export items excluding all key vault references. By default, all key vault references with the specified label will be exported'
            ),
            Option(
              name: '--snapshot',
              description: 'Export all keys in a given snapshot of the App Configuration store. If no snapshot is specified, the keys currently in the store are exported based on the specified key and label filters',
              args: [
                Arg(
                name: 'snapsho'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for preview'
            )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Import configurations into your App Configuration from another place',
          options: [

            Option(
              name: ['--source', '-s'],
              description: 'The source of importing. Note that importing feature flags from appservice is not supported',
              args: [
                Arg(
                name: 'source',
                suggestions: [

                  FigSuggestion(name: 'appconfig'),
                  FigSuggestion(name: 'appservice'),
                  FigSuggestion(name: 'file')
                ]
              )
              ]
            ),
            Option(
              name: '--appservice-account',
              description: 'ARM ID for AppService OR the name of the AppService, assuming it is in the same subscription and resource group as the App Configuration. Required for AppService arguments',
              args: [
                Arg(
                name: 'appservice-accoun'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--content-type',
              description: 'Content type of all imported items',
              args: [
                Arg(
                name: 'content-typ'
              )
              ]
            ),
            Option(
              name: '--depth',
              description: 'Depth for flattening the json or yaml file to key-value pairs. Flatten to the deepest level by default if --separator is provided. Not applicable for property files or feature flags',
              args: [
                Arg(
                name: 'dept'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Imported file format. Required for file arguments. Currently, feature flags are not supported in properties format',
              args: [
                Arg(
                name: 'format',
                suggestions: [

                  FigSuggestion(name: 'json'),
                  FigSuggestion(name: 'properties'),
                  FigSuggestion(name: 'yaml')
                ]
              )
              ]
            ),
            Option(
              name: '--import-mode',
              description: 'If import mode is "ignore-match", source key-values that already exist at the destination will not be overwritten. Import mode "all" writes all key-values to the destination regardless of whether they exist or not',
              args: [
                Arg(
                name: 'import-mode',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'ignore-match')
                ]
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'Imported KVs and feature flags will be assigned with this label. If no label specified, will assign null label',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Local configuration file path. Required for file arguments',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--prefix',
              description: 'This prefix will be appended to the front of imported keys. Prefix will be ignored for feature flags',
              args: [
                Arg(
                name: 'prefi'
              )
              ]
            ),
            Option(
              name: '--preserve-labels',
              description: 'Flag to preserve labels from source AppConfig. This argument should NOT be specified along with --label'
            ),
            Option(
              name: '--profile',
              description: 'Import profile to be used for importing the key-values. Options \'depth\', \'separator\', \'content-type\', \'label\', \'skip-features\' and, \'prefix\' are not supported when using \'appconfig/kvset\' profile',
              args: [
                Arg(
                name: 'profile',
                suggestions: [

                  FigSuggestion(name: 'appconfig/default'),
                  FigSuggestion(name: 'appconfig/kvset')
                ]
              )
              ]
            ),
            Option(
              name: '--separator',
              description: 'Delimiter for flattening the json or yaml file to key-value pairs. Separator will be ignored for property files and feature flags. Supported values: \'.\', \',\', \';\', \'-\', \'_\', \'__\', \'/\', \':\'',
              args: [
                Arg(
                name: 'separato'
              )
              ]
            ),
            Option(
              name: '--skip-features',
              description: 'Import only key values and exclude all feature flags. By default, all feature flags will be imported from file or appconfig. Not applicable for appservice'
            ),
            Option(
              name: '--src-auth-mode',
              description: 'Auth mode for connecting to source App Configuration. For details, refer to "--auth-mode" argument',
              args: [
                Arg(
                name: 'src-auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--src-connection-string',
              description: 'Combination of access key and endpoint of the source store',
              args: [
                Arg(
                name: 'src-connection-strin'
              )
              ]
            ),
            Option(
              name: '--src-endpoint',
              description: 'If --src-auth-mode is "login", provide endpoint URL of the source App Configuration',
              args: [
                Arg(
                name: 'src-endpoin'
              )
              ]
            ),
            Option(
              name: '--src-key',
              description: 'If no key specified, import all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix. Key filtering not applicable for feature flags. By default, all feature flags with specified label will be imported',
              args: [
                Arg(
                name: 'src-ke'
              )
              ]
            ),
            Option(
              name: '--src-label',
              description: 'Only keys with this label in source AppConfig will be imported. If no value specified, import keys with null label by default. Support star sign as filters, for instance * means all labels, abc* means labels with abc as prefix',
              args: [
                Arg(
                name: 'src-labe'
              )
              ]
            ),
            Option(
              name: '--src-name',
              description: 'The name of the source App Configuration',
              args: [
                Arg(
                name: 'src-nam'
              )
              ]
            ),
            Option(
              name: '--src-snapshot',
              description: 'Import all keys in a given snapshot of the source App Configuration store. If no snapshot is specified, the keys currently in the store are imported based on the specified key and label filters',
              args: [
                Arg(
                name: 'src-snapsho'
              )
              ]
            ),
            Option(
              name: '--strict',
              description: 'Delete all other key-values in the store with specified prefix and label'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for preview'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List key-values',
          options: [

            Option(
              name: '--all',
              description: 'List all items'
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--datetime',
              description: 'Format: "YYYY-MM-DDThh:mm:ssZ". If no time zone specified, use UTC by default',
              args: [
                Arg(
                name: 'datetim'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Space-separated customized output fields',
              args: [
                Arg(
                name: 'fields',
                suggestions: [

                  FigSuggestion(name: 'content_type'),
                  FigSuggestion(name: 'etag'),
                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'label'),
                  FigSuggestion(name: 'last_modified'),
                  FigSuggestion(name: 'locked'),
                  FigSuggestion(name: 'tags'),
                  FigSuggestion(name: 'value')
                ]
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'If no key specified, return all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, list all labels. Support star sign as filters, for instance abc* means labels with abc as prefix. Use \'\\0\' for null label',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--resolve-keyvault',
              description: 'Resolve the content of key vault reference. This argument should NOT be specified along with --fields. Instead use --query for customized query'
            ),
            Option(
              name: '--snapshot',
              description: 'List all keys in a given snapshot of the App Configuration store. If no snapshot is specified, the keys currently in the store are listed',
              args: [
                Arg(
                name: 'snapsho'
              )
              ]
            ),
            Option(
              name: ['--top', '-t'],
              description: 'Maximum number of items to return. Must be a positive integer. Default to 100',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'lock',
          description: 'Lock a key-value to prohibit write operations',
          options: [

            Option(
              name: '--key',
              description: 'Key to be locked',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, lock entry with null label. Filtering is not supported',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          name: 'restore',
          description: 'Restore key-values',
          options: [

            Option(
              name: '--datetime',
              description: 'Format: "YYYY-MM-DDThh:mm:ssZ". If no time zone specified, use UTC by default',
              args: [
                Arg(
                name: 'datetim'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'If no key specified, restore all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, restore all key-value pairs with all labels. Support star sign as filters, for instance abc* means labels with abc as prefix. Use \'\\0\' for null label',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
          description: 'Set a key-value',
          options: [

            Option(
              name: '--key',
              description: 'Key to be set. Key cannot be a \'.\' or \'..\', or contain the \'%\' character',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--content-type',
              description: 'Content type of the keyvalue to be set',
              args: [
                Arg(
                name: 'content-typ'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, set the key with null label by default',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
              name: '--value',
              description: 'Value of the keyvalue to be set',
              args: [
                Arg(
                name: 'valu'
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
          name: 'set-keyvault',
          description: 'Set a keyvault reference',
          options: [

            Option(
              name: '--key',
              description: 'Key to be set. Key cannot be a \'.\' or \'..\', or contain the \'%\' character',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--secret-identifier',
              description: 'ID of the Key Vault object. Can be found using \'az keyvault {collection} show\' command, where collection is key, secret or certificate. To set reference to the latest version of your secret, remove version information from secret identifier',
              args: [
                Arg(
                name: 'secret-identifie'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, set the key with null label by default',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show all attributes of a key-value',
          options: [

            Option(
              name: '--key',
              description: 'Key to be showed',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--datetime',
              description: 'Format: "YYYY-MM-DDThh:mm:ssZ". If no time zone specified, use UTC by default',
              args: [
                Arg(
                name: 'datetim'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, show entry with null label. Filtering is not supported',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unlock',
          description: 'Unlock a key-value to gain write operations',
          options: [

            Option(
              name: '--key',
              description: 'Key to be unlocked',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, unlock entry with null label. Filtering is not supported',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
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
      name: 'replica',
      description: 'Manage replicas of an App Configuration',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new replica of an App Configuration',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location at which to create the replica',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the replica of the App Configuration',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--store-name', '-s'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'store-nam'
              )
              ]
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
          name: 'delete',
          description: 'Delete a replica of an App Configuration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the replica of the App Configuration',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--store-name', '-s'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'store-nam'
              )
              ]
            ),
            Option(
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
          description: 'List replicas of an App Configuration',
          options: [

            Option(
              name: ['--store-name', '-s'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'store-nam'
              )
              ]
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
          description: 'Show details of a replica of an App Configuration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the replica of the App Configuration',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--store-name', '-s'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'store-nam'
              )
              ]
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
      name: 'revision',
      description: 'Manage revisions for key-values stored in an App Configuration',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists revision history of key-values',
          options: [

            Option(
              name: '--all',
              description: 'List all items'
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--datetime',
              description: 'Format: "YYYY-MM-DDThh:mm:ssZ". If no time zone specified, use UTC by default',
              args: [
                Arg(
                name: 'datetim'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Space-separated customized output fields',
              args: [
                Arg(
                name: 'fields',
                suggestions: [

                  FigSuggestion(name: 'content_type'),
                  FigSuggestion(name: 'etag'),
                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'label'),
                  FigSuggestion(name: 'last_modified'),
                  FigSuggestion(name: 'locked'),
                  FigSuggestion(name: 'tags'),
                  FigSuggestion(name: 'value')
                ]
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'If no key specified, return all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'If no label specified, list all labels. Support star sign as filters, for instance abc* means labels with abc as prefix. Use \'\\0\' for null label',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--top', '-t'],
              description: 'Maximum number of items to return. Must be a positive integer. Default to 100',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'snapshot',
      description: 'Manage snapshots associated with an app configuration store',
      subcommands: [

        Subcommand(
          name: 'archive',
          description: 'Archive a snapshot',
          options: [

            Option(
              name: ['--snapshot-name', '-s'],
              description: 'Name of the App Configuration snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create an app configuration snapshot',
          options: [

            Option(
              name: '--filters',
              description: 'Space-separated list of escaped JSON objects that represent the key and label filters used to build an App Configuration snapshot',
              args: [
                Arg(
                name: 'filter'
              )
              ]
            ),
            Option(
              name: ['--snapshot-name', '-s'],
              description: 'Name of the App Configuration snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--composition-type',
              description: 'Composition type used in building App Configuration snapshots. If not specified, defaults to key',
              args: [
                Arg(
                name: 'composition-type',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'key_label')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--retention-period',
              description: 'Duration in seconds for which a snapshot can remain archived before expiry. A snapshot can be archived for a maximum of 7 days (604,800s) for free tier stores and 90 days (7,776,000s) for standard tier stores. If specified, retention period must be at least 1 hour (3600s)',
              args: [
                Arg(
                name: 'retention-perio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List snapshots',
          options: [

            Option(
              name: '--all',
              description: 'List all items',
              args: [
                Arg(
                name: 'al'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Customize output fields for Snapshots',
              args: [
                Arg(
                name: 'fields',
                suggestions: [

                  FigSuggestion(name: 'composition_type'),
                  FigSuggestion(name: 'created'),
                  FigSuggestion(name: 'etag'),
                  FigSuggestion(name: 'expires'),
                  FigSuggestion(name: 'filters'),
                  FigSuggestion(name: 'items_count'),
                  FigSuggestion(name: 'name'),
                  FigSuggestion(name: 'retention_period'),
                  FigSuggestion(name: 'size'),
                  FigSuggestion(name: 'status'),
                  FigSuggestion(name: 'tags')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--snapshot-name', '-s'],
              description: 'If no name specified, return all snapshots by default. Support star sign as filters, for instance abc* means snapshots with abc as prefix to the name',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Filter snapshots by their status. If no status specified, return all snapshots by default',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'archived'),
                  FigSuggestion(name: 'failed'),
                  FigSuggestion(name: 'provisioning'),
                  FigSuggestion(name: 'ready')
                ]
              )
              ]
            ),
            Option(
              name: ['--top', '-t'],
              description: 'Maximum number of items to return. Must be a positive integer. Default to 100',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'recover',
          description: 'Recover an archived snapshot',
          options: [

            Option(
              name: ['--snapshot-name', '-s'],
              description: 'Name of the App Configuration snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show all attributes of an app configuration snapshot',
          options: [

            Option(
              name: ['--snapshot-name', '-s'],
              description: 'Name of the App Configuration snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'This parameter can be used for indicating how a data operation is to be authorized. If the auth mode is "key", provide connection string or store name and your account access keys will be retrieved for authorization. If the auth mode is "login", provide the store endpoint or store name and your "az login" credentials will be used for authorization. You can configure the default auth mode using az configure --defaults appconfig_auth_mode=<auth_mode>. For more information, see https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'key'),
                  FigSuggestion(name: 'login')
                ]
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Combination of access key and endpoint of App Configuration. Can be found using \'az appconfig credential list\'. Users can preset it using az configure --defaults appconfig_connection_string=<connection_string> or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'If auth mode is "login", provide endpoint URL of the App Configuration. The endpoint can be retrieved using "az appconfig show" command. You can configure the default endpoint using az configure --defaults appconfig_endpoint=<endpoint>',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Customize output fields for Snapshots',
              args: [
                Arg(
                name: 'fields',
                suggestions: [

                  FigSuggestion(name: 'composition_type'),
                  FigSuggestion(name: 'created'),
                  FigSuggestion(name: 'etag'),
                  FigSuggestion(name: 'expires'),
                  FigSuggestion(name: 'filters'),
                  FigSuggestion(name: 'items_count'),
                  FigSuggestion(name: 'name'),
                  FigSuggestion(name: 'retention_period'),
                  FigSuggestion(name: 'size'),
                  FigSuggestion(name: 'status'),
                  FigSuggestion(name: 'tags')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the App Configuration. You can configure the default name using az configure --defaults app_configuration_store=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
