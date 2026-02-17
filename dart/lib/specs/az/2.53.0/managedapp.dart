// Auto-generated from TypeScript source: managedapp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `managedapp` CLI
final FigSpec managedappSpec = FigSpec(
  name: 'managedapp',
  description: 'Manage template solutions provided and maintained by Independent Software Vendors (ISVs)',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a managed application',
      options: [

        Option(
          name: '--kind',
          description: 'The managed application kind. can be marketplace or servicecatalog',
          args: [
            Arg(
            name: 'kin'
          )
          ]
        ),
        Option(
          name: ['--managed-rg-id', '-m'],
          description: 'The resource group managed by the managed application',
          args: [
            Arg(
            name: 'managed-rg-i'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The managed application name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'The resource group of the managed application',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'The managed application location',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--managedapp-definition-id', '-d'],
          description: 'The full qualified managed application definition id',
          args: [
            Arg(
            name: 'managedapp-definition-i'
          )
          ]
        ),
        Option(
          name: '--parameters',
          description: 'JSON formatted string or a path to a file with such content',
          args: [
            Arg(
            name: 'parameter'
          )
          ]
        ),
        Option(
          name: '--plan-name',
          description: 'The managed application package plan name',
          args: [
            Arg(
            name: 'plan-nam'
          )
          ]
        ),
        Option(
          name: '--plan-product',
          description: 'The managed application package plan product',
          args: [
            Arg(
            name: 'plan-produc'
          )
          ]
        ),
        Option(
          name: '--plan-publisher',
          description: 'The managed application package plan publisher',
          args: [
            Arg(
            name: 'plan-publishe'
          )
          ]
        ),
        Option(
          name: '--plan-version',
          description: 'The managed application package plan version',
          args: [
            Arg(
            name: 'plan-versio'
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
      description: 'Delete a managed application',
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
          description: 'The name of the managed application. Required',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'The resource group of the managed application',
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
      description: 'List managed applications',
      options: [

        Option(
          name: ['--resource-group', '-g'],
          description: 'The resource group of the managed application',
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
      description: 'Gets a managed application',
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
          description: 'The managed application name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'The resource group of the managed application',
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
      name: 'definition',
      description: 'Manage Azure Managed Applications',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a managed application definition',
          options: [

            Option(
              name: ['--authorizations', '-a'],
              description: 'Space-separated authorization pairs in a format of <principalId>:<roleDefinitionId>',
              args: [
                Arg(
                name: 'authorization'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The managed application definition description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The managed application definition display name',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--lock-level',
              description: 'The type of lock restriction',
              args: [
                Arg(
                name: 'lock-level',
                suggestions: [

                  FigSuggestion(name: 'CanNotDelete'),
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'ReadOnly')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The managed application definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group of the managed application definition',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--create-ui-definition', '-c'],
              description: 'JSON formatted string or a path to a file with such content',
              args: [
                Arg(
                name: 'create-ui-definitio'
              )
              ]
            ),
            Option(
              name: '--deployment-mode',
              description: 'The managed application deployment mode',
              args: [
                Arg(
                name: 'deployment-mode',
                suggestions: [

                  FigSuggestion(name: 'Complete'),
                  FigSuggestion(name: 'Incremental')
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
              name: ['--main-template', '-t'],
              description: 'JSON formatted string or a path to a file with such content',
              args: [
                Arg(
                name: 'main-templat'
              )
              ]
            ),
            Option(
              name: '--package-file-uri',
              description: 'The managed application definition package file uri',
              args: [
                Arg(
                name: 'package-file-ur'
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
          description: 'Delete a managed application definition',
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
              description: 'The name of the managed application definition to delete. Required',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group of the managed application definition',
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
          description: 'List managed application definitions',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group of the managed application definition',
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
          description: 'Gets a managed application definition',
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
              description: 'The managed application definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group of the managed application definition',
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
          description: 'Update a managed application definition',
          options: [

            Option(
              name: ['--authorizations', '-a'],
              description: 'Space-separated authorization pairs in a format of <principalId>:<roleDefinitionId>',
              args: [
                Arg(
                name: 'authorization'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The managed application definition description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The managed application definition display name',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--lock-level',
              description: 'The type of lock restriction',
              args: [
                Arg(
                name: 'lock-level',
                suggestions: [

                  FigSuggestion(name: 'CanNotDelete'),
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'ReadOnly')
                ]
              )
              ]
            ),
            Option(
              name: ['--create-ui-definition', '-c'],
              description: 'JSON formatted string or a path to a file with such content',
              args: [
                Arg(
                name: 'create-ui-definitio'
              )
              ]
            ),
            Option(
              name: '--deployment-mode',
              description: 'The managed application deployment mode',
              args: [
                Arg(
                name: 'deployment-mode',
                suggestions: [

                  FigSuggestion(name: 'Complete'),
                  FigSuggestion(name: 'Incremental')
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--main-template', '-t'],
              description: 'JSON formatted string or a path to a file with such content',
              args: [
                Arg(
                name: 'main-templat'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The managed application definition name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--package-file-uri',
              description: 'The managed application definition package file uri',
              args: [
                Arg(
                name: 'package-file-ur'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group of the managed application definition',
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
