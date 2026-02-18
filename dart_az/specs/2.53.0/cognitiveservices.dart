// Auto-generated from TypeScript source: cognitiveservices.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cognitiveservices` CLI
final FigSpec cognitiveservicesSpec = FigSpec(
  name: 'cognitiveservices',
  description: 'Manage Azure Cognitive Services accounts.\n\n\t\tThis article lists the Azure CLI commands for Azure Cognitive Services account and subscription management only. Refer to the documentation at https://docs.microsoft.com/azure/cognitive-services/ for individual services to learn how to use the APIs and supported SDKs',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage Azure Cognitive Services accounts.\n\n\t\tThis article lists the Azure CLI commands for Azure Cognitive Services account and subscription management only. Refer to the documentation at https://docs.microsoft.com/azure/cognitive-services/ for individual services to learn how to use the APIs and supported SDKs',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Manage Azure Cognitive Services accounts',
          options: [

            Option(
              name: '--kind',
              description: 'The API name of cognitive services account. value from: az cognitiveservices account list-kinds',
              args: [
                Arg(
                name: 'kin'
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
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--sku-name', '--sku'],
              description: 'Name of the Sku of Cognitive Services account/deployment. value from: az cognitiveservices account list-skus',
              args: [
                Arg(
                name: 'sku-nam'
              )
              ]
            ),
            Option(
              name: '--api-properties',
              description: 'Api properties in JSON format or a=b c=d format. Some cognitive services (i.e. QnA Maker) require extra api properties to create the account',
              args: [
                Arg(
                name: 'api-propertie'
              )
              ]
            ),
            Option(
              name: '--assign-identity',
              description: 'Generate and assign an Azure Active Directory Identity for this account'
            ),
            Option(
              name: '--custom-domain',
              description: 'User domain assigned to the account. Name is the CNAME source',
              args: [
                Arg(
                name: 'custom-domai'
              )
              ]
            ),
            Option(
              name: '--encryption',
              description: 'The encryption properties for this resource, in JSON format',
              args: [
                Arg(
                name: 'encryptio'
              )
              ]
            ),
            Option(
              name: '--storage',
              description: 'The storage accounts for this resource, in JSON array format',
              args: [
                Arg(
                name: 'storag'
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
              name: '--yes',
              description: 'Do not prompt for terms confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Manage Azure Cognitive Services accounts',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Manage Azure Cognitive Services accounts',
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
          description: 'List soft-deleted Azure Cognitive Services accounts'
        ),
        Subcommand(
          name: 'list-kinds',
          description: 'List all valid kinds for Azure Cognitive Services account'
        ),
        Subcommand(
          name: 'list-models',
          description: 'Manage Azure Cognitive Services accounts',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'list-skus',
          description: 'Manage Azure Cognitive Services accounts',
          options: [

            Option(
              name: '--kind',
              description: 'The API name of cognitive services account. value from: az cognitiveservices account list-kinds',
              args: [
                Arg(
                name: 'kin'
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
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'list-usage',
          description: 'List usages for Azure Cognitive Services account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'purge',
          description: 'Purge a soft-deleted Azure Cognitive Services account',
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
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          name: 'recover',
          description: 'Recover a soft-deleted Azure Cognitive Services account',
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
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Manage Azure Cognitive Services accounts',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Show a soft-deleted Azure Cognitive Services account',
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
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
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
          description: 'Manage Azure Cognitive Services accounts',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Cognitive service account name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--api-properties',
              description: 'Api properties in JSON format or a=b c=d format. Some cognitive services (i.e. QnA Maker) require extra api properties to create the account',
              args: [
                Arg(
                name: 'api-propertie'
              )
              ]
            ),
            Option(
              name: '--custom-domain',
              description: 'User domain assigned to the account. Name is the CNAME source',
              args: [
                Arg(
                name: 'custom-domai'
              )
              ]
            ),
            Option(
              name: '--encryption',
              description: 'The encryption properties for this resource, in JSON format',
              args: [
                Arg(
                name: 'encryptio'
              )
              ]
            ),
            Option(
              name: ['--sku-name', '--sku'],
              description: 'Name of the Sku of Cognitive Services account/deployment. value from: az cognitiveservices account list-skus',
              args: [
                Arg(
                name: 'sku-nam'
              )
              ]
            ),
            Option(
              name: '--storage',
              description: 'The storage accounts for this resource, in JSON array format',
              args: [
                Arg(
                name: 'storag'
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
          name: 'commitment-plan',
          description: 'Manage commitment plans for Azure Cognitive Services accounts',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a commitment plan for Azure Cognitive Services account',
              options: [

                Option(
                  name: '--auto-renew',
                  description: 'A boolean indicating whether to apply auto renew',
                  args: [
                    Arg(
                    name: 'auto-renew',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--commitment-plan-name',
                  description: 'Cognitive Services account commitment plan name',
                  args: [
                    Arg(
                    name: 'commitment-plan-nam'
                  )
                  ]
                ),
                Option(
                  name: '--hosting-model',
                  description: 'Cognitive Services account hosting model',
                  args: [
                    Arg(
                    name: 'hosting-model',
                    suggestions: [

                      FigSuggestion(name: 'ConnectedContainer'),
                      FigSuggestion(name: 'DisconnectedContainer'),
                      FigSuggestion(name: 'ProvisionedWeb'),
                      FigSuggestion(name: 'Web')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--plan-type',
                  description: 'Cognitive Services account commitment plan type',
                  args: [
                    Arg(
                    name: 'plan-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--current-count',
                  description: 'Cognitive Services account commitment plan current commitment period count',
                  args: [
                    Arg(
                    name: 'current-coun'
                  )
                  ]
                ),
                Option(
                  name: '--current-tier',
                  description: 'Cognitive Services account commitment plan current commitment period tier',
                  args: [
                    Arg(
                    name: 'current-tie'
                  )
                  ]
                ),
                Option(
                  name: '--next-count',
                  description: 'Cognitive Services account commitment plan next commitment period count',
                  args: [
                    Arg(
                    name: 'next-coun'
                  )
                  ]
                ),
                Option(
                  name: '--next-tier',
                  description: 'Cognitive Services account commitment plan next commitment period tier',
                  args: [
                    Arg(
                    name: 'next-tie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a commitment plan from Azure Cognitive Services account',
              options: [

                Option(
                  name: '--commitment-plan-name',
                  description: 'Cognitive Services account commitment plan name',
                  args: [
                    Arg(
                    name: 'commitment-plan-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
              description: 'Show all commitment plans from Azure Cognitive Services account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
              description: 'Show a commitment plan from Azure Cognitive Services account',
              options: [

                Option(
                  name: '--commitment-plan-name',
                  description: 'Cognitive Services account commitment plan name',
                  args: [
                    Arg(
                    name: 'commitment-plan-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
          name: 'deployment',
          description: 'Manage deployments for Azure Cognitive Services accounts',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a deployment for Azure Cognitive Services account',
              options: [

                Option(
                  name: '--model-format',
                  description: 'Cognitive Services account deployment model format',
                  args: [
                    Arg(
                    name: 'model-forma'
                  )
                  ]
                ),
                Option(
                  name: '--model-name',
                  description: 'Cognitive Services account deployment model name',
                  args: [
                    Arg(
                    name: 'model-nam'
                  )
                  ]
                ),
                Option(
                  name: '--model-version',
                  description: 'Cognitive Services account deployment model version',
                  args: [
                    Arg(
                    name: 'model-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--sku-capacity', '--capacity'],
                  description: 'Capacity value of the Sku of Cognitive Services account/deployment',
                  args: [
                    Arg(
                    name: 'sku-capacit'
                  )
                  ]
                ),
                Option(
                  name: '--deployment-name',
                  description: 'Cognitive Services account deployment name',
                  args: [
                    Arg(
                    name: 'deployment-nam'
                  )
                  ]
                ),
                Option(
                  name: '--model-source',
                  description: 'Cognitive Services account deployment model source',
                  args: [
                    Arg(
                    name: 'model-sourc'
                  )
                  ]
                ),
                Option(
                  name: ['--scale-settings-capacity', '--scale-capacity'],
                  description: 'Cognitive Services account deployment scale settings capacity',
                  args: [
                    Arg(
                    name: 'scale-settings-capacit'
                  )
                  ]
                ),
                Option(
                  name: ['--scale-settings-scale-type', '--scale-type'],
                  description: 'Cognitive Services account deployment scale settings scale type',
                  args: [
                    Arg(
                    name: 'scale-settings-scale-type',
                    suggestions: [

                      FigSuggestion(name: 'Manual'),
                      FigSuggestion(name: 'Standard')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--sku-name', '--sku'],
                  description: 'Name of the Sku of Cognitive Services account/deployment',
                  args: [
                    Arg(
                    name: 'sku-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a deployment from Azure Cognitive Services account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--deployment-name',
                  description: 'Cognitive Services account deployment name',
                  args: [
                    Arg(
                    name: 'deployment-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Show all deployments for Azure Cognitive Services account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
              description: 'Show a deployment for Azure Cognitive Services account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--deployment-name',
                  description: 'Cognitive Services account deployment name',
                  args: [
                    Arg(
                    name: 'deployment-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'identity',
          description: 'Manage identity of Cognitive Services accounts',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Assign an identity of a Cognitive Services account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
              description: 'Remove the identity from a Cognitive Services account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
              description: 'Show the identity of a Cognitive Services account',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
          name: 'keys',
          description: 'Manage Azure Cognitive Services accounts.\n\n\t\tThis article lists the Azure CLI commands for Azure Cognitive Services account and subscription management only. Refer to the documentation at https://docs.microsoft.com/azure/cognitive-services/ for individual services to learn how to use the APIs and supported SDKs',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Manage Azure Cognitive Services accounts',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
              description: 'Manage Azure Cognitive Services accounts',
              options: [

                Option(
                  name: '--key-name',
                  description: 'Key name to generate',
                  args: [
                    Arg(
                    name: 'key-name',
                    suggestions: [

                      FigSuggestion(name: 'Key1'),
                      FigSuggestion(name: 'Key2')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
          name: 'network-rule',
          description: 'Manage network rules',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a network rule',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--ip-address',
                  description: 'IPv4 address or CIDR range',
                  args: [
                    Arg(
                    name: 'ip-addres'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Name or ID of subnet. If name is supplied, --vnet-name must be supplied',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'Name of a virtual network',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List network rules',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
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
              description: 'Remove a network rule',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Cognitive service account name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--ip-address',
                  description: 'IPv4 address or CIDR range',
                  args: [
                    Arg(
                    name: 'ip-addres'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Name or ID of subnet. If name is supplied, --vnet-name must be supplied',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'Name of a virtual network',
                  args: [
                    Arg(
                    name: 'vnet-nam'
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
      name: 'commitment-tier',
      description: 'Manage commitment tiers for Azure Cognitive Services',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Show all commitment tiers for Azure Cognitive Services',
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
      name: 'list',
      description: 'Manage Azure Cognitive Services accounts',
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
      name: 'model',
      description: 'Manage model for Azure Cognitive Services',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Show all models for Azure Cognitive Services',
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
      name: 'usage',
      description: 'Manage usage for Azure Cognitive Services',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Show all usages for Azure Cognitive Services',
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
              name: '--filter',
              description: 'An OData filter expression that describes a subset of usages to return. The supported parameter is name.value (name of the metric, can have an or of multiple names). Default value is None',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
