// Auto-generated from TypeScript source: desktopvirtualization.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `desktopvirtualization` CLI
final FigSpec desktopvirtualizationSpec = FigSpec(
  name: 'desktopvirtualization',
  description: 'Manage desktop virtualization',
  subcommands: [

    Subcommand(
      name: 'applicationgroup',
      description: 'Desktopvirtualization applicationgroup',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an applicationGroup',
          options: [

            Option(
              name: '--application-group-type',
              description: 'Resource Type of ApplicationGroup',
              args: [
                Arg(
                name: 'application-group-type',
                suggestions: [

                  FigSuggestion(name: 'Desktop'),
                  FigSuggestion(name: 'RemoteApp')
                ]
              )
              ]
            ),
            Option(
              name: '--host-pool-arm-path',
              description: 'HostPool arm path of ApplicationGroup',
              args: [
                Arg(
                name: 'host-pool-arm-pat'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the application group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of ApplicationGroup',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--friendly-name',
              description: 'Friendly name of ApplicationGroup',
              args: [
                Arg(
                name: 'friendly-nam'
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
          description: 'Remove an applicationGroup',
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
              description: 'The name of the application group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
          description: 'List applicationGroups in subscription',
          options: [

            Option(
              name: '--filter',
              description: 'OData filter expression. Valid properties for filtering are applicationGroupType',
              args: [
                Arg(
                name: 'filte'
              )
              ]
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
          description: 'Get an application group',
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
              description: 'The name of the application group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
          description: 'Update an applicationGroup',
          options: [

            Option(
              name: '--description',
              description: 'Description of ApplicationGroup',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--friendly-name',
              description: 'Friendly name of ApplicationGroup',
              args: [
                Arg(
                name: 'friendly-nam'
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
              description: 'The name of the application group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
    ),
    Subcommand(
      name: 'hostpool',
      description: 'Desktopvirtualization hostpool',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a host pool',
          options: [

            Option(
              name: '--host-pool-type',
              description: 'HostPool type for desktop',
              args: [
                Arg(
                name: 'host-pool-type',
                suggestions: [

                  FigSuggestion(name: 'BYODesktop'),
                  FigSuggestion(name: 'Personal'),
                  FigSuggestion(name: 'Pooled')
                ]
              )
              ]
            ),
            Option(
              name: '--load-balancer-type',
              description: 'The type of the load balancer',
              args: [
                Arg(
                name: 'load-balancer-type',
                suggestions: [

                  FigSuggestion(name: 'BreadthFirst'),
                  FigSuggestion(name: 'DepthFirst'),
                  FigSuggestion(name: 'Persistent')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the host pool within the specified resource group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--preferred-app-group-type', '-t'],
              description: 'The type of preferred application group type, default to Desktop Application Group',
              args: [
                Arg(
                name: 'preferred-app-group-type',
                suggestions: [

                  FigSuggestion(name: 'Desktop'),
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'RailApplications')
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
              name: '--custom-rdp-property',
              description: 'Custom rdp property of HostPool',
              args: [
                Arg(
                name: 'custom-rdp-propert'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of HostPool',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--friendly-name',
              description: 'Friendly name of HostPool',
              args: [
                Arg(
                name: 'friendly-nam'
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
              name: '--max-session-limit',
              description: 'The max session limit of HostPool',
              args: [
                Arg(
                name: 'max-session-limi'
              )
              ]
            ),
            Option(
              name: '--personal-desktop-assignment-type',
              description: 'PersonalDesktopAssignment type for HostPool',
              args: [
                Arg(
                name: 'personal-desktop-assignment-type',
                suggestions: [

                  FigSuggestion(name: 'Automatic'),
                  FigSuggestion(name: 'Direct')
                ]
              )
              ]
            ),
            Option(
              name: '--registration-info',
              description: 'The registration info of HostPool',
              args: [
                Arg(
                name: 'registration-inf'
              )
              ]
            ),
            Option(
              name: '--ring',
              description: 'The ring number of HostPool',
              args: [
                Arg(
                name: 'rin'
              )
              ]
            ),
            Option(
              name: '--sso-client-id',
              description: 'ClientId for the registered Relying Party used to issue WVD SSO certificates',
              args: [
                Arg(
                name: 'sso-client-i'
              )
              ]
            ),
            Option(
              name: ['--sso-client-secret-key-vault-path', '-p'],
              description: 'Path to Azure KeyVault storing the secret used for communication to ADFS',
              args: [
                Arg(
                name: 'sso-client-secret-key-vault-pat'
              )
              ]
            ),
            Option(
              name: '--sso-secret-type',
              description: 'The type of single sign on Secret Type',
              args: [
                Arg(
                name: 'sso-secret-type',
                suggestions: [

                  FigSuggestion(name: 'Certificate'),
                  FigSuggestion(name: 'CertificateInKeyVault'),
                  FigSuggestion(name: 'SharedKey'),
                  FigSuggestion(name: 'SharedKeyInKeyVault')
                ]
              )
              ]
            ),
            Option(
              name: '--ssoadfs-authority',
              description: 'URL to customer ADFS server for signing WVD SSO certificates',
              args: [
                Arg(
                name: 'ssoadfs-authorit'
              )
              ]
            ),
            Option(
              name: '--start-vm-on-connect',
              description: 'The flag to turn on/off StartVMOnConnect feature',
              args: [
                Arg(
                name: 'start-vm-on-connect',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
              name: '--validation-environment',
              description: 'Is validation environment',
              args: [
                Arg(
                name: 'validation-environment',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--vm-template',
              description: 'VM template for sessionhosts configuration within hostpool',
              args: [
                Arg(
                name: 'vm-templat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Remove a host pool',
          options: [

            Option(
              name: '--force',
              description: 'Force flag to delete sessionHost',
              args: [
                Arg(
                name: 'force',
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
              description: 'The name of the host pool within the specified resource group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
          description: 'List hostPools in subscription',
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
          name: 'retrieve-registration-token',
          description: 'Registration token of the host pool',
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
              description: 'The name of the host pool within the specified resource group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
          description: 'Get a host pool',
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
              description: 'The name of the host pool within the specified resource group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a host pool',
          options: [

            Option(
              name: '--custom-rdp-property',
              description: 'Custom rdp property of HostPool',
              args: [
                Arg(
                name: 'custom-rdp-propert'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of HostPool',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--friendly-name',
              description: 'Friendly name of HostPool',
              args: [
                Arg(
                name: 'friendly-nam'
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
              name: '--load-balancer-type',
              description: 'The type of the load balancer',
              args: [
                Arg(
                name: 'load-balancer-type',
                suggestions: [

                  FigSuggestion(name: 'BreadthFirst'),
                  FigSuggestion(name: 'DepthFirst'),
                  FigSuggestion(name: 'Persistent')
                ]
              )
              ]
            ),
            Option(
              name: '--max-session-limit',
              description: 'The max session limit of HostPool',
              args: [
                Arg(
                name: 'max-session-limi'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the host pool within the specified resource group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--personal-desktop-assignment-type',
              description: 'PersonalDesktopAssignment type for HostPool',
              args: [
                Arg(
                name: 'personal-desktop-assignment-type',
                suggestions: [

                  FigSuggestion(name: 'Automatic'),
                  FigSuggestion(name: 'Direct')
                ]
              )
              ]
            ),
            Option(
              name: ['--preferred-app-group-type', '-t'],
              description: 'The type of preferred application group type, default to Desktop Application Group',
              args: [
                Arg(
                name: 'preferred-app-group-type',
                suggestions: [

                  FigSuggestion(name: 'Desktop'),
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'RailApplications')
                ]
              )
              ]
            ),
            Option(
              name: '--registration-info',
              description: 'The registration info of HostPool',
              args: [
                Arg(
                name: 'registration-inf'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--ring',
              description: 'The ring number of HostPool',
              args: [
                Arg(
                name: 'rin'
              )
              ]
            ),
            Option(
              name: '--sso-client-id',
              description: 'ClientId for the registered Relying Party used to issue WVD SSO certificates',
              args: [
                Arg(
                name: 'sso-client-i'
              )
              ]
            ),
            Option(
              name: ['--sso-client-secret-key-vault-path', '-p'],
              description: 'Path to Azure KeyVault storing the secret used for communication to ADFS',
              args: [
                Arg(
                name: 'sso-client-secret-key-vault-pat'
              )
              ]
            ),
            Option(
              name: '--sso-secret-type',
              description: 'The type of single sign on Secret Type',
              args: [
                Arg(
                name: 'sso-secret-type',
                suggestions: [

                  FigSuggestion(name: 'Certificate'),
                  FigSuggestion(name: 'CertificateInKeyVault'),
                  FigSuggestion(name: 'SharedKey'),
                  FigSuggestion(name: 'SharedKeyInKeyVault')
                ]
              )
              ]
            ),
            Option(
              name: '--ssoadfs-authority',
              description: 'URL to customer ADFS server for signing WVD SSO certificates',
              args: [
                Arg(
                name: 'ssoadfs-authorit'
              )
              ]
            ),
            Option(
              name: '--start-vm-on-connect',
              description: 'The flag to turn on/off StartVMOnConnect feature',
              args: [
                Arg(
                name: 'start-vm-on-connect',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
              name: '--validation-environment',
              description: 'Is validation environment',
              args: [
                Arg(
                name: 'validation-environment',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--vm-template',
              description: 'VM template for sessionhosts configuration within hostpool',
              args: [
                Arg(
                name: 'vm-templat'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'workspace',
      description: 'Desktopvirtualization workspace',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--application-group-references',
              description: 'List of applicationGroup resource Ids',
              args: [
                Arg(
                name: 'application-group-reference'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of Workspace',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--friendly-name',
              description: 'Friendly name of Workspace',
              args: [
                Arg(
                name: 'friendly-nam'
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
          description: 'Remove a workspace',
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
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
          description: 'List workspaces in subscription',
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
          description: 'Get a workspace',
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
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a workspace',
          options: [

            Option(
              name: '--application-group-references',
              description: 'List of applicationGroup links',
              args: [
                Arg(
                name: 'application-group-reference'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of Workspace',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--friendly-name',
              description: 'Friendly name of Workspace',
              args: [
                Arg(
                name: 'friendly-nam'
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
              description: 'The name of the workspace',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
