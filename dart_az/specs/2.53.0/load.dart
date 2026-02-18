// Auto-generated from TypeScript source: load.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `load` CLI
final FigSpec loadSpec = FigSpec(
  name: 'load',
  description: 'Manage Azure Load Testing resources',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create an Azure Load Testing resource',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the new Azure Load Testing resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--encryption-identity',
          description: 'The managed identity for Customer-managed key settings defining which identity should be used to authenticate to Key Vault',
          args: [
            Arg(
            name: 'encryption-identit'
          )
          ]
        ),
        Option(
          name: '--encryption-key',
          description: 'Encryption key URL, versioned. For example, https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78',
          args: [
            Arg(
            name: 'encryption-ke'
          )
          ]
        ),
        Option(
          name: '--identity-type',
          description: 'Type of managed service identity',
          args: [
            Arg(
            name: 'identity-type',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'SystemAssigned'),
              FigSuggestion(name: 'SystemAssigned'),
              FigSuggestion(name: 'UserAssigned'),
              FigSuggestion(name: 'UserAssigned')
            ]
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=. When not specified, the location of the resource group will be used',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish',
          args: [
            Arg(
            name: 'no-wait',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
            ]
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--user-assigned',
          description: 'The list of user-assigned identities associated with the resource. The user-assigned identity will be ARM resource id. For example, a list of user-assigned identities would look like "{\'/subscriptions/ abcdef01-2345-6789-0abc-def012345678 /resourcegroups/sample-rg/providers/microsoft.managedidentity/userassignedidentities/identity1\',\'/subscriptions/ abcdef01-2345-6789-0abc-def012345678 /resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/identity2\'}" Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'user-assigne'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete an Azure Load Testing resource',
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
          description: 'Name of the Azure Load Testing resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish',
          args: [
            Arg(
            name: 'no-wait',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
            ]
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
      description: 'Lists Azure Load Testing resources',
      options: [

        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
      description: 'Show the details of one or more Azure Load Testing resources',
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
          description: 'Name of the Azure Load Testing resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
      description: 'Update an Azure Load Testing resource',
      options: [

        Option(
          name: '--encryption-identity',
          description: 'The managed identity for Customer-managed key settings defining which identity should be used to authenticate to Key Vault',
          args: [
            Arg(
            name: 'encryption-identit'
          )
          ]
        ),
        Option(
          name: '--encryption-key',
          description: 'Encryption key URL, versioned. For example, https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78',
          args: [
            Arg(
            name: 'encryption-ke'
          )
          ]
        ),
        Option(
          name: '--identity-type',
          description: 'Type of managed service identity',
          args: [
            Arg(
            name: 'identity-type',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'SystemAssigned'),
              FigSuggestion(name: 'SystemAssigned'),
              FigSuggestion(name: 'UserAssigned'),
              FigSuggestion(name: 'UserAssigned')
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
          description: 'Name of the Azure Load Testing resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish',
          args: [
            Arg(
            name: 'no-wait',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
            ]
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--user-assigned',
          description: 'The list of user-assigned identities associated with the resource. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'user-assigne'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Place the CLI in a waiting state until a condition is met',
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
          description: 'Name of the Azure Load Testing resource',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=',
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
      name: 'test',
      description: 'Command group to manage load tests.\n\n\t\tCommand group to manage load test with create, update, delete, list, etc',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new load test',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-id', '-t'],
              description: 'Test ID of the load test',
              args: [
                Arg(
                name: 'test-i'
              )
              ]
            ),
            Option(
              name: '--certificate',
              description: 'A single certificate in \'key[=value]\' format. The certificate should be stored in Azure Key Vault in PFX format, and the certificate identifier should be provided as the value',
              args: [
                Arg(
                name: 'certificat'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the load test',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of the load test',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--engine-instances',
              description: 'Number of engine instances on which the test should run',
              args: [
                Arg(
                name: 'engine-instance'
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'Space-separated environment variables: key[=value] [key[=value] ...]',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: '--keyvault-reference-id',
              description: 'The identity that will be used to access the key vault',
              args: [
                Arg(
                name: 'keyvault-reference-i'
              )
              ]
            ),
            Option(
              name: '--load-test-config-file',
              description: 'Path to the load test config file. Refer https://learn.microsoft.com/azure/load-testing/reference-test-config-yaml',
              args: [
                Arg(
                name: 'load-test-config-fil'
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
              name: '--secret',
              description: 'Space-separated secrets: key[=value] [key[=value] ...]. Secrets should be stored in Azure Key Vault, and the secret identifier should be provided as the value',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--split-csv',
              description: 'Split CSV files evenly among engine instances',
              args: [
                Arg(
                name: 'split-cs'
              )
              ]
            ),
            Option(
              name: '--subnet-id',
              description: 'Resource ID of the subnet to use for private load test',
              args: [
                Arg(
                name: 'subnet-i'
              )
              ]
            ),
            Option(
              name: '--test-plan',
              description: 'Path to the JMeter script',
              args: [
                Arg(
                name: 'test-pla'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing load test',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-id', '-t'],
              description: 'Test ID of the load test',
              args: [
                Arg(
                name: 'test-i'
              )
              ]
            ),
            Option(
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
          name: 'download-files',
          description: 'Download files of an existing load test',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path of the directory to download files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--test-id', '-t'],
              description: 'Test ID of the load test',
              args: [
                Arg(
                name: 'test-i'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Force run the command. This will create the directory to download files if it does not exist'
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
          description: 'List all tests in the given load test resource',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
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
          description: 'Show details of test',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-id', '-t'],
              description: 'Test ID of the load test',
              args: [
                Arg(
                name: 'test-i'
              )
              ]
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
          description: 'Update an existing load test',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-id', '-t'],
              description: 'Test ID of the load test',
              args: [
                Arg(
                name: 'test-i'
              )
              ]
            ),
            Option(
              name: '--certificate',
              description: 'A single certificate in \'key[=value]\' format. The certificate should be stored in Azure Key Vault in PFX format, and the certificate identifier should be provided as the value.Use "" to clear existing certificate',
              args: [
                Arg(
                name: 'certificat'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the load test',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of the load test',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--engine-instances',
              description: 'Number of engine instances on which the test should run',
              args: [
                Arg(
                name: 'engine-instance'
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'Space-separated environment variables: key[=value] [key[=value] ...]. Use "" to clear existing environment variables',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: '--keyvault-reference-id',
              description: 'The identity that will be used to access the key vault. Provide null or None to use the system assigned identity of the load test resource',
              args: [
                Arg(
                name: 'keyvault-reference-i'
              )
              ]
            ),
            Option(
              name: '--load-test-config-file',
              description: 'Path to the load test config file. Refer https://learn.microsoft.com/azure/load-testing/reference-test-config-yaml',
              args: [
                Arg(
                name: 'load-test-config-fil'
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
              name: '--secret',
              description: 'Space-separated secrets: key[=value] [key[=value] ...]. Secrets should be stored in Azure Key Vault, and the secret identifier should be provided as the value.Use "" to clear existing secrets',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--split-csv',
              description: 'Split CSV files evenly among engine instances',
              args: [
                Arg(
                name: 'split-cs'
              )
              ]
            ),
            Option(
              name: '--subnet-id',
              description: 'Resource ID of the subnet to use for private load test',
              args: [
                Arg(
                name: 'subnet-i'
              )
              ]
            ),
            Option(
              name: '--test-plan',
              description: 'Path to the JMeter script',
              args: [
                Arg(
                name: 'test-pla'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'app-component',
          description: 'Command group to manage app components.\n\n\t\tCommand group to manage load test app-components with add, list and remove',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an app component to a test',
              options: [

                Option(
                  name: '--app-component-id',
                  description: 'Fully qualified resource ID of the App Component. For example, subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.LoadTestService/loadtests/{resName}',
                  args: [
                    Arg(
                    name: 'app-component-i'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-name',
                  description: 'Name of the app component. Refer https://learn.microsoft.com/cli/azure/resource#az-resource-show',
                  args: [
                    Arg(
                    name: 'app-component-nam'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-type',
                  description: 'Type of resource of the app component. Refer https://learn.microsoft.com/cli/azure/resource#az-resource-show',
                  args: [
                    Arg(
                    name: 'app-component-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-kind',
                  description: 'Kind of the app component. Refer https://learn.microsoft.com/cli/azure/resource#az-resource-show',
                  args: [
                    Arg(
                    name: 'app-component-kin'
                  )
                  ]
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
              description: 'List all app components for a test',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
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
              description: 'Remove the given app component from a test',
              options: [

                Option(
                  name: '--app-component-id',
                  description: 'Fully qualified resource ID of the App Component. For example, subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.LoadTestService/loadtests/{resName}',
                  args: [
                    Arg(
                    name: 'app-component-i'
                  )
                  ]
                ),
                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
                ),
                Option(
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
            )
          ]
        ),
        Subcommand(
          name: 'file',
          description: 'Command group for operations on test files.\n\n\t\tCommand group for operations on test files such as upload, delete, list and download',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a file from test',
              options: [

                Option(
                  name: '--file-name',
                  description: 'Name of the file',
                  args: [
                    Arg(
                    name: 'file-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
                ),
                Option(
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
              name: 'download',
              description: 'Download a file from a test',
              options: [

                Option(
                  name: '--file-name',
                  description: 'Name of the file',
                  args: [
                    Arg(
                    name: 'file-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path of the directory to download files',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'Force run the command. This will create the directory to download files if it does not exist'
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
              description: 'List all files in a test',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
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
              name: 'upload',
              description: 'Upload a file to a test',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to the file to upload',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
                ),
                Option(
                  name: '--file-type',
                  description: 'Type of file to be uploaded. Allowed values: ADDITIONAL_ARTIFACTS, JMX_FILE, USER_PROPERTIES',
                  args: [
                    Arg(
                    name: 'file-typ'
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
          name: 'server-metric',
          description: 'Command group to manage server metrics.\n\n\t\tCommand group to manage load test server-metrics with add, list and remove',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a server-metric to a test',
              options: [

                Option(
                  name: '--aggregation',
                  description: 'Aggregation to be applied on the metric',
                  args: [
                    Arg(
                    name: 'aggregatio'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-id',
                  description: 'Fully qualified resource ID of the App Component. For example, subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.LoadTestService/loadtests/{resName}',
                  args: [
                    Arg(
                    name: 'app-component-i'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-type',
                  description: 'Type of resource of the app component. Refer https://learn.microsoft.com/cli/azure/resource#az-resource-show',
                  args: [
                    Arg(
                    name: 'app-component-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: '--metric-id',
                  description: 'Fully qualified ID of the server metric. Refer https://docs.microsoft.com/en-us/rest/api/monitor/metric-definitions/list#metricdefinition',
                  args: [
                    Arg(
                    name: 'metric-i'
                  )
                  ]
                ),
                Option(
                  name: '--metric-name',
                  description: 'Name of the metric. Example, requests/duration',
                  args: [
                    Arg(
                    name: 'metric-nam'
                  )
                  ]
                ),
                Option(
                  name: '--metric-namespace',
                  description: 'Namespace of the server metric. Example, microsoft.insights/components',
                  args: [
                    Arg(
                    name: 'metric-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
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
              description: 'List all server-metrics for a test',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
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
              description: 'Remove the given server-metric from the test',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: '--metric-id',
                  description: 'Fully qualified ID of the server metric. Refer https://docs.microsoft.com/en-us/rest/api/monitor/metric-definitions/list#metricdefinition',
                  args: [
                    Arg(
                    name: 'metric-i'
                  )
                  ]
                ),
                Option(
                  name: ['--test-id', '-t'],
                  description: 'Test ID of the load test',
                  args: [
                    Arg(
                    name: 'test-i'
                  )
                  ]
                ),
                Option(
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'test-run',
      description: 'Command group to manage load test runs.\n\n\t\tCommand group to manage load test runs with create, update, delete, list, stop, etc',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new load test run',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-id', '-t'],
              description: 'Test ID of the load test',
              args: [
                Arg(
                name: 'test-i'
              )
              ]
            ),
            Option(
              name: ['--test-run-id', '-r'],
              description: 'Test run ID of the load test run',
              args: [
                Arg(
                name: 'test-run-i'
              )
              ]
            ),
            Option(
              name: '--certificate',
              description: 'A single certificate in \'key[=value]\' format. The certificate should be stored in Azure Key Vault in PFX format, and the certificate identifier should be provided as the value.Use "" to clear existing certificate',
              args: [
                Arg(
                name: 'certificat'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the load test run',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of the load test run',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'Space-separated environment variables: key[=value] [key[=value] ...]. Use "" to clear existing environment variables',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: '--existing-test-run-id',
              description: 'Test run ID of an existing load test run which should be rerun',
              args: [
                Arg(
                name: 'existing-test-run-i'
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
              name: '--secret',
              description: 'Space-separated secrets: key[=value] [key[=value] ...]. Secrets should be stored in Azure Key Vault, and the secret identifier should be provided as the value.Use "" to clear existing secrets',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing load test run',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-run-id', '-r'],
              description: 'Test run ID of the load test run',
              args: [
                Arg(
                name: 'test-run-i'
              )
              ]
            ),
            Option(
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
          name: 'download-files',
          description: 'Download files for an existing load test run',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path of the directory to download files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--test-run-id', '-r'],
              description: 'Test run ID of the load test run',
              args: [
                Arg(
                name: 'test-run-i'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Force run the command. This will create the directory to download files if it does not exist'
            ),
            Option(
              name: '--input',
              description: 'Download the input files zip'
            ),
            Option(
              name: '--log',
              description: 'Download the log files zip'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--result',
              description: 'Download the results files zip'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all test runs',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-id', '-t'],
              description: 'Test ID of the load test',
              args: [
                Arg(
                name: 'test-i'
              )
              ]
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
          description: 'Show details of a test run',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-run-id', '-r'],
              description: 'Test run ID of the load test run',
              args: [
                Arg(
                name: 'test-run-i'
              )
              ]
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
          name: 'stop',
          description: 'Stop running a load test run',
          options: [

            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-run-id', '-r'],
              description: 'Test run ID of the load test run',
              args: [
                Arg(
                name: 'test-run-i'
              )
              ]
            ),
            Option(
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
          name: 'update',
          description: 'Update an existing load test run',
          options: [

            Option(
              name: '--description',
              description: 'Description of the load test run',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--load-test-resource', '--name', '-n'],
              description: 'Name or ARM resource ID of the Load Testing resource',
              args: [
                Arg(
                name: 'load-test-resourc'
              )
              ]
            ),
            Option(
              name: ['--test-run-id', '-r'],
              description: 'Test run ID of the load test run',
              args: [
                Arg(
                name: 'test-run-i'
              )
              ]
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
          name: 'app-component',
          description: 'Command group to manage load test run app components.\n\n\t\tCommand group to manage load test run app-components with add, list and remove',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an app component to a test run',
              options: [

                Option(
                  name: '--app-component-id',
                  description: 'Fully qualified resource ID of the App Component. For example, subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.LoadTestService/loadtests/{resName}',
                  args: [
                    Arg(
                    name: 'app-component-i'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-name',
                  description: 'Name of the app component. Refer https://learn.microsoft.com/cli/azure/resource#az-resource-show',
                  args: [
                    Arg(
                    name: 'app-component-nam'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-type',
                  description: 'Type of resource of the app component. Refer https://learn.microsoft.com/cli/azure/resource#az-resource-show',
                  args: [
                    Arg(
                    name: 'app-component-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-kind',
                  description: 'Kind of the app component. Refer https://learn.microsoft.com/cli/azure/resource#az-resource-show',
                  args: [
                    Arg(
                    name: 'app-component-kin'
                  )
                  ]
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
              description: 'List all app components for a test run',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
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
              description: 'Remove an app component from a test run',
              options: [

                Option(
                  name: '--app-component-id',
                  description: 'Fully qualified resource ID of the App Component. For example, subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.LoadTestService/loadtests/{resName}',
                  args: [
                    Arg(
                    name: 'app-component-i'
                  )
                  ]
                ),
                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
                ),
                Option(
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
            )
          ]
        ),
        Subcommand(
          name: 'metrics',
          description: 'Command group to retrieve load test run metrics.\n\n\t\tCommand group to retrieve load test run metrics with list, get-namespaces, get-definitions, get-dimension',
          subcommands: [

            Subcommand(
              name: 'get-definitions',
              description: 'Get all metric definitions for a load test run',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: '--metric-namespace',
                  description: 'Namespace of the metric. Allowed values: LoadTestRunMetrics, EngineHealthMetrics',
                  args: [
                    Arg(
                    name: 'metric-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
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
              name: 'get-dimensions',
              description: 'Get all metric dimension values for load test run',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--metric-definition-name', '--metric-name'],
                  description: 'Name of the metric',
                  args: [
                    Arg(
                    name: 'metric-definition-nam'
                  )
                  ]
                ),
                Option(
                  name: '--metric-dimension',
                  description: 'Value of the metric dimension',
                  args: [
                    Arg(
                    name: 'metric-dimensio'
                  )
                  ]
                ),
                Option(
                  name: '--metric-namespace',
                  description: 'Namespace of the metric. Allowed values: LoadTestRunMetrics, EngineHealthMetrics',
                  args: [
                    Arg(
                    name: 'metric-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
                ),
                Option(
                  name: '--end-time',
                  description: 'ISO 8601 formatted end time',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'ISO 8601 formatted interval. Allowed values: PT10S, PT1H, PT1M, PT5M, PT5S',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'ISO 8601 formatted start time',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get-namespaces',
              description: 'Get all metric namespaces for a load test run',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
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
              description: 'List metrics for a load test run',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: '--metric-namespace',
                  description: 'Namespace of the metric. Allowed values: LoadTestRunMetrics, EngineHealthMetrics',
                  args: [
                    Arg(
                    name: 'metric-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
                ),
                Option(
                  name: '--aggregation',
                  description: 'Operation used to aggregate the metrics',
                  args: [
                    Arg(
                    name: 'aggregatio'
                  )
                  ]
                ),
                Option(
                  name: '--dimension-filters',
                  description: 'Space and comma-separated dimension filters: key1[=value1] key1[=value2] key2[=value3] format ...]. * is supported as a wildcard for both key and value. Example: --dimension-filters key1=value1 key2=*, --dimension-filters *',
                  args: [
                    Arg(
                    name: 'dimension-filter'
                  )
                  ]
                ),
                Option(
                  name: '--end-time',
                  description: 'ISO 8601 formatted end time',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'ISO 8601 formatted interval. Allowed values: PT10S, PT1H, PT1M, PT5M, PT5S',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: ['--metric-definition-name', '--metric-name'],
                  description: 'Name of the metric',
                  args: [
                    Arg(
                    name: 'metric-definition-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'ISO 8601 formatted start time',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'server-metric',
          description: 'Command group to manage load test run server-metrics.\n\n\t\tCommand group to manage load test run server-metrics with add, list and remove',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a server-metric to a test run',
              options: [

                Option(
                  name: '--aggregation',
                  description: 'Aggregation to be applied on the metric',
                  args: [
                    Arg(
                    name: 'aggregatio'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-id',
                  description: 'Fully qualified resource ID of the App Component. For example, subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.LoadTestService/loadtests/{resName}',
                  args: [
                    Arg(
                    name: 'app-component-i'
                  )
                  ]
                ),
                Option(
                  name: '--app-component-type',
                  description: 'Type of resource of the app component. Refer https://learn.microsoft.com/cli/azure/resource#az-resource-show',
                  args: [
                    Arg(
                    name: 'app-component-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: '--metric-id',
                  description: 'Fully qualified ID of the server metric. Refer https://docs.microsoft.com/en-us/rest/api/monitor/metric-definitions/list#metricdefinition',
                  args: [
                    Arg(
                    name: 'metric-i'
                  )
                  ]
                ),
                Option(
                  name: '--metric-name',
                  description: 'Name of the metric. Example, requests/duration',
                  args: [
                    Arg(
                    name: 'metric-nam'
                  )
                  ]
                ),
                Option(
                  name: '--metric-namespace',
                  description: 'Namespace of the server metric. Example, microsoft.insights/components',
                  args: [
                    Arg(
                    name: 'metric-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
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
              description: 'List all server-metrics for a test run',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
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
              description: 'Remove a server-metric from a test run',
              options: [

                Option(
                  name: ['--load-test-resource', '--name', '-n'],
                  description: 'Name or ARM resource ID of the Load Testing resource',
                  args: [
                    Arg(
                    name: 'load-test-resourc'
                  )
                  ]
                ),
                Option(
                  name: '--metric-id',
                  description: 'Fully qualified ID of the server metric. Refer https://docs.microsoft.com/en-us/rest/api/monitor/metric-definitions/list#metricdefinition',
                  args: [
                    Arg(
                    name: 'metric-i'
                  )
                  ]
                ),
                Option(
                  name: ['--test-run-id', '-r'],
                  description: 'Test run ID of the load test run',
                  args: [
                    Arg(
                    name: 'test-run-i'
                  )
                  ]
                ),
                Option(
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
            )
          ]
        )
      ]
    )
  ]
);
