// Auto-generated from TypeScript source: blockchain.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `blockchain` CLI
final FigSpec blockchainSpec = FigSpec(
  name: 'blockchain',
  description: 'Manage blockchain',
  subcommands: [

    Subcommand(
      name: 'consortium',
      description: 'Blockchain consortium',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the available consortiums for a subscription',
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
        )
      ]
    ),
    Subcommand(
      name: 'member',
      description: 'Blockchain member',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a blockchain member',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--consortium',
              description: 'Gets or sets the consortium for the blockchain member',
              args: [
                Arg(
                name: 'consortiu'
              )
              ]
            ),
            Option(
              name: '--consortium-management-account-password',
              description: 'Sets the managed consortium management account password',
              args: [
                Arg(
                name: 'consortium-management-account-passwor'
              )
              ]
            ),
            Option(
              name: '--firewall-rules',
              description: 'Firewall rules of the blockchian member',
              args: [
                Arg(
                name: 'firewall-rule'
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
              name: '--password',
              description: 'Sets the basic auth password of the blockchain member',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--protocol',
              description: 'Gets or sets the blockchain protocol',
              args: [
                Arg(
                name: 'protocol',
                suggestions: [

                  FigSuggestion(name: 'Corda'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'Parity'),
                  FigSuggestion(name: 'Quorum')
                ]
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The Sku of the blockchain member',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
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
            ),
            Option(
              name: '--validator-nodes-sku',
              description: 'Gets or sets the blockchain validator nodes Sku. Expect value: capacity=xx',
              args: [
                Arg(
                name: 'validator-nodes-sk'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a blockchain member',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
        ),
        Subcommand(
          name: 'list',
          description: 'List the blockchain members',
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
          name: 'list-api-key',
          description: 'List the API keys for a blockchain member',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'list-consortium-member',
          description: 'List the consortium members for a blockchain member',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'regenerate-api-key',
          description: 'Regenerate the API keys for a blockchain member',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'Gets or sets the API key name',
              args: [
                Arg(
                name: 'key-name',
                suggestions: [

                  FigSuggestion(name: 'key1'),
                  FigSuggestion(name: 'key2')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details about a blockchain member',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Update a blockchain member',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--consortium-management-account-password',
              description: 'Sets the managed consortium management account password',
              args: [
                Arg(
                name: 'consortium-management-account-passwor'
              )
              ]
            ),
            Option(
              name: '--firewall-rules',
              description: 'Firewall rules of the blockchian member',
              args: [
                Arg(
                name: 'firewall-rule'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'Sets the transaction node dns endpoint basic auth password',
              args: [
                Arg(
                name: 'passwor'
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
          name: 'wait',
          description: 'Wait until a blockchain member is created or deleted',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
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
      name: 'transaction-node',
      description: 'Blockchain transaction-node',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a transaction node',
          options: [

            Option(
              name: '--member-name',
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'member-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Transaction node name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--firewall-rules',
              description: 'Firewall rules of the blockchian transaction node',
              args: [
                Arg(
                name: 'firewall-rule'
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
              name: '--password',
              description: 'Sets the transaction node dns endpoint basic auth password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the transaction node',
          options: [

            Option(
              name: '--member-name',
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'member-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Transaction node name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
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
        ),
        Subcommand(
          name: 'list',
          description: 'List the transaction nodes for a blockchain member',
          options: [

            Option(
              name: '--member-name',
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'member-nam'
              )
              ]
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
          name: 'list-api-key',
          description: 'List the API keys for the transaction node',
          options: [

            Option(
              name: '--member-name',
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'member-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Transaction node name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'regenerate-api-key',
          description: 'Regenerate the API keys for the blockchain member',
          options: [

            Option(
              name: '--member-name',
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'member-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Transaction node name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'Gets or sets the API key name',
              args: [
                Arg(
                name: 'key-name',
                suggestions: [

                  FigSuggestion(name: 'key1'),
                  FigSuggestion(name: 'key2')
                ]
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'Gets or sets the API key value',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of the transaction node',
          options: [

            Option(
              name: '--member-name',
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'member-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Transaction node name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Update the transaction node',
          options: [

            Option(
              name: '--member-name',
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'member-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Transaction node name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--firewall-rules',
              description: 'Firewall rules of the blockchian transaction node',
              args: [
                Arg(
                name: 'firewall-rule'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'Sets the transaction node dns endpoint basic auth password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait until the transaction node is created or deleted',
          options: [

            Option(
              name: '--member-name',
              description: 'Blockchain member name',
              args: [
                Arg(
                name: 'member-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Transaction node name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
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
    )
  ]
);
