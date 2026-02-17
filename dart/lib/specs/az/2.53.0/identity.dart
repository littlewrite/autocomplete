// Auto-generated from TypeScript source: identity.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `identity` CLI
final FigSpec identitySpec = FigSpec(
  name: 'identity',
  description: 'Managed Identities',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create Identities',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the identity resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
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
      description: 'Deletes the identity',
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
          description: 'The name of the identity resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
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
      description: 'List Managed Identities',
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
      name: 'list-operations',
      description: 'List available operations for the Managed Identity provider'
    ),
    Subcommand(
      name: 'list-resources',
      description: 'List the associated resources for the identity',
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
          description: 'The name of the identity resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
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
      description: 'Gets the identity',
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
          description: 'The name of the identity resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
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
      name: 'federated-credential',
      description: 'Manage federated identity credentials under user assigned identities',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a federated identity credential under an existing user assigned identity',
          options: [

            Option(
              name: '--identity-name',
              description: 'The name of the identity resource',
              args: [
                Arg(
                name: 'identity-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the federated identity credential resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--audiences',
              description: 'The aud value in the token sent to Azure for getting the user-assigned managed identity token. The value configured in the federated credential and the one in the incoming token must exactly match for Azure to issue the access token',
              args: [
                Arg(
                name: 'audience'
              )
              ]
            ),
            Option(
              name: '--issuer',
              description: 'The openId connect metadata URL of the issuer of the identity provider that Azure AD would use in the token exchange protocol for validating tokens before issuing a token as the user-assigned managed identity',
              args: [
                Arg(
                name: 'issue'
              )
              ]
            ),
            Option(
              name: '--subject',
              description: 'The sub value in the token sent to Azure AD for getting the user-assigned managed identity token. The value configured in the federated credential and the one in the incoming token must exactly match for Azure AD to issue the access token',
              args: [
                Arg(
                name: 'subjec'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a federated identity credential under an existing user assigned identity',
          options: [

            Option(
              name: '--identity-name',
              description: 'The name of the identity resource',
              args: [
                Arg(
                name: 'identity-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the federated identity credential resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
          description: 'List all federated identity credentials under an existing user assigned identity',
          options: [

            Option(
              name: '--identity-name',
              description: 'The name of the identity resource',
              args: [
                Arg(
                name: 'identity-nam'
              )
              ]
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
          description: 'Show a federated identity credential under an existing user assigned identity',
          options: [

            Option(
              name: '--identity-name',
              description: 'The name of the identity resource',
              args: [
                Arg(
                name: 'identity-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the federated identity credential resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Update a federated identity credential under an existing user assigned identity',
          options: [

            Option(
              name: '--identity-name',
              description: 'The name of the identity resource',
              args: [
                Arg(
                name: 'identity-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the federated identity credential resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--audiences',
              description: 'The aud value in the token sent to Azure for getting the user-assigned managed identity token. The value configured in the federated credential and the one in the incoming token must exactly match for Azure to issue the access token',
              args: [
                Arg(
                name: 'audience'
              )
              ]
            ),
            Option(
              name: '--issuer',
              description: 'The openId connect metadata URL of the issuer of the identity provider that Azure AD would use in the token exchange protocol for validating tokens before issuing a token as the user-assigned managed identity',
              args: [
                Arg(
                name: 'issue'
              )
              ]
            ),
            Option(
              name: '--subject',
              description: 'The sub value in the token sent to Azure AD for getting the user-assigned managed identity token. The value configured in the federated credential and the one in the incoming token must exactly match for Azure AD to issue the access token',
              args: [
                Arg(
                name: 'subjec'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
