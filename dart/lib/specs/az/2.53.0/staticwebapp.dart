// Auto-generated from TypeScript source: staticwebapp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `staticwebapp` CLI
final FigSpec staticwebappSpec = FigSpec(
  name: 'staticwebapp',
  description: 'Manage static apps',
  subcommands: [

    Subcommand(
      name: 'appsettings',
      description: 'Manage app settings the static app',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete app settings with given keys of the static app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--setting-names',
              description: 'Space-separated app setting names',
              args: [
                Arg(
                name: 'setting-name'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
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
          name: 'list',
          description: 'List app settings of the static app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
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
          description: 'Add to or change the app settings of the static app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--setting-names',
              description: 'Space-separated app settings in \'key=value\' format',
              args: [
                Arg(
                name: 'setting-name'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
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
      name: 'backends',
      description: 'Link or unlink a prexisting backend with a static web app. Also known as "Bring your own API."',
      subcommands: [

        Subcommand(
          name: 'link',
          description: 'Link a backend to a static web app. Also known as "Bring your own API."',
          options: [

            Option(
              name: '--backend-resource-id',
              description: 'Resource ID of the backend to link',
              args: [
                Arg(
                name: 'backend-resource-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--backend-region',
              description: 'Region of the backend resource',
              args: [
                Arg(
                name: 'backend-regio'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details on the backend linked to a static web app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unlink',
          description: 'Unlink backend from a static web app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            ),
            Option(
              name: '--remove-backend-auth',
              description: 'If set to true, removes the identity provider configured on the backend during the linking process'
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate a backend for a static web app',
          options: [

            Option(
              name: '--backend-resource-id',
              description: 'Resource ID of the backend to link',
              args: [
                Arg(
                name: 'backend-resource-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--backend-region',
              description: 'Region of the backend resource',
              args: [
                Arg(
                name: 'backend-regio'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a static app. To provide content to the static web app and integrate with a Github repo, provide the Github repository URL (--source) and a branch (--branch). If the repo is under a Github organization, please ensure that the Azure CLI Github App has access to the organization. Access can be requested in the browser when using the "--login-with-github" argument. Access must be granted by the organization\'s admin',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the static site',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--api-location',
          description: 'Location of your Azure Functions code. For example, \'/api\' represents a folder called \'api\'',
          args: [
            Arg(
            name: 'api-locatio'
          )
          ]
        ),
        Option(
          name: '--app-location',
          description: 'Location of your application code. For example, \'/\' represents the root of your app, while \'/app\' represents a directory called \'app\'',
          args: [
            Arg(
            name: 'app-locatio'
          )
          ]
        ),
        Option(
          name: ['--branch', '-b'],
          description: 'The target branch in the repository',
          args: [
            Arg(
            name: 'branc'
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
          name: '--login-with-ado',
          description: 'Use azure credentials to create an Azure Dev Ops personal access token'
        ),
        Option(
          name: '--login-with-github',
          description: 'Interactively log in with Github to retrieve the Personal Access Token'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--output-location',
          description: 'The path of your build output relative to your apps location. For example, setting a value of \'build\' when your app location is set to \'/app\' will cause the content at \'/app/build\' to be served',
          args: [
            Arg(
            name: 'output-locatio'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'The pricing tiers for Static Web App',
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
          name: ['--source', '-s'],
          description: 'URL for the repository of the static site',
          args: [
            Arg(
            name: 'sourc'
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
          name: ['--token', '-t'],
          description: 'A user\'s GitHub or Azure Dev Ops repository token. This is used to create the Github Action or Dev Ops pipeline',
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
      description: 'Delete a static app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the static site',
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
      name: 'disconnect',
      description: 'Disconnect source control to enable connecting to a different repo',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the static site',
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
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all static app resources in a subscription, or in resource group if provided',
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
      name: 'reconnect',
      description: 'Connect to a repo and branch following a disconnect command',
      options: [

        Option(
          name: ['--branch', '-b'],
          description: 'The target branch in the repository',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the static site',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--source', '-s'],
          description: 'URL for the repository of the static site',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        ),
        Option(
          name: '--login-with-github',
          description: 'Interactively log in with Github to retrieve the Personal Access Token'
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
          name: ['--token', '-t'],
          description: 'A user\'s GitHub or Azure Dev Ops repository token. This is used to create the Github Action or Dev Ops pipeline',
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
      description: 'Show details of a static app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the static site',
          args: [
            Arg(
            name: 'nam'
          )
          ]
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
      description: 'Update a static app. Return the app updated',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the static site',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--branch', '-b'],
          description: 'The target branch in the repository',
          args: [
            Arg(
            name: 'branc'
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
          name: '--sku',
          description: 'The pricing tiers for Static Web App',
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
          name: ['--source', '-s'],
          description: 'URL for the repository of the static site',
          args: [
            Arg(
            name: 'sourc'
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
          name: ['--token', '-t'],
          description: 'A user\'s GitHub or Azure Dev Ops repository token. This is used to create the Github Action or Dev Ops pipeline',
          args: [
            Arg(
            name: 'toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dbconnection',
      description: 'Manage Static Web App database connections',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Static Web App database connection',
          options: [

            Option(
              name: ['--db-resource-id', '-d'],
              description: 'The azure resource ID for the database server/account to connect to e.g. \'/subscriptions/MySubId/resourceGroups/MyResourceGroup/providers/Microsoft.Sql/servers/MyServer\' for an Azure SQL database',
              args: [
                Arg(
                name: 'db-resource-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Static Web App',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--db-name', '-b'],
              description: 'The name of the database to connect to. Not required for CosmosDB',
              args: [
                Arg(
                name: 'db-nam'
              )
              ]
            ),
            Option(
              name: ['--environment', '-e'],
              description: 'Name of the environment of Static Web App',
              args: [
                Arg(
                name: 'environmen'
              )
              ]
            ),
            Option(
              name: ['--mi-system-assigned', '-s'],
              description: 'Use the Static Web App\'s system-assigned identity for auth with the database. Must be assigned to the Static Web App and have the right permissions on the database'
            ),
            Option(
              name: ['--mi-user-assigned', '-i'],
              description: 'A resource ID for a user-assigned managed identity to use for auth with the database. Must be assigned to the Static Web App and have the right permissions on the database',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password to use for authentication with the database. Not required for all databases',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username to use for authentication with the database. Not required for all databases',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Static Web App database connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Static Web App',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--environment', '-e'],
              description: 'Name of the environment of Static Web App',
              args: [
                Arg(
                name: 'environmen'
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
          description: 'Get details for a Static Web App database connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Static Web App',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--detailed', '-d'],
              description: 'Get detailed information on database connections'
            ),
            Option(
              name: ['--environment', '-e'],
              description: 'Name of the environment of Static Web App',
              args: [
                Arg(
                name: 'environmen'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'enterprise-edge',
      description: 'Manage the Azure Front Door CDN for static webapps. For optimal experience and availability please check our documentation https://aka.ms/swaedge',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable the Azure Front Door CDN for a static webapp. For optimal experience and availability please check our documentation https://aka.ms/swaedge',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'enable',
          description: 'Enable the Azure Front Door CDN for a static webapp. Enabling enterprise-grade edge requires re-registration for the Azure Front Door Microsoft.CDN resource provider. For optimal experience and availability please check our documentation https://aka.ms/swaedge',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--no-register',
              description: 'Don\'t try to register the Microsoft.CDN provider. Registration can be done manually with: az provider register --wait --namespace Microsoft.CDN. For more details, please review the documentation available at https://go.microsoft.com/fwlink/?linkid=2184995'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the status (Enabled, Disabled, Enabling, Disabling) of the Azure Front Door CDN for a webapp. For optimal experience and availability please check our documentation https://aka.ms/swaedge',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
      name: 'environment',
      description: 'Manage environment of the static app',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete the static app production environment or the specified environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            ),
            Option(
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
          name: 'functions',
          description: 'Show information about functions',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
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
          name: 'list',
          description: 'List all environment of the static app including production',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Show information about the production environment or the specified environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
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
      name: 'functions',
      description: 'Link or unlink a prexisting functionapp with a static webapp. Also known as "Bring your own Functions."',
      subcommands: [

        Subcommand(
          name: 'link',
          description: 'Link an Azure Function to a static webapp. Also known as "Bring your own Functions." Only one Azure Functions app is available to a single static web app. Static webapp SKU must be "Standard"',
          options: [

            Option(
              name: '--function-resource-id',
              description: 'Resource ID of the functionapp to link. Can be retrieved with \'az functionapp --query id\'',
              args: [
                Arg(
                name: 'function-resource-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--environment-name',
              description: 'Name of the environment of static site',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Force the function link even if the function is already linked to a static webapp. May be needed if the function was previously linked to a static webapp'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details on the Azure Function linked to a static webapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'unlink',
          description: 'Unlink an Azure Function from a static webapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
      name: 'hostname',
      description: 'Manage custom hostnames of Functions of the static app',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete given hostname of the static app',
          options: [

            Option(
              name: '--hostname',
              description: 'Custom hostname such as www.example.com. Only support sub domain in preview',
              args: [
                Arg(
                name: 'hostnam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
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
          description: 'List custom hostnames of the static app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Set given sub-domain hostname to the static app. Please configure CNAME/TXT/ALIAS record with your DNS provider. Use --no-wait to not wait for validation',
          options: [

            Option(
              name: '--hostname',
              description: 'Custom hostname such as www.example.com. Only support sub domain in preview',
              args: [
                Arg(
                name: 'hostnam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
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
              name: ['--validation-method', '-m'],
              description: 'Validation method for the custom domain',
              args: [
                Arg(
                name: 'validation-method',
                suggestions: [

                  FigSuggestion(name: 'cname-delegation'),
                  FigSuggestion(name: 'dns-txt-token')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details for a staticwebapp custom domain. Can be used to fetch validation token for TXT domain validation (see example)',
          options: [

            Option(
              name: '--hostname',
              description: 'Custom hostname such as www.example.com. Only support sub domain in preview',
              args: [
                Arg(
                name: 'hostnam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
      description: 'Manage a static web app\'s managed identity',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign managed identity to the static web app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
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
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Disable static web app\'s managed identity',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Display static web app\'s managed identity',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
      name: 'secrets',
      description: 'Manage deployment token for the static app',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the deployment token for the static app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'reset-api-key',
          description: 'Reset the deployment token for the static app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'users',
      description: 'Manage users of the static app',
      subcommands: [

        Subcommand(
          name: 'invite',
          description: 'Create invitation link for specified user to the static app',
          options: [

            Option(
              name: '--authentication-provider',
              description: 'Authentication provider of the user identity such as AAD, Facebook, GitHub, Google, Twitter',
              args: [
                Arg(
                name: 'authentication-provide'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'A domain added to the static app in quotes',
              args: [
                Arg(
                name: 'domai'
              )
              ]
            ),
            Option(
              name: '--invitation-expiration-in-hours',
              description: 'This value sets when the link will expire in hours. The maximum is 168 (7 days)',
              args: [
                Arg(
                name: 'invitation-expiration-in-hour'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--roles',
              description: 'Comma-separated default or user-defined role names. Roles that can be assigned to a user are comma separated and case-insensitive (at most 50 roles up to 25 characters each and restricted to 0-9,A-Z,a-z, and _). Define roles in routes.json during root directory of your GitHub repo',
              args: [
                Arg(
                name: 'role'
              )
              ]
            ),
            Option(
              name: '--user-details',
              description: 'Email for AAD, Facebook, and Google. Account name (handle) for GitHub and Twitter',
              args: [
                Arg(
                name: 'user-detail'
              )
              ]
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
          name: 'list',
          description: 'Lists users and assigned roles, limited to users who accepted their invites',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--authentication-provider',
              description: 'Authentication provider of the user identity such as AAD, Facebook, GitHub, Google, Twitter',
              args: [
                Arg(
                name: 'authentication-provide'
              )
              ]
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
          description: 'Updates a user entry with the listed roles. Either user details or user id is required',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the static site',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--roles',
              description: 'Comma-separated default or user-defined role names. Roles that can be assigned to a user are comma separated and case-insensitive (at most 50 roles up to 25 characters each and restricted to 0-9,A-Z,a-z, and _). Define roles in routes.json during root directory of your GitHub repo',
              args: [
                Arg(
                name: 'role'
              )
              ]
            ),
            Option(
              name: '--authentication-provider',
              description: 'Authentication provider of the user identity such as AAD, Facebook, GitHub, Google, Twitter',
              args: [
                Arg(
                name: 'authentication-provide'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--user-details',
              description: 'Email for AAD, Facebook, and Google. Account name (handle) for GitHub and Twitter',
              args: [
                Arg(
                name: 'user-detail'
              )
              ]
            ),
            Option(
              name: '--user-id',
              description: 'Given id of registered user',
              args: [
                Arg(
                name: 'user-i'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
